/* This file is generated, do not edit! */
package tensorflow.python.training.basic_loops;
@:pythonImport("tensorflow.python.training.basic_loops") extern class Basic_loops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Basic loop to train a model.
		
		Calls `train_step_fn` in a loop to train a model.  The function is called as:
		
		```python
		train_step_fn(session, *args, **kwargs)
		```
		
		It is passed a `tf.Session` in addition to `args` and `kwargs`.  The function
		typically runs one training step in the session.
		
		Args:
		  supervisor: `tf.train.Supervisor` to run the training services.
		  train_step_fn: Callable to execute one training step.  Called
		    repeatedly as `train_step_fn(session, *args **kwargs)`.
		  args: Optional positional arguments passed to `train_step_fn`.
		  kwargs: Optional keyword arguments passed to `train_step_fn`.
		  master: Master to use to create the training session.  Defaults to
		    `""` which causes the session to be created in the local process.
	**/
	static public function basic_train_loop(supervisor:Dynamic, train_step_fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?master:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}