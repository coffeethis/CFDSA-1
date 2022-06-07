# Workshop01 recap
# docker CLI -> dockerd -> containerd -> runc
# containers run in their own namespaces and isolation
# Default runtime is runc. Other types of secured runtime ( i.e. runsc) includes gVisor from google, kata-container used for sandboxing. runsc consumes more resources and longer to initiate.




docker build -t dov-bear:v1 . 
docker tag dov-bear:v1 \
ghcr.io/fred/dov:v1


docker images

#run in server mode
docker run -d -p HOST_port:internal_post image_name:v1

# Containers are empheral, volume is need to persist data 
# bind mode = EFS equivalent. Bind mount vol can be shared with multiple containers.
# volume = EBS equivalent

docker volume create <vol_name>

# Full path is need for bind mount vol
# docker run -v <vol path in host>:<container mount point>
docker run -v /opt/myvol:/opt/myvol

# For volume mount
bind run -v myvol:/opt/myvol

# For networking including network plugin. Docker swarm deprecated. Docker supports bridge and host networking.
# Bridge = NAT/Router  eg. Docker (172.xx.xx.xx/16)-> Bridge -> Local Host (192.xx.xx.xx)

# Host = Container directly attached to host.Cconsumes the same IP as host. Listen on container ports.
# By default, Docker creates two default nw. Bridge and Host. Default does not comes dafault with DNS.
# Only custom network will have DNS created.
# Network is commonly used for app segregation.


docker network ls
docker network create <my_network>

docker run -d --name <myaap> --network <mynet>