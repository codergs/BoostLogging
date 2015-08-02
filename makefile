#export LD_LIBRARY_PATH=/usr/lib/boostlib/lib

BOOST_INCLUDE_PATH=/usr/lib/boostlib/include

BOOST_LIBRARY_PATH= /usr/lib/boostlib/lib

all: main

main: main.o 
	g++ main.o -o main -L $(BOOST_LIBRARY_PATH) -lboost_log -lboost_thread -lboost_filesystem -lboost_system

main.o: 
	g++ -c main.cpp -I $(BOOST_INCLUDE_PATH)

clean:
	rm -rf main main.o



