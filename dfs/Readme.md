# DFS
 Depth-first search is a graph transversal mechanism where you start at the root
node and explore down that branch as far as possible before backtracking to try another
Branch, it may contain cycles, so we may come to the same node again, To avoid
processing a node more than once, we use a boolean visited array to keep track of the
visited node. Examples of where it can be used:
 - Minimum Spanning Tree
 - Topological sorting
 - To solve puzzle/maze which has one solution
 - Path Finding.
