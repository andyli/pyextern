/* This file is generated, do not edit! */
package importlib.abc;
@:pythonImport("importlib.abc", "ExecutionLoader") extern class ExecutionLoader {
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Return a module to initialize and into which to load.
		
		This method should raise ImportError if anything prevents it
		from creating a new module.  It may return None to indicate
		that the spec should create the new module.
	**/
	public function create_module(spec:Dynamic):Dynamic;
	/**
		Execute the module.
	**/
	public function exec_module(module:Dynamic):Dynamic;
	/**
		Method to return the code object for fullname.
		
		Should return None if not applicable (e.g. built-in module).
		Raise ImportError if the module cannot be found.
	**/
	public function get_code(fullname:Dynamic):Dynamic;
	/**
		Abstract method which should return the value that __file__ is to be
		set to.
		
		Raises ImportError if the module cannot be found.
	**/
	public function get_filename(fullname:Dynamic):Dynamic;
	/**
		Abstract method which should return the source code for the
		module.  The fullname is a str.  Returns a str.
		
		Raises ImportError if the module cannot be found.
	**/
	public function get_source(fullname:Dynamic):Dynamic;
	/**
		Optional method which when implemented should return whether the
		module is a package.  The fullname is a str.  Returns a bool.
		
		Raises ImportError if the module cannot be found.
	**/
	public function is_package(fullname:Dynamic):Dynamic;
	public function load_module(fullname:Dynamic):Dynamic;
	/**
		Return a module's repr.
		
		Used by the module type when the method does not raise
		NotImplementedError.
		
		This method is deprecated.
	**/
	public function module_repr(module:Dynamic):Dynamic;
	/**
		Compile 'data' into a code object.
		
		The 'data' argument can be anything that compile() can handle. The'path'
		argument should be where the data was retrieved (when applicable).
	**/
	static public function source_to_code(data:Dynamic, ?path:Dynamic):Dynamic;
}