/* This file is generated, do not edit! */
package scipy.sparse.coo;
@:pythonImport("scipy.sparse.coo") extern class Coo_Module {
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
	static public function coo_matvec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function coo_tocsr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function coo_todense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Down-cast index array to np.intp dtype if it is of a larger dtype.
		
		Raise an error if the array contains a value that is too large for
		intp.
	**/
	static public function downcast_intp_index(arr:Dynamic):Dynamic;
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
		Function used to simplify argument processing.  If 'dtype' is not
		specified (is None), returns a.dtype; otherwise returns a np.dtype
		object created from the specified dtype argument.  If 'dtype' and 'a'
		are both None, construct a data type out of the 'default' parameter.
		Furthermore, 'dtype' must be in 'allowed' set.
	**/
	static public function getdtype(dtype:Dynamic, ?a:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		    
	**/
	static public function isshape(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_coo(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function to_native(A:Dynamic):Dynamic;
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
	/**
		Same as `upcast` but taking dtype.char as input (faster).
	**/
	static public function upcast_char(args:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}