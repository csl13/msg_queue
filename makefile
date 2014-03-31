ZMQ_INCLUDE="/home/work/sofa/zmq/include"
ZMQ_LIB="/home/work/sofa/zmq/lib"
WORK_INCLUDE=". ./src/"

GEN_SRC = src/sink.cpp src/ventilator.cpp src/worker.cpp

default: ventilator worker sink

ventilator:src/ventilator.cpp
		g++ -o ventilator -I${ZMQ_INCLUDE} -I./ -I./src/ -L${ZMQ_LIB} -lzmq src/ventilator.cpp


ventilator:src/worker.cpp
		g++ -o ventilator -I${ZMQ_INCLUDE} -I./ -I./src/ -L${ZMQ_LIB} -lzmq src/worker.cpp
		
ventilator:src/sink.cpp
		g++ -o ventilator -I${ZMQ_INCLUDE} -I./ -I./src/ -L${ZMQ_LIB} -lzmq src/sink.cpp
		
clean:
        $(RM) -r ventilator worker sink