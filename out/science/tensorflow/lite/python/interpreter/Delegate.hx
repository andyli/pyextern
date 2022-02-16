/* This file is generated, do not edit! */
package tensorflow.lite.python.interpreter;
@:pythonImport("tensorflow.lite.python.interpreter", "Delegate") extern class Delegate {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Loads delegate from the shared library.
		
		Args:
		  library: Shared library name.
		  options: Dictionary of options that are required to load the delegate. All
		    keys and values in the dictionary should be serializable. Consult the
		    documentation of the specific delegate for required and legal options.
		    (default None)
		
		Raises:
		  RuntimeError: This is raised if the Python implementation is not CPython.
	**/
	@:native("__init__")
	public function ___init__(library:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Loads delegate from the shared library.
		
		Args:
		  library: Shared library name.
		  options: Dictionary of options that are required to load the delegate. All
		    keys and values in the dictionary should be serializable. Consult the
		    documentation of the specific delegate for required and legal options.
		    (default None)
		
		Raises:
		  RuntimeError: This is raised if the Python implementation is not CPython.
	**/
	public function new(library:Dynamic, ?options:Dynamic):Void;
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
	/**
		Returns the native TfLiteDelegate pointer.
		
		It is not safe to copy this pointer because it needs to be freed.
		
		Returns:
		  TfLiteDelegate *
	**/
	public function _get_native_delegate_pointer():Dynamic;
}