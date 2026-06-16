# Sony IMX471 DKMS Driver
[AUR package](https://aur.archlinux.org/packages/imx471-dkms-git)

The camera sensor driver has not yet be upstreamed for the IMX471 (found on the Thinkpad X9).

Fortunately, as of Linux kernel 6.19, the IPU bridge driver supports the camera sensor so instead of compiling a kernel with patches, DKMS can be used.
This is mostly just useful if you are using libcamera's softisp instead of the proprietary and difficult to install IPU7 stack.

The camera sensor driver (`imx471.c`) and patched `ipu-bridge.c` was sourced from [this patch series](https://lore.kernel.org/all/20260609124926.1038981-1-hpa@redhat.com/).

If using libcamera, feel free to use the included tuning file (place in `/usr/share/libcamera/ipa/simple/imx471.yaml`) to improve quality a bit. Values could definitely use more tweaking but it's a decent start
