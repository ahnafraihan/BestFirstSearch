						———————————————————————————
   			    			     Best-First Search 
						———————————————————————————

Best-first search is a search algorithm which explores a graph by expanding the most promising node chosen according to a specified rule. We implement Best-First Search in this program to solve the 0-1 Knapsack problem.

To compile:

1) Move to designated directory holding main.cpp and associated files.
2) Prompt> make
3) Prompt> ./BestFirstSearch <input.txt> <output.txt>

<input.txt> is your designated input text file for BestFirstSearch input

The structure of the input file is as follows:

Line 1: n,c // n is the size of the problem (the total number of items) and C is the total weight limit

Lines 2 to n+1: wi,pi // wi is the weight of item i and pi is the profit of item i

<output.txt> is your designated output text file for BestFirstSearch output

The structure of the output file is as follows:

Line 1: the size of the problem (i.e., the total number of items),the optimal value (i.e., the maximum profit),the size (k) of the first optimal solution found (i.e., the size of the first optimal subset of items found to produce the maximum profit)

Line 2: the total number of nodes visited (by the algorithm from the start to the end of the search
including the root and the last node visited in the binary search space tree), the total number of leaf nodes visited

Lines 3 to 3+(k-1): each line contains the weight and profit of an item selected in order for the first optimal solution found.

BestFirstSearch uses an evaluation function to identify the most promising objects, then further examines said objects. In our case, we utilize Branch & Bound which follows that nodes with the highest upper bounds have the best potential of producing the optimal solution and therefore should be the first to expand. We attempt to access the best-first by making use of a priority queue in order to rank objects that have the most potential. We use arrays and vectors to store our items and utilize nodes to create our tree. We use this methodology to solve the 0-1 knapsack problem.

The running time of Best-First Search algorithm is O(b^d) for search tree of depth d and branching factor b. Best-First Search uses the same strategy as Breadth-First Search, but tries to optimize it by prioritizing promising solutions. However, in the worst case where our prioritizing heuristic fails us, we simply run the same as Breadth-First Search.

BestFirstSearch contains main.cpp, used as a driver for the knapsack3 algorithm.
