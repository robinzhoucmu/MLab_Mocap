#include "publisher.h"

MocapPublisher::MocapPublisher(ros::NodeHandle *n) {
  nodeHandle = n;
  // Set as default frequency.
  SetPublishFrequency(kPublishFreq);
}

void MocapPublisher::SetPublishFrequency(int _pub_freq_hz) {
  pub_freq_hz = _pub_freq_hz;
}

void MocapPublisher::EstablishCommunications(int argc, char* argv[]) {
  // Version number of the NatNet protocol, as reported by the server.
  unsigned char natNetMajor;
  unsigned char natNetMinor;
   
  // Sockets Initialization.
  sdCommand = -1;
  sdData = -1;
   
  // Catch ctrl-c and terminate gracefully.
  signal(SIGINT, terminate);

  // Set addresses
  Global::ReadOpts(argc, argv);
  // Use this socket address to send commands to the server.
  // Default NatNet command port is 1510.
  struct sockaddr_in serverCommands = 
    NatNet::createAddress(Globals::serverAddress, NatNet::commandPort);
   
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
  printf("About to start command listener\n");
   
  // Start the CommandListener in a new thread.
  CommandListener commandListener(sdCommand);
  commandListener.start();
  printf("cmd listener started. about to ping\n");

  // Send a ping packet to the server so that it sends us the NatNet version
  // in its response to commandListener.
  NatNetPacket ping = NatNetPacket::pingPacket();
  ping.send(sdCommand, serverCommands);
  printf("ping sent. waiting...\n");
   
  // Wait here for ping response to give us the NatNet version.
  commandListener.getNatNetVersion(&natNetMajor, &natNetMinor);
  printf("ping recieved. Major = %u, Minor = %u \n",natNetMajor,natNetMinor);
   
  // Start up a FrameListener in a new thread.
  FrameListener frameListener(sdData, natNetMajor, natNetMinor);
  frameListener.start();  
}

