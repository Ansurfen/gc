sudo docker pull ansurfen/gix:1.1
sudo docker run -p 8080:8080 -d -v /home/ubuntu/data:/data --name=gix ansurfen/gix:1.1