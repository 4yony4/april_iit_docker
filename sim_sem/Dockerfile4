# syntax=docker/dockerfile:1

#FROM ros:noetic
#RUN apt-get update && apt-get install -y \
#      ros-${ROS_DISTRO}-demo-nodes-cpp \
#      ros-${ROS_DISTRO}-demo-nodes-py && \

# install ros package
#RUN apt-get update && apt-get install -y \
#      ros-${ROS_DISTRO}-demo-nodes-cpp \
#      ros-${ROS_DISTRO}-demo-nodes-py && \
#    rm -rf /var/lib/apt/lists/*

# launch ros package
#CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]

  
FROM ros:galactic

# install ros package
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl gnupg lsb-release
RUN apt-get update && apt-get install -y python3-wstool
RUN apt-get update && apt-get install -y python3-colcon-common-extensions
RUN apt-get update && apt-get install -y ros-galactic-cv-bridge
RUN apt-get update && apt-get install -y ros-galactic-vision-opencv
RUN apt-get update && apt-get install -y libeigen3-dev libboost-all-dev libceres-dev

RUN mkdir Dev/
RUN mkdir Dev/ROS2
RUN cd Dev/ROS2 && git clone https://github.com/YonyIIT/april_ros2.git
RUN cd Dev/ROS2 && git clone https://github.com/opencv/opencv/
RUN cd Dev/ROS2 && git clone https://github.com/opencv/opencv_contrib/
RUN cd Dev/ROS2 && git clone https://github.com/YonyIIT/april_msgs.git
RUN cd Dev/ROS2 && git clone --branch galactic https://github.com/ros2/common_interfaces.git
RUN cd Dev/ROS2 && git clone --branch galactic https://github.com/ros-perception/vision_opencv.git
RUN cd Dev/ROS2 && git clone --branch galactic https://github.com/ros-perception/image_common.git
RUN cd Dev/ROS2 && git clone --branch galactic https://github.com/ament/ament_lint.git
RUN mkdir Dev/ROS2/opencv/build
#RUN cd Dev/ROS2/opencv/build/ && cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
#RUN cd Dev/ROS2/opencv/build/ && make -j16
#RUN cd Dev/ROS2/opencv/build/ && make install


RUN /bin/bash -c "source ros_entrypoint.sh"
RUN cd Dev/ROS2/ament_lint/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/ament_lint/install/setup.bash"
RUN cd Dev/ROS2/vision_opencv/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/vision_opencv/install/setup.bash"
RUN cd Dev/ROS2/image_common/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/image_common/install/setup.bash"

RUN cd Dev/ROS2/common_interfaces/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/common_interfaces/install/setup.bash"
RUN cd Dev/ROS2/april_msgs/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/april_msgs/install/setup.bash"
RUN cd Dev/ROS2/april_ros2/ && colcon build
RUN /bin/bash -c "source Dev/ROS2/april_ros2/install/setup.bash"

#RUN /bin/bash -c "source Dev/ROS2/april_ros2/scripts/ros2_init.sh"

#      ros-${ROS_DISTRO}-demo-nodes-cpp \
#      ros-${ROS_DISTRO}-demo-nodes-py && \
#    rm -rf /var/lib/apt/lists/*

# launch ros package
#CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]

#FROM golang:1.16 AS builder
#WORKDIR /go/src/github.com/alexellis/href-counter/
#RUN go get -d -v golang.org/x/net/html  
#COPY app.go ./
#RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o app .

#FROM alpine:latest  
#RUN apk --no-cache add ca-certificates
#WORKDIR /root/
#COPY --from=builder /go/src/github.com/alexellis/href-counter/app ./
#CMD ["./app"]  


#FROM ubuntu:20.04

#ENV TERM linux
#ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get update
#RUN apt-get install -y  

#CMD ["/bin/bash"]


#FROM ubuntu:20.04

#ENV TERM linux
#ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get update
#RUN apt-get install -y  

#CMD ["/bin/bash"]

#COPY /scripts/ /scripts/

#FROM ubuntu:20.04


# install app dependencies
#xRUN apt-get update && apt-get install -y python3 python3-pip
#RUN pip install flask==2.1.*

# install app
#COPY /scripts/ /scripts/

#RUN /1_first_time_april_total_deploy.sh

#CMD . /scripts/1_first_time_april_total_deploy.sh

# final configuration
#ENV FLASK_APP=hello
#EXPOSE 8000
#CMD flask run --host 0.0.0.0 --port 8000
