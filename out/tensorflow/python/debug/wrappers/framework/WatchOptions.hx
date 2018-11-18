/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.framework;
@:pythonImport("tensorflow.python.debug.wrappers.framework", "WatchOptions") extern class WatchOptions {
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
		Constructor of WatchOptions: Debug watch options.
		
		Used as return values of `watch_fn`s.
		
		Args:
		  debug_ops: (`str` or `list of str`) Debug ops to be used.
		  node_name_regex_whitelist: Regular-expression whitelist for node_name,
		    e.g., `"(weight_[0-9]+|bias_.*)"`
		  op_type_regex_whitelist: Regular-expression whitelist for the op type of
		    nodes, e.g., `"(Variable|Add)"`.
		    If both `node_name_regex_whitelist` and `op_type_regex_whitelist`
		    are set, the two filtering operations will occur in a logical `AND`
		    relation. In other words, a node will be included if and only if it
		    hits both whitelists.
		  tensor_dtype_regex_whitelist: Regular-expression whitelist for Tensor
		    data type, e.g., `"^int.*"`.
		    This whitelist operates in logical `AND` relations to the two whitelists
		    above.
		  tolerate_debug_op_creation_failures: (`bool`) whether debug op creation
		    failures (e.g., due to dtype incompatibility) are to be tolerated by not
		    throwing exceptions.
	**/
	@:native("__init__")
	public function ___init__(?debug_ops:Dynamic, ?node_name_regex_whitelist:Dynamic, ?op_type_regex_whitelist:Dynamic, ?tensor_dtype_regex_whitelist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic):Dynamic;
	/**
		Constructor of WatchOptions: Debug watch options.
		
		Used as return values of `watch_fn`s.
		
		Args:
		  debug_ops: (`str` or `list of str`) Debug ops to be used.
		  node_name_regex_whitelist: Regular-expression whitelist for node_name,
		    e.g., `"(weight_[0-9]+|bias_.*)"`
		  op_type_regex_whitelist: Regular-expression whitelist for the op type of
		    nodes, e.g., `"(Variable|Add)"`.
		    If both `node_name_regex_whitelist` and `op_type_regex_whitelist`
		    are set, the two filtering operations will occur in a logical `AND`
		    relation. In other words, a node will be included if and only if it
		    hits both whitelists.
		  tensor_dtype_regex_whitelist: Regular-expression whitelist for Tensor
		    data type, e.g., `"^int.*"`.
		    This whitelist operates in logical `AND` relations to the two whitelists
		    above.
		  tolerate_debug_op_creation_failures: (`bool`) whether debug op creation
		    failures (e.g., due to dtype incompatibility) are to be tolerated by not
		    throwing exceptions.
	**/
	public function new(?debug_ops:Dynamic, ?node_name_regex_whitelist:Dynamic, ?op_type_regex_whitelist:Dynamic, ?tensor_dtype_regex_whitelist:Dynamic, ?tolerate_debug_op_creation_failures:Dynamic):Void;
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
}