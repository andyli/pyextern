/* This file is generated, do not edit! */
package scipy.sparse.csgraph;
@:pythonImport("scipy.sparse.csgraph._components") extern class _Components {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cs_graph_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _msg0 : Dynamic;
	static public var _msg1 : Dynamic;
	static public var absolute_import : Dynamic;
	/**
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
	static public function cs_graph_components(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}