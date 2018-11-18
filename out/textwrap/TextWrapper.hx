/* This file is generated, do not edit! */
package textwrap;
@:pythonImport("textwrap", "TextWrapper") extern class TextWrapper {
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
	public function ___init__(?width:Dynamic, ?initial_indent:Dynamic, ?subsequent_indent:Dynamic, ?expand_tabs:Dynamic, ?replace_whitespace:Dynamic, ?fix_sentence_endings:Dynamic, ?break_long_words:Dynamic, ?drop_whitespace:Dynamic, ?break_on_hyphens:Dynamic, ?tabsize:Dynamic, ?max_lines:Dynamic, ?placeholder:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?width:Dynamic, ?initial_indent:Dynamic, ?subsequent_indent:Dynamic, ?expand_tabs:Dynamic, ?replace_whitespace:Dynamic, ?fix_sentence_endings:Dynamic, ?break_long_words:Dynamic, ?drop_whitespace:Dynamic, ?break_on_hyphens:Dynamic, ?tabsize:Dynamic, ?max_lines:Dynamic, ?placeholder:Dynamic):Void;
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
		_fix_sentence_endings(chunks : [string])
		
		Correct for sentence endings buried in 'chunks'.  Eg. when the
		original text contains "... foo.\nBar ...", munge_whitespace()
		and split() will convert that to [..., "foo.", " ", "Bar", ...]
		which has one too few spaces; this method simply changes the one
		space to two.
	**/
	public function _fix_sentence_endings(chunks:Dynamic):Dynamic;
	/**
		_handle_long_word(chunks : [string],
		                     cur_line : [string],
		                     cur_len : int, width : int)
		
		Handle a chunk of text (most likely a word, not whitespace) that
		is too long to fit in any line.
	**/
	public function _handle_long_word(reversed_chunks:Dynamic, cur_line:Dynamic, cur_len:Dynamic, width:Dynamic):Dynamic;
	/**
		_munge_whitespace(text : string) -> string
		
		Munge whitespace in text: expand tabs and convert all other
		whitespace characters to spaces.  Eg. " foo\tbar\n\nbaz"
		becomes " foo    bar  baz".
	**/
	public function _munge_whitespace(text:Dynamic):Dynamic;
	/**
		_split(text : string) -> [string]
		
		Split the text to wrap into indivisible chunks.  Chunks are
		not quite the same as words; see _wrap_chunks() for full
		details.  As an example, the text
		  Look, goof-ball -- use the -b option!
		breaks into the following chunks:
		  'Look,', ' ', 'goof-', 'ball', ' ', '--', ' ',
		  'use', ' ', 'the', ' ', '-b', ' ', 'option!'
		if break_on_hyphens is True, or in:
		  'Look,', ' ', 'goof-ball', ' ', '--', ' ',
		  'use', ' ', 'the', ' ', '-b', ' ', option!'
		otherwise.
	**/
	public function _split(text:Dynamic):Dynamic;
	public function _split_chunks(text:Dynamic):Dynamic;
	/**
		_wrap_chunks(chunks : [string]) -> [string]
		
		Wrap a sequence of text chunks and return a list of lines of
		length 'self.width' or less.  (If 'break_long_words' is false,
		some lines may be longer than this.)  Chunks correspond roughly
		to words and the whitespace between them: each chunk is
		indivisible (modulo 'break_long_words'), but a line break can
		come between any two chunks.  Chunks should not have internal
		whitespace; ie. a chunk is either all whitespace or a "word".
		Whitespace chunks will be removed from the beginning and end of
		lines, but apart from that whitespace is preserved.
	**/
	public function _wrap_chunks(chunks:Dynamic):Dynamic;
	/**
		fill(text : string) -> string
		
		Reformat the single paragraph in 'text' to fit in lines of no
		more than 'self.width' columns, and return a new string
		containing the entire wrapped paragraph.
	**/
	public function fill(text:Dynamic):Dynamic;
	static public var sentence_end_re : Dynamic;
	static public var unicode_whitespace_trans : Dynamic;
	static public var uspace : Dynamic;
	static public var wordsep_re : Dynamic;
	static public var wordsep_simple_re : Dynamic;
	/**
		wrap(text : string) -> [string]
		
		Reformat the single paragraph in 'text' so it fits in lines of
		no more than 'self.width' columns, and return a list of wrapped
		lines.  Tabs in 'text' are expanded with string.expandtabs(),
		and all other whitespace characters (including newline) are
		converted to space.
	**/
	public function wrap(text:Dynamic):Dynamic;
	static public var x : Dynamic;
}