FROM codingwell/rpi-raspbian-qemu
# Uses resin/rpi-raspbian
# Provides cross-build helpers that actually work

ENV QEMU_EXECVE 1

RUN [ "cross-build-start" ]

RUN apt-get update && \
    apt-get install python3 python3-pip ca-certificates python3-pip gcc python3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN [ "cross-build-end" ]
