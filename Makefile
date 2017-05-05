#############################################################################
# Makefile for building: msiklm
# Generated by qmake (2.01a) (Qt 4.8.6) on: Fr. Jan 15 20:17:47 2016
# Project:  key-light.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -o Makefile key-light.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
FLAGS         = -m64 -pipe -O3 -Wall -W -D_REENTRANT
INCPATH       =
LINK          = gcc
LFLAGS        = -m64 -Wl,-O3
LIBS          = -lhidapi-libusb
DEL_FILE      = rm -f


####### Files

SRCPATH       = ./src/
HEADERS       = $(SRCPATH)msiklm.h
SOURCES       = $(SRCPATH)main.c $(SRCPATH)msiklm.c
OBJECTS       = main.o msiklm.o
TARGET        = msiklm


####### Build rules

all: Makefile $(TARGET)

$(TARGET): $(HEADERS) $(OBJECTS)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS)

clean:
	-$(DEL_FILE) $(OBJECTS)

delete: clean
	-$(DEL_FILE) $(TARGET)

####### Compile

main.o: $(SRCPATH)main.c
	$(CC) -c $(FLAGS) $(INCPATH) -o main.o $(SRCPATH)main.c

msiklm.o: $(SRCPATH)msiklm.h $(SRCPATH)msiklm.c
	$(CC) -c $(FLAGS) $(INCPATH) -o msiklm.o $(SRCPATH)msiklm.c
