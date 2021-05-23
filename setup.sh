if [ -x "$(command -v docker)" ]; then
    echo "Docker is installed, try to start docker..."
    sudo systemctl start docker
    echo "Docker is started."
else
    echo "Docker is not installed, try to install docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo systemctl start docker
    echo "Docker is isntalled and started."
fi

if test -f "Dockerfile"; then
    echo "Dockerfile exists"
else
    echo "Dockerfile doesn't exist, try to download from github..."
    git clone https://github.com/zhshize/data-science-hw2.git
    cd data-science-hw2
fi

echo "Start to build docker image..."
sudo docker build -t mlflow-docker-example -f Dockerfile .
echo "Docker image 'mlflow-docker-example' is built, run container:"
sudo docker run -p 8888:8888 -p 5050:5050 -e JUPYTER_ENABLE_LAB=yes mlflow-docker-example