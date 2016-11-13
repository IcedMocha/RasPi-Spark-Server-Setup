cd ~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get purge nodejs-legacy
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
sudo npm install -g particle-cli --unsafe-perm
cd
git clone https://github.com/spark/spark-server.git
cd spark-server
npm install
netstat -nr
sudo cp ~/SparkPi/spark-server.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable spark-server.service
nano /etc/dhcpcd.conf
