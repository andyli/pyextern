/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "VariableScope") extern class VariableScope {
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
		Creates a new VariableScope with the given properties.
	**/
	@:native("__init__")
	public function ___init__(reuse:Dynamic, ?name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?name_scope:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Creates a new VariableScope with the given properties.
	**/
	public function new(reuse:Dynamic, ?name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?name_scope:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Void;
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
	/**
		Gets an existing variable with this name or create a new one.
	**/
	public function _get_partitioned_variable(var_store:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public var caching_device : Dynamic;
	public var constraint : Dynamic;
	public var custom_getter : Dynamic;
	public var dtype : Dynamic;
	/**
		Get this scope's variables.
	**/
	public function get_collection(name:Dynamic):Dynamic;
	/**
		Gets an existing variable with this name or create a new one.
	**/
	public function get_variable(var_store:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Get this scope's global variables.
	**/
	public function global_variables():Dynamic;
	public var initializer : Dynamic;
	/**
		Get this scope's local variables.
	**/
	public function local_variables():Dynamic;
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
	/**
		Sets whether to use ResourceVariables for this scope.
	**/
	public function set_use_resource(use_resource:Dynamic):Dynamic;
	/**
		Get this scope's trainable variables.
	**/
	public function trainable_variables():Dynamic;
	public var use_resource : Dynamic;
}