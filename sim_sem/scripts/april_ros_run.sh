#!/bin/sh
echo "Running APRIL_ROS"

. /opt/ros/galactic/setup.sh
. /Dev/ROS2/april_msgs/install/setup.sh
. /Dev/ROS2/common_interfaces/install/setup.sh
. /Dev/ROS2/vision_opencv/install/setup.sh
. /Dev/ROS2/image_common/install/setup.sh
. /Dev/ROS2/ament_lint/install/setup.sh
. /Dev/ROS2/april_ros2/install/local_setup.sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

#cd /Dev2/ROS2/april_ros2/src
#rm .rosinstall
#rm -rf dvs_msgs
#rm -rf prophesee_event_msgs
#rm -rf event_array_msgs
#rm -rf metavision_ros_driver
#rm -rf april_msgs
#rm -rf event_ros_tools

cd /Dev/ROS2/april_ros2/
#wstool init src april_ros2.rosinstall

ros2 run yarp_ros_proxy yrp_main

exec "$@"