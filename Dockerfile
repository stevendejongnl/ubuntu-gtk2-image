FROM ubuntu:20.04

ENV GTK_THEME="Arc-Dark"

# COPY ./.gtkrc-2.0 /root/.gtkrc-2.0
COPY ./python-gtk2_2.24.0-6_amd64.deb /root/python-gtk2_2.24.0-6_amd64.deb

RUN apt update -y
RUN apt install -y \
    libffi-dev \
    python-cairo \
    python-chardet \
    python-gobject-2 \
    python-dateutil \
    # arc-theme \
    # breeze-gtk-theme \
    /root/python-gtk2_2.24.0-6_amd64.deb

LABEL org.opencontainers.image.source="https://github.com/stevendejongnl/ubuntu-gtk2-image"
