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
		Returns the current DistributionStrategy if in a cross-tower context.
		
		Note that execution:
		
		1. starts in the default (single-tower) tower context;
		2. switches to cross-tower context when entering a
		   `with DistributionStrategy.scope():` block;
		3. switches to a (non-default) tower context inside
		   `call_for_each_tower(fn, ...)`;
		4. if `fn` calls `get_tower_context()->merge_call(merge_fn, ...)`, then
		   inside `merge_fn` you are back in the cross-tower context.
		
		Note that you can also go directly from step 1 to 4 to switch to a
		cross-tower context for the default `DistributionStrategy`. You may
		also switch from the cross-tower context of 4 to a tower context by
		calling `call_for_each_tower()`, jumping back to step 3.
		
		Most `DistributionStrategy` methods may only be executed in
		a cross-tower context.
		
		Returns:
		  Returns the current `DistributionStrategy` object in a cross-tower
		  context, or None.
		
		  Exactly one of `get_tower_context()` and `get_cross_tower_context()`
		  will return None in a particular block.
	**/
	static public function get_cross_tower_context():Dynamic;
	/**
		Returns the current `DistributionStrategy` object.
		
		Prefer to use `get_tower_context()` or `get_cross_tower_context()`
		instead when possible.
		
		Returns:
		  A `DistributionStrategy` object. Inside a
		  `with distribution_strategy.scope()` block, it returns
		  `distribution_strategy`, otherwise it returns the default
		  (single-tower) `DistributionStrategy` object.
	**/
	static public function get_distribution_strategy():Dynamic;
	/**
		Reduce `aggregation` corresponding to the last loss reduction.
	**/
	static public function get_loss_reduction():Dynamic;
	/**
		Returns the current TowerContext or None if in a cross-tower context.
		
		Note that execution:
		
		1. starts in the default (single-tower) tower context (this function
		   will return the default TowerContext object);
		2. switches to cross-tower context (in which case this will return
		   None) when entering a `with DistributionStrategy.scope():` block;
		3. switches to a (non-default) tower context inside
		   `call_for_each_tower(fn, ...)`;
		4. if `fn` calls `get_tower_context()->merge_call(merge_fn, ...)`, then
		   inside `merge_fn` you are back in the cross-tower context (and again
		   this function will return None).
		
		Note that you can also go directly from step 1 to 4 to switch to a
		cross-tower context for the default `DistributionStrategy`. You may
		also switch from the cross-tower context of 4 to a tower context by
		calling `call_for_each_tower()`, jumping back to step 3.
		
		Most `DistributionStrategy` methods may only be executed in
		a cross-tower context, in a tower context you should use the
		`TowerContext` API instead.
		
		Returns:
		  The current `TowerContext` object when in a tower context scope, else None.
		
		  Exactly one of `get_tower_context()` and `get_cross_tower_context()`
		  will return None in a particular block.
	**/
	static public function get_tower_context():Dynamic;
	/**
		Return if there is a current non-default `DistributionStrategy`.
		
		Returns:
		  True if inside a `with distribution_strategy.scope():`.
	**/
	static public function has_distribution_strategy():Dynamic;
	/**
		Verify in `tower_ctx` tower context.
	**/
	static public function require_tower_context(tower_ctx:Dynamic):Dynamic;
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