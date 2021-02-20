src_dir=$(CURDIR)

CC		=	$(CROSS_COMPILE)gcc
CPP		=	$(CROSS_COMPILE)cpp
AR		=	$(CROSS_COMPILE)ar
LD		=	$(CROSS_COMPILE)ld
OBJCOPY		=	$(CROSS_COMPILE)objcopy
CC		?=	gcc
CPP		?=	cpp
AR		?=	ar
LD		?=	ld
OBJCOPY		?=	objcopy
AS		=	$(CC)
DTC		=	dtc


# Setup path of directories
export nextvpu_dd =$(CURDIR)/drivers/neextvpu_dd/isp
export nextvpu_hw =$(CURDIR)/drivers/nextvpu_hw
export freeware = $(CURDIR)/drivers/freeware
export nvp_commm = $(CURDIR)/nvp_commm

nextvpu_dd-object-mks=$(shell if [ -d $(nextvpu_dd)/ ]; then find $(nextvpu_dd) -iname "objects.mk" | sort -r; fi)
# nextvpu_hw-object-mks=$(shell if [ -d $(nextvpu_hw)/ ]; then find $(nextvpu_hw) -iname "objects.mk" | sort -r; fi)

include $(nextvpu_dd-object-mks)


nextvpu_dd-objs-path-y=$(foreach obj,$(nextvpu_dd-objs-y),$(nextvpu_dd)/$(obj))

target-y=$(nextvpu_dd-objs-path-y)
.PHONY: all
all:$(target-y)
	echo $(target-y)