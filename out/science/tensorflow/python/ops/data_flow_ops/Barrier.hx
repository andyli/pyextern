/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "Barrier") extern class Barrier {
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
		Creates a barrier that persists across different graph executions.
		
		A barrier represents a key-value map, where each key is a string, and
		each value is a tuple of tensors.
		
		At runtime, the barrier contains 'complete' and 'incomplete'
		elements. A complete element has defined tensors for all
		components of its value tuple, and may be accessed using
		take_many. An incomplete element has some undefined components in
		its value tuple, and may be updated using insert_many.
		
		The barrier call `take_many` outputs values in a particular order.
		First, it only outputs completed values.  Second, the order in which
		completed values are returned matches the order in which their very
		first component was inserted into the barrier.  So, for example, for this
		sequence of insertions and removals:
		
		  barrier = Barrier((tf.string, tf.int32), shapes=((), ()))
		  barrier.insert_many(0, keys=["k1", "k2"], values=["a", "b"]).run()
		  barrier.insert_many(1, keys=["k1"], values=[1]).run()
		  barrier.insert_many(0, keys=["k3"], values=["c"]).run()
		  barrier.insert_many(1, keys=["k3"], values=[3]).run()
		  barrier.insert_many(1, keys=["k2"], values=[2]).run()
		
		  (indices, keys, values) = barrier.take_many(2)
		  (indices_val, keys_val, values0_val, values1_val) =
		     session.run([indices, keys, values[0], values[1]])
		
		The output will be (up to permutation of "k1" and "k2"):
		
		  indices_val == (-2**63, -2**63)
		  keys_val == ("k1", "k2")
		  values0_val == ("a", "b")
		  values1_val == (1, 2)
		
		Note the key "k2" was inserted into the barrier before "k3".  Even though
		"k3" was completed first, both are complete by the time
		take_many is called.  As a result, "k2" is prioritized and "k1" and "k2"
		are returned first.  "k3" remains in the barrier until the next execution
		of `take_many`.  Since "k1" and "k2" had their first insertions into
		the barrier together, their indices are the same (-2**63).  The index
		of "k3" will be -2**63 + 1, because it was the next new inserted key.
		
		Args:
		  types: A single dtype or a tuple of dtypes, corresponding to the
		    dtypes of the tensor elements that comprise a value in this barrier.
		  shapes: Optional. Constraints on the shapes of tensors in the values:
		    a single tensor shape tuple; a tuple of tensor shape tuples
		    for each barrier-element tuple component; or None if the shape should
		    not be constrained.
		  shared_name: Optional. If non-empty, this barrier will be shared under
		    the given name across multiple sessions.
		  name: Optional name for the barrier op.
		
		Raises:
		  ValueError: If one of the `shapes` indicate no elements.
	**/
	@:native("__init__")
	public function ___init__(types:Dynamic, ?shapes:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a barrier that persists across different graph executions.
		
		A barrier represents a key-value map, where each key is a string, and
		each value is a tuple of tensors.
		
		At runtime, the barrier contains 'complete' and 'incomplete'
		elements. A complete element has defined tensors for all
		components of its value tuple, and may be accessed using
		take_many. An incomplete element has some undefined components in
		its value tuple, and may be updated using insert_many.
		
		The barrier call `take_many` outputs values in a particular order.
		First, it only outputs completed values.  Second, the order in which
		completed values are returned matches the order in which their very
		first component was inserted into the barrier.  So, for example, for this
		sequence of insertions and removals:
		
		  barrier = Barrier((tf.string, tf.int32), shapes=((), ()))
		  barrier.insert_many(0, keys=["k1", "k2"], values=["a", "b"]).run()
		  barrier.insert_many(1, keys=["k1"], values=[1]).run()
		  barrier.insert_many(0, keys=["k3"], values=["c"]).run()
		  barrier.insert_many(1, keys=["k3"], values=[3]).run()
		  barrier.insert_many(1, keys=["k2"], values=[2]).run()
		
		  (indices, keys, values) = barrier.take_many(2)
		  (indices_val, keys_val, values0_val, values1_val) =
		     session.run([indices, keys, values[0], values[1]])
		
		The output will be (up to permutation of "k1" and "k2"):
		
		  indices_val == (-2**63, -2**63)
		  keys_val == ("k1", "k2")
		  values0_val == ("a", "b")
		  values1_val == (1, 2)
		
		Note the key "k2" was inserted into the barrier before "k3".  Even though
		"k3" was completed first, both are complete by the time
		take_many is called.  As a result, "k2" is prioritized and "k1" and "k2"
		are returned first.  "k3" remains in the barrier until the next execution
		of `take_many`.  Since "k1" and "k2" had their first insertions into
		the barrier together, their indices are the same (-2**63).  The index
		of "k3" will be -2**63 + 1, because it was the next new inserted key.
		
		Args:
		  types: A single dtype or a tuple of dtypes, corresponding to the
		    dtypes of the tensor elements that comprise a value in this barrier.
		  shapes: Optional. Constraints on the shapes of tensors in the values:
		    a single tensor shape tuple; a tuple of tensor shape tuples
		    for each barrier-element tuple component; or None if the shape should
		    not be constrained.
		  shared_name: Optional. If non-empty, this barrier will be shared under
		    the given name across multiple sessions.
		  name: Optional name for the barrier op.
		
		Raises:
		  ValueError: If one of the `shapes` indicate no elements.
	**/
	public function new(types:Dynamic, ?shapes:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Void;
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
		Get the underlying barrier reference.
	**/
	public var barrier_ref : Dynamic;
	/**
		Closes this barrier.
		
		This operation signals that no more new key values will be inserted in the
		given barrier. Subsequent InsertMany operations with new keys will fail.
		InsertMany operations that just complement already existing keys with other
		components, will continue to succeed. Subsequent TakeMany operations will
		continue to succeed if sufficient elements remain in the barrier. Subsequent
		TakeMany operations that would block will fail immediately.
		
		If `cancel_pending_enqueues` is `True`, all pending requests to the
		underlying queue will also be canceled, and completing of already
		started values is also not acceptable anymore.
		
		Args:
		  cancel_pending_enqueues: (Optional.) A boolean, defaulting to
		    `False` (described above).
		  name: Optional name for the op.
		
		Returns:
		  The operation that closes the barrier.
	**/
	public function close(?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the number of incomplete elements in the given barrier.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A single-element tensor containing the number of incomplete elements in
		  the given barrier.
	**/
	public function incomplete_size(?name:Dynamic):Dynamic;
	/**
		For each key, assigns the respective value to the specified component.
		
		This operation updates each element at component_index.
		
		Args:
		  component_index: The component of the value that is being assigned.
		  keys: A vector of keys, with length n.
		  values: An any-dimensional tensor of values, which are associated with the
		    respective keys. The first dimension must have length n.
		  name: Optional name for the op.
		
		Returns:
		  The operation that performs the insertion.
		Raises:
		  InvalidArgumentsError: If inserting keys and values without elements.
	**/
	public function insert_many(component_index:Dynamic, keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The name of the underlying barrier.
	**/
	public var name : Dynamic;
	/**
		Compute the number of complete elements in the given barrier.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A single-element tensor containing the number of complete elements in the
		  given barrier.
	**/
	public function ready_size(?name:Dynamic):Dynamic;
	/**
		Takes the given number of completed elements from this barrier.
		
		This operation concatenates completed-element component tensors along
		the 0th dimension to make a single component tensor.
		
		If barrier has no completed elements, this operation will block
		until there are 'num_elements' elements to take.
		
		TODO(b/25743580): the semantics of `allow_small_batch` are experimental
		and may be extended to other cases in the future.
		
		TODO(ebrevdo): If a take_many(allow_small_batch=True) is blocking
		already when the barrier is closed, it will block for ever. Fix this
		by using asynchronous operations.
		
		Args:
		  num_elements: The number of elements to take.
		  allow_small_batch: If the barrier is closed, don't block if there are less
		    completed elements than requested, but instead return all available
		    completed elements.
		  timeout: This specifies the number of milliseconds to block
		    before returning with DEADLINE_EXCEEDED. (This option is not
		    supported yet.)
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of (index, key, value_list).
		  "index" is a int64 tensor of length num_elements containing the
		    index of the insert_many call for which the very first component of
		    the given element was inserted into the Barrier, starting with
		    the value -2**63.  Note, this value is different from the
		    index of the insert_many call for which the element was completed.
		  "key" is a string tensor of length num_elements containing the keys.
		  "value_list" is a tuple of tensors, each one with size num_elements
		    in the 0th dimension for each component in the barrier's values.
	**/
	public function take_many(num_elements:Dynamic, ?allow_small_batch:Dynamic, ?timeout:Dynamic, ?name:Dynamic):Dynamic;
}