/* This file is generated, do not edit! */
package tensorflow.python.training.basic_session_run_hooks;
@:pythonImport("tensorflow.python.training.basic_session_run_hooks") extern class Basic_session_run_hooks_Module {
	static public var _HOOKS : Dynamic;
	static public var _STEPS_PER_RUN_VAR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Retrieves Graph element.
	**/
	static public function _as_graph_element(obj:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gets or creates the steps_per_run variable.
		
		In Estimator, the user provided computation, the model_fn, is wrapped
		inside a tf.while_loop for peak performance. The iterations of the loop are
		specified by this variable, which adjusts its value on the CPU after each
		device program execution and before the next execution.
		
		The purpose of using a variable, rather than a constant, is to allow
		Estimator adapt the device training iterations according to the final steps
		specified by users. For example, if the user sets the steps_per_run as
		4 and steps as 10 in Estimator.train(), the steps_per_run
		variable will have the following value before each training run.
		
		    - 1-st execution: steps_per_run = 4
		    - 2-nd execution: steps_per_run = 4
		    - 3-rd execution: steps_per_run = 2
		
		As model_fn increases the global step once per train_op invocation, the global
		step is 10 after all executions, matching the steps=10 inputs passed in by
		users.
		
		Returns:
		  A TF non-trainable resource variable.
		
		Raises:
		  RuntimeError: If multi steps_per_run variables were found.
	**/
	static public function get_or_create_steps_per_run_variable():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}