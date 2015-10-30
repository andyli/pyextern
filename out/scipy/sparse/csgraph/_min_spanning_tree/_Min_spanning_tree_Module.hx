/* This file is generated, do not edit! */
package scipy.sparse.csgraph._min_spanning_tree;
@:pythonImport("scipy.sparse.csgraph._min_spanning_tree") extern class _Min_spanning_tree_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	/**
		minimum_spanning_tree(csgraph, overwrite=False)
		
		Return a minimum spanning tree of an undirected graph
		
		A minimum spanning tree is a graph consisting of the subset of edges
		which together connect all connected nodes, while minimizing the total
		sum of weights on the edges.  This is computed using the Kruskal algorithm.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix, 2 dimensions
		    The N x N matrix representing an undirected graph over N nodes
		    (see notes below).
		overwrite : bool, optional
		    if true, then parts of the input graph will be overwritten for
		    efficiency.
		
		Returns
		-------
		span_tree : csr matrix
		    The N x N compressed-sparse representation of the undirected minimum
		    spanning tree over the input (see notes below).
		
		Notes
		-----
		This routine uses undirected graphs as input and output.  That is, if
		graph[i, j] and graph[j, i] are both zero, then nodes i and j do not
		have an edge connecting them.  If either is nonzero, then the two are
		connected by the minimum nonzero value of the two.
		
		Examples
		--------
		The following example shows the computation of a minimum spanning tree
		over a simple four-component graph::
		
		     input graph             minimum spanning tree
		
		         (0)                         (0)
		        /   \                       /
		       3     8                     3
		      /       \                   /
		    (3)---5---(1)               (3)---5---(1)
		      \       /                           /
		       6     2                           2
		        \   /                           /
		         (2)                         (2)
		
		It is easy to see from inspection that the minimum spanning tree involves
		removing the edges with weights 8 and 6.  In compressed sparse
		representation, the solution looks like this:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import minimum_spanning_tree
		>>> X = csr_matrix([[0, 8, 0, 3],
		...                 [0, 0, 2, 5],
		...                 [0, 0, 0, 6],
		...                 [0, 0, 0, 0]])
		>>> Tcsr = minimum_spanning_tree(X)
		>>> Tcsr.toarray().astype(int)
		array([[0, 0, 0, 3],
		       [0, 0, 2, 5],
		       [0, 0, 0, 0],
		       [0, 0, 0, 0]])
	**/
	static public function minimum_spanning_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Routine for validation and conversion of csgraph inputs
	**/
	static public function validate_graph(csgraph:Dynamic, directed:Dynamic, ?dtype:Dynamic, ?csr_output:Dynamic, ?dense_output:Dynamic, ?copy_if_dense:Dynamic, ?copy_if_sparse:Dynamic, ?null_value_in:Dynamic, ?null_value_out:Dynamic, ?infinity_null:Dynamic, ?nan_null:Dynamic):Dynamic;
}