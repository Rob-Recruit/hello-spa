cd /vagrant
docker build -t hello-spa-image -f Dockerfile .
sleep 3
docker run --name hello-spa-container -d -p 8080:80 hello-spa-image:latest
