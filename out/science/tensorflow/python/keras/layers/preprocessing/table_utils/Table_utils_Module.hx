/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.table_utils;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.table_utils") extern class Table_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return all repeated tokens in a vocabulary.
	**/
	static public function find_repeated_tokens(vocabulary:Dynamic):Dynamic;
	/**
		Read a vocabulary in from a file.
	**/
	static public function get_vocabulary_from_file(vocabulary_path:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Count the number of lines in a vocab file to get the number of tokens.
	**/
	static public function num_tokens_in_file(vocabulary_path:Dynamic):Dynamic;
}