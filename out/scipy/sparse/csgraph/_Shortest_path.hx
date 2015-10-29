/* This file is generated, do not edit! */
package scipy.sparse.csgraph;
@:pythonImport("scipy.sparse.csgraph._shortest_path") extern class _Shortest_path {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
		dijkstra(csgraph, directed=True, indices=None, return_predecessors=False,
		         unweighted=False)
		
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
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
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
		shortest_path(csgraph, method='auto', directed=True, return_predecessors=False,
		              unweighted=False, overwrite=False)
		
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
		Routine for validation and conversion of csgraph inputs
	**/
	static public function validate_graph(csgraph:Dynamic, directed:Dynamic, ?dtype:Dynamic, ?csr_output:Dynamic, ?dense_output:Dynamic, ?copy_if_dense:Dynamic, ?copy_if_sparse:Dynamic, ?null_value_in:Dynamic, ?null_value_out:Dynamic, ?infinity_null:Dynamic, ?nan_null:Dynamic):Dynamic;
}