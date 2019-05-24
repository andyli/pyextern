/* This file is generated, do not edit! */
package scipy.sparse.csgraph._tools;
@:pythonImport("scipy.sparse.csgraph._tools") extern class _Tools_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
		... [0, 1 , 2, 0],
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
		... [1, -9999, 0, 1],
		... [2, 0, -9999, 2],
		... [1, 3, 3, -9999]], dtype=np.int32)
		
		>>> construct_dist_matrix(graph=graph, predecessors=pred, directed=False)
		array([[ 0.,  1.,  2.,  5.],
		       [ 1.,  0.,  3.,  1.],
		       [ 2.,  3.,  0.,  3.],
		       [ 2.,  1.,  3.,  0.]])
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
		... [0, 1 , 2, 0],
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
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		...  ],
		... mask=[[ True, False, False , True],
		... [ True,  True , True, False],
		... [ True , True,  True ,False],
		... [ True ,True , True , True]],
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
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ]
		
		>>> csgraph_masked_from_dense(graph)
		masked_array(
		  data=[[--, 1, 2, --],
		        [--, --, --, 1],
		        [--, --, --, 3],
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
		array([[ inf,   0.],
		       [ inf,  inf]])
		
		In the first case, the zero-weight edge gets lost in the dense
		representation.  In the second case, we can choose a different null value
		and see the true form of the graph.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.csgraph import csgraph_to_dense
		
		>>> graph = csr_matrix( [
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ])
		>>> graph
		<4x4 sparse matrix of type '<class 'numpy.int64'>'
		    with 4 stored elements in Compressed Sparse Row format>
		
		>>> csgraph_to_dense(graph)
		array([[ 0.,  1.,  2.,  0.],
		       [ 0.,  0.,  0.,  1.],
		       [ 0.,  0.,  0.,  3.],
		       [ 0.,  0.,  0.,  0.]])
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
		... [0, 1 , 2, 0],
		... [0, 0, 0, 1],
		... [0, 0, 0, 3],
		... [0, 0, 0, 0]
		... ])
		>>> graph
		<4x4 sparse matrix of type '<class 'numpy.int64'>'
		    with 4 stored elements in Compressed Sparse Row format>
		
		>>> csgraph_to_masked(graph)
		masked_array(
		  data=[[--, 1.0, 2.0, --],
		        [--, --, --, 1.0],
		        [--, --, --, 3.0],
		        [--, --, --, --]],
		  mask=[[ True, False, False,  True],
		        [ True,  True,  True, False],
		        [ True,  True,  True, False],
		        [ True,  True,  True,  True]],
		  fill_value=1e+20)
	**/
	static public function csgraph_to_masked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	/**
		Is x of csc_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a csc matrix
		
		Returns
		-------
		bool
		    True if x is a csc matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix, isspmatrix_csc
		>>> isspmatrix_csc(csc_matrix([[5]]))
		True
		
		>>> from scipy.sparse import csc_matrix, csr_matrix, isspmatrix_csc
		>>> isspmatrix_csc(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	/**
		Is x of csr_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a csr matrix
		
		Returns
		-------
		bool
		    True if x is a csr matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix_csr
		>>> isspmatrix_csr(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import csc_matrix, csr_matrix, isspmatrix_csc
		>>> isspmatrix_csr(csc_matrix([[5]]))
		False
	**/
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	/**
		Is x of lil_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a lil matrix
		
		Returns
		-------
		bool
		    True if x is a lil matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import lil_matrix, isspmatrix_lil
		>>> isspmatrix_lil(lil_matrix([[5]]))
		True
		
		>>> from scipy.sparse import lil_matrix, csr_matrix, isspmatrix_lil
		>>> isspmatrix_lil(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_lil(x:Dynamic):Dynamic;
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
		... [0, 1 , 2, 0],
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
		matrix([[ 0.,  1.,  2.,  0.],
		        [ 0.,  0.,  0.,  1.],
		        [ 0.,  0.,  0.,  0.],
		        [ 0.,  0.,  0.,  0.]])
	**/
	static public function reconstruct_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
}