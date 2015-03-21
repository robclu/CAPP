###########################################
#										  #
#	Makefile for vector addition using    #
#	AspectC++ and OpenCL C++ 			  #
#										  #		
###########################################

EXE 		= Examples/VectorAdd/VectorAdd

##########################################
# 			DIRECTORIES 				 #
#########################################

EXAMPLES  	= Examples
EXAMPLE   	=

##########################################
# 				SOURCES					 #
##########################################

CPP_SRCS 	= Examples/VectorAdd/VectorAdd.cpp \
			  Examples/VectorAdd/main.cpp

ASPECT_SRCS = 

##########################################
#				LIBRARIES 				 #
##########################################

LIBS 		= -lOpenCL

#########################################
# 		INCLUDE DIRECTORIES				#
#########################################

A_INCLUDES 	=

#########################################
#		LIBRARY DIRECTORIES 			#
#########################################

LIB_DIRS 	= 

#########################################
#			COMPILE ARGS 				#
#########################################

CXX 		= ag++
CXX_FLAGS 	= -O3

all: $(EXE)

$(EXE):
	$(CXX) $(CXX_FLAGS) -o $(EXE) $(CPP_SRCS)  \
		$(ASPECT_SRCS) $(LIBS)

clean:
	rm -rf $(EXE)