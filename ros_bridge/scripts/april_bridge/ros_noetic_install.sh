echo "INSTALLING ROS NOETIC IF NOT PRESENT"

sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt -y install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
apt update
apt -y install ros-noetic-ros-base
apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
