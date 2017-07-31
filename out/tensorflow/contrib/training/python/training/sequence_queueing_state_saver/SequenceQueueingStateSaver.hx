/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.sequence_queueing_state_saver;
@:pythonImport("tensorflow.contrib.training.python.training.sequence_queueing_state_saver", "SequenceQueueingStateSaver") extern class SequenceQueueingStateSaver {
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
		Creates the SequenceQueueingStateSaver.
		
		Args:
		  batch_size: int or int32 scalar `Tensor`, how large minibatches should
		    be when accessing the `state()` method and `context`, `sequences`, etc,
		    properties.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  input_length: An int32 scalar `Tensor`, the length of the sequence prior
		    to padding.  This value may be at most `padded_length` for any given
		    input (see below for the definition of `padded_length`).
		    Batched and total lengths of the current iteration are made accessible
		    via the `length` and `total_length` properties.  The shape of
		    input_length (scalar) must be fully specified.
		  input_key: A string scalar `Tensor`, the **unique** key for the given
		    input.  This is used to keep track of the split minibatch elements
		    of this input.  Batched keys of the current iteration are made
		    accessible via the `key` property.  The shape of `input_key` (scalar)
		    must be fully specified.
		  input_sequences: A dict mapping string names to `Tensor` values.  The
		    values must all have matching first dimension, called `padded_length`.
		    The `SequenceQueueingStateSaver` will split these tensors along
		    this first dimension into minibatch elements of dimension
		    `num_unroll`. Batched and segmented sequences of the current iteration
		    are made accessible via the `sequences` property.
		
		    **Note**: `padded_length` may be dynamic, and may vary from input
		    to input, but must always be a multiple of `num_unroll`.  The remainder
		    of the shape (other than the first dimension) must be fully specified.
		  input_context: A dict mapping string names to `Tensor` values.  The values
		    are treated as "global" across all time splits of the given input,
		    and will be copied across for all minibatch elements accordingly.
		    Batched and copied context of the current iteration are made
		    accessible via the `context` property.
		
		    **Note**: All input_context values must have fully defined shapes.
		  initial_states: A dict mapping string state names to multi-dimensional
		    values (e.g. constants or tensors).  This input defines the set of
		    states that will be kept track of during computing iterations, and
		    which can be accessed via the `state` and `save_state` methods.
		
		    **Note**: All initial_state values must have fully defined shapes.
		  capacity: The max capacity of the SQSS in number of examples. Needs to be
		    at least `batch_size`. Defaults to unbounded.
		  allow_small_batch: If true, the SQSS will return smaller batches when
		    there aren't enough input examples to fill a whole batch and the end of
		    the input has been reached (i.e., the underlying barrier has been
		    closed).
		  name: An op name string (optional).
		
		Raises:
		  TypeError: if any of the inputs is not an expected type.
		  ValueError: if any of the input values is inconsistent, e.g. if
		  not enough shape information is available from inputs to build
		  the state saver.
	**/
	@:native("__init__")
	public function ___init__(batch_size:Dynamic, num_unroll:Dynamic, input_length:Dynamic, input_key:Dynamic, input_sequences:Dynamic, input_context:Dynamic, initial_states:Dynamic, ?capacity:Dynamic, ?allow_small_batch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates the SequenceQueueingStateSaver.
		
		Args:
		  batch_size: int or int32 scalar `Tensor`, how large minibatches should
		    be when accessing the `state()` method and `context`, `sequences`, etc,
		    properties.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  input_length: An int32 scalar `Tensor`, the length of the sequence prior
		    to padding.  This value may be at most `padded_length` for any given
		    input (see below for the definition of `padded_length`).
		    Batched and total lengths of the current iteration are made accessible
		    via the `length` and `total_length` properties.  The shape of
		    input_length (scalar) must be fully specified.
		  input_key: A string scalar `Tensor`, the **unique** key for the given
		    input.  This is used to keep track of the split minibatch elements
		    of this input.  Batched keys of the current iteration are made
		    accessible via the `key` property.  The shape of `input_key` (scalar)
		    must be fully specified.
		  input_sequences: A dict mapping string names to `Tensor` values.  The
		    values must all have matching first dimension, called `padded_length`.
		    The `SequenceQueueingStateSaver` will split these tensors along
		    this first dimension into minibatch elements of dimension
		    `num_unroll`. Batched and segmented sequences of the current iteration
		    are made accessible via the `sequences` property.
		
		    **Note**: `padded_length` may be dynamic, and may vary from input
		    to input, but must always be a multiple of `num_unroll`.  The remainder
		    of the shape (other than the first dimension) must be fully specified.
		  input_context: A dict mapping string names to `Tensor` values.  The values
		    are treated as "global" across all time splits of the given input,
		    and will be copied across for all minibatch elements accordingly.
		    Batched and copied context of the current iteration are made
		    accessible via the `context` property.
		
		    **Note**: All input_context values must have fully defined shapes.
		  initial_states: A dict mapping string state names to multi-dimensional
		    values (e.g. constants or tensors).  This input defines the set of
		    states that will be kept track of during computing iterations, and
		    which can be accessed via the `state` and `save_state` methods.
		
		    **Note**: All initial_state values must have fully defined shapes.
		  capacity: The max capacity of the SQSS in number of examples. Needs to be
		    at least `batch_size`. Defaults to unbounded.
		  allow_small_batch: If true, the SQSS will return smaller batches when
		    there aren't enough input examples to fill a whole batch and the end of
		    the input has been reached (i.e., the underlying barrier has been
		    closed).
		  name: An op name string (optional).
		
		Raises:
		  TypeError: if any of the inputs is not an expected type.
		  ValueError: if any of the input values is inconsistent, e.g. if
		  not enough shape information is available from inputs to build
		  the state saver.
	**/
	public function new(batch_size:Dynamic, num_unroll:Dynamic, input_length:Dynamic, input_key:Dynamic, input_sequences:Dynamic, input_context:Dynamic, initial_states:Dynamic, ?capacity:Dynamic, ?allow_small_batch:Dynamic, ?name:Dynamic):Void;
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
		Create the barrier.
		
		This method initializes the Barrier object with the right types and shapes.
	**/
	public function _create_barrier():Dynamic;
	/**
		Group insert_many ops and create prefetch_op.
		
		This method implements the "meat" of the logic underlying the
		`SequenceQueueingStateSaver`.  It performs dynamic reshaping of
		sequences, copying of context, and initial insertion of these values,
		as well as the key, next_key, sequence, sequence_count, and initial
		states into the barrier.
	**/
	public function _create_prefetch_op():Dynamic;
	public function _get_barrier_index(index_type:Dynamic, name:Dynamic):Dynamic;
	public function _get_barrier_length_index():Dynamic;
	public function _get_barrier_next_key_index():Dynamic;
	public function _get_barrier_sequence_count_index():Dynamic;
	public function _get_barrier_sequence_index():Dynamic;
	public function _get_barrier_total_length_index():Dynamic;
	/**
		Creates ops for reading the barrier, as used by properties like `length`.
		    
	**/
	public function _prepare_barrier_reads():Dynamic;
	/**
		Prepares the internal dictionaries _name_to_index and _index_to_name.
		
		These dictionaries are used to keep track of indices into the barrier.
		
		Args:
		  sequences: `OrderedDict` of string, `Tensor` pairs.
		  context: `OrderedDict` of string, `Tensor` pairs.
		  states: `OrderedDict` of string, `Tensor` pairs.
	**/
	public function _store_index_maps(sequences:Dynamic, context:Dynamic, states:Dynamic):Dynamic;
	public var barrier : Dynamic;
	public var batch_size : Dynamic;
	/**
		Closes the barrier and the FIFOQueue.
		
		This operation signals that no more segments of new sequences will be
		enqueued. New segments of already inserted sequences may still be enqueued
		and dequeued if there is a sufficient number filling a batch or
		allow_small_batch is true. Otherwise dequeue operations will fail
		immediately.
		
		Args:
		  cancel_pending_enqueues: (Optional.) A boolean, defaulting to
		    `False`. If `True`, all pending enqueues to the underlying queues will
		    be cancelled, and completing already started sequences is not possible.
		  name: Optional name for the op.
		
		Returns:
		  The operation that closes the barrier and the FIFOQueue.
	**/
	public function close(?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	public var name : Dynamic;
	/**
		The `NextQueuedSequenceBatch` providing access to batched output data.
		
		Also provides access to the `state` and `save_state` methods.
		The first time this gets called, it additionally prepares barrier reads
		and creates `NextQueuedSequenceBatch` / next_batch objects. Subsequent
		calls simply return the previously created `next_batch`.
		
		In order to access data in `next_batch` without blocking, the `prefetch_op`
		must have been run at least `batch_size` times (ideally in a separate
		thread, or launched via a `QueueRunner`). After processing a segment in
		`next_batch()`, `batch.save_state()` must be called which is done by the
		state_saving_rnn. Without this call, the dequeue op associated with the SQSS
		will not run.
		
		Returns:
		  A cached `NextQueuedSequenceBatch` instance.
	**/
	public var next_batch : Dynamic;
	public var num_unroll : Dynamic;
	/**
		The op used to prefetch new data into the state saver.
		
		Running it once enqueues one new input example into the state saver.
		The first time this gets called, it additionally creates the prefetch_op.
		Subsequent calls simply return the previously created `prefetch_op`.
		
		It should be run in a separate thread via e.g. a `QueueRunner`.
		
		Returns:
		  An `Operation` that performs prefetching.
	**/
	public var prefetch_op : Dynamic;
}