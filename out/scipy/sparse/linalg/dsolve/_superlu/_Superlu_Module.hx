/* This file is generated, do not edit! */
package scipy.sparse.linalg.dsolve._superlu;
@:pythonImport("scipy.sparse.linalg.dsolve._superlu") extern class _Superlu_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Direct inversion of sparse matrix.
		
		X = gssv(A,B) solves A*X = B for X.
	**/
	static public function gssv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gstrf(A, ...)
		
		performs a factorization of the sparse matrix A=*(N,nnz,nzvals,rowind,colptr) and 
		returns a factored_lu object.
		
		arguments
		---------
		
		Matrix to be factorized is represented as N,nnz,nzvals,rowind,colptr
		  as separate arguments.  This is compressed sparse column representation.
		
		N         number of rows and columns 
		nnz       number of non-zero elements
		nzvals    non-zero values 
		rowind    row-index for this column (same size as nzvals)
		colptr    index into rowind for first non-zero value in this column
		          size is (N+1).  Last value should be nnz. 
		
		additional keyword arguments:
		-----------------------------
		options             specifies additional options for SuperLU
		                    (same keys and values as in superlu_options_t C structure,
		                    and additionally 'Relax' and 'PanelSize')
		
		ilu                 whether to perform an incomplete LU decomposition
		                    (default: false)
	**/
	static public function gstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
}