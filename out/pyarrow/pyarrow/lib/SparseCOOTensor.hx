/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "SparseCOOTensor") extern class SparseCOOTensor {
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
		SparseCOOTensor.__reduce_cython__(self)
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
		SparseCOOTensor.__setstate_cython__(self, __pyx_state)
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
		SparseCOOTensor.dim_name(self, i)
	**/
	public function dim_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var dim_names : Dynamic;
	/**
		SparseCOOTensor.equals(self, SparseCOOTensor other)
		
		Return true if sparse tensors contains exactly equal data.
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.from_dense_numpy(type cls, obj, dim_names=None)
		
		Convert numpy.ndarray to arrow::SparseCOOTensor
	**/
	public function from_dense_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.from_numpy(data, coords, shape, dim_names=None)
		
		Create arrow::SparseCOOTensor from numpy.ndarrays
		
		Parameters
		----------
		data : numpy.ndarray
		    Data used to populate the rows.
		coords : numpy.ndarray
		    Coordinates of the data.
		shape : tuple
		    Shape of the tensor.
		dim_names : list, optional
		    Names of the dimensions.
	**/
	static public function from_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.from_pydata_sparse(obj, dim_names=None)
		
		Convert pydata/sparse.COO to arrow::SparseCOOTensor.
		
		Parameters
		----------
		obj : pydata.sparse.COO
		    The sparse multidimensional array that should be converted.
		dim_names : list, optional
		    Names of the dimensions.
	**/
	static public function from_pydata_sparse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.from_scipy(obj, dim_names=None)
		
		Convert scipy.sparse.coo_matrix to arrow::SparseCOOTensor
		
		Parameters
		----------
		obj : scipy.sparse.csr_matrix
		    The scipy matrix that should be converted.
		dim_names : list, optional
		    Names of the dimensions.
	**/
	static public function from_scipy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.from_tensor(obj)
		
		Convert arrow::Tensor to arrow::SparseCOOTensor.
		
		Parameters
		----------
		obj : Tensor
		    The tensor that should be converted.
	**/
	static public function from_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var has_canonical_format : Dynamic;
	public var is_mutable : Dynamic;
	public var ndim : Dynamic;
	public var non_zero_length : Dynamic;
	public var shape : Dynamic;
	public var size : Dynamic;
	/**
		SparseCOOTensor.to_numpy(self)
		
		Convert arrow::SparseCOOTensor to numpy.ndarrays with zero copy.
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.to_pydata_sparse(self)
		
		Convert arrow::SparseCOOTensor to pydata/sparse.COO.
	**/
	public function to_pydata_sparse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.to_scipy(self)
		
		Convert arrow::SparseCOOTensor to scipy.sparse.coo_matrix.
	**/
	public function to_scipy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SparseCOOTensor.to_tensor(self)
		
		Convert arrow::SparseCOOTensor to arrow::Tensor.
	**/
	public function to_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var type : Dynamic;
}