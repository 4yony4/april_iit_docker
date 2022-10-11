echo "INSTALLING ROS GALACTIC (ROS2) IF NOT PRESENT"

add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
apt -y install g++
apt -y install build-essential
apt -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
apt -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

locale  # check for UTF-8

apt update && apt -y install locales
locale-gen en_US en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

apt-cache policy | grep universe

apt -y install software-properties-common
add-apt-repository universe

apt update && apt -y install curl gnupg lsb-release
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

apt update
apt upgrade
apt -y install ros-galactic-ros-base
apt -y install python3-wstool
apt -y install python3-colcon-common-extensions