echo "Builing and Installing APRIL_ROS"

source /opt/ros/galactic/setup.bash
source /Dev/ROS2/april_msgs/install/setup.bash
source /Dev/ROS2/common_interfaces/install/setup.bash
source /Dev/ROS2/vision_opencv/install/setup.bash
source /Dev/ROS2/image_common/install/setup.bash
source /Dev/ROS2/ament_lint/install/setup.bash
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

colcon build

