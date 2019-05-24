/* This file is generated, do not edit! */
package scipy.sparse.lil;
@:pythonImport("scipy.sparse.lil") extern class Lil_Module {
	static public var INT_TYPES : Dynamic;
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
	static public function asmatrix(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bisect_left(a, x[, lo[, hi]]) -> index
		
		Return the index where to insert item x in list a, assuming a is sorted.
		
		The return value i is such that all e in a[:i] have e < x, and all e in
		a[i:] have e >= x.  So if x already appears in the list, i points just
		before the leftmost x already there.
		
		Optional args lo (default 0) and hi (default len(a)) bound the
		slice of a to be searched.
	**/
	static public function bisect_left(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Is x of lil_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a lil matrix
		
		Returns
		-------
		bool
		    True if x is a lil matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import lil_matrix, isspmatrix_lil
		>>> isspmatrix_lil(lil_matrix([[5]]))
		True
		
		>>> from scipy.sparse import lil_matrix, csr_matrix, isspmatrix_lil
		>>> isspmatrix_lil(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_lil(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Determine data type for binary operation between an array of
		type `dtype` and a scalar.
	**/
	static public function upcast_scalar(dtype:Dynamic, scalar:Dynamic):Dynamic;
}