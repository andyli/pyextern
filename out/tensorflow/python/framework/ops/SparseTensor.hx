/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops", "SparseTensor") extern class SparseTensor {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __div__(y:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a `SparseTensor`.
		
		Args:
		  indices: A 2-D int64 tensor of shape `[N, ndims]`.
		  values: A 1-D tensor of any type and shape `[N]`.
		  shape: A 1-D int64 tensor of shape `[ndims]`.
		
		Returns:
		  A `SparseTensor`
	**/
	@:native("__init__")
	public function ___init__(indices:Dynamic, values:Dynamic, shape:Dynamic):Dynamic;
	/**
		Creates a `SparseTensor`.
		
		Args:
		  indices: A 2-D int64 tensor of shape `[N, ndims]`.
		  values: A 1-D tensor of any type and shape `[N]`.
		  shape: A 1-D int64 tensor of shape `[ndims]`.
		
		Returns:
		  A `SparseTensor`
	**/
	public function new(indices:Dynamic, values:Dynamic, shape:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(y:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(y:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _override_operator(operator:Dynamic, func:Dynamic):Dynamic;
	/**
		The `DType` of elements in this tensor.
	**/
	public var dtype : Dynamic;
	/**
		Evaluates this sparse tensor in a `Session`.
		
		Calling this method will execute all preceding operations that
		produce the inputs needed for the operation that produces this
		tensor.
		
		*N.B.* Before invoking `SparseTensor.eval()`, its graph must have been
		launched in a session, and either a default session must be
		available, or `session` must be specified explicitly.
		
		Args:
		  feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    See [`Session.run()`](../../api_docs/python/client.md#Session.run) for a
		    description of the valid feed values.
		  session: (Optional.) The `Session` to be used to evaluate this sparse
		    tensor. If none, the default session will be used.
		
		Returns:
		  A `SparseTensorValue` object.
	**/
	public function eval(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	static public function from_value(sparse_tensor_value:Dynamic):Dynamic;
	/**
		The `Graph` that contains the index, value, and shape tensors.
	**/
	public var graph : Dynamic;
	/**
		The indices of non-zero values in the represented dense tensor.
		
		Returns:
		  A 2-D Tensor of int64 with shape `[N, ndims]`, where `N` is the
		    number of non-zero values in the tensor, and `ndims` is the rank.
	**/
	public var indices : Dynamic;
	/**
		The `Operation` that produces `values` as an output.
	**/
	public var op : Dynamic;
	/**
		A 1-D Tensor of int64 representing the shape of the dense tensor.
	**/
	public var shape : Dynamic;
	/**
		The non-zero values in the represented dense tensor.
		
		Returns:
		  A 1-D Tensor of any data type.
	**/
	public var values : Dynamic;
}