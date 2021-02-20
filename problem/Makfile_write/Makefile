# generate object 
TARGET = run

#tools
GCC = gcc
G++ = g++
OBJDUMP	= objdump
AR		= ar

ROOT_DIR = $(CURDIR)
BUILD_DIR = $(ROOT_DIR)/build
neextvpu_dd =./drivers/neextvpu_dd
nextvpu_hw =./drivers/nextvpu_hw
freeware = ./drivers/freeware
nvp_comm = ./nvp_comm



INCLUDES = \
	-I$(ROOT_DIR)/$(freeware)/inc \
	-I$(ROOT_DIR)/./drivers/include \
	-I$(ROOT_DIR)/$(neextvpu_dd)/isp/ \
	-I$(ROOT_DIR)/$(neextvpu_dd)/smu	\
	-I$(ROOT_DIR)/$(nextvpu_hw)/n161/inc/reg	\
	-I$(ROOT_DIR)/$(nvp_comm)/inc \
	-I$(ROOT_DIR)/./drivers/regs/n16x/inc


SUBDIRS:= \
	$(neextvpu_dd)/isp/ \
	$(nextvpu_hw)/ \
	$(neextvpu_dd)/smu/	


export GCC OBJDUMP AR ROOT_DIR INCLUDES G++ TARGET BUILD_DIR
LINK_OBEJC =  $(wildcard build/*.o)
all : $(SUBDIRS) LINK

$(SUBDIRS):
	@if [ ! -d "build" ]; then	\
		mkdir build;	\
	fi	
	@make -C $@
# ECHO:
# 	@echo $(SUBDIRS)
clean:
	rm build -rf
	rm $(TARGET).exe -rf

LINK: $(LINK_OBEJC)
	$(G++) $(LINK_OBEJC) -o $(TARGET).exe