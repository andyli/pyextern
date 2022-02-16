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
	/**
		Returns the destinations for batch all-reduce.
	**/
	static public function _batch_reduce_destination(x:Dynamic):Dynamic;
	static public var _creating_default_strategy_singleton : Dynamic;
	static public function _from_proto_fn(v:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public function _get_default_replica_mode():Dynamic;
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
	static public function _require_cross_replica_or_default_context_extended(extended:Dynamic, ?error_message:Dynamic):Dynamic;
	/**
		Verify in a `distribution_strategy.scope()` in this thread.
	**/
	static public function _require_strategy_scope_extended(extended:Dynamic):Dynamic;
	/**
		Verify in a `strategy.scope()` in this thread.
	**/
	static public function _require_strategy_scope_strategy(strategy:Dynamic):Dynamic;
	static public var _update_replica_id : Dynamic;
	static public function _wrong_strategy_scope(strategy:Dynamic, context:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var distribution_strategy_gauge : Dynamic;
	static public var distribution_strategy_input_api_counter : Dynamic;
	static public var distribution_strategy_replica_gauge : Dynamic;
	static public var division : Dynamic;
	/**
		`tf.distribute.ReduceOp` corresponding to the last loss reduction.
		
		This is used to decide whether loss should be scaled in optimizer (used only
		for estimator + v1 optimizer use case).
		
		Returns:
		  `tf.distribute.ReduceOp` corresponding to the last loss reduction for
		  estimator and v1 optimizer use case. `tf.distribute.ReduceOp.SUM` otherwise.
	**/
	static public function get_loss_reduction():Dynamic;
	/**
		Get the current device if in a `tf.distribute.Strategy.update()` call.
	**/
	static public function get_update_replica_id():Dynamic;
	static public var print_function : Dynamic;
	/**
		Verify in `replica_ctx` replica context.
	**/
	static public function require_replica_context(replica_ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}