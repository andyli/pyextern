/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.spinn.data;
@:pythonImport("tensorflow.contrib.eager.python.examples.spinn.data", "SnliData") extern class SnliData {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		SnliData constructor.
		
		Args:
		  data_file: Full path to the data file, e.g.,
		    "/tmp/spinn-data/snli/snli_1.0/snli_1.0.train.txt"
		  word2index: A dict from lower-case word to row index in the embedding
		    matrix (see `load_word_vectors()` for details).
		  sentence_len_limit: Maximum allowed sentence length (# of words).
		    A value of <= 0 means unlimited. Sentences longer than this limit
		    are currently discarded, not truncated.
	**/
	@:native("__init__")
	public function ___init__(data_file:Dynamic, word2index:Dynamic, ?sentence_len_limit:Dynamic):Dynamic;
	/**
		SnliData constructor.
		
		Args:
		  data_file: Full path to the data file, e.g.,
		    "/tmp/spinn-data/snli/snli_1.0/snli_1.0.train.txt"
		  word2index: A dict from lower-case word to row index in the embedding
		    matrix (see `load_word_vectors()` for details).
		  sentence_len_limit: Maximum allowed sentence length (# of words).
		    A value of <= 0 means unlimited. Sentences longer than this limit
		    are currently discarded, not truncated.
	**/
	public function new(data_file:Dynamic, word2index:Dynamic, ?sentence_len_limit:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Obtain a generator for batched data.
		
		All examples of this SnliData object are randomly shuffled, sorted
		according to the maximum sentence length of the premise and hypothesis
		sentences in the pair, and batched.
		
		Args:
		  batch_size: Desired batch size.
		
		Returns:
		  A generator for data batches. The generator yields a 5-tuple:
		    label: An array of the shape (batch_size,).
		    premise: An array of the shape (max_premise_len, batch_size), wherein
		      max_premise_len is the maximum length of the (padded) premise
		      sentence in the batch.
		    premise_transitions: An array of the shape (2 * max_premise_len -3,
		      batch_size).
		    hypothesis: Same as `premise`, but for hypothesis sentences.
		    hypothesis_transitions: Same as `premise_transitions`, but for
		      hypothesis sentences.
		  All the elements of the 5-tuple have dtype `int64`.
	**/
	public function get_generator(batch_size:Dynamic):Dynamic;
	/**
		Calculate number of batches given batch size.
	**/
	public function num_batches(batch_size:Dynamic):Dynamic;
}