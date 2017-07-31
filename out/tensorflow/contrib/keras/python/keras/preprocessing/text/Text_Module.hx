/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.preprocessing.text;
@:pythonImport("tensorflow.contrib.keras.python.keras.preprocessing.text") extern class Text_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return a translation table usable for str.translate().
		
		If there is only one argument, it must be a dictionary mapping Unicode
		ordinals (integers) or characters to Unicode ordinals, strings or None.
		Character keys will be then converted to ordinals.
		If there are two arguments, they must be strings of equal length, and
		in the resulting dictionary, each character in x will be mapped to the
		character at the same position in y. If there is a third argument, it
		must be a string, whose characters will be mapped to None in the result.
	**/
	static public function maketrans(x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic;
	static public function one_hot(text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Converts a text to a sequence of word indices.
		
		Arguments:
		    text: Input text (string).
		    filters: Sequence of characters to filter out.
		    lower: Whether to convert the input to lowercase.
		    split: Sentence split marker (string).
		
		Returns:
		    A list of integer word indices.
	**/
	static public function text_to_word_sequence(text:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
}