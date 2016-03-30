Running in a Docker container

If you are using Linux and have a
Docker daemon running,
e.g. reachable on localhost, start a container with:

$ docker run --rm -it -p 8888:8888 -v "$(pwd):/notebooks" jupyter/notebook

In your browser, open the URL http://localhost:8888/.
All notebooks from your session will be saved in the current directory.

On other platforms, such as Windows and OS X, that use
docker-machine with docker, a container can be started using
docker-machine. In the browser, open the URL http://ip:8888/ where ip is
the IP address returned from the command docker-machine ip <MACHINE>:

$ docker-machine ip <MACHINE>

For example,

$ docker-machine ip myjupytermachine
192.168.99.104

In browser, open http://192.168.99.104:8888.

NOTE: With the deprecated boot2docker, use the command boot2docker ip to
determine the URL.

