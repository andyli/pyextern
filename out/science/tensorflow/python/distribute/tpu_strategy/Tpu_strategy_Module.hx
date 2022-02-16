/* This file is generated, do not edit! */
package tensorflow.python.distribute.tpu_strategy;
@:pythonImport("tensorflow.python.distribute.tpu_strategy") extern class Tpu_strategy_Module {
	static public var _DTYPES_SUPPORTED_BY_CROSS_REPLICA_SUM : Dynamic;
	static public var _XLA_OP_BY_OP_INPUTS_LIMIT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _make_axis_nonnegative(axis:Dynamic, rank:Dynamic):Dynamic;
	/**
		Inspects arguments to partially apply any DistributedVariable.
		
		This avoids an automatic cast of the current variable value to tensor.
		
		Note that a variable may be captured implicitly with Python scope instead of
		passing it to run(), but supporting run() keeps behavior consistent
		with MirroredStrategy.
		
		Since positional arguments must be applied from left to right, this function
		does some tricky function inspection to move variable positional arguments
		into kwargs. As a result of this, we can't support passing Variables as *args,
		nor as args to functions which combine both explicit positional arguments and
		*args.
		
		Args:
		  fn: The function to run, as passed to run().
		  args: Positional arguments to fn, as passed to run().
		  kwargs: Keyword arguments to fn, as passed to run().
		
		Returns:
		  A tuple of the function (possibly wrapped), args, kwargs (both
		  possibly filtered, with members of args possibly moved to kwargs).
		  If no variables are found, this function is a noop.
		
		Raises:
		  ValueError: If the function signature makes unsupported use of *args, or if
		    too many arguments are passed.
	**/
	static public function _maybe_partial_apply_variables(fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Sets the last step outputs on the given context.
	**/
	static public function _set_last_step_outputs(ctx:Dynamic, last_step_tensor_outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function maybe_init_scope():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Validate the function passed into strategy.run.
	**/
	static public function validate_run_function(fn:Dynamic):Dynamic;
}