# syntax=docker/dockerfile:1

#FROM ubuntu:20.04

#RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
#RUN apt-get update && \
#    apt-get install -yq tzdata && \
#    ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
#    dpkg-reconfigure -f noninteractive tzdata

# install app
#COPY /scripts/ /scripts/
#RUN cd /scripts/ && /bin/bash -c "source 1_first_time_april_total_deploy.sh" 
#RUN cd /scripts/ && /bin/bash -c "source ros2_install.sh" 
#RUN cd /scripts/april_ros2 && /bin/bash -c "source april_ros_build.sh" 
#RUN cd /scripts/april_ros2 && /bin/bash -c "source april_ros_run.sh" 

FROM ubuntu:20.04

RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# install app
COPY /scripts/ /scripts/
#RUN cd /scripts/ && /bin/bash -c "source 1_first_time_april_total_deploy.sh" 
RUN cd /scripts/ && /bin/bash -c "source bridge_install.sh" 
