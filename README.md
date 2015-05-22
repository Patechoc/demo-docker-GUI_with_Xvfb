## Graphical Software within a Docker container

This project is a demo for running a program with a GUI within a Docker container.

Docker normally doesn't handle the "X server", as for most "headless servers", and therefore fails at opening many GUI programs.

The demo is inspired from  https://linuxmeerkat.wordpress.com/2014/10/17/running-a-gui-application-in-a-docker-container/,
and consists of a python script ([firefox.py](https://github.com/Patechoc/demo-docker-GUI_with_Xvfb/blob/master/firefox.py)) opening Firefox and fetching the HTML source of a webpage.

## Results

You can try the script in your terminal and check what it does:
```shell
$ python firefox.py
```

You should see Firefox opening the webpage, and when finished, printing HTML to your terminal.

Now running within Docker, you can see that:

```shell
$ sudo docker run -ti patrickmerlot/xvfb_demo
```

- the page is loaded,
- the HTML source printed,
- but the Firefox GUI doesn't appear! At least the script can proceed without crashing.

## Commands

To rebuild the Docker image:
```shell
$ sudo docker build --rm -t patrickmerlot/xvfb_demo .
```

To run the app within Docker:
```shell
$ sudo docker run -ti patrickmerlot/xvfb_demo
```