echo "CLONNING ALL REPOS"

cd /Dev/ROS2
git clone --branch galactic https://github.com/YonyIIT/april_msgs.git

cd /Dev/ROS/april_ros/src
git clone --branch galactic https://github.com/YonyIIT/april_msgs.git

cd /Dev/ROS2/april_bridge/src
git clone https://github.com/ros2/ros1_bridge.git

cd /Dev/ROS
git clone https://github.com/YonyIIT/yarp_ros_ws.git


#cd /Dev2/yarp
#git clone https://github.com/YonyIIT/yarp_ros_talker.git

