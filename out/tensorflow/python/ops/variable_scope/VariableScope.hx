/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "VariableScope") extern class VariableScope {
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
		Creates a new VariableScope with the given properties.
	**/
	@:native("__init__")
	public function ___init__(reuse:Dynamic, ?name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?name_scope:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a new VariableScope with the given properties.
	**/
	public function new(reuse:Dynamic, ?name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?name_scope:Dynamic, ?dtype:Dynamic):Void;
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
		Gets an existing variable with this name or create a new one.
	**/
	public function _get_partitioned_variable(var_store:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic):Dynamic;
	public var caching_device : Dynamic;
	public var custom_getter : Dynamic;
	public var dtype : Dynamic;
	/**
		Gets an existing variable with this name or create a new one.
	**/
	public function get_variable(var_store:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?custom_getter:Dynamic):Dynamic;
	public var initializer : Dynamic;
	public var name : Dynamic;
	public var original_name_scope : Dynamic;
	public var partitioner : Dynamic;
	public var regularizer : Dynamic;
	public var reuse : Dynamic;
	/**
		Reuse variables in this scope.
	**/
	public function reuse_variables():Dynamic;
	/**
		Set caching_device for this scope.
	**/
	public function set_caching_device(caching_device:Dynamic):Dynamic;
	/**
		Set custom getter for this scope.
	**/
	public function set_custom_getter(custom_getter:Dynamic):Dynamic;
	/**
		Set data type for this scope.
	**/
	public function set_dtype(dtype:Dynamic):Dynamic;
	/**
		Set initializer for this scope.
	**/
	public function set_initializer(initializer:Dynamic):Dynamic;
	/**
		Set partitioner for this scope.
	**/
	public function set_partitioner(partitioner:Dynamic):Dynamic;
	/**
		Set regularizer for this scope.
	**/
	public function set_regularizer(regularizer:Dynamic):Dynamic;
}