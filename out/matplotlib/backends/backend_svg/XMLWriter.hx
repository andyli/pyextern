/* This file is generated, do not edit! */
package matplotlib.backends.backend_svg;
@:pythonImport("matplotlib.backends.backend_svg", "XMLWriter") extern class XMLWriter {
	public function _XMLWriter__flush(?indent:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(file:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(file:Dynamic):Void;
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
		Closes open elements, up to (and including) the element identified
		by the given identifier.
		
		Parameters
		----------
		id
		    Element identifier, as returned by the :meth:`start` method.
	**/
	public function close(id:Dynamic):Dynamic;
	/**
		Adds a comment to the output stream.
		
		Parameters
		----------
		comment : str
		    Comment text.
	**/
	public function comment(comment:Dynamic):Dynamic;
	/**
		Adds character data to the output stream.
		
		Parameters
		----------
		text : str
		    Character data.
	**/
	public function data(text:Dynamic):Dynamic;
	/**
		Adds an entire element.  This is the same as calling :meth:`start`,
		:meth:`data`, and :meth:`end` in sequence. The *text* argument can be
		omitted.
	**/
	public function element(tag:Dynamic, ?text:Dynamic, ?attrib:Dynamic, ?extra:python.KwArgs<Dynamic>):Dynamic;
	/**
		Closes the current element (opened by the most recent call to
		:meth:`start`).
		
		Parameters
		----------
		tag
		    Element tag.  If given, the tag must match the start tag.  If
		    omitted, the current element is closed.
	**/
	public function end(?tag:Dynamic, ?indent:Dynamic):Dynamic;
	/**
		Flushes the output stream.
	**/
	public function flush():Dynamic;
	/**
		Opens a new element.  Attributes can be given as keyword
		arguments, or as a string/string dictionary. The method returns
		an opaque identifier that can be passed to the :meth:`close`
		method, to close all open elements up to and including this one.
		
		Parameters
		----------
		tag
		    Element tag.
		attrib
		    Attribute dictionary.  Alternatively, attributes can be given as
		    keyword arguments.
		
		Returns
		-------
		An element identifier.
	**/
	public function start(tag:Dynamic, ?attrib:Dynamic, ?extra:python.KwArgs<Dynamic>):Dynamic;
}