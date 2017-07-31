/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.preprocessing.text;
@:pythonImport("tensorflow.contrib.keras.api.keras.preprocessing.text") extern class Text_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function one_hot(text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
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