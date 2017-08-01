/* This file is generated, do not edit! */
package torch.utils.serialization.read_lua_file;
@:pythonImport("torch.utils.serialization.read_lua_file", "T7Reader") extern class T7Reader {
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
		Params:
		* `fileobj` file object to read from, must be actual file object
		            as it must support array, struct, and numpy
		* `list_heuristic`: automatically turn tables with only consecutive
		                        positive integral indices into lists
		                        (default True)
		* `int_heuristic`: cast all whole floats into ints (default True)
		* `force_deserialize_classes`: deserialize all classes, not just the
		                               whitelisted ones (default True)
	**/
	@:native("__init__")
	public function ___init__(fileobj:Dynamic, ?list_heuristic:Dynamic, ?int_heuristic:Dynamic, ?unknown_classes:Dynamic, ?long_size:Dynamic):Dynamic;
	/**
		Params:
		* `fileobj` file object to read from, must be actual file object
		            as it must support array, struct, and numpy
		* `list_heuristic`: automatically turn tables with only consecutive
		                        positive integral indices into lists
		                        (default True)
		* `int_heuristic`: cast all whole floats into ints (default True)
		* `force_deserialize_classes`: deserialize all classes, not just the
		                               whitelisted ones (default True)
	**/
	public function new(fileobj:Dynamic, ?list_heuristic:Dynamic, ?int_heuristic:Dynamic, ?unknown_classes:Dynamic, ?long_size:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _can_be_list(table:Dynamic):Dynamic;
	public function _read(fmt:Dynamic):Dynamic;
	public function memoize_index():Dynamic;
	public function read():Dynamic;
	public function read_boolean():Dynamic;
	public function read_double():Dynamic;
	public function read_float():Dynamic;
	public function read_function():Dynamic;
	public function read_int():Dynamic;
	public function read_long():Dynamic;
	public function read_long_array(n:Dynamic):Dynamic;
	public function read_number():Dynamic;
	public function read_object():Dynamic;
	public function read_string():Dynamic;
	public function read_table():Dynamic;
}