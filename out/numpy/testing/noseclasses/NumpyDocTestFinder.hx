/* This file is generated, do not edit! */
package numpy.testing.noseclasses;
@:pythonImport("numpy.testing.noseclasses", "NumpyDocTestFinder") extern class NumpyDocTestFinder {
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
		Create a new doctest finder.
		
		The optional argument `parser` specifies a class or
		function that should be used to create new DocTest objects (or
		objects that implement the same interface as DocTest).  The
		signature for this factory function should match the signature
		of the DocTest constructor.
		
		If the optional argument `recurse` is false, then `find` will
		only examine the given object, and not any contained objects.
		
		If the optional argument `exclude_empty` is false, then `find`
		will include tests for objects with empty docstrings.
	**/
	@:native("__init__")
	public function ___init__(?verbose:Dynamic, ?parser:Dynamic, ?recurse:Dynamic, ?exclude_empty:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Find tests for the given object and any contained objects, and
		add them to `tests`.
	**/
	public function _find(tests:Dynamic, obj:Dynamic, name:Dynamic, module:Dynamic, source_lines:Dynamic, globs:Dynamic, seen:Dynamic):Dynamic;
	/**
		Return a line number of the given object's docstring.  Note:
		this method assumes that the object has a docstring.
	**/
	public function _find_lineno(obj:Dynamic, source_lines:Dynamic):Dynamic;
	/**
		Return true if the given object is defined in the given
		module.
	**/
	public function _from_module(module:Dynamic, object:Dynamic):Dynamic;
	/**
		Return a DocTest for the given object, if it defines a docstring;
		otherwise, return None.
	**/
	public function _get_test(obj:Dynamic, name:Dynamic, module:Dynamic, globs:Dynamic, source_lines:Dynamic):Dynamic;
	/**
		Return a list of the DocTests that are defined by the given
		object's docstring, or by any of its contained objects'
		docstrings.
		
		The optional parameter `module` is the module that contains
		the given object.  If the module is not specified or is None, then
		the test finder will attempt to automatically determine the
		correct module.  The object's module is used:
		
		    - As a default namespace, if `globs` is not specified.
		    - To prevent the DocTestFinder from extracting DocTests
		      from objects that are imported from other modules.
		    - To find the name of the file containing the object.
		    - To help find the line number of the object within its
		      file.
		
		Contained objects whose module does not match `module` are ignored.
		
		If `module` is False, no attempt to find the module will be made.
		This is obscure, of use mostly in tests:  if `module` is False, or
		is None but cannot be found automatically, then all objects are
		considered to belong to the (non-existent) module, so all contained
		objects will (recursively) be searched for doctests.
		
		The globals for each DocTest is formed by combining `globs`
		and `extraglobs` (bindings in `extraglobs` override bindings
		in `globs`).  A new copy of the globals dictionary is created
		for each DocTest.  If `globs` is not specified, then it
		defaults to the module's `__dict__`, if specified, or {}
		otherwise.  If `extraglobs` is not specified, then it defaults
		to {}.
	**/
	public function find(obj:Dynamic, ?name:Dynamic, ?module:Dynamic, ?globs:Dynamic, ?extraglobs:Dynamic):Dynamic;
}