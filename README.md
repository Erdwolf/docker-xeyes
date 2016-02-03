# Running an X11 application inside a docker container
[![](https://badge.imagelayers.io/erdwolf/xeyes:latest.svg)](https://imagelayers.io/?images=erdwolf/xeyes:latest 'Get your own badge on imagelayers.io')

Allow connections to your x-server from inside the container:

    xhost +local:docker

Mount the socket into your container when running the application:

    export XSOCK=/tmp/.X11-unix/X0
    docker run --rm -v $XSOCK:$XSOCK xeyes
    
Note that we have set DISPLAY=:0 inside the container (see Dockerfile),
