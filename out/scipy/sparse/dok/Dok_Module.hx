/* This file is generated, do not edit! */
package scipy.sparse.dok;
@:pythonImport("scipy.sparse.dok") extern class Dok_Module {
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
	static public function _is_sequence(x:Dynamic):Dynamic;
	/**
		Force x to a list.
	**/
	static public function _list(x:Dynamic):Dynamic;
	/**
		Product of a list of numbers; ~40x faster vs np.prod for Python tuples
	**/
	static public function _prod(x:Dynamic):Dynamic;
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
	static public function isdense(x:Dynamic):Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		    
	**/
	static public function isshape(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_dok(x:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic):Dynamic;
	/**
		Return an iterator over the keys of a dictionary.
	**/
	static public function iterkeys(d:Dynamic):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic):Dynamic;
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
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Determine data type for binary operation between an array of
		type `dtype` and a scalar.
	**/
	static public function upcast_scalar(dtype:Dynamic, scalar:Dynamic):Dynamic;
}