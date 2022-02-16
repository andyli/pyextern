/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_dtypes;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_dtypes") extern class Np_dtypes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allow_float64 : Dynamic;
	static public var _cached_np_dtypes : Dynamic;
	/**
		Returns an np.dtype for the TensorFlow DType.
	**/
	static public function _get_cached_dtype(dtype:Dynamic):Dynamic;
	static public var _prefer_float32 : Dynamic;
	/**
		Returns the resulting type given a set of arrays.
	**/
	static public function _result_type(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var _to_float32 : Dynamic;
	static public var absolute_import : Dynamic;
	static public function canonicalize_dtype(dtype:Dynamic):Dynamic;
	/**
		Gets the default float type.
		
		Returns:
		  If `is_prefer_float32()` is false and `is_allow_float64()` is true, returns
		  float64; otherwise returns float32.
	**/
	static public function default_float_type():Dynamic;
	static public var division : Dynamic;
	static public function is_allow_float64():Dynamic;
	static public function is_prefer_float32():Dynamic;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	static public var print_function : Dynamic;
	static public function set_allow_float64(b:Dynamic):Dynamic;
	static public function set_prefer_float32(b:Dynamic):Dynamic;
}