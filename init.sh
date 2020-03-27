sudo cat > /etc/docker/daemon.json <<EOF
{
  "hosts": ["unix:///var/run/docker.sock","tcp://0.0.0.0:2376"],
  "tls": true,
  "tlsverify": true,
  "tlscacert": "/var/docker/ca.pem",
  "tlscert": "/var/docker/server.pem",
  "tlskey": "/var/docker/server.key"
}
EOF
sudo mkdir -p /etc/systemd/system/docker.service.d/
sudo cat > /etc/systemd/system/docker.service.d/docker.conf <<EOF
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd
EOF

sudo systemctl daemon-reload
sudo systemctl restart docker
