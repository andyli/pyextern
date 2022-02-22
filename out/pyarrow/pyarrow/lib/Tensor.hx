/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "Tensor") extern class Tensor {
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
		Tensor.__reduce_cython__(self)
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
		Tensor.__setstate_cython__(self, __pyx_state)
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
		Tensor.dim_name(self, i)
	**/
	public function dim_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var dim_names : Dynamic;
	/**
		Tensor.equals(self, Tensor other)
		
		Return true if the tensors contains exactly equal data
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tensor.from_numpy(obj, dim_names=None)
		
		Create a Tensor from a numpy array.
		
		Parameters
		----------
		obj : numpy.ndarray
		    The source numpy array
		dim_names : list, optional
		    Names of each dimension of the Tensor.
	**/
	static public function from_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_contiguous : Dynamic;
	public var is_mutable : Dynamic;
	public var ndim : Dynamic;
	public var shape : Dynamic;
	public var size : Dynamic;
	public var strides : Dynamic;
	/**
		Tensor.to_numpy(self)
		
		Convert arrow::Tensor to numpy.ndarray with zero copy
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var type : Dynamic;
}