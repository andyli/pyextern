/* This file is generated, do not edit! */
package scipy.sparse.bsr;
@:pythonImport("scipy.sparse.bsr") extern class Bsr_Module {
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
	static public var _formats : Dynamic;
	static public var absolute_import : Dynamic;
	static public function bsr_matmat_pass2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bsr_matvec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bsr_matvecs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bsr_sort_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bsr_tocsr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bsr_transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Imitate numpy.matrix handling of shape arguments
	**/
	static public function check_shape(args:Dynamic, ?current_shape:Dynamic):Dynamic;
	static public function csr_matmat_pass1(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Is x of a bsr_matrix type?
		
		Parameters
		----------
		x
		    object to check for being a bsr matrix
		
		Returns
		-------
		bool
		    True if x is a bsr matrix, False otherwise
		
		Examples
		--------
		>>> from scipy.sparse import bsr_matrix, isspmatrix_bsr
		>>> isspmatrix_bsr(bsr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import bsr_matrix, csr_matrix, isspmatrix_bsr
		>>> isspmatrix_bsr(csr_matrix([[5]]))
		False
	**/
	static public function isspmatrix_bsr(x:Dynamic):Dynamic;
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
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}