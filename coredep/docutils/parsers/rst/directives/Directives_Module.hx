/* This file is generated, do not edit! */
package docutils.parsers.rst.directives;
@:pythonImport("docutils.parsers.rst.directives") extern class Directives_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _directive_registry : Dynamic;
	static public var _directives : Dynamic;
	/**
		Directive option utility function, supplied to enable options whose
		argument must be a member of a finite set of possible values (must be
		lower case).  A custom conversion function must be written to use it.  For
		example::
		
		    from docutils.parsers.rst import directives
		
		    def yesno(argument):
		        return directives.choice(argument, ('yes', 'no'))
		
		Raise ``ValueError`` if no argument is found or if the argument's value is
		not valid (not an entry in the supplied list).
	**/
	static public function choice(argument:Dynamic, values:Dynamic):Dynamic;
	/**
		Convert the argument into a list of ID-compatible strings and return it.
		(Directive option conversion function.)
		
		Raise ``ValueError`` if no argument is found.
	**/
	static public function class_option(argument:Dynamic):Dynamic;
	/**
		Locate and return a directive function from its language-dependent name.
		If not found in the current language, check English.  Return None if the
		named directive cannot be found.
	**/
	static public function directive(directive_name:Dynamic, language_module:Dynamic, document:Dynamic):Dynamic;
	/**
		Verfies the encoding argument by lookup.
		(Directive option conversion function.)
		
		Raises ValueError for unknown encodings.
	**/
	static public function encoding(argument:Dynamic):Dynamic;
	/**
		Return a string with escape-backslashes converted to nulls.
	**/
	static public function escape2null(text:Dynamic):Dynamic;
	/**
		Check for a valid flag option (no argument) and return ``None``.
		(Directive option conversion function.)
		
		Raise ``ValueError`` if an argument is found.
	**/
	static public function flag(argument:Dynamic):Dynamic;
	static public function format_values(values:Dynamic):Dynamic;
	/**
		Check for a positive argument of one of the units and return a
		normalized string of the form "<value><unit>" (without space in
		between).
		
		To be called from directive option conversion functions.
	**/
	static public function get_measure(argument:Dynamic, units:Dynamic):Dynamic;
	/**
		Return normalized string of a length or percentage unit.
		
		Add <default> if there is no unit. Raise ValueError if the argument is not
		a positive measure of one of the valid CSS units (or without unit).
		
		>>> length_or_percentage_or_unitless('3 pt')
		'3pt'
		>>> length_or_percentage_or_unitless('3%', 'em')
		'3%'
		>>> length_or_percentage_or_unitless('3')
		'3'
		>>> length_or_percentage_or_unitless('3', 'px')
		'3px'
	**/
	static public function length_or_percentage_or_unitless(argument:Dynamic, ?_default:Dynamic):Dynamic;
	static public function length_or_unitless(argument:Dynamic):Dynamic;
	static public var length_units : Dynamic;
	/**
		Check for a nonnegative integer argument; raise ``ValueError`` if not.
		(Directive option conversion function.)
	**/
	static public function nonnegative_int(argument:Dynamic):Dynamic;
	/**
		Return the path argument unwrapped (with newlines removed).
		(Directive option conversion function.)
		
		Raise ``ValueError`` if no argument is found.
	**/
	static public function path(argument:Dynamic):Dynamic;
	/**
		Check for an integer percentage value with optional percent sign.
	**/
	static public function percentage(argument:Dynamic):Dynamic;
	/**
		Converts the argument into an integer.  Raises ValueError for negative,
		zero, or non-integer values.  (Directive option conversion function.)
	**/
	static public function positive_int(argument:Dynamic):Dynamic;
	/**
		Converts a space- or comma-separated list of values into a Python list
		of integers.
		(Directive option conversion function.)
		
		Raises ValueError for non-positive-integer values.
	**/
	static public function positive_int_list(argument:Dynamic):Dynamic;
	/**
		Register a nonstandard application-defined directive function.
		Language lookups are not needed for such functions.
	**/
	static public function register_directive(name:Dynamic, directive:Dynamic):Dynamic;
	/**
		A single character is returned as-is.  Unicode characters codes are
		converted as in `unicode_code`.  (Directive option conversion function.)
	**/
	static public function single_char_or_unicode(argument:Dynamic):Dynamic;
	/**
		As with `single_char_or_unicode`, but "tab" and "space" are also supported.
		(Directive option conversion function.)
	**/
	static public function single_char_or_whitespace_or_unicode(argument:Dynamic):Dynamic;
	/**
		Split `text` on escaped whitespace (null+space or null+newline).
		Return a list of strings.
	**/
	static public function split_escaped_whitespace(text:Dynamic):Dynamic;
	/**
		Return the argument text, unchanged.
		(Directive option conversion function.)
		
		No argument implies empty string ("").
	**/
	static public function unchanged(argument:Dynamic):Dynamic;
	/**
		Return the argument text, unchanged.
		(Directive option conversion function.)
		
		Raise ``ValueError`` if no argument is found.
	**/
	static public function unchanged_required(argument:Dynamic):Dynamic;
	/**
		Return a string with nulls removed or restored to backslashes.
		Backslash-escaped spaces are also removed.
	**/
	static public function unescape(text:Dynamic, ?restore_backslashes:Dynamic, ?respect_whitespace:Dynamic):Dynamic;
	/**
		Convert a Unicode character code to a Unicode character.
		(Directive option conversion function.)
		
		Codes may be decimal numbers, hexadecimal numbers (prefixed by ``0x``,
		``x``, ``\x``, ``U+``, ``u``, or ``\u``; e.g. ``U+262E``), or XML-style
		numeric character entities (e.g. ``&#x262E;``).  Other text remains as-is.
		
		Raise ValueError for illegal Unicode code values.
	**/
	static public function unicode_code(code:Dynamic):Dynamic;
	static public var unicode_pattern : Dynamic;
	/**
		Return the URI argument with unescaped whitespace removed.
		(Directive option conversion function.)
		
		Raise ``ValueError`` if no argument is found.
	**/
	static public function uri(argument:Dynamic):Dynamic;
	/**
		The argument can be any of `values` or `argument_type`.
	**/
	static public function value_or(values:Dynamic, other:Dynamic):Dynamic;
}