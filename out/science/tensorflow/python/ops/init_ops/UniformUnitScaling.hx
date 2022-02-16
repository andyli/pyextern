/* This file is generated, do not edit! */
package tensorflow.python.ops.init_ops;
@:pythonImport("tensorflow.python.ops.init_ops", "UniformUnitScaling") extern class UniformUnitScaling {
	/**
		Returns a tensor object initialized as specified by the initializer.
		
		Args:
		  shape: Shape of the tensor.
		  dtype: Optional dtype of the tensor. If not provided use the initializer
		    dtype.
		  partition_info: Optional information about the possible partitioning of a
		    tensor.
	**/
	public function __call__(shape:Dynamic, ?dtype:Dynamic, ?partition_info:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		DEPRECATED FUNCTION (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Call initializer instance with the dtype argument instead of passing it to the constructor
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.initializers.variance_scaling instead with distribution=uniform to get equivalent behavior.
	**/
	@:native("__init__")
	public function ___init__(?factor:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Call initializer instance with the dtype argument instead of passing it to the constructor
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.initializers.variance_scaling instead with distribution=uniform to get equivalent behavior.
	**/
	public function new(?factor:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Void;
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
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public var _tf_deprecated_api_names : Dynamic;
	/**
		Instantiates an initializer from a configuration dictionary.
		
		Example:
		
		```python
		initializer = RandomUniform(-1, 1)
		config = initializer.get_config()
		initializer = RandomUniform.from_config(config)
		```
		
		Args:
		  config: A Python dictionary. It will typically be the output of
		    `get_config`.
		
		Returns:
		  An Initializer instance.
	**/
	static public function from_config(config:Dynamic):Dynamic;
	/**
		Returns the configuration of the initializer as a JSON-serializable dict.
		
		Returns:
		  A JSON-serializable Python dict.
	**/
	public function get_config():Dynamic;
}