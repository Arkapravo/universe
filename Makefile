#   Makefile - universe project
#   version 3
#   Richard Vaughan  
#   Modified for Ubuntu 12.04 by Arkapravo Bhaumik, 28 March 2014

# this should work on Linux with MESA
# it is advisable to install binutils-gold, sudo apt-get install binutils-gold
GLUTLIBS = -L/usr/X11R6/lib -lGLU -lGL -lglut -lX11 -lXext -lXmu -lXi
GLUTFLAGS = -I/usr/local/include/GL

# this works on Mac OS X
# GLUTFLAGS = -framework OpenGL -framework GLUT

CC = g++
CXXFLAGS = -g -Wall -O3 $(GLUTFLAGS)
LIBS =  -g -lm -lGL -lGLU -lglut $(GLUTLIBS)

SRC = universe.h universe.cc controller.cc

all: universe

universe: $(SRC)
	$(CC) $(CXXFLAGS) $(LIBS) -o $@ $(SRC) 

clean:
	rm *.o universe



