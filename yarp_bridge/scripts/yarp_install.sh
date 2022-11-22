echo "Installing YARP in the system"

sh -c 'echo "deb http://www.icub.eu/ubuntu `lsb_release -cs` contrib/science" > /etc/apt/sources.list.d/icub.list'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 57A5ACB6110576A6
apt update
apt -y install yarp