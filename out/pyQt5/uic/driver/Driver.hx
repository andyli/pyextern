/* This file is generated, do not edit! */
package pyQt5.uic.driver;
@:pythonImport("PyQt5.uic.driver", "Driver") extern class Driver {
	static public var LOGGER_NAME : Dynamic;
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
		Initialise the object.  opts is the parsed options.  ui_file is the
		name of the .ui file.
	**/
	@:native("__init__")
	public function ___init__(opts:Dynamic, ui_file:Dynamic):Dynamic;
	/**
		Initialise the object.  opts is the parsed options.  ui_file is the
		name of the .ui file.
	**/
	public function new(opts:Dynamic, ui_file:Dynamic):Void;
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
		Generate the Python code. 
	**/
	public function _generate():Dynamic;
	/**
		Preview the .ui file.  Return the exit status to be passed back to
		the parent process.
	**/
	public function _preview():Dynamic;
	/**
		Invoke the action as specified by the parsed options.  Returns 0 if
		there was no error.
	**/
	public function invoke():Dynamic;
	/**
		Handle a generic exception. 
	**/
	public function on_Exception(e:Dynamic):Dynamic;
	/**
		Handle an IOError exception. 
	**/
	public function on_IOError(e:Dynamic):Dynamic;
	/**
		Handle a NoSuchWidgetError exception. 
	**/
	public function on_NoSuchWidgetError(e:Dynamic):Dynamic;
	/**
		Handle a SyntaxError exception. 
	**/
	public function on_SyntaxError(e:Dynamic):Dynamic;
}