/* This file is generated, do not edit! */
package pandas.computation.pytables;
@:pythonImport("pandas.computation.pytables") extern class Pytables_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert string 'r' to a timedelta object.
	**/
	static public function _coerce_scalar_to_timedelta_type(r:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		if we have bytes, decode them to unicode 
	**/
	static public function _ensure_decoded(s:Dynamic):Dynamic;
	static public var _op_classes : Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_term(obj:Dynamic):Dynamic;
	/**
		loose checking if s is a pytables-acceptable expression 
	**/
	static public function maybe_expression(s:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
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
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	static public function pprint_thing_encoded(object:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}