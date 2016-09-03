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
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		>>> olduint(6)
		/usr/lib/python2.5/site-packages/numpy/lib/utils.py:114:
		DeprecationWarning: uint32 is deprecated
		  warnings.warn(str1, DeprecationWarning)
		6
	**/
	static public function _deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	static public var absolute_import : Dynamic;
	/**
		bellman_ford(csgraph, directed=True, indices=None, return_predecessors=False,
		             unweighted=False)
		
		Compute the shortest path lengths using the Bellman-Ford algorithm.
		
		The Bellman-ford algorithm can robustly deal with graphs with negative
		weights.  If a negative cycle is detected, an error is raised.  For
		graphs without negative edge weights, dijkstra's algorithm may be faster.
		
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
		    if specified, only compute the paths for the points at the given
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
		    from i to j and from j to i.  Nodes i and j are weakly connected if
		    only one of these paths exists.  If directed == False, this keyword
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
		:func:`graph_shortest_path`.  Row i of the predecessor matrix contains
		information on the shortest paths from point i: each entry
		predecessors[i, j] gives the index of the previous node in the path from
		point i to point j.  If no path exists between point i and j, then
		predecessors[i, j] = -9999
	**/
	static public function construct_dist_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		`cs_graph_components` is deprecated!
		In the future, use csgraph.connected_components. Note that this new function has a slightly different interface: see the docstring for more information.
		
		
		    Determine connected components of a graph stored as a compressed
		    sparse row or column matrix.
		
		    For speed reasons, the symmetry of the matrix x is not checked. A
		    nonzero at index `(i, j)` means that node `i` is connected to node
		    `j` by an edge. The number of rows/columns of the matrix thus
		    corresponds to the number of nodes in the graph.
		
		    Parameters
		    -----------
		    x : array_like or sparse matrix, 2 dimensions
		        The adjacency matrix of the graph. Only the upper triangular part
		        is used.
		
		    Returns
		    --------
		    n_comp : int
		        The number of connected components.
		    label : ndarray (ints, 1 dimension):
		        The label array of each connected component (-2 is used to
		        indicate empty rows in the matrix: 0 everywhere, including
		        diagonal). This array has the length of the number of nodes,
		        i.e. one label for each node of the graph. Nodes having the same
		        label belong to the same connected component.
		
		    Notes
		    ------
		    The matrix is assumed to be symmetric and the upper triangular part
		    of the matrix is used. The matrix is converted to a CSR matrix unless
		    it is already a CSR.
		
		    Examples
		    --------
		    >>> from scipy.sparse.csgraph import connected_components
		    >>> D = np.eye(4)
		    >>> D[0,1] = D[1,0] = 1
		    >>> cs_graph_components(D)
		    (3, array([0, 0, 1, 2]))
		    >>> from scipy.sparse import dok_matrix
		    >>> cs_graph_components(dok_matrix(D))
		    (3, array([0, 0, 1, 2]))
		
		    
	**/
	static public function cs_graph_components(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		array([[ inf,   0.],
		       [ inf,  inf]])
		
		In the first case, the zero-weight edge gets lost in the dense
		representation.  In the second case, we can choose a different null value
		and see the true form of the graph.
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
		    The breadth-first list of nodes, starting with specified node.  The
		    length of node_array is the number of nodes reachable from the
		    specified node.
		predecessors : ndarray, one dimension
		    Returned only if return_predecessors is True.
		    The length-N list of predecessors of each node in a breadth-first
		    tree.  If node i is in the tree, then its parent is given by
		    predecessors[i]. If node i is not in the tree (and for the parent
		    node) then predecessors[i] = -9999.
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
		         unweighted=False, limit=np.inf)
		
		Dijkstra algorithm using Fibonacci Heaps
		
		.. versionadded:: 0.11.0
		
		Parameters
		----------
		csgraph : array, matrix, or sparse matrix, 2 dimensions
		    The N x N array of non-negative distances representing the input graph.
		directed : bool, optional
		    If True (default), then find the shortest path on a directed graph:
		    only move from point i to point j along paths csgraph[i, j].
		    If False, then find the shortest path on an undirected graph: the
		    algorithm can progress from point i to j along csgraph[i, j] or
		    csgraph[j, i]
		indices : array_like or int, optional
		    if specified, only compute the paths for the points at the given
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
		
		Returns
		-------
		dist_matrix : ndarray
		    The matrix of distances between graph nodes. dist_matrix[i,j]
		    gives the shortest distance from point i to point j along the graph.
		
		predecessors : ndarray
		    Returned only if return_predecessors == True.
		    The matrix of predecessors, which can be used to reconstruct
		    the shortest paths.  Row i of the predecessor matrix contains
		    information on the shortest paths from point i: each entry
		    predecessors[i, j] gives the index of the previous node in the
		    path from point i to point j.  If no path exists between point
		    i and j, then predecessors[i, j] = -9999
		
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
	**/
	static public function dijkstra(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		dijkstra() may be faster.
		
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
		    if specified, only compute the paths for the points at the given
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
	**/
	static public function johnson(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the Laplacian matrix of a directed graph.
		
		Parameters
		----------
		csgraph : array_like or sparse matrix, 2 dimensions
		    compressed-sparse graph, with shape (N, N).
		normed : bool, optional
		    If True, then compute normalized Laplacian.
		return_diag : bool, optional
		    If True, then also return an array related to vertex degrees.
		use_out_degree : bool, optional
		    If True, then use out-degree instead of in-degree.
		    This distinction matters only if the graph is asymmetric.
		    Default: False.
		
		Returns
		-------
		lap : ndarray or sparse matrix
		    The N x N laplacian matrix of csgraph. It will be a numpy array (dense)
		    if the input was dense, or a sparse matrix otherwise.
		diag : ndarray, optional
		    The length-N diagonal of the Laplacian matrix.
		    For the normalized Laplacian, this is the array of square roots
		    of vertex degrees or 1 if the degree is zero.
		
		Notes
		-----
		The Laplacian matrix of a graph is sometimes referred to as the
		"Kirchoff matrix" or the "admittance matrix", and is useful in many
		parts of spectral graph theory.  In particular, the eigen-decomposition
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
		Returns an array of row or column permutations that makes
		the diagonal of a nonsingular square CSC sparse matrix zero free.  
		
		Such a permutation is always possible provided that the matrix 
		is nonsingular. This function looks at the structure of the matrix 
		only. The input matrix will be converted to CSC matrix format if
		necessary.
		
		Parameters
		----------
		graph : sparse matrix
		    Input sparse in CSC format
		perm_type : str, {'row', 'column'}
		    Type of permutation to generate.
		
		Returns
		-------
		perm : ndarray
		    Array of row or column permutations.
		
		Notes
		-----
		This function relies on a maximum cardinality bipartite matching 
		algorithm based on a breadth-first search (BFS) of the underlying 
		graph.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		I. S. Duff, K. Kaya, and B. Ucar, "Design, Implementation, and 
		Analysis of Maximum Transversal Algorithms", ACM Trans. Math. Softw.
		38, no. 2, (2011).
	**/
	static public function maximum_bipartite_matching(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var print_function : Dynamic;
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
	**/
	static public function reconstruct_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
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
		    If specified, only compute the paths for the points at the given
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
	**/
	static public function shortest_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
}