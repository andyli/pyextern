/* This file is generated, do not edit! */
package pandas.io.formats.string;
@:pythonImport("pandas.io.formats.string") extern class String_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _binify(cols:Dynamic, line_width:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Get the size of the terminal window.
		
		For each of the two dimensions, the environment variable, COLUMNS
		and LINES respectively, is checked. If the variable is defined and
		the value is a positive integer, it is used.
		
		When COLUMNS or LINES is not defined, which is the common case,
		the terminal connected to sys.__stdout__ is queried
		by invoking os.get_terminal_size.
		
		If the terminal size cannot be successfully queried, either because
		the system doesn't support querying, or because we are not
		connected to a terminal, the value given in fallback parameter
		is used. Fallback defaults to (80, 24) which is the default
		size used by many terminal emulators.
		
		The value returned is a named tuple of type os.terminal_size.
	**/
	static public function get_terminal_size(?fallback:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
}