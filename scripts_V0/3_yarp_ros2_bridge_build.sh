. ros2_init.sh
source ${ROS1_INSTALL_PATH}/setup.bash
source ${ROS2_INSTALL_PATH}/setup.bash
. ~/Dev2/ROS/yarp_ros_ws/install_isolated/setup.bash
. ~/Dev2/ROS2/april_ros2/install/setup.bash
echo $CMAKE_PREFIX_PATH | tr ':' '\n'
cd ~/Dev2/ROS2/april_bridge/
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure

