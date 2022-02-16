/* This file is generated, do not edit! */
package tensorflow.python.util.module_wrapper;
@:pythonImport("tensorflow.python.util.module_wrapper", "TFModuleWrapper") extern class TFModuleWrapper {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		specialized dir() implementation
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(wrapped:Dynamic, module_name:Dynamic, ?public_apis:Dynamic, ?deprecation:Dynamic, ?has_lite:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(wrapped:Dynamic, module_name:Dynamic, ?public_apis:Dynamic, ?deprecation:Dynamic, ?has_lite:Dynamic):Void;
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
	public function __setattr__(arg:Dynamic, val:Dynamic):Dynamic;
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
		Gets a method from the fast lookup table.
	**/
	public function _fastdict_get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Registers a method to the fast lookup table.
	**/
	public function _fastdict_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if a method exists in the fast lookup table.
	**/
	public function _fastdict_key_in(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Imports and caches pre-defined API.
		
		Warns if necessary.
		
		This method is a replacement for __getattr__(). It will be added into the
		extended python module as a callback to reduce API overhead. Instead of
		relying on implicit AttributeError handling, this added callback function
		will
		be called explicitly from the extended C API if the default attribute lookup
		fails.
	**/
	public function _getattr(name:Dynamic):Dynamic;
	/**
		Imports and caches pre-defined API.
		
		Warns if necessary.
		
		This method is a replacement for __getattribute__(). It will be added into
		the extended python module as a callback to reduce API overhead.
	**/
	public function _getattribute(name:Dynamic):Dynamic;
	/**
		Print deprecation warning for attr with given name if necessary.
	**/
	public function _tfmw_add_deprecation_warning(name:Dynamic, attr:Dynamic):Dynamic;
	/**
		Lazily loading the modules.
	**/
	public function _tfmw_import_module(name:Dynamic):Dynamic;
	static public var compat_v1_usage_recorded : Dynamic;
	/**
		Defines the callback function to replace __getattr__
	**/
	public function set_getattr_callback(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Defines the callback function to replace __getattribute__
	**/
	public function set_getattribute_callback(args:haxe.extern.Rest<Dynamic>):Dynamic;
}