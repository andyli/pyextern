/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.saver;
@:pythonImport("tensorflow.contrib.eager.python.saver") extern class Saver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overrides default init by loading value from checkpoint.
	**/
	static public function _init_from_checkpoint(self:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a list of variables for the given `tf.train.Optimizer`.
		
		Equivalent to `optimizer.variables()`.
		
		Args:
		  optimizer: An instance of `tf.train.Optimizer` which has created variables
		    (typically after a call to `Optimizer.minimize`).
		Returns:
		  A list of variables which have been created by the `Optimizer`.
	**/
	static public function get_optimizer_variables(optimizer:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		ContextManager that restores variables on creation.
		
		  When save_path is None (e.g. No checkpoint), does nothing.
		  Otherwise, it preloads all values from checkpoint. When the
		  corresponding variable is first created, it assigns the checkpoint
		  value to the variable.
		
		  ```python
		  with restore_variables_on_create(
		      tf.train.latest_checkpoint(checkpoint_dir)):
		  ```
		
		Args:
		  save_path: The checkpoint file prefix.
		  map_func: A function that given the variable name as argument
		      and returns a variable name in checkpoint for restore. If
		      None, use the variable with the same name in checkpoint to restore.
		      It's an error that the mapped variable name doesn't exist in
		      checkpoint.
		
		Yields:
		  Nothing.
		
		Raises:
		  NotFoundError: If the variable is not found in checkpoint.
		  ValueError: If not used in eager mode or map_func is not callable.
	**/
	static public function restore_variables_on_create(save_path:Dynamic, ?map_func:Dynamic):Dynamic;
}