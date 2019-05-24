/* This file is generated, do not edit! */
package numpy.core._type_aliases;
@:pythonImport("numpy.core._type_aliases") extern class _Type_aliases_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _abstract_types : Dynamic;
	static public function _add_aliases():Dynamic;
	static public function _add_array_type(typename:Dynamic, bits:Dynamic):Dynamic;
	static public function _add_integer_aliases():Dynamic;
	static public function _add_types():Dynamic;
	static public function _bits_of(obj:Dynamic):Dynamic;
	static public var _concrete_typeinfo : Dynamic;
	static public var _concrete_types : Dynamic;
	static public var _int_ctypes : Dynamic;
	static public function _kind_name(dtype:Dynamic):Dynamic;
	static public function _set_array_types():Dynamic;
	static public function _set_up_aliases():Dynamic;
	static public var _uint_ctypes : Dynamic;
	static public var allTypes : Dynamic;
	/**
		Return a bit-width name for a given type object
	**/
	static public function bitname(obj:Dynamic):Dynamic;
	/**
		Apply English case rules to convert the first character of an ASCII
		string to upper case.
		
		This is an internal utility function to replace calls to str.capitalize()
		such that we can avoid changing behavior with changing locales.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		capitalized : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_capitalize
		>>> english_capitalize('int8')
		'Int8'
		>>> english_capitalize('Int8')
		'Int8'
		>>> english_capitalize('')
		''
	**/
	static public function english_capitalize(s:Dynamic):String;
	/**
		Apply English case rules to convert ASCII strings to all lower case.
		
		This is an internal utility function to replace calls to str.lower() such
		that we can avoid changing behavior with changing locales. In particular,
		Turkish has distinct dotted and dotless variants of the Latin letter "I" in
		both lowercase and uppercase. Thus, "I".lower() != "i" in a "tr" locale.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		lowered : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_lower
		>>> english_lower('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_')
		'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789_'
		>>> english_lower('')
		''
	**/
	static public function english_lower(s:Dynamic):String;
	static public var k : Dynamic;
	static public var sctypeDict : Dynamic;
	static public var sctypeNA : Dynamic;
	static public var sctypes : Dynamic;
	static public var typeinfo : Dynamic;
}