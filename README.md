## Graphical Software within a Docker container

Inspired from  https://linuxmeerkat.wordpress.com/2014/10/17/running-a-gui-application-in-a-docker-container/

## COMMANDS

To rebuild the Docker image:
```shell
$ sudo docker build --rm -t patrickmerlot/xvfb_demo .
```

To run the app within Docker:
```shell
$ sudo docker run -ti patrickmerlot/xvfb_demo
```