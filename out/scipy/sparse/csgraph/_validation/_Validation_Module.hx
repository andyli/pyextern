/* This file is generated, do not edit! */
package scipy.sparse.csgraph._validation;
@:pythonImport("scipy.sparse.csgraph._validation") extern class _Validation_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Routine for validation and conversion of csgraph inputs
	**/
	static public function validate_graph(csgraph:Dynamic, directed:Dynamic, ?dtype:Dynamic, ?csr_output:Dynamic, ?dense_output:Dynamic, ?copy_if_dense:Dynamic, ?copy_if_sparse:Dynamic, ?null_value_in:Dynamic, ?null_value_out:Dynamic, ?infinity_null:Dynamic, ?nan_null:Dynamic):Dynamic;
}