# -*- Makefile -*-
#
# Makefile.ARMLinux - Makefile rules for linux on Zaurus
#

INCS = `sdl-config --cflags`

# for Qtopia
LIBS = -lSDL -lSDL_ttf -lSDL_image -lSDL_mixer -lbz2 -lfreetype -ljpeg -lm `sdl-config --libs` -lvorbisidec
# for SL-5500, SL-A300, SL-B500, SL-C700 and SL-C750 DEFS = -DLINUX -DPDA_WIDTH=640 -DBPP16 -DQWS -DUSE_OGG_VORBIS -DINTEGER_OGG_VORBIS

EXESUFFIX =
OBJSUFFIX = .o

.SUFFIXES:
.SUFFIXES: $(OBJSUFFIX) .cpp .h

#CC = arm-linux-g++ 
#LD = arm-linux-g++ -o
#native compile
CC = g++ 
LD = g++ -o 

CFLAGS = -O3 -Wall -fno-exceptions -fno-rtti -fno-check-new -fomit-frame-pointer -pipe -c $(INCS) $(DEFS)
RM = rm -f

TARGET = onscripter$(EXESUFFIX) sarconv$(EXESUFFIX) nsaconv$(EXESUFFIX)
EXT_OBJS = 

include Makefile.onscripter
