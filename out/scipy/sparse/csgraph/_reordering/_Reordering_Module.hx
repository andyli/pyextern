/* This file is generated, do not edit! */
package scipy.sparse.csgraph._reordering;
@:pythonImport("scipy.sparse.csgraph._reordering") extern class _Reordering_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Maximum bipartite matching of a graph in CSC format.
	**/
	static public function _maximum_bipartite_matching(inds:Dynamic, ptrs:Dynamic, n:Dynamic):Dynamic;
	/**
		Reverse Cuthill-McKee ordering of a sparse symmetric CSR or CSC matrix.  
		We follow the original Cuthill-McKee paper and always start the routine
		at a node of lowest degree for each connected component.
	**/
	static public function _reverse_cuthill_mckee(ind:Dynamic, ptr:Dynamic, num_rows:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_coo(x:Dynamic):Dynamic;
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	/**
		maximum_bipartite_matching(graph, perm_type='row')
		
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
	**/
	static public function reverse_cuthill_mckee(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		structural_rank(graph)
		
		Compute the structural rank of a graph (matrix) with a given 
		sparsity pattern.
		
		The structural rank of a matrix is the number of entries in the maximum 
		transversal of the corresponding bipartite graph, and is an upper bound 
		on the numerical rank of the matrix. A graph has full structural rank 
		if it is possible to permute the elements to make the diagonal zero-free.
		
		Parameters
		----------
		graph : sparse matrix
		    Input sparse matrix.
		
		Returns
		-------
		rank : int
		    The structural rank of the sparse graph.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] I. S. Duff, "Computing the Structural Index", SIAM J. Alg. Disc. 
		        Meth., Vol. 7, 594 (1986).
		
		.. [2] http://www.cise.ufl.edu/research/sparse/matrices/legend.html
	**/
	static public function structural_rank(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}