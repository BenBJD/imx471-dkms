# Makefile for imx471 out-of-tree build
obj-m += imx471.o

all:
    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
    
clean:
    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean