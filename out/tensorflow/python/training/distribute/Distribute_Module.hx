/* This file is generated, do not edit! */
package tensorflow.python.training.distribute;
@:pythonImport("tensorflow.python.training.distribute") extern class Distribute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _from_proto_fn(v:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public function _get_per_thread_mode():Dynamic;
	/**
		Creates Variable or ResourceVariable from VariableDef as needed.
	**/
	static public function _original_from_proto(v:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public function _pop_per_thread_mode():Dynamic;
	static public function _push_per_thread_mode(context:Dynamic):Dynamic;
	/**
		Verify in cross-tower context for `distribution_strategy`.
	**/
	static public function _require_cross_tower_context(distribution_strategy:Dynamic):Dynamic;
	/**
		Verify in a `distribution_strategy.scope()` in this thread.
	**/
	static public function _require_distribution_strategy_scope(distribution_strategy:Dynamic):Dynamic;
	static public var _update_device : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Reduce `aggregation` corresponding to the last loss reduction.
	**/
	static public function get_loss_reduction():Dynamic;
	/**
		Get the current device if in a `DistributionStrategy.update()` call.
	**/
	static public function get_update_device():Dynamic;
	/**
		`v += amount`, distributed-aware version. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use v.assign_add(amount) instead. You may need to set aggregation=tf.VariableAggregation.ONLY_FIRST_TOWER when creating the variable.
	**/
	static public function increment_var(v:Dynamic, ?amount:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Verify in `tower_ctx` tower context.
	**/
	static public function require_tower_context(tower_ctx:Dynamic):Dynamic;
}