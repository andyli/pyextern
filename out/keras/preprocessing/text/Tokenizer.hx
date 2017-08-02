/* This file is generated, do not edit! */
package keras.preprocessing.text;
@:pythonImport("keras.preprocessing.text", "Tokenizer") extern class Tokenizer {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?num_words:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic, ?char_level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?num_words:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic, ?char_level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Updates internal vocabulary based on a list of sequences.
		
		Required before using `sequences_to_matrix`
		(if `fit_on_texts` was never called).
		
		# Arguments
		    sequences: A list of sequence.
		        A "sequence" is a list of integer word indices.
	**/
	public function fit_on_sequences(sequences:Dynamic):Dynamic;
	/**
		Updates internal vocabulary based on a list of texts.
		
		Required before using `texts_to_sequences` or `texts_to_matrix`.
		
		# Arguments
		    texts: can be a list of strings,
		        or a generator of strings (for memory-efficiency)
	**/
	public function fit_on_texts(texts:Dynamic):Dynamic;
	/**
		Converts a list of sequences into a Numpy matrix.
		
		# Arguments
		    sequences: list of sequences
		        (a sequence is a list of integer word indices).
		    mode: one of "binary", "count", "tfidf", "freq"
		
		# Returns
		    A Numpy matrix.
		
		# Raises
		    ValueError: In case of invalid `mode` argument,
		        or if the Tokenizer requires to be fit to sample data.
	**/
	public function sequences_to_matrix(sequences:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Convert a list of texts to a Numpy matrix.
		
		# Arguments
		    texts: list of strings.
		    mode: one of "binary", "count", "tfidf", "freq".
		
		# Returns
		    A Numpy matrix.
	**/
	public function texts_to_matrix(texts:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Transforms each text in texts in a sequence of integers.
		
		Only top "num_words" most frequent words will be taken into account.
		Only words known by the tokenizer will be taken into account.
		
		# Arguments
		    texts: A list of texts (strings).
		
		# Returns
		    A list of sequences.
	**/
	public function texts_to_sequences(texts:Dynamic):Dynamic;
	/**
		Transforms each text in texts in a sequence of integers.
		
		Only top "num_words" most frequent words will be taken into account.
		Only words known by the tokenizer will be taken into account.
		
		# Arguments
		    texts: A list of texts (strings).
		
		# Yields
		    Yields individual sequences.
	**/
	public function texts_to_sequences_generator(texts:Dynamic):Dynamic;
}