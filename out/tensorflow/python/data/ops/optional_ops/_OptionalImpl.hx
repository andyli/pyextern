/* This file is generated, do not edit! */
package tensorflow.python.data.ops.optional_ops;
@:pythonImport("tensorflow.python.data.ops.optional_ops", "_OptionalImpl") extern class _OptionalImpl {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(variant_tensor:Dynamic, value_structure:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(variant_tensor:Dynamic, value_structure:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns an `Optional` that wraps the given value.
		
		Args:
		  value: A nested structure of `tf.Tensor` and/or `tf.SparseTensor` objects.
		
		Returns:
		  An `Optional` that wraps `value`.
	**/
	static public function from_value(value:Dynamic):Dynamic;
	/**
		Returns a nested structure of values wrapped by this optional.
		
		If this optional does not have a value (i.e. `self.has_value()` evaluates
		to `False`), this operation will raise `tf.errors.InvalidArgumentError`
		at runtime.
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A nested structure of `tf.Tensor` and/or `tf.SparseTensor` objects.
	**/
	public function get_value(?name:Dynamic):Dynamic;
	/**
		Returns a tensor that evaluates to `True` if this optional has a value.
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A scalar `tf.Tensor` of type `tf.bool`.
	**/
	public function has_value(?name:Dynamic):Dynamic;
	/**
		Returns an `Optional` that has no value.
		
		NOTE: This method takes an argument that defines the structure of the value
		that would be contained in the returned `Optional` if it had a value.
		
		Args:
		  value_structure: A `Structure` object representing the structure of the
		    components of this optional.
		
		Returns:
		  An `Optional` that has no value.
	**/
	static public function none_from_structure(value_structure:Dynamic):Dynamic;
	/**
		The structure of the components of this optional.
		
		Returns:
		  A `Structure` object representing the structure of the components of this
		    optional.
	**/
	public var value_structure : Dynamic;
}