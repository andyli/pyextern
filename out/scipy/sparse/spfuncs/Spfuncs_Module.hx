/* This file is generated, do not edit! */
package scipy.sparse.spfuncs;
@:pythonImport("scipy.sparse.spfuncs") extern class Spfuncs_Module {
	static public var __all__ : Dynamic;
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
		For a given blocksize=(r,c) count the number of occupied
		blocks in a sparse matrix A
	**/
	static public function count_blocks(A:Dynamic, blocksize:Dynamic):Dynamic;
	static public function csr_count_blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Attempt to determine the blocksize of a sparse matrix
		
		Returns a blocksize=(r,c) such that
		    - A.nnz / A.tobsr( (r,c) ).nnz > efficiency
	**/
	static public function estimate_blocksize(A:Dynamic, ?efficiency:Dynamic):Dynamic;
	static public function extract_diagonal(A:Dynamic):Dynamic;
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}