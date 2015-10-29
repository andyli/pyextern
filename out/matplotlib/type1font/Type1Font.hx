/* This file is generated, do not edit! */
package matplotlib.type1font;
@:pythonImport("matplotlib.type1font", "Type1Font") extern class Type1Font {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Initialize a Type-1 font. *input* can be either the file name of
		a pfb file or a 3-tuple of already-decoded Type-1 font parts.
	**/
	@:native("__init__")
	public function ___init__(input:Dynamic):Dynamic;
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
	static public var __slots__ : Dynamic;
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
	static public var _comment_re : Dynamic;
	static public var _delimiter : Dynamic;
	static public var _instring_re : Dynamic;
	static public var _name : Dynamic;
	static public var _number : Dynamic;
	/**
		Find the values of various font properties. This limited kind
		of parsing is described in Chapter 10 "Adobe Type Manager
		Compatibility" of the Type-1 spec.
	**/
	public function _parse():Dynamic;
	/**
		Read the font from a file, decoding into usable parts.
	**/
	public function _read(file:Dynamic):Dynamic;
	/**
		Split the Type 1 font into its three main parts.
		
		The three parts are: (1) the cleartext part, which ends in a
		eexec operator; (2) the encrypted part; (3) the fixed part,
		which contains 512 ASCII zeros possibly divided on various
		lines, a cleartomark operator, and possibly something else.
	**/
	public function _split(data:Dynamic):Dynamic;
	static public var _string : Dynamic;
	static public var _token_re : Dynamic;
	/**
		A PostScript tokenizer. Yield (token, value) pairs such as
		(cls._whitespace, '   ') or (cls._name, '/Foobar').
	**/
	static public function _tokens(text:Dynamic):Dynamic;
	static public function _transformer(tokens:Dynamic, slant:Dynamic, extend:Dynamic):Dynamic;
	static public var _whitespace : Dynamic;
	static public var _whitespace_re : Dynamic;
	static public var parts : Dynamic;
	static public var prop : Dynamic;
	/**
		Transform the font by slanting or extending. *effects* should
		be a dict where ``effects['slant']`` is the tangent of the
		angle that the font is to be slanted to the right (so negative
		values slant to the left) and ``effects['extend']`` is the
		multiplier by which the font is to be extended (so values less
		than 1.0 condense). Returns a new :class:`Type1Font` object.
	**/
	public function transform(effects:Dynamic):Dynamic;
}