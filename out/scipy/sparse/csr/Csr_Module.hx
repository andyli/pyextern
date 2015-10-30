/* This file is generated, do not edit! */
package scipy.sparse.csr;
@:pythonImport("scipy.sparse.csr") extern class Csr_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function csr_count_blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function csr_sample_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function csr_tobsr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function csr_tocsc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function get_csr_submatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	static public function issequence(t:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public function upcast(args:Dynamic):Dynamic;
}