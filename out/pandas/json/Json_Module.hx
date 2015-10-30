/* This file is generated, do not edit! */
package pandas.json;
@:pythonImport("pandas.json") extern class Json_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Converts JSON as string to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function decode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts arbitrary object recursively into JSON file. Use ensure_ascii=false to output UTF-8. Pass in double_precision to alter the maximum digit precision of doubles. Set encode_html_chars=True to encode < > & as unicode escape sequences.
	**/
	static public function dump(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts arbitrary object recursivly into JSON. Use ensure_ascii=false to output UTF-8. Pass in double_precision to alter the maximum digit precision of doubles. Set encode_html_chars=True to encode < > & as unicode escape sequences.
	**/
	static public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts arbitrary object recursivly into JSON. Use ensure_ascii=false to output UTF-8. Pass in double_precision to alter the maximum digit precision of doubles. Set encode_html_chars=True to encode < > & as unicode escape sequences.
	**/
	static public function encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts JSON as file to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts JSON as string to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function loads(args:haxe.extern.Rest<Dynamic>):Dynamic;
}