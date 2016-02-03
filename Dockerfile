FROM debian:jessie

RUN apt-get update && \
    apt-get install -y x11-apps

ENV DISPLAY :0

CMD xeyes
