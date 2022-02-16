/* This file is generated, do not edit! */
package tensorflow.compat.v2.distribute;
@:pythonImport("tensorflow.compat.v2.distribute") extern class Distribute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Set a `tf.distribute.Strategy` as current without `with strategy.scope()`.
		
		```
		tf.distribute.experimental_set_strategy(strategy1)
		f()
		tf.distribute.experimental_set_strategy(strategy2)
		g()
		tf.distribute.experimental_set_strategy(None)
		h()
		```
		
		is equivalent to:
		
		```
		with strategy1.scope():
		  f()
		with strategy2.scope():
		  g()
		h()
		```
		
		In general, you should use the `with strategy.scope():` API, but this
		alternative may be convenient in notebooks where you would have to put
		each cell in a `with strategy.scope():` block.
		
		Note: This should only be called outside of any TensorFlow scope to
		avoid improper nesting.
		
		Args:
		  strategy: A `tf.distribute.Strategy` object or None.
		
		Raises:
		  RuntimeError: If called inside a `with strategy.scope():`.
	**/
	static public function experimental_set_strategy(strategy:Dynamic):Dynamic;
	/**
		Returns the current `tf.distribute.ReplicaContext` or `None`.
		
		Returns `None` if in a cross-replica context.
		
		Note that execution:
		
		1. starts in the default (single-replica) replica context (this function
		   will return the default `ReplicaContext` object);
		2. switches to cross-replica context (in which case this will return
		   `None`) when entering a `with tf.distribute.Strategy.scope():` block;
		3. switches to a (non-default) replica context inside `strategy.run(fn, ...)`;
		4. if `fn` calls `get_replica_context().merge_call(merge_fn, ...)`, then
		   inside `merge_fn` you are back in the cross-replica context (and again
		   this function will return `None`).
		
		Most `tf.distribute.Strategy` methods may only be executed in
		a cross-replica context, in a replica context you should use the
		API of the `tf.distribute.ReplicaContext` object returned by this
		method instead.
		
		```
		assert tf.distribute.get_replica_context() is not None  # default
		with strategy.scope():
		  assert tf.distribute.get_replica_context() is None
		
		  def f():
		    replica_context = tf.distribute.get_replica_context()  # for strategy
		    assert replica_context is not None
		    tf.print("Replica id: ", replica_context.replica_id_in_sync_group,
		             " of ", replica_context.num_replicas_in_sync)
		
		  strategy.run(f)
		```
		
		Returns:
		  The current `tf.distribute.ReplicaContext` object when in a replica context
		  scope, else `None`.
		
		  Within a particular block, exactly one of these two things will be true:
		
		  * `get_replica_context()` returns non-`None`, or
		  * `tf.distribute.is_cross_replica_context()` returns True.
	**/
	static public function get_replica_context():Dynamic;
	/**
		Returns the current `tf.distribute.Strategy` object.
		
		Typically only used in a cross-replica context:
		
		```
		if tf.distribute.in_cross_replica_context():
		  strategy = tf.distribute.get_strategy()
		  ...
		```
		
		Returns:
		  A `tf.distribute.Strategy` object. Inside a `with strategy.scope()` block,
		  it returns `strategy`, otherwise it returns the default (single-replica)
		  `tf.distribute.Strategy` object.
	**/
	static public function get_strategy():Dynamic;
	/**
		Return if there is a current non-default `tf.distribute.Strategy`.
		
		```
		assert not tf.distribute.has_strategy()
		with strategy.scope():
		  assert tf.distribute.has_strategy()
		```
		
		Returns:
		  True if inside a `with strategy.scope():`.
	**/
	static public function has_strategy():Dynamic;
	/**
		Returns `True` if in a cross-replica context.
		
		See `tf.distribute.get_replica_context` for details.
		
		```
		assert not tf.distribute.in_cross_replica_context()
		with strategy.scope():
		  assert tf.distribute.in_cross_replica_context()
		
		  def f():
		    assert not tf.distribute.in_cross_replica_context()
		
		  strategy.run(f)
		```
		
		Returns:
		  `True` if in a cross-replica context (`get_replica_context()` returns
		  `None`), or `False` if in a replica context (`get_replica_context()` returns
		  non-`None`).
	**/
	static public function in_cross_replica_context():Dynamic;
}