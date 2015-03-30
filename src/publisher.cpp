#include "publisher.h"

MocapPublisher::MocapPublisher(ros::NodeHandle *n) {
  nodeHandle = n;
  // Set as default frequency.
  SetPublishFrequency(Globals::kPublishFreq);
}

void MocapPublisher::SetPublishFrequency(int _pub_freq_hz) {
  pub_freq_hz = _pub_freq_hz;
}

void MocapPublisher::EstablishCommunications(int argc, char* argv[]) {  
  // Sockets Initialization.
  sdCommand = -1;
  sdData = -1;
   
  // Catch ctrl-c and terminate gracefully.
  signal(SIGINT, Globals::Terminate);

  // Set addresses
  Globals::ReadOpts(argc, argv);
   
  // Create sockets
  sdCommand = NatNet::createCommandSocket( Globals::localAddress );
  sdData = NatNet::createDataSocket( Globals::localAddress );

  // Ensure that the socket creation was successful
  assert(sdCommand != -1); 
  assert(sdData != -1);
  
  // Create Listeners with the sockets.
  CreateListener();
}

void MocapPublisher::CreateListener() {
  // Version number of the NatNet protocol, as reported by the server.
  unsigned char natNetMajor;
  unsigned char natNetMinor;
  
  // Use this socket address to send commands to the server.
  // Default NatNet command port is 1510.
  struct sockaddr_in serverCommands = 
    NatNet::createAddress(Globals::serverAddress, NatNet::commandPort);

  printf("About to start command listener\n");
   
  // Start the CommandListener in a new thread.
  commandListener = new CommandListener(sdCommand);
  commandListener->start();
  printf("cmd listener started. about to ping\n");

  // Send a ping packet to the server so that it sends us the NatNet version
  // in its response to commandListener.
  NatNetPacket ping = NatNetPacket::pingPacket();
  ping.send(sdCommand, serverCommands);
  printf("ping sent. waiting...\n");
   
  // Wait here for ping response to give us the NatNet version.
  commandListener->getNatNetVersion(&natNetMajor, &natNetMinor);
  printf("ping recieved. Major = %u, Minor = %u \n",natNetMajor,natNetMinor);
   
  // Start up a FrameListener in a new thread.
  frameListener = new FrameListener(sdData, natNetMajor, natNetMinor);
  frameListener->start();  
}

void MocapPublisher::ExtractPoseMsg(const MocapFrame& mframe, 
				    Mocap::mocap_frame* msg) {
  // See NatNet.h file for relevant data structures of MocapFrame.
  // Extract unidenfied markers (e.g., single calibration marker).
  const int num_uid_markers = mframe.unIdMarkers().size();
  msg->uid_markers.markers.clear();
  for (int i = 0; i < num_uid_markers; ++i) {
    const Point3f& pt = mframe.unIdMarkers()[i];
    geometry_msgs::Point uid_marker_pt;
    uid_marker_pt.x = pt.x;
    uid_marker_pt.y = pt.y;
    uid_marker_pt.z = pt.z;
    msg->uid_markers.markers.push_back(uid_marker_pt);
  }
  // Extract indenfied marker sets.
  const int num_id_marker_sets = mframe.markerSets().size();
  msg->id_marker_sets.clear();
  for (int i = 0; i < num_id_marker_sets; ++i) {
    const MarkerSet marker_set = mframe.markerSets()[i]; 
    const int marker_set_size = marker_set.markers().size();
    Mocap::marker_set id_marker_set;
    for (int j = 0; j < marker_set_size; ++j) {
      const Point3f& pt = marker_set.markers()[j];
      geometry_msgs::Point id_marker_pt;
      id_marker_pt.x = pt.x;
      id_marker_pt.y = pt.y;
      id_marker_pt.z = pt.z;
      id_marker_set.markers.push_back(id_marker_pt);
    }
    msg->id_marker_sets.push_back(id_marker_set);
  }
  // Extract tracked body/ies poses.
  const int num_bodies = mframe.rigidBodies().size();
  for (int i = 0; i < num_bodies; i++) {
    const RigidBody& body = mframe.rigidBodies()[i];
    geometry_msgs::Pose pose;
    // Copy x,y,z.
    pose.position.x = body.location().x;
    pose.position.y = body.location().y;
    pose.position.z = body.location().z;
    // Copy Quaternion.
    pose.orientation.x = body.orientation().qx;
    pose.orientation.y = body.orientation().qy;
    pose.orientation.z = body.orientation().qz;
    pose.orientation.w = body.orientation().qw;
    msg->body_poses.poses.push_back(pose);
    
    msg->header.stamp = ros::Time::now();
    std::cout << "time: " <<  msg->header.stamp << std::endl;
  }
}

void MocapPublisher::PublishToTopic() {
  // Set the publiser queue size.
  const int kQueueSize = 100;
  // Set the publishing frequency.
  ros::Rate loop_rate(pub_freq_hz);
  ros::Publisher mocapPub = nodeHandle->advertise<Mocap::mocap_frame>("Mocap", kQueueSize);
  unsigned int rosMsgCount = 0;

  Globals::run = true;    
  while( ros::ok() && Globals::run) {
    // Try to get a new frame from the listener.
    bool valid;
    MocapFrame frame(frameListener->pop(&valid).first);
    // Quit if the listener has no more frames.
    if(!valid) {
      fprintf(stderr,"No valid frame available \n");       
    }
    else {
      std::cout << frame << std::endl;
      // Extract rigid bodies and publish to ROS.
      Mocap::mocap_frame msg;
      ExtractPoseMsg(frame, &msg);
      //std::cout << ros::Time::now() << std::endl;
      mocapPub.publish(msg);
    }
    ros::spinOnce();
    loop_rate.sleep();
    rosMsgCount++;
  }

  printf("after ROS loop: ros::ok =  %i, Globals::run = %i \n",ros::ok(),Globals::run);

  // Wait for threads to finish.
  frameListener->stop();
  commandListener->stop();
  frameListener->join();
  commandListener->join();
   
  // Epilogue (Close sockets)
  close(sdData);
  close(sdCommand);

}

// Main function for the Mocap Node. 
// The Mocap node is publishing Mocap frames to the Mocap Topic.


int main(int argc, char* argv[]) {
  // Initialize the ROS node.
  ros::init(argc, argv, "Mocap");
  ros::NodeHandle node;
  MocapPublisher mocap_pub(&node);
  
  mocap_pub.EstablishCommunications(argc, argv);
  mocap_pub.PublishToTopic();
}

