ARG UBUNTU_VERSION=focal

FROM ubuntu:$UBUNTU_VERSION


RUN apt-get update && apt-get -y install software-properties-common
RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata 

RUN apt-get install -yq libdc1394-22
RUN apt-get install -yq libavcodec-dev

RUN sh -c 'echo "deb http://www.icub.eu/ubuntu `lsb_release -cs` contrib/science" > /etc/apt/sources.list.d/icub.list'
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 57A5ACB6110576A6
RUN apt-get update && apt-get upgrade -q -y 
RUN apt-get install -q -y yarp && yarp check

# install app
#COPY /scripts/ /scripts/

#CMD ["/scripts/yarp_ros_bridge_run.sh"]
#CMD [ "/bin/bash" ]
CMD ["yarpserver","--ros"]
#RUN export ROS_MASTER_URI=http://localhost:11311; yarpserver --ros;