/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.attention_wrapper;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.attention_wrapper", "BahdanauMonotonicAttention") extern class BahdanauMonotonicAttention {
	/**
		Score the query based on the keys and values.
		
		Args:
		  query: Tensor of dtype matching `self.values` and shape
		    `[batch_size, query_depth]`.
		  state: Tensor of dtype matching `self.values` and shape
		    `[batch_size, alignments_size]`
		    (`alignments_size` is memory's `max_time`).
		
		Returns:
		  alignments: Tensor of dtype matching `self.values` and shape
		    `[batch_size, alignments_size]` (`alignments_size` is memory's
		    `max_time`).
	**/
	public function __call__(query:Dynamic, state:Dynamic):Dynamic;
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
		Construct the Attention mechanism.
		
		Args:
		  num_units: The depth of the query mechanism.
		  memory: The memory to query; usually the output of an RNN encoder.  This
		    tensor should be shaped `[batch_size, max_time, ...]`.
		  memory_sequence_length (optional): Sequence lengths for the batch entries
		    in memory.  If provided, the memory tensor rows are masked with zeros
		    for values past the respective sequence lengths.
		  normalize: Python boolean.  Whether to normalize the energy term.
		  score_mask_value: (optional): The mask value for score before passing into
		    `probability_fn`. The default is -inf. Only used if
		    `memory_sequence_length` is not None.
		  sigmoid_noise: Standard deviation of pre-sigmoid noise.  See the docstring
		    for `_monotonic_probability_fn` for more information.
		  sigmoid_noise_seed: (optional) Random seed for pre-sigmoid noise.
		  score_bias_init: Initial value for score bias scalar.  It's recommended to
		    initialize this to a negative value when the length of the memory is
		    large.
		  mode: How to compute the attention distribution.  Must be one of
		    'recursive', 'parallel', or 'hard'.  See the docstring for
		    `tf.contrib.seq2seq.monotonic_attention` for more information.
		  dtype: The data type for the query and memory layers of the attention
		    mechanism.
		  name: Name to use when creating ops.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, memory:Dynamic, ?memory_sequence_length:Dynamic, ?normalize:Dynamic, ?score_mask_value:Dynamic, ?sigmoid_noise:Dynamic, ?sigmoid_noise_seed:Dynamic, ?score_bias_init:Dynamic, ?mode:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct the Attention mechanism.
		
		Args:
		  num_units: The depth of the query mechanism.
		  memory: The memory to query; usually the output of an RNN encoder.  This
		    tensor should be shaped `[batch_size, max_time, ...]`.
		  memory_sequence_length (optional): Sequence lengths for the batch entries
		    in memory.  If provided, the memory tensor rows are masked with zeros
		    for values past the respective sequence lengths.
		  normalize: Python boolean.  Whether to normalize the energy term.
		  score_mask_value: (optional): The mask value for score before passing into
		    `probability_fn`. The default is -inf. Only used if
		    `memory_sequence_length` is not None.
		  sigmoid_noise: Standard deviation of pre-sigmoid noise.  See the docstring
		    for `_monotonic_probability_fn` for more information.
		  sigmoid_noise_seed: (optional) Random seed for pre-sigmoid noise.
		  score_bias_init: Initial value for score bias scalar.  It's recommended to
		    initialize this to a negative value when the length of the memory is
		    large.
		  mode: How to compute the attention distribution.  Must be one of
		    'recursive', 'parallel', or 'hard'.  See the docstring for
		    `tf.contrib.seq2seq.monotonic_attention` for more information.
		  dtype: The data type for the query and memory layers of the attention
		    mechanism.
		  name: Name to use when creating ops.
	**/
	public function new(num_units:Dynamic, memory:Dynamic, ?memory_sequence_length:Dynamic, ?normalize:Dynamic, ?score_mask_value:Dynamic, ?sigmoid_noise:Dynamic, ?sigmoid_noise_seed:Dynamic, ?score_bias_init:Dynamic, ?mode:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Void;
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
	public var alignments_size : Dynamic;
	public var batch_size : Dynamic;
	/**
		Creates the initial alignment values for the monotonic attentions.
		
		Initializes to dirac distributions, i.e. [1, 0, 0, ...memory length..., 0]
		for all entries in the batch.
		
		Args:
		  batch_size: `int32` scalar, the batch_size.
		  dtype: The `dtype`.
		
		Returns:
		  A `dtype` tensor shaped `[batch_size, alignments_size]`
		  (`alignments_size` is the values' `max_time`).
	**/
	public function initial_alignments(batch_size:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Creates the initial state values for the `AttentionWrapper` class.
		
		This is important for AttentionMechanisms that use the previous alignment
		to calculate the alignment at the next time step (e.g. monotonic attention).
		
		The default behavior is to return the same output as initial_alignments.
		
		Args:
		  batch_size: `int32` scalar, the batch_size.
		  dtype: The `dtype`.
		
		Returns:
		  A structure of all-zero tensors with shapes as described by `state_size`.
	**/
	public function initial_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
	public var keys : Dynamic;
	public var memory_layer : Dynamic;
	public var query_layer : Dynamic;
	public var state_size : Dynamic;
	public var values : Dynamic;
}