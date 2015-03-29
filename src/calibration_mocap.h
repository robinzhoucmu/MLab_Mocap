/*
 * MocapCalibration read from an input file of robot trajectories and move
 * the robot to corresponding positions in sequence. The procedure will generate
 * pairs of 3d data, i.e., (Pr_i, Pm_i), where Pr is the robot tool phalange center 
 * point in robot base frame and Pm is the Mocap coords in mocap frame. 
 * A separate Matlab module will perform the numerical optimization for 
 * mocap calibration.
 */

#include <iostream>
#include <fstream>
#include <vector>
#include "publisher.h"

#include <robot_comm/robot_comm.h>

// Base frame: x pointing out to the vision node; 
// Fix the robot tool frame to be always facing downward.
// Correspond to rotating the base frame about y axis for 180 degree.
const double kQuaternion[4] = {0,0,1,0};

class MocapCalibration {
 public:
  MocapCalibration();
  // Read robot 3d coords trajectory from input stream/file.
  void ReadTrajectory(std::istream& in);
   
  // Randomly move around center with boundary specified as plus/minus delta.
  void GenRandomTrajectory(const double center[3], const double delta[3], 
			   int n_samples);

  // Run the trajectory and record data to output stream/file.
  void RunTrajectory(std::ostream& out);

 private:
  // Number of random samples on the trajectory.
  int num_samples;
  // Robot comm.
  RobotComm* robot;
  // Mocap subscription.
  ros::Subscriber mocap_sub;
  
  // Trajectory to execute.
  std::vector< std::vector<double> > traj;
  
  // Mocap coords along the trajectory.
  std::vector< std::vector<double> > mocap_cords;
 
  // Cusion time between robot finishes moving somewhere and mocap start logging.
  static const double k_cusion_time = 0.5;
  
  // Time segment that the robot reads data from Mocap.
  static const double k_read_period = 0.1;
  
  // Total number of mocap frame to capture for averaging.
  static const int k_num_collections = 10;

  // Initialize robot transformations. 
  // 1) Set tool frame to be identical to the default tool phalange center. 
  // 2) Set work object to be identical to the robot base frame.
  void InitRobotTransformation();

  void MoveRobotOneStep(int step_id);
  // Listens to mocap topic and average them after robot movement.
  void AcquireMocapData(int step_id);
 
};
