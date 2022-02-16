/* This file is generated, do not edit! */
package scipy.sparse.coo;
@:pythonImport("scipy.sparse.coo") extern class Coo_Module {
	/**
		Unpack keyword arguments for reshape function.
		
		This is useful because keyword arguments after star arguments are not
		allowed in Python 2, but star keyword arguments are. This function unpacks
		'order' and 'copy' from the star keyword arguments (with defaults) and
		throws an error for any remaining.
	**/
	static public function check_reshape_kwargs(kwargs:Dynamic):Dynamic;
	/**
		Imitate numpy.matrix handling of shape arguments
	**/
	static public function check_shape(args:Dynamic, ?current_shape:Dynamic):Dynamic;
	static public function coo_matvec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function coo_tocsr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function coo_todense(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		This is a wrapper of `np.array(obj, dtype=dtype, copy=copy)`
		that will generate a warning if the result is an object array.
	**/
	static public function getdata(obj:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Function used to simplify argument processing. If 'dtype' is not
		specified (is None), returns a.dtype; otherwise returns a np.dtype
		object created from the specified dtype argument. If 'dtype' and 'a'
		are both None, construct a data type out of the 'default' parameter.
		Furthermore, 'dtype' must be in 'allowed' set.
	**/
	static public function getdtype(dtype:Dynamic, ?a:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Is x a valid 2-tuple of dimensions?
		
		If nonneg, also checks that the dimensions are non-negative.
	**/
	static public function isshape(x:Dynamic, ?nonneg:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	/**
		Is x of coo_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a coo matrix
		
		Returns
		-------
		bool
		    True if x is a coo matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, isspmatrix_coo
		>>> isspmatrix_coo(coo_matrix([[5]]))
		True
		
		>>> from scipy.sparse import coo_matrix, csr_matrix, isspmatrix_coo
		>>> isspmatrix_coo(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_coo(x:Dynamic):Dynamic;
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
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Same as `upcast` but taking dtype.char as input (faster).
	**/
	static public function upcast_char(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(message:Dynamic, ?category:Dynamic, ?stacklevel:Dynamic, ?source:Dynamic):Dynamic;
}