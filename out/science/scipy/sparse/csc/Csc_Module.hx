/* This file is generated, do not edit! */
package scipy.sparse.csc;
@:pythonImport("scipy.sparse.csc") extern class Csc_Module {
	static public function csc_tocsr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function expandptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Based on input (integer) arrays `a`, determine a suitable index data
		type that can hold the data in the arrays.
		
		Parameters
		----------
		arrays : tuple of array_like
		    Input arrays whose types/contents to check
		maxval : float, optional
		    Maximum value needed
		check_contents : bool, optional
		    Whether to check the values in the arrays and not just their types.
		    Default: False (check only the types)
		
		Returns
		-------
		dtype : dtype
		    Suitable index data type (int32 or int64)
	**/
	static public function get_index_dtype(?arrays:Dynamic, ?maxval:Dynamic, ?check_contents:Dynamic):Dynamic;
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
		Returns the nearest supported sparse dtype for the
		combination of one or more types.
		
		upcast(t0, t1, ..., tn) -> T  where T is a supported dtype
		
		Examples
		--------
		
		>>> upcast('int32')
		<type 'numpy.int32'>
		>>> upcast('bool')
		<type 'numpy.bool_'>
		>>> upcast('int32','float32')
		<type 'numpy.float64'>
		>>> upcast('bool',complex,float)
		<type 'numpy.complex128'>
	**/
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
}