# Anuhya Emmandi
# ave150130@utdallas.edu
# CS3377 Makefile

CXX = g++
CXXFLAGS = 
CPPFLAGS = -Wall -g -I/scratch/perkins/include -std=c++11
LDFLAGS = -L/scratch/perkins/lib
LDLIBS = -lcdk -lcurses 


#
# PROJECTNAME is a descriptive name used for the backup target
# This should not contain spaces or special characters

EXECFILE = program6

OBJS = cdk.o


all: $(EXECFILE)

clean:
	rm -f $(OBJS) $(EXECFILE) *.P *~ \#*


$(EXECFILE): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS)

