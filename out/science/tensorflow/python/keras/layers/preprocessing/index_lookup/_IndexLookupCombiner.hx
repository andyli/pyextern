/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.index_lookup;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.index_lookup", "_IndexLookupCombiner") extern class _IndexLookupCombiner {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(?vocab_size:Dynamic, ?mask_value:Dynamic, ?oov_value:Dynamic, ?compute_idf:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?vocab_size:Dynamic, ?mask_value:Dynamic, ?oov_value:Dynamic, ?compute_idf:Dynamic):Void;
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
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Accumulate a sorted array of vocab tokens and corresponding counts.
	**/
	public function _create_accumulator():Dynamic;
	/**
		Computes the inverse-document-frequency (IDF) component of TF-IDF.
		
		Uses the default weighting scheme described in
		https://en.wikipedia.org/wiki/Tf%E2%80%93idf.
		
		Args:
		  document_counts: An array of the # of documents each token appears in.
		  num_documents: An int representing the total number of documents
		
		Returns:
		  An array of "inverse document frequency" weights.
	**/
	public function _inverse_document_frequency(document_counts:Dynamic, num_documents:Dynamic):Dynamic;
	/**
		Compute a step in this computation, returning a new accumulator.
	**/
	public function compute(values:Dynamic, ?accumulator:Dynamic):Dynamic;
	/**
		Deserialize an accumulator received from 'serialize()'.
	**/
	public function deserialize(encoded_accumulator:Dynamic):Dynamic;
	/**
		Convert an accumulator into a dict of output values.
		
		Args:
		  accumulator: An accumulator aggregating over the full dataset.
		
		Returns:
		  A dict of:
		    "vocab": A list of the retained items in the vocabulary.
	**/
	public function extract(accumulator:Dynamic):Dynamic;
	/**
		Merge several accumulators to a single accumulator.
	**/
	public function merge(accumulators:Dynamic):Dynamic;
	/**
		Create an accumulator based on 'output'.
	**/
	public function restore(output:Dynamic):Dynamic;
	/**
		Serialize an accumulator for a remote call.
	**/
	public function serialize(accumulator:Dynamic):Dynamic;
}