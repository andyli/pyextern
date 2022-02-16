/* This file is generated, do not edit! */
package scipy.sparse.spfuncs;
@:pythonImport("scipy.sparse.spfuncs") extern class Spfuncs_Module {
	/**
		For a given blocksize=(r,c) count the number of occupied
		blocks in a sparse matrix A
	**/
	static public function count_blocks(A:Dynamic, blocksize:Dynamic):Dynamic;
	static public function csr_count_blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Attempt to determine the blocksize of a sparse matrix
		
		Returns a blocksize=(r,c) such that
		    - A.nnz / A.tobsr( (r,c) ).nnz > efficiency
	**/
	static public function estimate_blocksize(A:Dynamic, ?efficiency:Dynamic):Dynamic;
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
}