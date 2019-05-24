/* This file is generated, do not edit! */
package keras.preprocessing.text;
@:pythonImport("keras.preprocessing.text") extern class Text_Module {
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
		Converts a text to a sequence of indexes in a fixed-size hashing space.
		
		# Arguments
		    text: Input text (string).
		    n: Dimension of the hashing space.
		    hash_function: defaults to python `hash` function, can be 'md5' or
		        any function that takes in input a string and returns a int.
		        Note that 'hash' is not a stable hashing function, so
		        it is not consistent across different runs, while 'md5'
		        is a stable hashing function.
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n``,
		        includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to set the text to lowercase.
		    split: str. Separator for word splitting.
		
		# Returns
		    A list of integer word indices (unicity non-guaranteed).
		
		`0` is a reserved index that won't be assigned to any word.
		
		Two or more words may be assigned to the same index, due to possible
		collisions by the hashing function.
		The [probability](
		    https://en.wikipedia.org/wiki/Birthday_problem#Probability_table)
		of a collision is in relation to the dimension of the hashing space and
		the number of distinct objects.
	**/
	static public function hashing_trick(text:Dynamic, n:Dynamic, ?hash_function:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
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