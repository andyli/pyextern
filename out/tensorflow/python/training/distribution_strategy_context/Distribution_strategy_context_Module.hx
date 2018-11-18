/* This file is generated, do not edit! */
package tensorflow.python.training.distribution_strategy_context;
@:pythonImport("tensorflow.python.training.distribution_strategy_context") extern class Distribution_strategy_context_Module {
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
	static public function _get_default_tower_context():Dynamic;
	static public function _get_default_tower_mode():Dynamic;
	static public function _get_per_thread_mode():Dynamic;
	static public function _pop_per_thread_mode():Dynamic;
	static public function _push_per_thread_mode(context:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}