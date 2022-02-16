/* This file is generated, do not edit! */
package matplotlib.type1font;
@:pythonImport("matplotlib.type1font", "Type1Font") extern class Type1Font {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Initialize a Type-1 font.
		
		Parameters
		----------
		input : str or 3-tuple
		    Either a pfb file name, or a 3-tuple of already-decoded Type-1
		    font `~.Type1Font.parts`.
	**/
	@:native("__init__")
	public function ___init__(input:Dynamic):Dynamic;
	/**
		Initialize a Type-1 font.
		
		Parameters
		----------
		input : str or 3-tuple
		    Either a pfb file name, or a 3-tuple of already-decoded Type-1
		    font `~.Type1Font.parts`.
	**/
	public function new(input:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decrypt ciphertext using the Type-1 font algorithm
		
		The algorithm is described in Adobe's "Adobe Type 1 Font Format".
		The key argument can be an integer, or one of the strings
		'eexec' and 'charstring', which map to the key specified for the
		corresponding part of Type-1 fonts.
		
		The ndiscard argument should be an integer, usually 4.
		That number of bytes is discarded from the beginning of plaintext.
	**/
	static public function _decrypt(ciphertext:Dynamic, key:Dynamic, ?ndiscard:Dynamic):Dynamic;
	/**
		Encrypt plaintext using the Type-1 font algorithm
		
		The algorithm is described in Adobe's "Adobe Type 1 Font Format".
		The key argument can be an integer, or one of the strings
		'eexec' and 'charstring', which map to the key specified for the
		corresponding part of Type-1 fonts.
		
		The ndiscard argument should be an integer, usually 4. That
		number of bytes is prepended to the plaintext before encryption.
		This function prepends NUL bytes for reproducibility, even though
		the original algorithm uses random bytes, presumably to avoid
		cryptanalysis.
	**/
	static public function _encrypt(plaintext:Dynamic, key:Dynamic, ?ndiscard:Dynamic):Dynamic;
	static public var _instring_re : Dynamic;
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
	static public var _token_re : Dynamic;
	/**
		A PostScript tokenizer. Yield (token, value) pairs such as
		(_TokenType.whitespace, '   ') or (_TokenType.name, '/Foobar').
	**/
	static public function _tokens(text:Dynamic):Dynamic;
	static public function _transformer(tokens:Dynamic, slant:Dynamic, extend:Dynamic):Dynamic;
	static public var _whitespace_or_comment_re : Dynamic;
	public var decrypted : Dynamic;
	public var parts : Dynamic;
	public var prop : Dynamic;
	/**
		Return a new font that is slanted and/or extended.
		
		Parameters
		----------
		effects : dict
		    A dict with optional entries:
		
		    - 'slant' : float, default: 0
		        Tangent of the angle that the font is to be slanted to the
		        right. Negative values slant to the left.
		    - 'extend' : float, default: 1
		        Scaling factor for the font width. Values less than 1 condense
		        the glyphs.
		
		Returns
		-------
		`Type1Font`
	**/
	public function transform(effects:Dynamic):Dynamic;
}