/* This file is generated, do not edit! */
package matplotlib.sphinxext.ipython_console_highlighting;
@:pythonImport("matplotlib.sphinxext.ipython_console_highlighting", "IPythonConsoleLexer") extern class IPythonConsoleLexer {
	/**
		This metaclass automagically converts ``analyse_text`` methods into
		static methods which always return float values.
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, d:Dynamic):Dynamic;
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
	public function __init__(options:Dynamic):Dynamic;
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
		Add a new stream filter to this lexer.
	**/
	public function add_filter(filter_:Dynamic, options:Dynamic):Dynamic;
	static public var alias_filenames : Dynamic;
	static public var aliases : Dynamic;
	/**
		Has to return a float between ``0`` and ``1`` that indicates
		if a lexer wants to highlight this text. Used by ``guess_lexer``.
		If this method returns ``0`` it won't highlight it in any case, if
		it returns ``1`` highlighting with this lexer is guaranteed.
		
		The `LexerMeta` metaclass automatically wraps this function so
		that it works like a static method (no ``self`` or ``cls``
		parameter) and the return value is automatically converted to
		`float`. If the return value is an object that is boolean `False`
		it's the same as if the return values was ``0.0``.
	**/
	static public function analyse_text(text:Dynamic):Dynamic;
	static public var continue_prompt : Dynamic;
	static public var filenames : Dynamic;
	/**
		Return an iterable of (tokentype, value) pairs generated from
		`text`. If `unfiltered` is set to `True`, the filtering mechanism
		is bypassed even if filters are defined.
		
		Also preprocess the text, i.e. expand tabs and strip it if
		wanted and applies registered filters.
	**/
	public function get_tokens(text:Dynamic, ?unfiltered:Dynamic):Dynamic;
	/**
		Return an iterable of (index, tokentype, value) pairs where "index"
		is the starting position of the token within the input text.
		
		In subclasses, implement this method as a generator to
		maximize effectiveness.
	**/
	public function get_tokens_unprocessed(text:Dynamic):Dynamic;
	static public var input_prompt : Dynamic;
	static public var mimetypes : Dynamic;
	static public var name : Dynamic;
	static public var output_prompt : Dynamic;
	static public var priority : Dynamic;
	static public var tb_start : Dynamic;
}