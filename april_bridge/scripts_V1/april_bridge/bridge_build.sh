. ros2_init.sh
source ${ROS1_INSTALL_PATH}/setup.bash
source ${ROS2_INSTALL_PATH}/setup.bash
#. /Dev/ROS/yarp_ros_ws/install_isolated/setup.bash
. /Dev/ROS/april_ros/devel_isolated/setup.bash
. /Dev/ROS2/april_msgs/install/setup.bash
echo $CMAKE_PREFIX_PATH | tr ':' '\n'
cd /Dev/ROS2/april_bridge/
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure