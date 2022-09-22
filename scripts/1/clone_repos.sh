echo "CLONNING ALL REPOS"

cd ~/Dev2/ROS2
git clone --branch galactic-dev https://github.com/YonyIIT/april_ros2.git
git clone --branch galactic https://github.com/ros2/common_interfaces.git
git clone --branch galactic https://github.com/ros-perception/vision_opencv.git
git clone --branch galactic https://github.com/ros-perception/image_common.git
git clone --branch galactic https://github.com/ament/ament_lint.git

cd ~/Dev2/ROS2/april_bridge/src
git clone https://github.com/ros2/ros1_bridge.git

cd ~/Dev2/ROS
git clone https://github.com/YonyIIT/yarp_ros_ws.git


cd ~/Dev2/yarp
git clone https://github.com/YonyIIT/yarp_ros_talker.git

