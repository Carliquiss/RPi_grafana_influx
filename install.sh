sudo apt-get update -y && sudo apt-get upgrade -y

#Install grafana
wget https://dl.grafana.com/oss/release/grafana_6.7.3_armhf.deb
sudo dpkg -i wget grafana_6.7.3_armhf.deb

#Install InfluxDB
sudo apt install influxdb influxdb-client -y