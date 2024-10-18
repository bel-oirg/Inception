apt-get install wget -y

wget https://github.com/google/cadvisor/releases/download/v0.49.1/cadvisor-v0.49.1-linux-amd64 -O /bin/cadvisor
chmod +x /bin/cadvisor

mkdir -p /var/run/cadvisor

cadvisor --port=8080
