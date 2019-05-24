/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_lib;
@:pythonImport("tensorflow.python.distribute.distribute_lib") extern class Distribute_lib_Module {
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
		Verify in cross-replica context.
	**/
	static public function _require_cross_replica_context_extended(extended:Dynamic):Dynamic;
	/**
		Verify in a `distribution_strategy.scope()` in this thread.
	**/
	static public function _require_distribution_strategy_scope_extended(extended:Dynamic):Dynamic;
	/**
		Verify in a `strategy.scope()` in this thread.
	**/
	static public function _require_distribution_strategy_scope_strategy(strategy:Dynamic):Dynamic;
	static public var _update_device : Dynamic;
	static public function _wrong_strategy_scope(strategy:Dynamic, context:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		`tf.distribute.ReduceOp` corresponding to the last loss reduction.
	**/
	static public function get_loss_reduction():Dynamic;
	/**
		Get the current device if in a `tf.distribute.Strategy.update()` call.
	**/
	static public function get_update_device():Dynamic;
	static public var print_function : Dynamic;
	/**
		Verify in `replica_ctx` replica context.
	**/
	static public function require_replica_context(replica_ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}