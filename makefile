# Ahnaf Raihan

all:	BestFirstSearch

BestFirstSearch:	main.o
	g++  main.o -o BestFirstSearch

main.o:	main.cpp
	g++ -c  main.cpp

clean:
	rm -f *.o BestFirstSearch

