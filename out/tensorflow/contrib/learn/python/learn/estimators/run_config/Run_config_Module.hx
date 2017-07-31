/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.run_config;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.run_config") extern class Run_config_Module {
	static public var _DEFAULT_UID_WHITE_LIST : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Counts the number of parameter servers in cluster_spec.
	**/
	static public function _count_ps(cluster_spec:Dynamic):Dynamic;
	/**
		Counts the number of workers in cluster_spec.
	**/
	static public function _count_worker(cluster_spec:Dynamic):Dynamic;
	/**
		Returns the appropriate string for the TensorFlow master.
	**/
	static public function _get_master(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	/**
		Returns `model_dir` based user provided `model_dir` or `TF_CONFIG`.
	**/
	static public function _get_model_dir(model_dir:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}