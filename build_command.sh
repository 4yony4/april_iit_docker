

#cd april_bridge/
#docker build -t bridge/april .
#cd ..

cd april_ros1/
docker build -t ros1/april .
cd ..

#cd yarp_bridge/
#docker build -t yarp/bridge .
#cd ..

cd ros_bridge/
docker build -t ros/bridge .
cd ..