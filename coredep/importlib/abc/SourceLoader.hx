/* This file is generated, do not edit! */
package importlib.abc;
@:pythonImport("importlib.abc", "SourceLoader") extern class SourceLoader {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Optional method which writes data (bytes) to a file path (a str).
		
		Implementing this method allows for the writing of bytecode files.
		
		The source path is needed in order to correctly transfer permissions
	**/
	public function _cache_bytecode(source_path:Dynamic, cache_path:Dynamic, data:Dynamic):Dynamic;
	/**
		Use default semantics for module creation.
	**/
	public function create_module(spec:Dynamic):Dynamic;
	/**
		Execute the module.
	**/
	public function exec_module(module:Dynamic):Dynamic;
	/**
		Concrete implementation of InspectLoader.get_code.
		
		Reading of bytecode requires path_stats to be implemented. To write
		bytecode, set_data must also be implemented.
	**/
	public function get_code(fullname:Dynamic):Dynamic;
	/**
		Abstract method which when implemented should return the bytes for
		the specified path.  The path must be a str.
	**/
	public function get_data(path:Dynamic):Dynamic;
	/**
		Abstract method which should return the value that __file__ is to be
		set to.
		
		Raises ImportError if the module cannot be found.
	**/
	public function get_filename(fullname:Dynamic):Dynamic;
	/**
		Concrete implementation of InspectLoader.get_source.
	**/
	public function get_source(fullname:Dynamic):Dynamic;
	/**
		Concrete implementation of InspectLoader.is_package by checking if
		the path returned by get_filename has a filename of '__init__.py'.
	**/
	public function is_package(fullname:Dynamic):Dynamic;
	/**
		This module is deprecated.
	**/
	public function load_module(fullname:Dynamic):Dynamic;
	/**
		Return a module's repr.
		
		Used by the module type when the method does not raise
		NotImplementedError.
		
		This method is deprecated.
	**/
	public function module_repr(module:Dynamic):Dynamic;
	/**
		Return the (int) modification time for the path (str).
	**/
	public function path_mtime(path:Dynamic):Dynamic;
	/**
		Return a metadata dict for the source pointed to by the path (str).
		Possible keys:
		- 'mtime' (mandatory) is the numeric timestamp of last source
		  code modification;
		- 'size' (optional) is the size in bytes of the source code.
	**/
	public function path_stats(path:Dynamic):Dynamic;
	/**
		Write the bytes to the path (if possible).
		
		Accepts a str path and data as bytes.
		
		Any needed intermediary directories are to be created. If for some
		reason the file cannot be written because of permissions, fail
		silently.
	**/
	public function set_data(path:Dynamic, data:Dynamic):Dynamic;
	/**
		Return the code object compiled from source.
		
		The 'data' argument can be any object type that compile() supports.
	**/
	public function source_to_code(data:Dynamic, path:Dynamic, ?_optimize:Dynamic):Dynamic;
}