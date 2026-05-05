# Sony IMX471 DKMS Driver
[AUR package](https://aur.archlinux.org/packages/imx471-dkms-git)

Intel still haven't upstreamed the camera sensor driver for the IMX471 (found on the Thinkpad X9).

Fortunately, as of Linux kernel 6.19, the IPU bridge driver supports the camera sensor so instead of compiling a kernel with patches, DKMS can be used.
This is mostly just useful if you are using libcamera's softisp instead of the proprietary IPU7 stack.

The camera sensor driver (`imx471.c`) and patched `ipu-bridge.c` was sourced from [this mailing list entry](https://lore.kernel.org/all/20260505061327.286700-3-hpa@redhat.com/).

If using libcamera, feel free to use [this tuning file](https://gist.github.com/BenBJD/7b8b61892a16d6052052b8128fe14e2e) to improve colour accuracy a bit. Values could definitely use more tweaking but it's a decent start

