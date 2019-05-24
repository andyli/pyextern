/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.helper;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.helper", "GreedyEmbeddingHelper") extern class GreedyEmbeddingHelper {
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initializer.
		
		Args:
		  embedding: A callable that takes a vector tensor of `ids` (argmax ids),
		    or the `params` argument for `embedding_lookup`. The returned tensor
		    will be passed to the decoder input.
		  start_tokens: `int32` vector shaped `[batch_size]`, the start tokens.
		  end_token: `int32` scalar, the token that marks end of decoding.
		
		Raises:
		  ValueError: if `start_tokens` is not a 1D tensor or `end_token` is not a
		    scalar.
	**/
	@:native("__init__")
	public function ___init__(embedding:Dynamic, start_tokens:Dynamic, end_token:Dynamic):Dynamic;
	/**
		Initializer.
		
		Args:
		  embedding: A callable that takes a vector tensor of `ids` (argmax ids),
		    or the `params` argument for `embedding_lookup`. The returned tensor
		    will be passed to the decoder input.
		  start_tokens: `int32` vector shaped `[batch_size]`, the start tokens.
		  end_token: `int32` scalar, the token that marks end of decoding.
		
		Raises:
		  ValueError: if `start_tokens` is not a 1D tensor or `end_token` is not a
		    scalar.
	**/
	public function new(embedding:Dynamic, start_tokens:Dynamic, end_token:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Batch size of tensor returned by `sample`.
		
		Returns a scalar int32 tensor.
	**/
	public var batch_size : Dynamic;
	/**
		Returns `(initial_finished, initial_inputs)`.
	**/
	public function initialize(?name:Dynamic):Dynamic;
	/**
		next_inputs_fn for GreedyEmbeddingHelper.
	**/
	public function next_inputs(time:Dynamic, outputs:Dynamic, state:Dynamic, sample_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		sample for GreedyEmbeddingHelper.
	**/
	public function sample(time:Dynamic, outputs:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DType of tensor returned by `sample`.
		
		Returns a DType.
	**/
	public var sample_ids_dtype : Dynamic;
	/**
		Shape of tensor returned by `sample`, excluding the batch dimension.
		
		Returns a `TensorShape`.
	**/
	public var sample_ids_shape : Dynamic;
}