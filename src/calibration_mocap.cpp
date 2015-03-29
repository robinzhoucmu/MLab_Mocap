#include "calibration_mocap.h"
#include <time.h>
#include <assert.h>

const double kCenter[3] = {475, 0, 450};
const double kDelta[3] = {100, 150, 50};

// Global mocap coords.
double global_mocap_cord[3];
// Global boolean to indicate whether the mocap is successfully captured.
bool flag_mocap_captured;
void Callback(const Mocap::mocap_frame& msg){
  global_mocap_cord[0] = global_mocap_cord[1] = global_mocap_cord[2] = -1;
  // Check the number of unidentified markers.
  // During calibration, we expect to see only one unidentified marker.
  int num_markers = msg.uid_markers.markers.size();
  flag_mocap_captured = (num_markers == 1);
  
  // Extract marker x y z coordinates.
  if (flag_mocap_captured) {
    const geometry_msgs::Point pt = msg.uid_markers.markers[0];
    global_mocap_cord[0] = pt.x;
    global_mocap_cord[1] = pt.y;
    global_mocap_cord[2] = pt.z;
  }
}

MocapCalibration::MocapCalibration() {
  ros::NodeHandle node;
  robot = new RobotComm(&node);
  InitRobotTransformation();
  // Subscribe to "Mocap" topic
  ros::NodeHandle node_sub;
  mocap_sub =  node_sub.subscribe("Mocap", 1000, Callback);
  
}

void MocapCalibration::InitRobotTransformation() {
  // Initialize tool frame to default (center of phalange).
  robot->SetTool(0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0);
  // Set identical between work object frame and robot base frame.
  robot->SetWorkObject(0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0);
}

void MocapCalibration::GenRandomTrajectory(const double center[3], 
					   const double delta[3], 
					   int n_samples) {
  const int kMaxR = 1000;
  num_samples = n_samples;
  traj.clear();
  for (int i = 0; i < num_samples; ++i) {
    std::vector<double> cords(3);
    for (int j = 0; j < 3; ++j) {
      // Generate random number in [-1,1];
      const double r = 2 * (double(rand() % kMaxR) / kMaxR - 0.5);
      cords[j] = center[j] + r * delta[j];
    }
    traj.push_back(cords);
  } 
  // Check for traj.
  for (int i = 0; i < num_samples; ++i) {
    for (int j = 0; j < 3; ++j) {
      std::cout << traj[i][j] << ",";
    }
    std::cout << std::endl;
  } 

}

void MocapCalibration::RunTrajectory(std::ostream& out) {
  assert(traj.size() == num_samples);
  mocap_cords.clear();
  for (int i = 0; i < num_samples; ++i) {
    // Move the robot.
    MoveRobotOneStep(i);

    // Sleep for 0.5 second before start logging mocap data.
    ros::Duration(k_cusion_time).sleep();
    
    // Acquire Mocap Data.
    AcquireMocapData(i);

    // Write to output stream.
    for (int j = 0; j < 3; ++j) {
      out << traj[i][j] << ","; 
    }
    for (int j = 0; j < 2; ++j) {
      out << mocap_cords[i][j] << ",";
    }
    out << mocap_cords[i][2] << std::endl;
  }
}

void MocapCalibration::MoveRobotOneStep(int step_id) {
  // Move the robot to the next trajectory point.
  double cart[7];
  // Set x,y,z from corresponding trajectory point coordinate.
  for (int j = 0; j < 3; ++j) {
    cart[j] = traj[step_id][j];
  }
  // Set quaternion(fixed).
  for (int j = 0; j < 4; ++j) {
    cart[3+j] = kQuaternion[j];
  }
  for (int i = 0; i < 7; ++i) {
    std::cout << cart[i] << ",";
  }
  std::cout << std::endl;
  robot->SetCartesian(cart);
  // Wait until robot reaches goal.
  while(robot->IsMoving());
}

void MocapCalibration::AcquireMocapData(int step_id) {
    // Start acquiring mocap data and average them.
    int num_received_frames = 0; 
    std::vector<double> avg_mocap_cords(3,0);
    const int freqHz = int (1.0 / k_read_period);
    ros::Rate r(freqHz);
    while (num_received_frames < k_num_collections) {
      ros::spinOnce();
      if (flag_mocap_captured) {
	num_received_frames++;
	for (int i = 0; i < 3; ++i) {
	  avg_mocap_cords[i] += global_mocap_cord[i];
	}
      }
      r.sleep();
    }
    for (int i = 0; i < 3; ++i) {
      avg_mocap_cords[i] = avg_mocap_cords[i] / k_num_collections; 
    }
    // Store into corresponding position in mocap_cords.
    mocap_cords.push_back(avg_mocap_cords);
}

int main(int argc, char* argv[]) {
  srand (time(NULL));
  ros::init(argc, argv, "MocapCalibration");
  MocapCalibration mocap_cali;
  const int kNumRandSamples = 10;
  mocap_cali.GenRandomTrajectory(kCenter, kDelta, kNumRandSamples);
  
  std::ofstream fout;
  fout.open("mocap_log.txt");
  mocap_cali.RunTrajectory(fout);
  // Debugging. 
  //mocap_cali.RunTrajectory(std::cout);
  fout.close();
  return 0;
}
