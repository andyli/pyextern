/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse.lil") extern class Lil {
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
	/**
		Convert index and data arrays to form suitable for passing to the
		Cython fancy getset routines.
		
		The conversions are necessary since to (i) ensure the integer
		index arrays are in one of the accepted types, and (ii) to ensure
		the arrays are writable so that Cython memoryview support doesn't
		choke on them.
		
		Parameters
		----------
		i, j
		    Index arrays
		x : optional
		    Data arrays
		
		Returns
		-------
		i, j, x
		    Re-formatted arrays (x is omitted, if input was None)
	**/
	static public function _prepare_index_for_memoryview(i:Dynamic, j:Dynamic, ?x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		    
	**/
	static public function isshape(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_lil(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Determine data type for binary operation between an array of
		type `dtype` and a scalar.
	**/
	static public function upcast_scalar(dtype:Dynamic, scalar:Dynamic):Dynamic;
}