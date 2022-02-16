/* This file is generated, do not edit! */
package docutils.nodes;
@:pythonImport("docutils.nodes") extern class Nodes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Save typing with dynamic assignments:
	**/
	static public function _add_node_class_names(names:Dynamic):Dynamic;
	static public function _call_default_departure(self:Dynamic, node:Dynamic):Dynamic;
	static public function _call_default_visit(self:Dynamic, node:Dynamic):Dynamic;
	static public var _non_id_at_ends : Dynamic;
	static public var _non_id_chars : Dynamic;
	static public var _non_id_translate : Dynamic;
	static public var _non_id_translate_digraphs : Dynamic;
	static public function _nop(self:Dynamic, node:Dynamic):Dynamic;
	static public function dupname(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Failsafe conversion of `unicode` to `str`.
	**/
	static public function ensure_str(s:Dynamic):Dynamic;
	/**
		Return a case- and whitespace-normalized name.
	**/
	static public function fully_normalize_name(name:Dynamic):Dynamic;
	/**
		Convert `string` into an identifier and return it.
		
		Docutils identifiers will conform to the regular expression
		``[a-z](-?[a-z0-9]+)*``.  For CSS compatibility, identifiers (the "class"
		and "id" attributes) should have no underscores, colons, or periods.
		Hyphens may be used.
		
		- The `HTML 4.01 spec`_ defines identifiers based on SGML tokens:
		
		      ID and NAME tokens must begin with a letter ([A-Za-z]) and may be
		      followed by any number of letters, digits ([0-9]), hyphens ("-"),
		      underscores ("_"), colons (":"), and periods (".").
		
		- However the `CSS1 spec`_ defines identifiers based on the "name" token,
		  a tighter interpretation ("flex" tokenizer notation; "latin1" and
		  "escape" 8-bit characters have been replaced with entities)::
		
		      unicode     \[0-9a-f]{1,4}
		      latin1      [&iexcl;-&yuml;]
		      escape      {unicode}|\[ -~&iexcl;-&yuml;]
		      nmchar      [-a-z0-9]|{latin1}|{escape}
		      name        {nmchar}+
		
		The CSS1 "nmchar" rule does not include underscores ("_"), colons (":"),
		or periods ("."), therefore "class" and "id" attributes should not contain
		these characters. They should be replaced with hyphens ("-"). Combined
		with HTML's requirements (the first character must be a letter; no
		"unicode", "latin1", or "escape" characters), this results in the
		``[a-z](-?[a-z0-9]+)*`` pattern.
		
		.. _HTML 4.01 spec: http://www.w3.org/TR/html401
		.. _CSS1 spec: http://www.w3.org/TR/REC-CSS1
	**/
	static public function make_id(string:Dynamic):Dynamic;
	static public var node_class_names : Dynamic;
	static public var print_function : Dynamic;
	/**
		Quote attributes for pseudo-xml
	**/
	static public function pseudo_quoteattr(value:Dynamic):Dynamic;
	/**
		Escape string values that are elements of a list, for serialization.
	**/
	static public function serial_escape(value:Dynamic):Dynamic;
	/**
		Return a string with nulls removed or restored to backslashes.
		Backslash-escaped spaces are also removed.
	**/
	static public function unescape(text:Dynamic, ?restore_backslashes:Dynamic, ?respect_whitespace:Dynamic):Dynamic;
	/**
		Return a whitespace-normalized name.
	**/
	static public function whitespace_normalize_name(name:Dynamic):Dynamic;
}