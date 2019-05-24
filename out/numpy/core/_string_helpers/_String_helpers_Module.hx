/* This file is generated, do not edit! */
package numpy.core._string_helpers;
@:pythonImport("numpy.core._string_helpers") extern class _String_helpers_Module {
	static public var LOWER_TABLE : Dynamic;
	static public var UPPER_TABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _all_chars : Dynamic;
	static public var _ascii_lower : Dynamic;
	static public var _ascii_upper : Dynamic;
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
	/**
		Apply English case rules to convert ASCII strings to all upper case.
		
		This is an internal utility function to replace calls to str.upper() such
		that we can avoid changing behavior with changing locales. In particular,
		Turkish has distinct dotted and dotless variants of the Latin letter "I" in
		both lowercase and uppercase. Thus, "i".upper() != "I" in a "tr" locale.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		uppered : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_upper
		>>> english_upper('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_')
		'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_'
		>>> english_upper('')
		''
	**/
	static public function english_upper(s:Dynamic):String;
}