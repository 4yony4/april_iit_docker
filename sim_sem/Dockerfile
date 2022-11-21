# syntax=docker/dockerfile:1

#FROM ubuntu:20.04
FROM ros:galactic

RUN mkdir /Dev
RUN mkdir /Dev/ROS2
RUN mkdir /Dev/extra

RUN apt-get update && apt-get -y install software-properties-common

RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main" && apt-get update

RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata 
RUN apt-get update && apt-get install -y git
RUN apt-get install -y g++
RUN apt-get -y install build-essential
RUN apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

RUN apt-get -y install python3-wstool
RUN apt-get -y install python3-colcon-common-extensions
RUN apt-get -y install ros-galactic-cv-bridge
RUN apt-get -y install ros-galactic-vision-opencv
RUN apt-get -y install libeigen3-dev libboost-all-dev libceres-dev

##------------------OPENCV FOR POSSIBLE IMAGE ANALYSIS-----------------------------------
#RUN cd /Dev/extra && git clone https://github.com/opencv/opencv/
#RUN cd /Dev/extra && git clone https://github.com/opencv/opencv_contrib/
#RUN mkdir /Dev/extra/opencv/build/
#RUN cd /Dev/extra/opencv/build/ && cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules .. && make -j8 && make install
##---------------------------------END OPENCV--------------------------------------------


RUN cd /Dev/ROS2 && git clone --branch galactic https://github.com/YonyIIT/april_msgs.git
RUN cd /Dev/ROS2 && git clone --branch galactic-dev https://github.com/YonyIIT/april_ros2.git
RUN cd /Dev/ROS2 && git clone --branch galactic https://github.com/ros2/common_interfaces.git
RUN cd /Dev/ROS2 && git clone --branch galactic https://github.com/ros-perception/vision_opencv.git
RUN cd /Dev/ROS2 && git clone --branch galactic https://github.com/ros-perception/image_common.git
RUN cd /Dev/ROS2 && git clone --branch galactic https://github.com/ament/ament_lint.git

#COPY ../scripts/ /scripts/
#RUN cd /scripts/ && /bin/bash -c "source ros2_deps_build.sh" 

RUN . /opt/ros/galactic/setup.sh; cd /Dev/ROS2/common_interfaces && colcon build
RUN . /opt/ros/galactic/setup.sh; cd /Dev/ROS2/vision_opencv && colcon build
RUN . /opt/ros/galactic/setup.sh; cd /Dev/ROS2/image_common && colcon build
RUN . /opt/ros/galactic/setup.sh; cd /Dev/ROS2/ament_lint && colcon build
RUN . /opt/ros/galactic/setup.sh; cd /Dev/ROS2/april_msgs && colcon build

# install app
COPY ../scripts/ /scripts/


#RUN cd /scripts/ && /bin/bash -c "source ros2_install.sh" 
RUN cd /scripts/ && /bin/bash -c "source april_ros_build.sh" 

#TO RUN THE PACKAGES SIM SEM JUST UNCOMMENT THIS LINE
#RUN cd /scripts/ && /bin/bash -c "source april_ros_run.sh" 
#WORKDIR /Dev/ROS2/april_ros2/
#CMD [ "ros2","run","yarp_ros_proxy", "yrp_main" ]

#ENTRYPOINT [ "executable" ]
#ENTRYPOINT ["/scripts/april_ros_build.sh"]
#CMD ["nginx"]

#CMD ["/scripts/april_ros_run.sh"]
CMD [ "/bin/bash","-c", "cd /scripts/ && source april_ros_run.sh" ]

#CMD /bin/bash -c "source /scripts/april_ros_build.sh" 
#WORKDIR /Dev/ROS2/april_ros2/
#RUN cd /scripts/ && . ./april_ros_run.sh && cd /Dev/ROS2/april_ros2/ && ros2 run yarp_ros_proxy yrp_main