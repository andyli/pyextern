/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribution_strategy_context;
@:pythonImport("tensorflow.python.distribute.distribution_strategy_context") extern class Distribution_strategy_context_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _defaults : Dynamic;
	static public function _get_default_distribution_strategy():Dynamic;
	static public function _get_default_replica_context():Dynamic;
	static public function _get_default_replica_mode():Dynamic;
	static public function _get_per_thread_mode():Dynamic;
	static public function _pop_per_thread_mode():Dynamic;
	static public function _push_per_thread_mode(context:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the current tf.distribute.Strategy if in a cross-replica context.
		
		DEPRECATED: Please use `in_cross_replica_context()` and
		`get_distribution_strategy()` instead.
		
		Note that execution:
		
		1. starts in the default (single-replica) replica context;
		2. switches to cross-replica context when entering a
		   `with tf.distribute.Strategy.scope():` block;
		3. switches to a (non-default) replica context inside
		   `call_for_each_replica(fn, ...)`;
		4. if `fn` calls `get_replica_context()->merge_call(merge_fn, ...)`, then
		   inside `merge_fn` you are back in the cross-replica context.
		
		Note that you can also go directly from step 1 to 4 to switch to a
		cross-replica context for the default `tf.distribute.Strategy`. You may
		also switch from the cross-replica context of 4 to a replica context by
		calling `call_for_each_replica()`, jumping back to step 3.
		
		Most `tf.distribute.Strategy` methods may only be executed in
		a cross-replica context.
		
		Returns:
		  Returns the current `tf.distribute.Strategy` object in a cross-replica
		  context, or `None`.
		
		  Exactly one of `get_replica_context()` and `get_cross_replica_context()`
		  will return `None` in a particular block.
	**/
	static public function get_cross_replica_context():Dynamic;
	/**
		Returns the current `tf.distribute.Strategy` object.
		
		Typically only used in a cross-replica context:
		
		```
		if tf.distribute.in_cross_replica_context():
		  strategy = tf.distribute.get_strategy()
		  ...
		```
		
		Returns:
		  A `tf.distribute.Strategy` object. Inside a
		  `with distribution_strategy.scope()` block, it returns
		  `distribution_strategy`, otherwise it returns the default
		  (single-replica) `tf.distribute.Strategy` object.
	**/
	static public function get_distribution_strategy():Dynamic;
	/**
		Returns the current `tf.distribute.ReplicaContext` or `None`.
		
		Returns `None` if in a cross-replica context.
		
		Note that execution:
		
		1. starts in the default (single-replica) replica context (this function
		   will return the default `ReplicaContext` object);
		2. switches to cross-replica context (in which case this will return
		   `None`) when entering a `with tf.distribute.Strategy.scope():` block;
		3. switches to a (non-default) replica context inside
		   `extended.call_for_each_replica(fn, ...)`;
		4. if `fn` calls `get_replica_context().merge_call(merge_fn, ...)`, then
		   inside `merge_fn` you are back in the cross-replica context (and again
		   this function will return `None`).
		
		Note that you can also go directly from step 1 to 4 to switch to a
		cross-replica context for the default `tf.distribute.Strategy`. You may
		also switch from the cross-replica context of 4 to a replica context by
		calling `extended.call_for_each_replica()`, jumping back to step 3.
		
		Most `tf.distribute.Strategy` methods may only be executed in
		a cross-replica context, in a replica context you should use the
		`ReplicaContext` API instead.
		
		Returns:
		  The current `ReplicaContext` object when in a replica context scope,
		  else `None`.
		
		  Within a particular block, exactly one of these two things will be true:
		
		  * `get_replica_context()` returns non-`None`, or
		  * `tf.distribute.is_cross_replica_context()` returns True.
	**/
	static public function get_replica_context():Dynamic;
	/**
		Return if there is a current non-default `tf.distribute.Strategy`.
		
		Returns:
		  True if inside a `with strategy.scope():`.
	**/
	static public function has_distribution_strategy():Dynamic;
	/**
		Returns True if in a cross-replica context.
		
		See `tf.distribute.get_replica_context` for details.
		
		Returns:
		  True if in a cross-replica context (`get_replica_context()` returns
		  `None`), or False if in a replica context (`get_replica_context()` returns
		  non-`None`).
	**/
	static public function in_cross_replica_context():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}