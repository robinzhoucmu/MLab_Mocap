/*
 * publisher extract mocap frame information from socket and 
 * publish mocap frame information.
 */

// System includes
//******************
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>

#include <unistd.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>

// NatNet Linux includes
//*************************
#include <NatNetLinux/NatNet.h>
#include <NatNetLinux/CommandListener.h>
#include <NatNetLinux/FrameListener.h>

// ROS Includes
//*************************
#include <ros/ros.h>
#include <Mocap/mocap_frame.h>
#include <robot_comm/robot_comm.h>

// Misc.
//****************************
#include <boost/program_options.hpp>
#include <time.h>

const int kPublishFreq = 60;

class Globals {
 public: 
  // Parameters read from the command line
  static uint32_t localAddress;
  static uint32_t serverAddress;
   
  // State of the main() thread.
  static bool run;
  
  // Initialize the sockets arguments.
  static void ReadOpts(int argc, char* argv[]) {
    namespace po = boost::program_options;
    po::options_description desc("mocap-publisheru sing NatNetLinux");
    desc.add_options()
      ("help", "Display help message")
      ("local-addr,l", po::value<std::string>(), "Local IPv4 address")
      ("server-addr,s", po::value<std::string>(), "Server IPv4 address");
   
    po::variables_map vm;
    po::store(po::parse_command_line(argc,argv,desc), vm);
   
    if (argc < 5 || vm.count("help") || !vm.count("local-addr") ||
	!vm.count("server-addr")) {
      std::cout << desc << std::endl;
      exit(1);
    }
    
    Globals::localAddress = inet_addr( vm["local-addr"].as<std::string>().c_str() );
    Globals::serverAddress = inet_addr( vm["server-addr"].as<std::string>().c_str() );
  }

  // End the program gracefully.
  static void Terminate(int)
  {
    // Tell the publishing loop and corresponding sockets to close.
    Globals::run = false;
  }
  
};
// Static member variable initializations.
uint32_t Globals::localAddress = 0;
uint32_t Globals::serverAddress = 0;
bool Globals::run = false;

// Mocap Publisher. 
class MocapPublisher {
 public:
  // Initialize ROS, socket stuffs and publish frequency(default).
  MocapPublisher(ros::NodeHandle *n);
  void SetPublishFrequency(int pub_freq_hz);
  // Establish socket communication to the NatNet Windows Server.
  void EstablishCommunications(int argc, char* argv[]);
  // Publish mocap frame in a loop.
  void PublishLoop();
 private:
  int pub_freq_hz;
  // Socket stuffs.
  int sdCommand;
  int sdData;
  CommandListener commandListener;
  FrameListener frameListener;
  void CreateListener();
  // Ros node.
  ros::NodeHandle *nodeHandle;
};
