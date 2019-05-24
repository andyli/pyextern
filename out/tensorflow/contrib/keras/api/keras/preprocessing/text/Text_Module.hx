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
	/**
		One-hot encodes a text into a list of word indexes of size n.
		
		This is a wrapper to the `hashing_trick` function using `hash` as the
		hashing function; unicity of word to index mapping non-guaranteed.
		
		# Arguments
		    text: Input text (string).
		    n: int. Size of vocabulary.
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n``,
		        includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to set the text to lowercase.
		    split: str. Separator for word splitting.
		
		# Returns
		    List of integers in [1, n]. Each integer encodes a word
		    (unicity non-guaranteed).
	**/
	static public function one_hot(text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Converts a text to a sequence of words (or tokens).
		
		# Arguments
		    text: Input text (string).
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n``,
		        includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to convert the input to lowercase.
		    split: str. Separator for word splitting.
		
		# Returns
		    A list of words (or tokens).
	**/
	static public function text_to_word_sequence(text:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
}