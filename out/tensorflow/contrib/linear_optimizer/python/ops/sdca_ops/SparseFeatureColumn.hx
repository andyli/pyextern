/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sdca_ops;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sdca_ops", "SparseFeatureColumn") extern class SparseFeatureColumn {
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
		Creates a `SparseFeatureColumn` representation.
		
		Args:
		  example_indices: A 1-D int64 tensor of shape `[N]`. Also, accepts
		  python lists, or numpy arrays.
		  feature_indices: A 1-D int64 tensor of shape `[N]`. Also, accepts
		  python lists, or numpy arrays.
		  feature_values: An optional 1-D tensor float tensor of shape `[N]`. Also,
		  accepts python lists, or numpy arrays.
		
		Returns:
		  A `SparseFeatureColumn`
	**/
	@:native("__init__")
	public function ___init__(example_indices:Dynamic, feature_indices:Dynamic, feature_values:Dynamic):Dynamic;
	/**
		Creates a `SparseFeatureColumn` representation.
		
		Args:
		  example_indices: A 1-D int64 tensor of shape `[N]`. Also, accepts
		  python lists, or numpy arrays.
		  feature_indices: A 1-D int64 tensor of shape `[N]`. Also, accepts
		  python lists, or numpy arrays.
		  feature_values: An optional 1-D tensor float tensor of shape `[N]`. Also,
		  accepts python lists, or numpy arrays.
		
		Returns:
		  A `SparseFeatureColumn`
	**/
	public function new(example_indices:Dynamic, feature_indices:Dynamic, feature_values:Dynamic):Void;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		The example indices represented as a dense tensor.
		Returns:
		  A 1-D Tensor of int64 with shape `[N]`.
	**/
	public var example_indices : Dynamic;
	/**
		The feature indices represented as a dense tensor.
		Returns:
		  A 1-D Tensor of int64 with shape `[N]`.
	**/
	public var feature_indices : Dynamic;
	/**
		The feature values represented as a dense tensor.
		Returns:
		  May return None, or a 1-D Tensor of float32 with shape `[N]`.
	**/
	public var feature_values : Dynamic;
}