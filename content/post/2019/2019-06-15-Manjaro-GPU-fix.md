---
title: "Manjaro Gpu Fix"
date: 2019-06-15T20:26:09+08:00
tags: ['linux']
comments: true
---

## Fix the error

There are some troubles, when install the manjaro in device with nvidia GPU.
We must do tricks to fix it such as below:

1. Run the livecd system again.

2. Entry installed system by `manjaro-chroot` as below:

```bash
sudo mount /dev/nvme0n1p2 /mnt
manjaro-chroot /mnt
```

3. Install video switch software:

```bash
mhwd -i pci video-hybrid-intel-nvidia-bumblebee
# Maybe need uninstall the exist driver
# Could try `video-hybrid-intel-nvidia-prime` too
systemctl enable bumblebeed
usermod -aG bumblebee <User>
```

4. Exit chroot and reboot:

```bash
exit
reboot
```
