/* This file is generated, do not edit! */
package docutils.parsers.rst.states;
@:pythonImport("docutils.parsers.rst.states", "Inliner") extern class Inliner {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
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
	public function adjust_uri(uri:Dynamic):Dynamic;
	public function anonymous_reference(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var dispatch : Dynamic;
	static public var email_pattern : Dynamic;
	static public var emailc : Dynamic;
	public function emphasis(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var end_string_suffix : Dynamic;
	/**
		Handles `nodes.footnote_reference` and `nodes.citation_reference`
		elements.
	**/
	public function footnote_reference(match:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Check each of the patterns in `self.implicit_dispatch` for a match,
		and dispatch to the stored method for the pattern.  Recursively check
		the text before and after the match.  Return a list of `nodes.Text`
		and inline element nodes.
	**/
	public function implicit_inline(text:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Setting-based customizations; run when parsing begins.
	**/
	public function init_customizations(settings:Dynamic):Dynamic;
	public function inline_internal_target(match:Dynamic, lineno:Dynamic):Dynamic;
	public function inline_obj(match:Dynamic, lineno:Dynamic, end_pattern:Dynamic, nodeclass:Dynamic, ?restore_backslashes:Dynamic):Dynamic;
	public function interpreted(rawsource:Dynamic, text:Dynamic, role:Dynamic, lineno:Dynamic):Dynamic;
	public function interpreted_or_phrase_ref(match:Dynamic, lineno:Dynamic):Dynamic;
	public function literal(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var non_unescaped_whitespace_escape_before : Dynamic;
	static public var non_whitespace_after : Dynamic;
	static public var non_whitespace_before : Dynamic;
	static public var non_whitespace_escape_before : Dynamic;
	/**
		Return 2 lists: nodes (text and inline elements), and system_messages.
		
		Using `self.patterns.initial`, a pattern which matches start-strings
		(emphasis, strong, interpreted, phrase reference, literal,
		substitution reference, and inline target) and complete constructs
		(simple reference, footnote reference), search for a candidate.  When
		one is found, check for validity (e.g., not a quoted '*' character).
		If valid, search for the corresponding end string if applicable, and
		check it for validity.  If not found or invalid, generate a warning
		and ignore the start-string.  Implicit inline markup (e.g. standalone
		URIs) is found last.
	**/
	public function parse(text:Dynamic, lineno:Dynamic, memo:Dynamic, parent:Dynamic):Dynamic;
	static public var parts : Dynamic;
	static public var patterns : Dynamic;
	public function pep_reference(match:Dynamic, lineno:Dynamic):Dynamic;
	public function phrase_ref(before:Dynamic, after:Dynamic, rawsource:Dynamic, escaped:Dynamic, text:Dynamic):Dynamic;
	public function problematic(text:Dynamic, rawsource:Dynamic, message:Dynamic):Dynamic;
	/**
		Test if inline markup start-string is 'quoted'.
		
		'Quoted' in this context means the start-string is enclosed in a pair
		of matching opening/closing delimiters (not necessarily quotes)
		or at the end of the match.
	**/
	public function quoted_start(match:Dynamic):Dynamic;
	public function reference(match:Dynamic, lineno:Dynamic, ?anonymous:Dynamic):Dynamic;
	public function rfc_reference(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var rfc_url : Dynamic;
	static public var simplename : Dynamic;
	public function standalone_uri(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var start_string_prefix : Dynamic;
	public function strong(match:Dynamic, lineno:Dynamic):Dynamic;
	public function substitution_reference(match:Dynamic, lineno:Dynamic):Dynamic;
	static public var uri_end : Dynamic;
	static public var uri_end_delim : Dynamic;
	static public var uric : Dynamic;
	static public var urilast : Dynamic;
}