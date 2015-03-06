AutomatedMakefile = am
CC = g++

FILES = Problem22_1.o RecursiveIntegration.o RombergIntegration.o
EXECUTABLE = Romberg.exe

PROJECT_PATH = $(PROJECT_DIR)

INC_DIRS = -I$(PROJECT_PATH)/CSC2110/
INC_DIRS += -I$($PROJECT_PATH)/
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110/
LIBS = -lCSC2110

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: Project

Project: 				$(FILES)
						$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)

Problem22_1.0:			Problem22_1.h Problem22_1.cpp MultiVarFunction.h
						$(COMPILE) Problem22_1.o

RecursiveIntegration.o:	RecursiveIntegration.h RecursiveIntegration.cpp
						$(COMPILE) RecursiveIntegration.o

RombergIntegration.o:	QueueLinked.h Double.h RombergIntegration.h RombergIntegration.cpp
						$(COMPILE) RombergIntegration.o