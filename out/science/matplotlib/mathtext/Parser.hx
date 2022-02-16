/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "Parser") extern class Parser {
	/**
		Stores the state of the parser.
		
		States are pushed and popped from a stack as necessary, and
		the "current" state is always at the top of the stack.
	**/
	static public function State(font_output:Dynamic, font:Dynamic, font_class:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		An enumeration.
	**/
	static public function _MathStyle(value:Dynamic, ?names:Dynamic, ?module:Dynamic, ?qualname:Dynamic, ?type:Dynamic, ?start:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	@:native("__init__")
	public function ___init__():Dynamic;
	public function new():Void;
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
	static public var _accent_map : Dynamic;
	static public var _accentprefixed : Dynamic;
	static public var _ambi_delim : Dynamic;
	static public var _arrow_symbols : Dynamic;
	public function _auto_sized_delimiter(front:Dynamic, middle:Dynamic, back:Dynamic):Dynamic;
	static public var _binary_operators : Dynamic;
	static public var _char_over_chars : Dynamic;
	static public var _dropsub_symbols : Dynamic;
	static public var _fontnames : Dynamic;
	static public var _function_names : Dynamic;
	public function _genfrac(ldelim:Dynamic, rdelim:Dynamic, rule:Dynamic, style:Dynamic, num:Dynamic, den:Dynamic):Dynamic;
	public function _genset(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	static public var _left_delim : Dynamic;
	public function _make_space(percentage:Dynamic):Dynamic;
	static public var _overunder_functions : Dynamic;
	static public var _overunder_symbols : Dynamic;
	static public var _punctuation_symbols : Dynamic;
	static public var _relation_symbols : Dynamic;
	static public var _right_delim : Dynamic;
	static public var _space_widths : Dynamic;
	static public var _spaced_symbols : Dynamic;
	static public var _wide_accents : Dynamic;
	public function accent(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function accentprefixed(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function auto_delim(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function binom(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function c_over_c(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function customspace(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function dfrac(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function end_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function font(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function frac(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	@:native("function")
	public function _function(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function genfrac(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	/**
		Get the current `State` of the parser.
	**/
	public function get_state():Dynamic;
	public function group(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function is_between_brackets(s:Dynamic, loc:Dynamic):Dynamic;
	public function is_dropsub(nucleus:Dynamic):Dynamic;
	public function is_overunder(nucleus:Dynamic):Dynamic;
	public function is_slanted(nucleus:Dynamic):Dynamic;
	public function main(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function math(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function math_string(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function non_math(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function operatorname(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function overline(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function overset(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	/**
		Parse expression *s* using the given *fonts_object* for
		output, at the given *fontsize* and *dpi*.
		
		Returns the parse tree of `Node` instances.
	**/
	public function parse(s:Dynamic, fonts_object:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Pop a `State` off of the stack.
	**/
	public function pop_state():Dynamic;
	/**
		Push a new `State` onto the stack, copying the current state.
	**/
	public function push_state():Dynamic;
	public function required_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function simple_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function space(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function sqrt(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function start_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function subsuper(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function symbol(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function underset(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
	public function unknown_symbol(s:Dynamic, loc:Dynamic, toks:Dynamic):Dynamic;
}