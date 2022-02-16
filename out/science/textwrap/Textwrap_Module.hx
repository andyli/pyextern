/* This file is generated, do not edit! */
package textwrap;
@:pythonImport("textwrap") extern class Textwrap_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _leading_whitespace_re : Dynamic;
	static public var _whitespace : Dynamic;
	static public var _whitespace_only_re : Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Fill a single paragraph of text, returning a new string.
		
		Reformat the single paragraph in 'text' to fit in lines of no more
		than 'width' columns, and return a new string containing the entire
		wrapped paragraph.  As with wrap(), tabs are expanded and other
		whitespace characters converted to space.  See TextWrapper class for
		available keyword args to customize wrapping behaviour.
	**/
	static public function fill(text:Dynamic, ?width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds 'prefix' to the beginning of selected lines in 'text'.
		
		If 'predicate' is provided, 'prefix' will only be added to the lines
		where 'predicate(line)' is True. If 'predicate' is not provided,
		it will default to adding 'prefix' to all non-empty lines that do not
		consist solely of whitespace characters.
	**/
	static public function indent(text:Dynamic, prefix:Dynamic, ?predicate:Dynamic):Dynamic;
	/**
		Collapse and truncate the given text to fit in the given width.
		
		The text first has its whitespace collapsed.  If it then fits in
		the *width*, it is returned as is.  Otherwise, as many words
		as possible are joined and then the placeholder is appended::
		
		    >>> textwrap.shorten("Hello  world!", width=12)
		    'Hello world!'
		    >>> textwrap.shorten("Hello  world!", width=11)
		    'Hello [...]'
	**/
	static public function shorten(text:Dynamic, width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrap a single paragraph of text, returning a list of wrapped lines.
		
		Reformat the single paragraph in 'text' so it fits in lines of no
		more than 'width' columns, and return a list of wrapped lines.  By
		default, tabs in 'text' are expanded with string.expandtabs(), and
		all other whitespace characters (including newline) are converted to
		space.  See TextWrapper class for available keyword args to customize
		wrapping behaviour.
	**/
	static public function wrap(text:Dynamic, ?width:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}