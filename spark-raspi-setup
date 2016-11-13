sudo apt-get update -y 
sudo apt-get upgrade -y 
sudo apt-get purge nodejs-legacy -y 
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
sudo dpkg -i node_latest_armhf.deb 
sudo apt-get build-dep dfu-util 
sudo apt-get install libusb-1.0-0-dev 
sudo apt-get install autoconf 
git clone git://git.code.sf.net/p/dfu-util/dfu-util 
cd dfu-util 
./autogen.sh 
./configure 
make 
sudo make install 
sudo apt-get install npm
