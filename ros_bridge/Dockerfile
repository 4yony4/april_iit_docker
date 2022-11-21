FROM ros:galactic-ros1-bridge

RUN apt-get update \
  && apt-get install -y ssh \
    build-essential \
    gcc \
    g++ \
    gdb \
    clang \
    cmake \
    rsync \
    nano \
    tar \
    python3 \
    ros-galactic-launch* \
  && apt-get clean

#ENTRYPOINT ["/ros_entrypoint.sh"]

#WORKDIR "/home/workspace"

#CMD /bin/bash
COPY /scripts/ /scripts/
RUN cd /scripts/ && /bin/bash -c "source bridge_install.sh" 
#ENTRYPOINT [".","/scripts/bridge_run.sh"]
#RUN cd /scripts/april_bridge/ && /bin/bash -c "source dirs_make.sh" 
#RUN cd /scripts/april_bridge/ && /bin/bash -c "source clone_repos.sh" 
#RUN cd /scripts/april_bridge/ && /bin/bash -c "source april_msgs1_build.sh" 
#RUN cd /scripts/april_bridge/ && /bin/bash -c "source april_msgs2_build.sh" 
#RUN cd /scripts/april_bridge/ && /bin/bash -c "source bridge_build.sh"
#WORKDIR /Dev/ROS2/april_bridge
#CMD [ "ros2", "run", "ros1_bridge", "dynamic_bridge", "--bridge-all-pairs" ]
#CMD [ "/scripts/bridge_run.sh" ]
CMD [ "/bin/bash","-c", "cd /scripts/ && source bridge_run.sh" ]