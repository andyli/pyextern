/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.distributed_training_utils;
@:pythonImport("tensorflow.python.keras.distribute.distributed_training_utils") extern class Distributed_training_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Call a function that uses replica-local variables.
		
		This function correctly handles calling `fn` in a cross-replica
		context.
		
		Args:
		  fn: The function to call.
		  *args: Positional arguments to the `fn`.
		  **kwargs: Keyword argument to `fn`.
		
		Returns:
		  The result of calling `fn`.
	**/
	static public function call_replica_local_fn(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function global_batch_size_supported(distribution_strategy:Dynamic):Dynamic;
	/**
		Returns whether `v` is a distributed variable.
	**/
	static public function is_distributed_variable(v:Dynamic):Dynamic;
}