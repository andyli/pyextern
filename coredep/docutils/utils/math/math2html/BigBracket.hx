/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "BigBracket") extern class BigBracket {
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
		Set the size and symbol for the bracket.
	**/
	@:native("__init__")
	public function ___init__(size:Dynamic, bracket:Dynamic, ?alignment:Dynamic):Dynamic;
	/**
		Set the size and symbol for the bracket.
	**/
	public function new(size:Dynamic, bracket:Dynamic, ?alignment:Dynamic):Void;
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
	/**
		Get the bracket piece as an array cell.
	**/
	public function getcell(index:Dynamic):Dynamic;
	/**
		Get the bracket as an array or as a single bracket.
	**/
	public function getcontents():Dynamic;
	/**
		Return the nth piece for the bracket.
	**/
	public function getpiece(index:Dynamic):Dynamic;
	/**
		Return the only piece for a single-piece bracket.
	**/
	public function getpiece1(index:Dynamic):Dynamic;
	/**
		Get the nth piece for a 3-piece bracket: parenthesis or square bracket.
	**/
	public function getpiece3(index:Dynamic):Dynamic;
	/**
		Get the nth piece for a 4-piece bracket: curly bracket.
	**/
	public function getpiece4(index:Dynamic):Dynamic;
	/**
		Get an array with all pieces.
	**/
	public function getpieces():Dynamic;
	/**
		Return the bracket as a single sign.
	**/
	public function getsinglebracket():Dynamic;
	/**
		Decide if the limit should be a small, one-line symbol.
	**/
	public function smalllimit():Dynamic;
	static public var symbols : Dynamic;
}