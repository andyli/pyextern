/* This file is generated, do not edit! */
package tensorflow.keras.preprocessing.text;
@:pythonImport("tensorflow.keras.preprocessing.text") extern class Text_Module {
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
		One-hot encodes a text into a list of word indexes of size `n`.
		
		This function receives as input a string of text and returns a
		list of encoded integers each corresponding to a word (or token)
		in the given input string.
		
		Args:
		    input_text: Input text (string).
		    n: int. Size of vocabulary.
		    filters: list (or concatenation) of characters to filter out, such as
		      punctuation. Default:
		      ```
		      '!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n
		      ```,
		      includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to set the text to lowercase.
		    split: str. Separator for word splitting.
		
		Returns:
		    List of integers in `[1, n]`. Each integer encodes a word
		    (unicity non-guaranteed).
	**/
	static public function one_hot(input_text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Converts a text to a sequence of words (or tokens).
		
		This function transforms a string of text into a list of words
		while ignoring `filters` which include punctuations by default.
		
		>>> sample_text = 'This is a sample sentence.'
		>>> tf.keras.preprocessing.text.text_to_word_sequence(sample_text)
		['this', 'is', 'a', 'sample', 'sentence']
		
		Args:
		    input_text: Input text (string).
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``'!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n'``,
		          includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to convert the input to lowercase.
		    split: str. Separator for word splitting.
		
		Returns:
		    A list of words (or tokens).
	**/
	static public function text_to_word_sequence(input_text:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Parses a JSON tokenizer configuration file and returns a
		tokenizer instance.
		
		# Arguments
		    json_string: JSON string encoding a tokenizer configuration.
		
		# Returns
		    A Keras Tokenizer instance
	**/
	static public function tokenizer_from_json(json_string:Dynamic):Dynamic;
}