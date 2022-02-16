/* This file is generated, do not edit! */
package scipy.sparse.csgraph;
@:pythonImport("scipy.sparse.csgraph") extern class Csgraph_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		bellman_ford(csgraph, directed=True, indices=None, return_predecessors=False,
		             unweighted=False)
		
		Compute the shortest path lengths using the Bellman-Ford algorithm.
		
		The Bellman-Ford algorithm can robustly deal with graphs with negative
		weights.  If a negative cycle is detected, an error is raised.  For
		graphs without negative edge weights, Dijkstra's algorithm may be faster.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of distances representing the input graph.
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i]
		indices : array_like or int, optional
		    if specified, only compute the paths from the points at the given
		    indices.
		return_predecessors : bool, optional
		    If True, return the size (N, N) predecesor matrix
		unweighted : bool, optional
		    If True, then find unweighted distances.  That is, rather than finding
		    the path between each point such that the sum of weights is minimized,
		    find the path such that the number of edges is minimized.
		
		Returns
		-------
		dist_matrix : ndarray
		    The N x N matrix of distances between graph nodes. dist_matrix[i,j]
		    gives the shortest distance from point i to point j along the graph.
		
		predecessors : ndarray
		    Returned only if return_predecessors == True.
		    The N x N matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
		Raises
		------
		NegativeCycleError:
		    if there are negative cycles in the graph
		
		Notes
		-----
		This routine is specially designed for graphs with negative edge weights.
		If all edge weights are positive, then Dijkstra's algorithm is a better
		choice.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import bellman_ford
		
		>>> graph = [
		... [0, 1 ,2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> dist_matrix, predecessors = bellman_ford(csgraph=graph, directed=False, indices=0, return_predecessors=True)
		>>> dist_matrix
		array([0., 1., 2., 2.])
		>>> predecessors
		array([-9999,     0,     0,     1], dtype=int32)
	**/
	static public function bellman_ford(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		breadth_first_order(csgraph, i_start, directed=True, return_predecessors=True)
		
		Return a breadth-first ordering starting with specified node.
		
		Note that a breadth-first order is not unique, but the tree which it
		generates is unique.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N compressed sparse graph.  The input csgraph will be
		    converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		return_predecessors : bool, optional
		    If True (default), then return the predecesor array (see below).
		
		Returns
		-------
		node_array : ndarray, one dimension
		    The breadth-first list of nodes, starting with specified node.  The
		    length of node_array is the number of nodes reachable from the
		    specified node.
		predecessors : ndarray, one dimension
		    Returned only if return_predecessors is True.
		    The length-N list of predecessors of each node in a breadth-first
		    tree.  If node i is in the tree, then its parent is given by
		    predecessors[i]. If node i is not in the tree (and for the parent
		    node) then predecessors[i] = -9999.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import breadth_first_order
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> breadth_first_order(graph,0)
		(array([0, 1, 2, 3], dtype=int32), array([-9999,     0,     0,     1], dtype=int32))
	**/
	static public function breadth_first_order(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		breadth_first_tree(csgraph, i_start, directed=True)
		
		Return the tree generated by a breadth-first search
		
		Note that a breadth-first tree from a specified node is unique.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the breadth-
		    first tree drawn from csgraph, starting at the specified node.
		
		Examples
		--------
		The following example shows the computation of a depth-first tree
		over a simple four-component graph, starting at node 0::
		
		     input graph          breadth first tree from (0)
		
		         (0)                         (0)
		        /   \                       /   \
		       3     8                     3     8
		      /       \                   /       \
		    (3)---5---(1)               (3)       (1)
		      \       /                           /
		       6     2                           2
		        \   /                           /
		         (2)                         (2)
		
		In compressed sparse representation, the solution looks like this:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import breadth_first_tree
		>>> X = csr_matrix([[0, 8, 0, 3],
		...                 [0, 0, 2, 5],
		...                 [0, 0, 0, 6],
		...                 [0, 0, 0, 0]])
		>>> Tcsr = breadth_first_tree(X, 0, directed=False)
		>>> Tcsr.toarray().astype(int)
		array([[0, 8, 0, 3],
		       [0, 0, 2, 0],
		       [0, 0, 0, 0],
		       [0, 0, 0, 0]])
		
		Note that the resulting graph is a Directed Acyclic Graph which spans
		the graph.  A breadth-first tree from a given node is unique.
	**/
	static public function breadth_first_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		connected_components(csgraph, directed=True, connection='weak',
		                     return_labels=True)
		
		Analyze the connected components of a sparse graph
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		connection : str, optional
		    ['weak'|'strong'].  For directed graphs, the type of connection to
		    use.  Nodes i and j are strongly connected if a path exists both
		    from i to j and from j to i. A directed graph is weakly connected
		    if replacing all of its directed edges with undirected edges produces
		    a connected (undirected) graph. If directed == False, this keyword
		    is not referenced.
		return_labels : bool, optional
		    If True (default), then return the labels for each of the connected
		    components.
		
		Returns
		-------
		n_components: int
		    The number of connected components.
		labels: ndarray
		    The length-N array of labels of the connected components.
		
		References
		----------
		.. [1] D. J. Pearce, "An Improved Algorithm for Finding the Strongly
		       Connected Components of a Directed Graph", Technical Report, 2005
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import connected_components
		
		>>> graph = [
		... [0, 1, 1, 0, 0],
		... [0, 0, 1, 0, 0],
		... [0, 0, 0, 0, 0],
		... [0, 0, 0, 0, 1],
		... [0, 0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    1
		  (1, 2)    1
		  (3, 4)    1
		
		>>> n_components, labels = connected_components(csgraph=graph, directed=False, return_labels=True)
		>>> n_components
		2
		>>> labels
		array([0, 0, 0, 1, 1], dtype=int32)
	**/
	static public function connected_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		construct_dist_matrix(graph, predecessors, directed=True, null_value=np.inf)
		
		Construct distance matrix from a predecessor matrix
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		graph : array_like or sparse
		    The N x N matrix representation of a directed or undirected graph.
		    If dense, then non-edges are indicated by zeros or infinities.
		predecessors : array_like
		    The N x N matrix of predecessors of each node (see Notes below).
		directed : bool, optional
		    If True (default), then operate on a directed graph: only move from
		    point i to point j along paths csgraph[i, j].
		    If False, then operate on an undirected graph: the algorithm can
		    progress from point i to j along csgraph[i, j] or csgraph[j, i].
		null_value : bool, optional
		    value to use for distances between unconnected nodes.  Default is
		    np.inf
		
		Returns
		-------
		dist_matrix : ndarray
		    The N x N matrix of distances between nodes along the path specified
		    by the predecessor matrix.  If no path exists, the distance is zero.
		
		Notes
		-----
		The predecessor matrix is of the form returned by
		`shortest_path`.  Row i of the predecessor matrix contains
		information on the shortest paths from point i: each entry
		predecessors[i, j] gives the index of the previous node in the path from
		point i to point j.  If no path exists between point i and j, then
		predecessors[i, j] = -9999
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import construct_dist_matrix
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 3)    3
		
		>>> pred = np.array([[-9999, 0, 0, 2],
		...                  [1, -9999, 0, 1],
		...                  [2, 0, -9999, 2],
		...                  [1, 3, 3, -9999]], dtype=np.int32)
		
		>>> construct_dist_matrix(graph=graph, predecessors=pred, directed=False)
		array([[0., 1., 2., 5.],
		       [1., 0., 3., 1.],
		       [2., 3., 0., 3.],
		       [2., 1., 3., 0.]])
	**/
	static public function construct_dist_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csgraph_from_dense(graph, null_value=0, nan_null=True, infinity_null=True)
		
		Construct a CSR-format sparse graph from a dense matrix.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		graph : array_like
		    Input graph.  Shape should be (n_nodes, n_nodes).
		null_value : float or None (optional)
		    Value that denotes non-edges in the graph.  Default is zero.
		infinity_null : bool
		    If True (default), then infinite entries (both positive and negative)
		    are treated as null edges.
		nan_null : bool
		    If True (default), then NaN entries are treated as non-edges
		
		Returns
		-------
		csgraph : csr_matrix
		    Compressed sparse representation of graph,
		
		Examples
		--------
		>>> from scipy.sparse.csgraph import csgraph_from_dense
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		
		>>> csgraph_from_dense(graph)
		<4x4 sparse matrix of type '<class 'numpy.float64'>'
		    with 4 stored elements in Compressed Sparse Row format>
	**/
	static public function csgraph_from_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csgraph_from_masked(graph)
		
		Construct a CSR-format graph from a masked array.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		graph : MaskedArray
		    Input graph.  Shape should be (n_nodes, n_nodes).
		
		Returns
		-------
		csgraph : csr_matrix
		    Compressed sparse representation of graph,
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.sparse.csgraph import csgraph_from_masked
		
		>>> graph_masked = np.ma.masked_array(data =[
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ],
		... mask=[[ True, False, False,  True],
		...       [ True,  True,  True, False],
		...       [ True,  True,  True, False],
		...       [ True,  True,  True,  True]],
		... fill_value = 0)
		
		>>> csgraph_from_masked(graph_masked)
		<4x4 sparse matrix of type '<class 'numpy.float64'>'
		    with 4 stored elements in Compressed Sparse Row format>
	**/
	static public function csgraph_from_masked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csgraph_masked_from_dense(graph, null_value=0, nan_null=True,
		                          infinity_null=True, copy=True)
		
		Construct a masked array graph representation from a dense matrix.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		graph : array_like
		    Input graph.  Shape should be (n_nodes, n_nodes).
		null_value : float or None (optional)
		    Value that denotes non-edges in the graph.  Default is zero.
		infinity_null : bool
		    If True (default), then infinite entries (both positive and negative)
		    are treated as null edges.
		nan_null : bool
		    If True (default), then NaN entries are treated as non-edges
		
		Returns
		-------
		csgraph : MaskedArray
		    masked array representation of graph
		
		Examples
		--------
		>>> from scipy.sparse.csgraph import csgraph_masked_from_dense
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		
		>>> csgraph_masked_from_dense(graph)
		masked_array(
		  data=[[--,  1,  2, --],
		        [--, --, --,  1],
		        [--, --, --,  3],
		        [--, --, --, --]],
		  mask=[[ True, False, False,  True],
		        [ True,  True,  True, False],
		        [ True,  True,  True, False],
		        [ True,  True,  True,  True]],
		  fill_value=0)
	**/
	static public function csgraph_masked_from_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csgraph_to_dense(csgraph, null_value=0)
		
		Convert a sparse graph representation to a dense representation
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : csr_matrix, csc_matrix, or lil_matrix
		    Sparse representation of a graph.
		null_value : float, optional
		    The value used to indicate null edges in the dense representation.
		    Default is 0.
		
		Returns
		-------
		graph : ndarray
		    The dense representation of the sparse graph.
		
		Notes
		-----
		For normal sparse graph representations, calling csgraph_to_dense with
		null_value=0 produces an equivalent result to using dense format
		conversions in the main sparse package.  When the sparse representations
		have repeated values, however, the results will differ.  The tools in
		scipy.sparse will add repeating values to obtain a final value.  This
		function will select the minimum among repeating values to obtain a
		final value.  For example, here we'll create a two-node directed sparse
		graph with multiple edges from node 0 to node 1, of weights 2 and 3.
		This illustrates the difference in behavior:
		
		>>> from scipy.sparse import csr_matrix, csgraph
		>>> data = np.array([2, 3])
		>>> indices = np.array([1, 1])
		>>> indptr = np.array([0, 2, 2])
		>>> M = csr_matrix((data, indices, indptr), shape=(2, 2))
		>>> M.toarray()
		array([[0, 5],
		       [0, 0]])
		>>> csgraph.csgraph_to_dense(M)
		array([[0., 2.],
		       [0., 0.]])
		
		The reason for this difference is to allow a compressed sparse graph to
		represent multiple edges between any two nodes.  As most sparse graph
		algorithms are concerned with the single lowest-cost edge between any
		two nodes, the default scipy.sparse behavior of summming multiple weights
		does not make sense in this context.
		
		The other reason for using this routine is to allow for graphs with
		zero-weight edges.  Let's look at the example of a two-node directed
		graph, connected by an edge of weight zero:
		
		>>> from scipy.sparse import csr_matrix, csgraph
		>>> data = np.array([0.0])
		>>> indices = np.array([1])
		>>> indptr = np.array([0, 1, 1])
		>>> M = csr_matrix((data, indices, indptr), shape=(2, 2))
		>>> M.toarray()
		array([[0, 0],
		       [0, 0]])
		>>> csgraph.csgraph_to_dense(M, np.inf)
		array([[inf,  0.],
		       [inf, inf]])
		
		In the first case, the zero-weight edge gets lost in the dense
		representation.  In the second case, we can choose a different null value
		and see the true form of the graph.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import csgraph_to_dense
		
		>>> graph = csr_matrix( [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ])
		>>> graph
		<4x4 sparse matrix of type '<class 'numpy.int64'>'
		    with 4 stored elements in Compressed Sparse Row format>
		
		>>> csgraph_to_dense(graph)
		array([[0., 1., 2., 0.],
		       [0., 0., 0., 1.],
		       [0., 0., 0., 3.],
		       [0., 0., 0., 0.]])
	**/
	static public function csgraph_to_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csgraph_to_masked(csgraph)
		
		Convert a sparse graph representation to a masked array representation
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : csr_matrix, csc_matrix, or lil_matrix
		    Sparse representation of a graph.
		
		Returns
		-------
		graph : MaskedArray
		    The masked dense representation of the sparse graph.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import csgraph_to_masked
		
		>>> graph = csr_matrix( [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ])
		>>> graph
		<4x4 sparse matrix of type '<class 'numpy.int64'>'
		    with 4 stored elements in Compressed Sparse Row format>
		
		>>> csgraph_to_masked(graph)
		masked_array(
		  data=[[ --, 1.0, 2.0,  --],
		        [ --,  --,  --, 1.0],
		        [ --,  --,  --, 3.0],
		        [ --,  --,  --,  --]],
		  mask=[[ True, False, False,  True],
		        [ True,  True,  True, False],
		        [ True,  True,  True, False],
		        [ True,  True,  True,  True]],
		  fill_value=1e+20)
	**/
	static public function csgraph_to_masked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth_first_order(csgraph, i_start, directed=True, return_predecessors=True)
		
		Return a depth-first ordering starting with specified node.
		
		Note that a depth-first order is not unique.  Furthermore, for graphs
		with cycles, the tree generated by a depth-first search is not
		unique either.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N compressed sparse graph.  The input csgraph will be
		    converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		return_predecessors : bool, optional
		    If True (default), then return the predecesor array (see below).
		
		Returns
		-------
		node_array : ndarray, one dimension
		    The depth-first list of nodes, starting with specified node.  The
		    length of node_array is the number of nodes reachable from the
		    specified node.
		predecessors : ndarray, one dimension
		    Returned only if return_predecessors is True.
		    The length-N list of predecessors of each node in a depth-first
		    tree.  If node i is in the tree, then its parent is given by
		    predecessors[i]. If node i is not in the tree (and for the parent
		    node) then predecessors[i] = -9999.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import depth_first_order
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> depth_first_order(graph,0)
		(array([0, 1, 3, 2], dtype=int32), array([-9999,     0,     0,     1], dtype=int32))
	**/
	static public function depth_first_order(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		depth_first_tree(csgraph, i_start, directed=True)
		
		Return a tree generated by a depth-first search.
		
		Note that a tree generated by a depth-first search is not unique:
		it depends on the order that the children of each node are searched.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the compressed sparse graph.  The input
		    csgraph will be converted to csr format for the calculation.
		i_start : int
		    The index of starting node.
		directed : bool, optional
		    If True (default), then operate on a directed graph: only
		    move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the depth-
		    first tree drawn from csgraph, starting at the specified node.
		
		Examples
		--------
		The following example shows the computation of a depth-first tree
		over a simple four-component graph, starting at node 0::
		
		     input graph           depth first tree from (0)
		
		         (0)                         (0)
		        /   \                           \
		       3     8                           8
		      /       \                           \
		    (3)---5---(1)               (3)       (1)
		      \       /                   \       /
		       6     2                     6     2
		        \   /                       \   /
		         (2)                         (2)
		
		In compressed sparse representation, the solution looks like this:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import depth_first_tree
		>>> X = csr_matrix([[0, 8, 0, 3],
		...                 [0, 0, 2, 5],
		...                 [0, 0, 0, 6],
		...                 [0, 0, 0, 0]])
		>>> Tcsr = depth_first_tree(X, 0, directed=False)
		>>> Tcsr.toarray().astype(int)
		array([[0, 8, 0, 0],
		       [0, 0, 2, 0],
		       [0, 0, 0, 6],
		       [0, 0, 0, 0]])
		
		Note that the resulting graph is a Directed Acyclic Graph which spans
		the graph.  Unlike a breadth-first tree, a depth-first tree of a given
		graph is not unique if the graph contains cycles.  If the above solution
		had begun with the edge connecting nodes 0 and 3, the result would have
		been different.
	**/
	static public function depth_first_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dijkstra(csgraph, directed=True, indices=None, return_predecessors=False,
		         unweighted=False, limit=np.inf, min_only=False)
		
		Dijkstra algorithm using Fibonacci Heaps
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of non-negative distances representing the input graph.
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j] and from
		    point j to i along paths csgraph[j, i].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j or j to i along either
		    csgraph[i, j] or csgraph[j, i].
		indices : array_like or int, optional
		    if specified, only compute the paths from the points at the given
		    indices.
		return_predecessors : bool, optional
		    If True, return the size (N, N) predecesor matrix
		unweighted : bool, optional
		    If True, then find unweighted distances.  That is, rather than finding
		    the path between each point such that the sum of weights is minimized,
		    find the path such that the number of edges is minimized.
		limit : float, optional
		    The maximum distance to calculate, must be >= 0. Using a smaller limit
		    will decrease computation time by aborting calculations between pairs
		    that are separated by a distance > limit. For such pairs, the distance
		    will be equal to np.inf (i.e., not connected).
		
		    .. versionadded:: 0.14.0
		min_only : bool, optional
		    If False (default), for every node in the graph, find the shortest path
		    from every node in indices.
		    If True, for every node in the graph, find the shortest path from any
		    of the nodes in indices (which can be substantially faster).
		
		    .. versionadded:: 1.3.0
		
		Returns
		-------
		dist_matrix : ndarray, shape ([n_indices, ]n_nodes,)
		    The matrix of distances between graph nodes. If min_only=False,
		    dist_matrix has shape (n_indices, n_nodes) and dist_matrix[i, j]
		    gives the shortest distance from point i to point j along the graph.
		    If min_only=True, dist_matrix has shape (n_nodes,) and contains for
		    a given node the shortest path to that node from any of the nodes
		    in indices.
		predecessors : ndarray, shape ([n_indices, ]n_nodes,)
		    If min_only=False, this has shape (n_indices, n_nodes),
		    otherwise it has shape (n_nodes,).
		    Returned only if return_predecessors == True.
		    The matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
		sources : ndarray, shape (n_nodes,)
		    Returned only if min_only=True and return_predecessors=True.
		    Contains the index of the source which had the shortest path
		    to each target.  If no path exists within the limit,
		    this will contain -9999.  The value at the indices passed
		    will be equal to that index (i.e. the fastest way to reach
		    node i, is to start on node i).
		
		Notes
		-----
		As currently implemented, Dijkstra's algorithm does not work for
		graphs with direction-dependent distances when directed == False.
		i.e., if csgraph[i,j] and csgraph[j,i] are not equal and
		both are nonzero, setting directed=False will not yield the correct
		result.
		
		Also, this routine does not work for graphs with negative
		distances.  Negative distances can lead to infinite cycles that must
		be handled by specialized algorithms such as Bellman-Ford's algorithm
		or Johnson's algorithm.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import dijkstra
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 3)    3
		
		>>> dist_matrix, predecessors = dijkstra(csgraph=graph, directed=False, indices=0, return_predecessors=True)
		>>> dist_matrix
		array([0., 1., 2., 2.])
		>>> predecessors
		array([-9999,     0,     0,     1], dtype=int32)
	**/
	static public function dijkstra(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floyd_warshall(csgraph, directed=True, return_predecessors=False,
		               unweighted=False, overwrite=False)
		
		Compute the shortest path lengths using the Floyd-Warshall algorithm
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of distances representing the input graph.
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i]
		return_predecessors : bool, optional
		    If True, return the size (N, N) predecesor matrix
		unweighted : bool, optional
		    If True, then find unweighted distances.  That is, rather than finding
		    the path between each point such that the sum of weights is minimized,
		    find the path such that the number of edges is minimized.
		overwrite : bool, optional
		    If True, overwrite csgraph with the result.  This applies only if
		    csgraph is a dense, c-ordered array with dtype=float64.
		
		Returns
		-------
		dist_matrix : ndarray
		    The N x N matrix of distances between graph nodes. dist_matrix[i,j]
		    gives the shortest distance from point i to point j along the graph.
		
		predecessors : ndarray
		    Returned only if return_predecessors == True.
		    The N x N matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
		Raises
		------
		NegativeCycleError:
		    if there are negative cycles in the graph
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import floyd_warshall
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		
		>>> dist_matrix, predecessors = floyd_warshall(csgraph=graph, directed=False, return_predecessors=True)
		>>> dist_matrix
		array([[0., 1., 2., 2.],
		       [1., 0., 3., 1.],
		       [2., 3., 0., 3.],
		       [2., 1., 3., 0.]])
		>>> predecessors
		array([[-9999,     0,     0,     1],
		       [    1, -9999,     0,     1],
		       [    2,     0, -9999,     2],
		       [    1,     3,     3, -9999]], dtype=int32)
	**/
	static public function floyd_warshall(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		johnson(csgraph, directed=True, indices=None, return_predecessors=False,
		        unweighted=False)
		
		Compute the shortest path lengths using Johnson's algorithm.
		
		Johnson's algorithm combines the Bellman-Ford algorithm and Dijkstra's
		algorithm to quickly find shortest paths in a way that is robust to
		the presence of negative cycles.  If a negative cycle is detected,
		an error is raised.  For graphs without negative edge weights,
		dijkstra may be faster.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of distances representing the input graph.
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i]
		indices : array_like or int, optional
		    if specified, only compute the paths from the points at the given
		    indices.
		return_predecessors : bool, optional
		    If True, return the size (N, N) predecesor matrix
		unweighted : bool, optional
		    If True, then find unweighted distances.  That is, rather than finding
		    the path between each point such that the sum of weights is minimized,
		    find the path such that the number of edges is minimized.
		
		Returns
		-------
		dist_matrix : ndarray
		    The N x N matrix of distances between graph nodes. dist_matrix[i,j]
		    gives the shortest distance from point i to point j along the graph.
		
		predecessors : ndarray
		    Returned only if return_predecessors == True.
		    The N x N matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
		Raises
		------
		NegativeCycleError:
		    if there are negative cycles in the graph
		
		Notes
		-----
		This routine is specially designed for graphs with negative edge weights.
		If all edge weights are positive, then Dijkstra's algorithm is a better
		choice.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import johnson
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> dist_matrix, predecessors = johnson(csgraph=graph, directed=False, indices=0, return_predecessors=True)
		>>> dist_matrix
		array([0., 1., 2., 2.])
		>>> predecessors
		array([-9999,     0,     0,     1], dtype=int32)
	**/
	static public function johnson(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Laplacian matrix of a directed graph.
		
		Parameters
		----------
		csgraph : array_like or sparse matrix, 2 dimensions
		    compressed-sparse graph, with shape (N, N).
		normed : bool, optional
		    If True, then compute symmetric normalized Laplacian.
		return_diag : bool, optional
		    If True, then also return an array related to vertex degrees.
		use_out_degree : bool, optional
		    If True, then use out-degree instead of in-degree.
		    This distinction matters only if the graph is asymmetric.
		    Default: False.
		
		Returns
		-------
		lap : ndarray or sparse matrix
		    The N x N laplacian matrix of csgraph. It will be a NumPy array (dense)
		    if the input was dense, or a sparse matrix otherwise.
		diag : ndarray, optional
		    The length-N diagonal of the Laplacian matrix.
		    For the normalized Laplacian, this is the array of square roots
		    of vertex degrees or 1 if the degree is zero.
		
		Notes
		-----
		The Laplacian matrix of a graph is sometimes referred to as the
		"Kirchoff matrix" or the "admittance matrix", and is useful in many
		parts of spectral graph theory. In particular, the eigen-decomposition
		of the laplacian matrix can give insight into many properties of the graph.
		
		Examples
		--------
		>>> from scipy.sparse import csgraph
		>>> G = np.arange(5) * np.arange(5)[:, np.newaxis]
		>>> G
		array([[ 0,  0,  0,  0,  0],
		       [ 0,  1,  2,  3,  4],
		       [ 0,  2,  4,  6,  8],
		       [ 0,  3,  6,  9, 12],
		       [ 0,  4,  8, 12, 16]])
		>>> csgraph.laplacian(G, normed=False)
		array([[  0,   0,   0,   0,   0],
		       [  0,   9,  -2,  -3,  -4],
		       [  0,  -2,  16,  -6,  -8],
		       [  0,  -3,  -6,  21, -12],
		       [  0,  -4,  -8, -12,  24]])
	**/
	static public function laplacian(csgraph:Dynamic, ?normed:Dynamic, ?return_diag:Dynamic, ?use_out_degree:Dynamic):Dynamic;
	/**
		maximum_bipartite_matching(graph, perm_type='row')
		
		Returns a matching of a bipartite graph whose cardinality is as least that
		of any given matching of the graph.
		
		Parameters
		----------
		graph : sparse matrix
		    Input sparse in CSR format whose rows represent one partition of the
		    graph and whose columns represent the other partition. An edge between
		    two vertices is indicated by the corresponding entry in the matrix
		    existing in its sparse representation.
		perm_type : str, {'row', 'column'}
		    Which partition to return the matching in terms of: If ``'row'``, the
		    function produces an array whose length is the number of columns in the
		    input, and whose :math:`j`'th element is the row matched to the
		    :math:`j`'th column. Conversely, if ``perm_type`` is ``'column'``, this
		    returns the columns matched to each row.
		
		Returns
		-------
		perm : ndarray
		    A matching of the vertices in one of the two partitions. Unmatched
		    vertices are represented by a ``-1`` in the result.
		
		Notes
		-----
		This function implements the Hopcroft--Karp algorithm [1]_. Its time
		complexity is :math:`O(\lvert E \rvert \sqrt{\lvert V \rvert})`, and its
		space complexity is linear in the number of rows. In practice, this
		asymmetry between rows and columns means that it can be more efficient to
		transpose the input if it contains more columns than rows.
		
		By Konig's theorem, the cardinality of the matching is also the number of
		vertices appearing in a minimum vertex cover of the graph.
		
		Note that if the sparse representation contains explicit zeros, these are
		still counted as edges.
		
		The implementation was changed in SciPy 1.4.0 to allow matching of general
		bipartite graphs, where previous versions would assume that a perfect
		matching existed. As such, code written against 1.4.0 will not necessarily
		work on older versions.
		
		References
		----------
		.. [1] John E. Hopcroft and Richard M. Karp. "An n^{5 / 2} Algorithm for
		       Maximum Matchings in Bipartite Graphs" In: SIAM Journal of Computing
		       2.4 (1973), pp. 225--231. :doi:`10.1137/0202019`
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import maximum_bipartite_matching
		
		As a simple example, consider a bipartite graph in which the partitions
		contain 2 and 3 elements respectively. Suppose that one partition contains
		vertices labelled 0 and 1, and that the other partition contains vertices
		labelled A, B, and C. Suppose that there are edges connecting 0 and C,
		1 and A, and 1 and B. This graph would then be represented by the following
		sparse matrix:
		
		>>> graph = csr_matrix([[0, 0, 1], [1, 1, 0]])
		
		Here, the 1s could be anything, as long as they end up being stored as
		elements in the sparse matrix. We can now calculate maximum matchings as
		follows:
		
		>>> print(maximum_bipartite_matching(graph, perm_type='column'))
		[2 0]
		>>> print(maximum_bipartite_matching(graph, perm_type='row'))
		[ 1 -1  0]
		
		The first output tells us that 1 and 2 are matched with C and A
		respectively, and the second output tells us that A, B, and C are matched
		with 1, nothing, and 0 respectively.
		
		Note that explicit zeros are still converted to edges. This means that a
		different way to represent the above graph is by using the CSR structure
		directly as follows:
		
		>>> data = [0, 0, 0]
		>>> indices = [2, 0, 1]
		>>> indptr = [0, 1, 3]
		>>> graph = csr_matrix((data, indices, indptr))
		>>> print(maximum_bipartite_matching(graph, perm_type='column'))
		[2 0]
		>>> print(maximum_bipartite_matching(graph, perm_type='row'))
		[ 1 -1  0]
		
		When one or both of the partitions are empty, the matching is empty as
		well:
		
		>>> graph = csr_matrix((2, 0))
		>>> print(maximum_bipartite_matching(graph, perm_type='column'))
		[-1 -1]
		>>> print(maximum_bipartite_matching(graph, perm_type='row'))
		[]
		
		When the input matrix is square, and the graph is known to admit a perfect
		matching, i.e. a matching with the property that every vertex in the graph
		belongs to some edge in the matching, then one can view the output as the
		permutation of rows (or columns) turning the input matrix into one with the
		property that all diagonal elements are non-empty:
		
		>>> a = [[0, 1, 2, 0], [1, 0, 0, 1], [2, 0, 0, 3], [0, 1, 3, 0]]
		>>> graph = csr_matrix(a)
		>>> perm = maximum_bipartite_matching(graph, perm_type='row')
		>>> print(graph[perm].toarray())
		[[1 0 0 1]
		 [0 1 2 0]
		 [0 1 3 0]
		 [2 0 0 3]]
	**/
	static public function maximum_bipartite_matching(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximum_flow(csgraph, source, sink)
		
		Maximize the flow between two vertices in a graph.
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		csgraph : csr_matrix
		    The square matrix representing a directed graph whose (i, j)'th entry
		    is an integer representing the capacity of the edge between
		    vertices i and j.
		source : int
		    The source vertex from which the flow flows.
		sink : int
		    The sink vertex to which the flow flows.
		method: {'edmonds_karp', 'dinic'}, optional
		    The method/algorithm to be used for computing the maximum flow.
		    Following methods are supported,
		
		        * 'edmonds_karp': Edmonds Karp algorithm in [1]_.
		        * 'dinic': Dinic's algorithm in [4]_.
		
		    Default is 'dinic'.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		res : MaximumFlowResult
		    A maximum flow represented by a ``MaximumFlowResult``
		    which includes the value of the flow in ``flow_value``,
		    and the residual graph in ``residual``.
		
		Raises
		------
		TypeError:
		    if the input graph is not in CSR format.
		
		ValueError:
		    if the capacity values are not integers, or the source or sink are out
		    of bounds.
		
		Notes
		-----
		This solves the maximum flow problem on a given directed weighted graph:
		A flow associates to every edge a value, also called a flow, less than the
		capacity of the edge, so that for every vertex (apart from the source and
		the sink vertices), the total incoming flow is equal to the total outgoing
		flow. The value of a flow is the sum of the flow of all edges leaving the
		source vertex, and the maximum flow problem consists of finding a flow
		whose value is maximal.
		
		By the max-flow min-cut theorem, the maximal value of the flow is also the
		total weight of the edges in a minimum cut.
		
		To solve the problem, we provide Edmonds--Karp [1]_ and Dinic's algorithm
		[4]_. The implementation of both algorithms strive to exploit sparsity.
		The time complexity of the former :math:`O(|V|\,|E|^2)` and its space
		complexity is :math:`O(|E|)`. The latter achieves its performance by
		building level graphs and finding blocking flows in them. Its time
		complexity is :math:`O(|V|^2\,|E|)` and its space complexity is
		:math:`O(|E|)`.
		
		The maximum flow problem is usually defined with real valued capacities,
		but we require that all capacities are integral to ensure convergence. When
		dealing with rational capacities, or capacities belonging to
		:math:`x\mathbb{Q}` for some fixed :math:`x \in \mathbb{R}`, it is possible
		to reduce the problem to the integral case by scaling all capacities
		accordingly.
		
		Solving a maximum-flow problem can be used for example for graph cuts
		optimization in computer vision [3]_.
		
		References
		----------
		.. [1] Edmonds, J. and Karp, R. M.
		       Theoretical improvements in algorithmic efficiency for network flow
		       problems. 1972. Journal of the ACM. 19 (2): pp. 248-264
		.. [2] Cormen, T. H. and Leiserson, C. E. and Rivest, R. L. and Stein C.
		       Introduction to Algorithms. Second Edition. 2001. MIT Press.
		.. [3] https://en.wikipedia.org/wiki/Graph_cuts_in_computer_vision
		.. [4] Dinic, Efim A.
		       Algorithm for solution of a problem of maximum flow in networks with
		       power estimation. In Soviet Math. Doklady, vol. 11, pp. 1277-1280.
		       1970.
		
		Examples
		--------
		Perhaps the simplest flow problem is that of a graph of only two vertices
		with an edge from source (0) to sink (1)::
		
		    (0) --5--> (1)
		
		Here, the maximum flow is simply the capacity of the edge:
		
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import maximum_flow
		>>> graph = csr_matrix([[0, 5], [0, 0]])
		>>> maximum_flow(graph, 0, 1).flow_value
		5
		>>> maximum_flow(graph, 0, 1, method='edmonds_karp').flow_value
		5
		
		If, on the other hand, there is a bottleneck between source and sink, that
		can reduce the maximum flow::
		
		    (0) --5--> (1) --3--> (2)
		
		>>> graph = csr_matrix([[0, 5, 0], [0, 0, 3], [0, 0, 0]])
		>>> maximum_flow(graph, 0, 2).flow_value
		3
		
		A less trivial example is given in [2]_, Chapter 26.1:
		
		>>> graph = csr_matrix([[0, 16, 13,  0,  0,  0],
		...                     [0,  0, 10, 12,  0,  0],
		...                     [0,  4,  0,  0, 14,  0],
		...                     [0,  0,  9,  0,  0, 20],
		...                     [0,  0,  0,  7,  0,  4],
		...                     [0,  0,  0,  0,  0,  0]])
		>>> maximum_flow(graph, 0, 5).flow_value
		23
		
		It is possible to reduce the problem of finding a maximum matching in a
		bipartite graph to a maximum flow problem: Let :math:`G = ((U, V), E)` be a
		bipartite graph. Then, add to the graph a source vertex with edges to every
		vertex in :math:`U` and a sink vertex with edges from every vertex in
		:math:`V`. Finally, give every edge in the resulting graph a capacity of 1.
		Then, a maximum flow in the new graph gives a maximum matching in the
		original graph consisting of the edges in :math:`E` whose flow is positive.
		
		Assume that the edges are represented by a
		:math:`\lvert U \rvert \times \lvert V \rvert` matrix in CSR format whose
		:math:`(i, j)`'th entry is 1 if there is an edge from :math:`i \in U` to
		:math:`j \in V` and 0 otherwise; that is, the input is of the form required
		by :func:`maximum_bipartite_matching`. Then the CSR representation of the
		graph constructed above contains this matrix as a block. Here's an example:
		
		>>> graph = csr_matrix([[0, 1, 0, 1], [1, 0, 1, 0], [0, 1, 1, 0]])
		>>> print(graph.toarray())
		[[0 1 0 1]
		 [1 0 1 0]
		 [0 1 1 0]]
		>>> i, j = graph.shape
		>>> n = graph.nnz
		>>> indptr = np.concatenate([[0],
		...                          graph.indptr + i,
		...                          np.arange(n + i + 1, n + i + j + 1),
		...                          [n + i + j]])
		>>> indices = np.concatenate([np.arange(1, i + 1),
		...                           graph.indices + i + 1,
		...                           np.repeat(i + j + 1, j)])
		>>> data = np.ones(n + i + j, dtype=int)
		>>>
		>>> graph_flow = csr_matrix((data, indices, indptr))
		>>> print(graph_flow.toarray())
		[[0 1 1 1 0 0 0 0 0]
		 [0 0 0 0 0 1 0 1 0]
		 [0 0 0 0 1 0 1 0 0]
		 [0 0 0 0 0 1 1 0 0]
		 [0 0 0 0 0 0 0 0 1]
		 [0 0 0 0 0 0 0 0 1]
		 [0 0 0 0 0 0 0 0 1]
		 [0 0 0 0 0 0 0 0 1]
		 [0 0 0 0 0 0 0 0 0]]
		
		At this point, we can find the maximum flow between the added sink and the
		added source and the desired matching can be obtained by restricting the
		residual graph to the block corresponding to the original graph:
		
		>>> flow = maximum_flow(graph_flow, 0, i+j+1, method='dinic')
		>>> matching = flow.residual[1:i+1, i+1:i+j+1]
		>>> print(matching.toarray())
		[[0 1 0 0]
		 [1 0 0 0]
		 [0 0 1 0]]
		
		This tells us that the first, second, and third vertex in :math:`U` are
		matched with the second, first, and third vertex in :math:`V` respectively.
		
		While this solves the maximum bipartite matching problem in general, note
		that algorithms specialized to that problem, such as
		:func:`maximum_bipartite_matching`, will generally perform better.
		
		This approach can also be used to solve various common generalizations of
		the maximum bipartite matching problem. If, for instance, some vertices can
		be matched with more than one other vertex, this may be handled by
		modifying the capacities of the new graph appropriately.
	**/
	static public function maximum_flow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min_weight_full_bipartite_matching(biadjacency_matrix, maximize=False)
		
		Returns the minimum weight full matching of a bipartite graph.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		biadjacency_matrix : sparse matrix
		    Biadjacency matrix of the bipartite graph: A sparse matrix in CSR, CSC,
		    or COO format whose rows represent one partition of the graph and whose
		    columns represent the other partition. An edge between two vertices is
		    indicated by the corresponding entry in the matrix, and the weight of
		    the edge is given by the value of that entry. This should not be
		    confused with the full adjacency matrix of the graph, as we only need
		    the submatrix defining the bipartite structure.
		
		maximize : bool (default: False)
		    Calculates a maximum weight matching if true.
		
		Returns
		-------
		row_ind, col_ind : array
		    An array of row indices and one of corresponding column indices giving
		    the optimal matching. The total weight of the matching can be computed
		    as ``graph[row_ind, col_ind].sum()``. The row indices will be
		    sorted; in the case of a square matrix they will be equal to
		    ``numpy.arange(graph.shape[0])``.
		
		Notes
		-----
		
		Let :math:`G = ((U, V), E)` be a weighted bipartite graph with non-zero
		weights :math:`w : E \to \mathbb{R} \setminus \{0\}`. This function then
		produces a matching :math:`M \subseteq E` with cardinality
		
		.. math::
		   \lvert M \rvert = \min(\lvert U \rvert, \lvert V \rvert),
		
		which minimizes the sum of the weights of the edges included in the
		matching, :math:`\sum_{e \in M} w(e)`, or raises an error if no such
		matching exists.
		
		When :math:`\lvert U \rvert = \lvert V \rvert`, this is commonly
		referred to as a perfect matching; here, since we allow
		:math:`\lvert U \rvert` and :math:`\lvert V \rvert` to differ, we
		follow Karp [1]_ and refer to the matching as *full*.
		
		This function implements the LAPJVsp algorithm [2]_, short for "Linear
		assignment problem, Jonker--Volgenant, sparse".
		
		The problem it solves is equivalent to the rectangular linear assignment
		problem. [3]_ As such, this function can be used to solve the same problems
		as :func:`scipy.optimize.linear_sum_assignment`. That function may perform
		better when the input is dense, or for certain particular types of inputs,
		such as those for which the :math:`(i, j)`'th entry is the distance between
		two points in Euclidean space.
		
		If no full matching exists, this function raises a ``ValueError``. For
		determining the size of the largest matching in the graph, see
		:func:`maximum_bipartite_matching`.
		
		We require that weights are non-zero only to avoid issues with the handling
		of explicit zeros when converting between different sparse representations.
		Zero weights can be handled by adding a constant to all weights, so that
		the resulting matrix contains no zeros.
		
		References
		----------
		.. [1] Richard Manning Karp:
		   An algorithm to Solve the m x n Assignment Problem in Expected Time
		   O(mn log n).
		   Networks, 10(2):143-152, 1980.
		.. [2] Roy Jonker and Anton Volgenant:
		   A Shortest Augmenting Path Algorithm for Dense and Sparse Linear
		   Assignment Problems.
		   Computing 38:325-340, 1987.
		.. [3] https://en.wikipedia.org/wiki/Assignment_problem
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import min_weight_full_bipartite_matching
		
		Let us first consider an example in which all weights are equal:
		
		>>> biadjacency_matrix = csr_matrix([[1, 1, 1], [1, 0, 0], [0, 1, 0]])
		
		Here, all we get is a perfect matching of the graph:
		
		>>> print(min_weight_full_bipartite_matching(biadjacency_matrix)[1])
		[2 0 1]
		
		That is, the first, second, and third rows are matched with the third,
		first, and second column respectively. Note that in this example, the 0
		in the input matrix does *not* correspond to an edge with weight 0, but
		rather a pair of vertices not paired by an edge.
		
		Note also that in this case, the output matches the result of applying
		:func:`maximum_bipartite_matching`:
		
		>>> from scipy.sparse.csgraph import maximum_bipartite_matching
		>>> biadjacency = csr_matrix([[1, 1, 1], [1, 0, 0], [0, 1, 0]])
		>>> print(maximum_bipartite_matching(biadjacency, perm_type='column'))
		[2 0 1]
		
		When multiple edges are available, the ones with lowest weights are
		preferred:
		
		>>> biadjacency = csr_matrix([[3, 3, 6], [4, 3, 5], [10, 1, 8]])
		>>> row_ind, col_ind = min_weight_full_bipartite_matching(biadjacency)
		>>> print(col_ind)
		[0 2 1]
		
		The total weight in this case is :math:`3 + 5 + 1 = 9`:
		
		>>> print(biadjacency[row_ind, col_ind].sum())
		9
		
		When the matrix is not square, i.e. when the two partitions have different
		cardinalities, the matching is as large as the smaller of the two
		partitions:
		
		>>> biadjacency = csr_matrix([[0, 1, 1], [0, 2, 3]])
		>>> row_ind, col_ind = min_weight_full_bipartite_matching(biadjacency)
		>>> print(row_ind, col_ind)
		[0 1] [2 1]
		>>> biadjacency = csr_matrix([[0, 1], [3, 1], [1, 4]])
		>>> row_ind, col_ind = min_weight_full_bipartite_matching(biadjacency)
		>>> print(row_ind, col_ind)
		[0 2] [1 0]
		
		When one or both of the partitions are empty, the matching is empty as
		well:
		
		>>> biadjacency = csr_matrix((2, 0))
		>>> row_ind, col_ind = min_weight_full_bipartite_matching(biadjacency)
		>>> print(row_ind, col_ind)
		[] []
		
		In general, we will always reach the same sum of weights as if we had used
		:func:`scipy.optimize.linear_sum_assignment` but note that for that one,
		missing edges are represented by a matrix entry of ``float('inf')``. Let us
		generate a random sparse matrix with integer entries between 1 and 10:
		
		>>> import numpy as np
		>>> from scipy.sparse import random
		>>> from scipy.optimize import linear_sum_assignment
		>>> sparse = random(10, 10, random_state=42, density=.5, format='coo') * 10
		>>> sparse.data = np.ceil(sparse.data)
		>>> dense = sparse.toarray()
		>>> dense = np.full(sparse.shape, np.inf)
		>>> dense[sparse.row, sparse.col] = sparse.data
		>>> sparse = sparse.tocsr()
		>>> row_ind, col_ind = linear_sum_assignment(dense)
		>>> print(dense[row_ind, col_ind].sum())
		28.0
		>>> row_ind, col_ind = min_weight_full_bipartite_matching(sparse)
		>>> print(sparse[row_ind, col_ind].sum())
		28.0
	**/
	static public function min_weight_full_bipartite_matching(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    If true, then parts of the input graph will be overwritten for
		    efficiency. Default is False.
		
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
		
		This routine loses precision when users input a dense matrix.
		Small elements < 1E-8 of the dense matrix are rounded to zero.
		All users should input sparse matrices if possible to avoid it.
		
		
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
		reconstruct_path(csgraph, predecessors, directed=True)
		
		Construct a tree from a graph and a predecessor list.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array_like or sparse matrix
		    The N x N matrix representing the directed or undirected graph
		    from which the predecessors are drawn.
		predecessors : array_like, one dimension
		    The length-N array of indices of predecessors for the tree.  The
		    index of the parent of node i is given by predecessors[i].
		directed : bool, optional
		    If True (default), then operate on a directed graph: only move from
		    point i to point j along paths csgraph[i, j].
		    If False, then operate on an undirected graph: the algorithm can
		    progress from point i to j along csgraph[i, j] or csgraph[j, i].
		
		Returns
		-------
		cstree : csr matrix
		    The N x N directed compressed-sparse representation of the tree drawn
		    from csgraph which is encoded by the predecessor list.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import reconstruct_path
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 3)    3
		
		>>> pred = np.array([-9999, 0, 0, 1], dtype=np.int32)
		
		>>> cstree = reconstruct_path(csgraph=graph, predecessors=pred, directed=False)
		>>> cstree.todense()
		matrix([[0., 1., 2., 0.],
		        [0., 0., 0., 1.],
		        [0., 0., 0., 0.],
		        [0., 0., 0., 0.]])
	**/
	static public function reconstruct_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reverse_cuthill_mckee(graph, symmetric_mode=False)
		
		Returns the permutation array that orders a sparse CSR or CSC matrix
		in Reverse-Cuthill McKee ordering.  
		
		It is assumed by default, ``symmetric_mode=False``, that the input matrix 
		is not symmetric and works on the matrix ``A+A.T``. If you are 
		guaranteed that the matrix is symmetric in structure (values of matrix 
		elements do not matter) then set ``symmetric_mode=True``.
		
		Parameters
		----------
		graph : sparse matrix
		    Input sparse in CSC or CSR sparse matrix format.
		symmetric_mode : bool, optional
		    Is input matrix guaranteed to be symmetric.
		
		Returns
		-------
		perm : ndarray
		    Array of permuted row and column indices.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		E. Cuthill and J. McKee, "Reducing the Bandwidth of Sparse Symmetric Matrices",
		ACM '69 Proceedings of the 1969 24th national conference, (1969).
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import reverse_cuthill_mckee
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> reverse_cuthill_mckee(graph)
		array([3, 2, 1, 0], dtype=int32)
	**/
	static public function reverse_cuthill_mckee(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		shortest_path(csgraph, method='auto', directed=True, return_predecessors=False,
		              unweighted=False, overwrite=False, indices=None)
		
		Perform a shortest-path graph search on a positive directed or
		undirected graph.
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of distances representing the input graph.
		method : string ['auto'|'FW'|'D'], optional
		    Algorithm to use for shortest paths.  Options are:
		
		       'auto' -- (default) select the best among 'FW', 'D', 'BF', or 'J'
		                 based on the input data.
		
		       'FW'   -- Floyd-Warshall algorithm.  Computational cost is
		                 approximately ``O[N^3]``.  The input csgraph will be
		                 converted to a dense representation.
		
		       'D'    -- Dijkstra's algorithm with Fibonacci heaps.  Computational
		                 cost is approximately ``O[N(N*k + N*log(N))]``, where
		                 ``k`` is the average number of connected edges per node.
		                 The input csgraph will be converted to a csr
		                 representation.
		
		       'BF'   -- Bellman-Ford algorithm.  This algorithm can be used when
		                 weights are negative.  If a negative cycle is encountered,
		                 an error will be raised.  Computational cost is
		                 approximately ``O[N(N^2 k)]``, where ``k`` is the average
		                 number of connected edges per node. The input csgraph will
		                 be converted to a csr representation.
		
		       'J'    -- Johnson's algorithm.  Like the Bellman-Ford algorithm,
		                 Johnson's algorithm is designed for use when the weights
		                 are negative.  It combines the Bellman-Ford algorithm
		                 with Dijkstra's algorithm for faster computation.
		
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i]
		return_predecessors : bool, optional
		    If True, return the size (N, N) predecesor matrix
		unweighted : bool, optional
		    If True, then find unweighted distances.  That is, rather than finding
		    the path between each point such that the sum of weights is minimized,
		    find the path such that the number of edges is minimized.
		overwrite : bool, optional
		    If True, overwrite csgraph with the result.  This applies only if
		    method == 'FW' and csgraph is a dense, c-ordered array with
		    dtype=float64.
		indices : array_like or int, optional
		    If specified, only compute the paths from the points at the given
		    indices. Incompatible with method == 'FW'.
		
		Returns
		-------
		dist_matrix : ndarray
		    The N x N matrix of distances between graph nodes. dist_matrix[i,j]
		    gives the shortest distance from point i to point j along the graph.
		predecessors : ndarray
		    Returned only if return_predecessors == True.
		    The N x N matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
		Raises
		------
		NegativeCycleError:
		    if there are negative cycles in the graph
		
		Notes
		-----
		As currently implemented, Dijkstra's algorithm and Johnson's algorithm
		do not work for graphs with direction-dependent distances when
		directed == False.  i.e., if csgraph[i,j] and csgraph[j,i] are non-equal
		edges, method='D' may yield an incorrect result.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import shortest_path
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [0, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		
		>>> dist_matrix, predecessors = shortest_path(csgraph=graph, directed=False, indices=0, return_predecessors=True)
		>>> dist_matrix
		array([0., 1., 2., 2.])
		>>> predecessors
		array([-9999,     0,     0,     1], dtype=int32)
	**/
	static public function shortest_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		structural_rank(graph)
		
		Compute the structural rank of a graph (matrix) with a given 
		sparsity pattern.
		
		The structural rank of a matrix is the number of entries in the maximum 
		transversal of the corresponding bipartite graph, and is an upper bound 
		on the numerical rank of the matrix. A graph has full structural rank 
		if it is possible to permute the elements to make the diagonal zero-free.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		graph : sparse matrix
		    Input sparse matrix.
		
		Returns
		-------
		rank : int
		    The structural rank of the sparse graph.
		
		References
		----------
		.. [1] I. S. Duff, "Computing the Structural Index", SIAM J. Alg. Disc. 
		        Meth., Vol. 7, 594 (1986).
		
		.. [2] http://www.cise.ufl.edu/research/sparse/matrices/legend.html
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import structural_rank
		
		>>> graph = [
		... [0, 1, 2, 0],
		... [1, 0, 0, 1],
		... [2, 0, 0, 3],
		... [0, 1, 3, 0]
		... ]
		>>> graph = csr_matrix(graph)
		>>> print(graph)
		  (0, 1)    1
		  (0, 2)    2
		  (1, 0)    1
		  (1, 3)    1
		  (2, 0)    2
		  (2, 3)    3
		  (3, 1)    1
		  (3, 2)    3
		
		>>> structural_rank(graph)
		4
	**/
	static public function structural_rank(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
}