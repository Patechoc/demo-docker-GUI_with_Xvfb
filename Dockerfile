FROM ubuntu:14.04
MAINTAINER Patrick Merlot <patrick.merlot@gmail.com>

## inspired from  https://linuxmeerkat.wordpress.com/2014/10/17/running-a-gui-application-in-a-docker-container/
##          and http://manpages.ubuntu.com/manpages/lucid/man1/xvfb-run.1.html


## INSTALL DEPENDENCIES
RUN apt-get update
RUN apt-get install -y \
    dbus-x11 \
    firefox \
    python-pip \
    xpra \
    xserver-xorg-video-dummy \
    xvfb
RUN pip install selenium

## TEST RUNNING FIREFOX
ADD firefox.py /
RUN chmod +x firefox.py
ADD setup.sh /
RUN chmod +x setup.sh
ADD dummy.xorg.conf /
ADD xorg.conf /
ENV DISPLAY :1.0

## RUNNING A WEB PAGE ON FIREFOX
CMD ["bash","setup.sh"]