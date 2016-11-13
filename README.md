This image uses codingwell/rpi-raspbian-qemu (from https://github.com/tsuckow/rpi-raspbian-qemu) to provide a Raspberry Pi compatible image that has a working cross-build environment.

Wrap your build steps to taint the environment with qemu allowing building on x86_64.

RUN [ "cross-build-start" ]
RUN echo do buid steps here
RUN [ "cross-build-end" ]
This leaves the container as a pure ARM container that could be pulled on a raspberry pi

You can get a bash shell with:

sudo docker run -it --entrypoint=/usr/bin/qemu-arm-static royhooper/rpi-raspbian-qemu-python3 /bin/bash

You can get a python shell with:

sudo docker run -it --entrypoint=/usr/bin/qemu-arm-static royhooper/rpi-raspbian-qemu-python3 /usr/bin/python3

