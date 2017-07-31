/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.sequence_queueing_state_saver;
@:pythonImport("tensorflow.contrib.training.python.training.sequence_queueing_state_saver", "NextQueuedSequenceBatch") extern class NextQueuedSequenceBatch {
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
	public function ___init__(state_saver:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(state_saver:Dynamic):Void;
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
		The batch_size of the given batch.
		
		Usually, this is the batch_size requested when initializing the SQSS, but
		if allow_small_batch=True this will become smaller when inputs are
		exhausted.
		
		Returns:
		  A scalar integer tensor, the batch_size
	**/
	public var batch_size : Dynamic;
	/**
		A dict mapping keys of `input_context` to batched context.
		
		Returns:
		  A dict mapping keys of `input_context` to tensors.
		  If we had at input:
		
		  ```python
		  context["name"].get_shape() == [d1, d2, ...]
		  ```
		
		  then for this property:
		
		  ```python
		  context["name"].get_shape() == [batch_size, d1, d2, ...]
		  ```
	**/
	public var context : Dynamic;
	/**
		The insertion indices of the examples (when they were first added).
		
		These indices start with the value -2**63 and increase with every
		call to the prefetch op.  Each whole example gets its own insertion
		index, and this is used to prioritize the example so that its truncated
		segments appear in adjacent iterations, even if new examples are inserted
		by the prefetch op between iterations.
		
		Returns:
		  An int64 vector of length `batch_size`, the insertion indices.
	**/
	public var insertion_index : Dynamic;
	/**
		The key names of the given truncated unrolled examples.
		
		The format of the key is:
		
		```python
		"%05d_of_%05d:%s" % (sequence, sequence_count, original_key)
		```
		
		where `original_key` is the unique key read in by the prefetcher.
		
		Returns:
		  A string vector of length `batch_size`, the keys.
	**/
	public var key : Dynamic;
	/**
		The lengths of the given truncated unrolled examples.
		
		For initial iterations, for which `sequence * num_unroll < length`,
		this number is `num_unroll`.  For the remainder,
		this number is between `0` and `num_unroll`.
		
		Returns:
		  An integer vector of length `batch_size`, the lengths.
	**/
	public var length : Dynamic;
	/**
		The key names of the next (in iteration) truncated unrolled examples.
		
		The format of the key is:
		
		```python
		"%05d_of_%05d:%s" % (sequence + 1, sequence_count, original_key)
		```
		
		if `sequence + 1 < sequence_count`, otherwise:
		
		```python
		"STOP:%s" % original_key
		```
		
		where `original_key` is the unique key read in by the prefetcher.
		
		Returns:
		  A string vector of length `batch_size`, the keys.
	**/
	public var next_key : Dynamic;
	/**
		Returns an op to save the current batch of state `state_name`.
		
		Args:
		  state_name: string, matches a key provided in `initial_states`.
		  value: A `Tensor`.
		    Its type must match that of `initial_states[state_name].dtype`.
		    If we had at input:
		
		    ```python
		    initial_states[state_name].get_shape() == [d1, d2, ...]
		    ```
		
		    then the shape of `value` must match:
		
		    ```python
		    tf.shape(value) == [batch_size, d1, d2, ...]
		    ```
		
		  name: string (optional).  The name scope for newly created ops.
		
		Returns:
		  A control flow op that stores the new state of each entry into
		  the state saver.  This op must be run for every iteration that
		  accesses data from the state saver (otherwise the state saver
		  will never progress through its states and run out of capacity).
		
		Raises:
		  KeyError: if `state_name` does not match any of the initial states
		    declared in `initial_states`.
	**/
	public function save_state(state_name:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An int32 vector, length `batch_size`: the sequence index of each entry.
		
		When an input is split up, the sequence values
		```
		0, 1, ..., sequence_count - 1
		```
		are assigned to each split.
		
		Returns:
		  An int32 vector `Tensor`.
	**/
	public var sequence : Dynamic;
	/**
		An int32 vector, length `batch_size`: the sequence count of each entry.
		
		When an input is split up, the number of splits is equal to:
		`padded_length / num_unroll`.  This is the sequence_count.
		
		Returns:
		  An int32 vector `Tensor`.
	**/
	public var sequence_count : Dynamic;
	/**
		A dict mapping keys of `input_sequences` to split and rebatched data.
		
		Returns:
		  A dict mapping keys of `input_sequences` to tensors.
		  If we had at input:
		
		  ```python
		  sequences["name"].get_shape() == [None, d1, d2, ...]
		  ```
		
		  where `None` meant the sequence time was dynamic, then for this property:
		
		  ```python
		  sequences["name"].get_shape() == [batch_size, num_unroll, d1, d2, ...].
		  ```
	**/
	public var sequences : Dynamic;
	/**
		Returns batched state tensors.
		
		Args:
		  state_name: string, matches a key provided in `initial_states`.
		
		Returns:
		  A `Tensor`: a batched set of states, either initial states (if this is
		  the first run of the given example), or a value as stored during
		  a previous iteration via `save_state` control flow.
		  Its type is the same as `initial_states["state_name"].dtype`.
		  If we had at input:
		
		  ```python
		  initial_states[state_name].get_shape() == [d1, d2, ...],
		  ```
		
		  then
		
		  ```python
		  state(state_name).get_shape() == [batch_size, d1, d2, ...]
		  ```
		
		Raises:
		  KeyError: if `state_name` does not match any of the initial states
		    declared in `initial_states`.
	**/
	public function state(state_name:Dynamic):Dynamic;
	/**
		The lengths of the original (non-truncated) unrolled examples.
		
		Returns:
		  An integer vector of length `batch_size`, the total lengths.
	**/
	public var total_length : Dynamic;
}