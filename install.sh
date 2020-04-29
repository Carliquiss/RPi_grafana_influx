#All the configuration is from NovaSpirit Tech (you can see the video here: https://www.youtube.com/watch?v=XCdl5QRyj6E)
#adapted to the raspberry pi

sudo apt-get update -y && sudo apt-get upgrade -y

#Install grafana
wget https://dl.grafana.com/oss/release/grafana_6.7.3_armhf.deb
sudo dpkg -i wget grafana_6.7.3_armhf.deb

#Install InfluxDB
sudo apt install influxdb influxdb-client -y

#Init services (To connect to grafana just go to localhost:3000 on the web browser with admin:admin as user:password)
sudo systemctl start grafana-server.service 
sudo systemctl start influxdb


#Install collectd (to get system information as disk space, cpu info, etc) to send information to influx
sudo apt install collectd

#Edit the file /etc/influxdb/influxdb.conf (or just copy the file named influxdb.conf from this repository) 
#Edit the file /etc/collectd/collectd.conf (or just copy the file named collectd.conf from this repository) 

#Restart the services
sudo systemctl restart collectd.service
sudo systemctl restart influxdb.service
