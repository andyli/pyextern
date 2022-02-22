/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "SparseCSRMatrix") extern class SparseCSRMatrix {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		SparseCSRMatrix.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		SparseCSRMatrix.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.dim_name(self, i)
	**/
	public function dim_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var dim_names : Dynamic;
	/**
		SparseCSRMatrix.equals(self, SparseCSRMatrix other)
		
		Return true if sparse tensors contains exactly equal data.
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.from_dense_numpy(type cls, obj, dim_names=None)
		
		Convert numpy.ndarray to arrow::SparseCSRMatrix
		
		Parameters
		----------
		obj : numpy.ndarray
		    The dense numpy array that should be converted.
		dim_names : list, optional
		    The names of the dimensions.
	**/
	public function from_dense_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.from_numpy(data, indptr, indices, shape, dim_names=None)
		
		Create arrow::SparseCSRMatrix from numpy.ndarrays.
		
		Parameters
		----------
		data : numpy.ndarray
		    Data used to populate the sparse matrix.
		indptr : numpy.ndarray
		    Range of the rows,
		    The i-th row spans from `indptr[i]` to `indptr[i+1]` in the data.
		indices : numpy.ndarray
		    Column indices of the corresponding non-zero values.
		shape : tuple
		    Shape of the matrix.
		dim_names : list, optional
		    Names of the dimensions.
	**/
	static public function from_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.from_scipy(obj, dim_names=None)
		
		Convert scipy.sparse.csr_matrix to arrow::SparseCSRMatrix.
		
		Parameters
		----------
		obj : scipy.sparse.csr_matrix
		    The scipy matrix that should be converted.
		dim_names : list, optional
		    Names of the dimensions.
	**/
	static public function from_scipy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.from_tensor(obj)
		
		Convert arrow::Tensor to arrow::SparseCSRMatrix.
		
		Parameters
		----------
		obj : Tensor
		    The dense tensor that should be converted.
	**/
	static public function from_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_mutable : Dynamic;
	public var ndim : Dynamic;
	public var non_zero_length : Dynamic;
	public var shape : Dynamic;
	public var size : Dynamic;
	/**
		SparseCSRMatrix.to_numpy(self)
		
		Convert arrow::SparseCSRMatrix to numpy.ndarrays with zero copy.
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.to_scipy(self)
		
		Convert arrow::SparseCSRMatrix to scipy.sparse.csr_matrix.
	**/
	public function to_scipy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCSRMatrix.to_tensor(self)
		
		Convert arrow::SparseCSRMatrix to arrow::Tensor.
	**/
	public function to_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var type : Dynamic;
}