echo "Builing and Installing APRIL_ROS ROS2 Dependency Packages"
source /opt/ros/galactic/setup.bash

cd /Dev2/ROS2/common_interfaces
colcon build

cd /Dev2/ROS2/vision_opencv
colcon build

cd /Dev2/ROS2/image_common
colcon build

cd /Dev2/ROS2/ament_lint
colcon build
