# syntax=docker/dockerfile:1

FROM ros:noetic

COPY /scripts/ /scripts/

RUN apt-get update && apt-get install -y git

RUN cd /scripts/ && /bin/bash -c "source ros1_build.sh" 

CMD ["roscore"]
#CMD ["roscore", "run"]
#RUN cd /Dev/ROS/yarp_ros_ws/ && /bin/bash -c "source devel/setup.bash && rosrun yarp_ros_proxy yrp_main_node" 

#WORKDIR "/Dev/ROS/yarp_ros_ws/"

#CMD ["rosrun", "yarp_ros_proxy", "yrp_main_node"]