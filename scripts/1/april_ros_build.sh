echo "Builing and Installing APRIL_ROS"

#source /opt/ros/galactic/setup.bash

cd ~/Dev2/ROS2/april_ros2/src
rm .rosinstall
rm -rf dvs_msgs
rm -rf prophesee_event_msgs
rm -rf event_array_msgs
rm -rf metavision_ros_driver
rm -rf april_msgs
rm -rf event_ros_tools

cd ~/Dev2/ROS2/april_ros2/
wstool init src april_ros2.rosinstall

colcon build
