# Sony IMX471 DKMS Driver
[AUR package](https://aur.archlinux.org/packages/imx471-dkms-git)

Intel still haven't upstreamed the camera sensor driver for the IMX471 (found on the Thinkpad X9).

Fortunately, as of Linux kernel 6.19, the IPU bridge driver supports the camera sensor so instead of compiling a kernel with patches, DKMS can be used.
This is mostly just useful if you are using libcamera's softisp instead of the proprietary IPU7 stack.


The camera sensor driver (`imx471.c`) was sourced from [Intel's IPU6 repo](https://github.com/intel/ipu6-drivers/blob/6c5ed62bd7d00a2a866741487c3e223db5c59670/drivers/media/i2c/imx471.c).
Commit 6c5ed62 is used as more recent changes make the image upside down.
