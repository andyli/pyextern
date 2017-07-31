/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.attention_wrapper;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.attention_wrapper", "_BaseAttentionMechanism") extern class _BaseAttentionMechanism {
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
		Construct base AttentionMechanism class.
		
		Args:
		  query_layer: Callable.  Instance of `tf.layers.Layer`.  The layer's depth
		    must match the depth of `memory_layer`.  If `query_layer` is not
		    provided, the shape of `query` must match that of `memory_layer`.
		  memory: The memory to query; usually the output of an RNN encoder.  This
		    tensor should be shaped `[batch_size, max_time, ...]`.
		  probability_fn: A `callable`.  Converts the score and previous alignments
		    to probabilities. Its signature should be:
		    `probabilities = probability_fn(score, previous_alignments)`.
		  memory_sequence_length (optional): Sequence lengths for the batch entries
		    in memory.  If provided, the memory tensor rows are masked with zeros
		    for values past the respective sequence lengths.
		  memory_layer: Instance of `tf.layers.Layer` (may be None).  The layer's
		    depth must match the depth of `query_layer`.
		    If `memory_layer` is not provided, the shape of `memory` must match
		    that of `query_layer`.
		  check_inner_dims_defined: Python boolean.  If `True`, the `memory`
		    argument's shape is checked to ensure all but the two outermost
		    dimensions are fully defined.
		  score_mask_value: (optional): The mask value for score before passing into
		    `probability_fn`. The default is -inf. Only used if
		    `memory_sequence_length` is not None.
		  name: Name to use when creating ops.
	**/
	@:native("__init__")
	public function ___init__(query_layer:Dynamic, memory:Dynamic, probability_fn:Dynamic, ?memory_sequence_length:Dynamic, ?memory_layer:Dynamic, ?check_inner_dims_defined:Dynamic, ?score_mask_value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct base AttentionMechanism class.
		
		Args:
		  query_layer: Callable.  Instance of `tf.layers.Layer`.  The layer's depth
		    must match the depth of `memory_layer`.  If `query_layer` is not
		    provided, the shape of `query` must match that of `memory_layer`.
		  memory: The memory to query; usually the output of an RNN encoder.  This
		    tensor should be shaped `[batch_size, max_time, ...]`.
		  probability_fn: A `callable`.  Converts the score and previous alignments
		    to probabilities. Its signature should be:
		    `probabilities = probability_fn(score, previous_alignments)`.
		  memory_sequence_length (optional): Sequence lengths for the batch entries
		    in memory.  If provided, the memory tensor rows are masked with zeros
		    for values past the respective sequence lengths.
		  memory_layer: Instance of `tf.layers.Layer` (may be None).  The layer's
		    depth must match the depth of `query_layer`.
		    If `memory_layer` is not provided, the shape of `memory` must match
		    that of `query_layer`.
		  check_inner_dims_defined: Python boolean.  If `True`, the `memory`
		    argument's shape is checked to ensure all but the two outermost
		    dimensions are fully defined.
		  score_mask_value: (optional): The mask value for score before passing into
		    `probability_fn`. The default is -inf. Only used if
		    `memory_sequence_length` is not None.
		  name: Name to use when creating ops.
	**/
	public function new(query_layer:Dynamic, memory:Dynamic, probability_fn:Dynamic, ?memory_sequence_length:Dynamic, ?memory_layer:Dynamic, ?check_inner_dims_defined:Dynamic, ?score_mask_value:Dynamic, ?name:Dynamic):Void;
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
	public var alignments_size : Dynamic;
	public var batch_size : Dynamic;
	/**
		Creates the initial alignment values for the `AttentionWrapper` class.
		
		This is important for AttentionMechanisms that use the previous alignment
		to calculate the alignment at the next time step (e.g. monotonic attention).
		
		The default behavior is to return a tensor of all zeros.
		
		Args:
		  batch_size: `int32` scalar, the batch_size.
		  dtype: The `dtype`.
		
		Returns:
		  A `dtype` tensor shaped `[batch_size, alignments_size]`
		  (`alignments_size` is the values' `max_time`).
	**/
	public function initial_alignments(batch_size:Dynamic, dtype:Dynamic):Dynamic;
	public var keys : Dynamic;
	public var memory_layer : Dynamic;
	public var query_layer : Dynamic;
	public var values : Dynamic;
}