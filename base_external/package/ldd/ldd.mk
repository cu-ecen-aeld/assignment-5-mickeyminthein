################################################################################
#
# ldd - Linux Device Drivers 3 kernel modules (misc-modules and scull)
#
################################################################################

LDD_VERSION = main
LDD_SITE = https://github.com/cu-ecen-aeld/assignment-7-mickeyminthein
LDD_SITE_METHOD = git
#LDD_GIT_SUBMODULES = YES
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS = misc-modules scull

# Pass kernel build directory and architecture
LDD_MODULE_MAKE_OPTS = \
	KERNELDIR=$(LINUX_DIR) \
	ARCH=$(KERNEL_ARCH) \
	CROSS_COMPILE=$(TARGET_CROSS)

$(eval $(kernel-module))
$(eval $(generic-package))