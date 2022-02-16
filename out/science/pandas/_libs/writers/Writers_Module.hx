/* This file is generated, do not edit! */
package pandas._libs.writers;
@:pythonImport("pandas._libs.writers") extern class Writers_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		replace comma separated json with line feeds, paying special attention
		to quotes & brackets
	**/
	static public function convert_json_to_lines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the maximum size of elements in a 1-dim string array.
	**/
	static public function max_len_string_array(arr:Dynamic):Dynamic;
	/**
		Replace the values in the array with 'replacement' if
		they are 'nan_rep'. Return the same array.
	**/
	static public function string_array_replace_from_nan_rep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the maximum length of a string or bytes value.
	**/
	static public function word_len(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Write the given data to the writer object, pre-allocating where possible
		for performance improvements.
		
		Parameters
		----------
		data : list[ArrayLike]
		data_index : ndarray
		nlevels : int
		cols : ndarray
		writer : _csv.writer
	**/
	static public function write_csv_rows(args:haxe.extern.Rest<Dynamic>):Dynamic;
}