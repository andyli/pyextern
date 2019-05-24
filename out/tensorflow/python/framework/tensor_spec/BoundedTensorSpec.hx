/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_spec;
@:pythonImport("tensorflow.python.framework.tensor_spec", "BoundedTensorSpec") extern class BoundedTensorSpec {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initializes a new `BoundedTensorSpec`.
		
		Args:
		  shape: Value convertible to `tf.TensorShape`. The shape of the tensor.
		  dtype: Value convertible to `tf.DType`. The type of the tensor values.
		  minimum: Number or sequence specifying the minimum element bounds
		    (inclusive). Must be broadcastable to `shape`.
		  maximum: Number or sequence specifying the maximum element bounds
		    (inclusive). Must be broadcastable to `shape`.
		  name: Optional string containing a semantic name for the corresponding
		    array. Defaults to `None`.
		
		Raises:
		  ValueError: If `minimum` or `maximum` are not provided or not
		    broadcastable to `shape`.
		  TypeError: If the shape is not an iterable or if the `dtype` is an invalid
		    numpy dtype.
	**/
	@:native("__init__")
	public function ___init__(shape:Dynamic, dtype:Dynamic, minimum:Dynamic, maximum:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes a new `BoundedTensorSpec`.
		
		Args:
		  shape: Value convertible to `tf.TensorShape`. The shape of the tensor.
		  dtype: Value convertible to `tf.DType`. The type of the tensor values.
		  minimum: Number or sequence specifying the minimum element bounds
		    (inclusive). Must be broadcastable to `shape`.
		  maximum: Number or sequence specifying the maximum element bounds
		    (inclusive). Must be broadcastable to `shape`.
		  name: Optional string containing a semantic name for the corresponding
		    array. Defaults to `None`.
		
		Raises:
		  ValueError: If `minimum` or `maximum` are not provided or not
		    broadcastable to `shape`.
		  TypeError: If the shape is not an iterable or if the `dtype` is an invalid
		    numpy dtype.
	**/
	public function new(shape:Dynamic, dtype:Dynamic, minimum:Dynamic, maximum:Dynamic, ?name:Dynamic):Void;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
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
	static public var __slots__ : Dynamic;
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
	public var _dtype : Dynamic;
	public var _maximum : Dynamic;
	public var _minimum : Dynamic;
	public var _name : Dynamic;
	public var _shape : Dynamic;
	public var _shape_tuple : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the `dtype` of elements in the tensor.
	**/
	public var dtype : Dynamic;
	static public function from_spec(spec:Dynamic):Dynamic;
	static public function from_tensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns True if spec_or_tensor is compatible with this TensorSpec.
		
		Two tensors are considered compatible if they have the same dtype
		and their shapes are compatible (see `tf.TensorShape.is_compatible_with`).
		
		Args:
		  spec_or_tensor: A tf.TensorSpec or a tf.Tensor
		
		Returns:
		  True if spec_or_tensor is compatible with self.
	**/
	public function is_compatible_with(spec_or_tensor:Dynamic):Dynamic;
	/**
		Returns a NumPy array specifying the maximum bounds (inclusive).
	**/
	public var maximum : Dynamic;
	/**
		Returns a NumPy array specifying the minimum bounds (inclusive).
	**/
	public var minimum : Dynamic;
	/**
		Returns the (optionally provided) name of the described tensor.
	**/
	public var name : Dynamic;
	/**
		Returns the `TensorShape` that represents the shape of the tensor.
	**/
	public var shape : Dynamic;
}