/* This file is generated, do not edit! */
package tensorflow.contrib.distribute;
@:pythonImport("tensorflow.contrib.distribute") extern class Distribute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
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
		`tf.distribute.ReduceOp` corresponding to the last loss reduction.
	**/
	static public function get_loss_reduction():Dynamic;
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
	/**
		Verify in `replica_ctx` replica context.
	**/
	static public function require_replica_context(replica_ctx:Dynamic):Dynamic;
	/**
		Starts a standard TensorFlow server.
		
		This method parses configurations from "TF_CONFIG" environment variable and
		starts a TensorFlow server. The "TF_CONFIG" is typically a json string and
		must have information of the cluster and the role of the server in the
		cluster. One example is:
		
		TF_CONFIG='{
		    "cluster": {
		        "worker": ["host1:2222", "host2:2222", "host3:2222"],
		        "ps": ["host4:2222", "host5:2222"]
		    },
		    "task": {"type": "worker", "index": 1}
		}'
		
		This "TF_CONFIG" specifies there are 3 workers and 2 ps tasks in the cluster
		and the current role is worker 1.
		
		Valid task types are "chief", "worker", "ps" and "evaluator" and you can have
		at most one "chief" and at most one "evaluator".
		
		An optional key-value can be specified is "rpc_layer". The default value is
		"grpc".
		
		Args:
		  session_config: an optional `tf.ConfigProto` object. Users can pass in
		    the session config object to configure server-local devices.
		
		Returns:
		  a `tf.train.Server` object which has already been started.
		
		Raises:
		  ValueError: if the "TF_CONFIG" environment is not complete.
	**/
	static public function run_standard_tensorflow_server(?session_config:Dynamic):Dynamic;
}