---
title: "Installation Of Tensorflow Pytorch Gpu"
date: 2018-09-05
tags: ['tensorflow','pytorch','cuda']
published: true
comments: true
---

## Environment

Arch Linux

## GPU driver

1. Download driver from GPU vendor such as *nvidia*.
2. Switch to tty mode.
3. Run the install script by `sudo sh script.run`.
4. Run `nvidia-modprobe` and `dmesg` to verify installation.

*note:need to diable nouveau driver by the script if installed.*

## Install TensorFlow-cuda

1. Run `sudo pacman -Sy python-tensorflow-cuda`.(or by *pip* or by *conda*)
2. Clone tensorflow models from *https://github.com/tensorflow/models.git*.
3. Run a model to verify installation.

## Install Pytorch-cuda

1. Run `sudo pacman -Sy python-pytorch-cuda`.(or by *pip* or *conda*)
2. Clone tensorflow models from *https://github.com/pytorch/examples.git*.
3. Run a model to verify installation.

*note:install in the way just need to pay attention to conflict between driver and pytorch/tensorflow.*
