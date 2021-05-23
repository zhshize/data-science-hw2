if [ -x "$(command -v docker)" ]; then
    sudo systemctl start docker
else
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
fi