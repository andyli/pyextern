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
		    hash_function: if `None` uses python `hash` function, can be 'md5' or
		        any function that takes in input a string and returns a int.
		        Note that `hash` is not a stable hashing function, so
		        it is not consistent across different runs, while 'md5'
		        is a stable hashing function.
		    filters: Sequence of characters to filter out.
		    lower: Whether to convert the input to lowercase.
		    split: Sentence split marker (string).
		
		# Returns
		    A list of integer word indices (unicity non-guaranteed).
		
		`0` is a reserved index that won't be assigned to any word.
		
		Two or more words may be assigned to the same index, due to possible
		collisions by the hashing function.
		The [probability](https://en.wikipedia.org/wiki/Birthday_problem#Probability_table)
		of a collision is in relation to the dimension of the hashing space and
		the number of distinct objects.
	**/
	static public function hashing_trick(text:Dynamic, n:Dynamic, ?hash_function:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
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
	/**
		Returns a md5 hash object; optionally initialized with a string
	**/
	static public function md5(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		One-hot encodes a text into a list of word indexes of size n.
		
		This is a wrapper to the `hashing_trick` function using `hash` as the
		hashing function, unicity of word to index mapping non-guaranteed.
	**/
	static public function one_hot(text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Converts a text to a sequence of words (or tokens).
		
		# Arguments
		    text: Input text (string).
		    filters: Sequence of characters to filter out.
		    lower: Whether to convert the input to lowercase.
		    split: Sentence split marker (string).
		
		# Returns
		    A list of words (or tokens).
	**/
	static public function text_to_word_sequence(text:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
}