/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.parameter_server;
@:pythonImport("tensorflow.contrib.eager.python.parameter_server") extern class Parameter_server_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a variable handle with information to do shape inference.
	**/
	static public function _eager_safe_variable_handle(shape:Dynamic, dtype:Dynamic, shared_name:Dynamic, name:Dynamic, graph_mode:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Strategy to use parameter servers in eager.
		
		Creates SharedVariable objects for variables created in this scope. These
		SharedVariable objects will be placed round-robin on the parameter servers
		specified by the ps_job_name and num_ps_tasks arguments.
		
		To use parameter servers you need only to wrap your model initialization in
		this scope:
		
		```
		with tf.contrib.eager.parameter_server_scope(
		    is_chief, ps_job_name, num_ps_tasks):
		  my_model = tf.keras.Sequential([...])  # Or
		  input = tf.keras.Input(...)
		  ....
		  my_model = tf.keras.Model(input, output)
		my_model.compile(...)
		# or other usages of the model.
		```
		
		Args:
		  is_chief: Boolean. Whether this worker is responsible for initializing
		    variables.
		  ps_job_name: The name of the ps job in this cluster.
		  num_ps_tasks: The number of ps tasks to use.
		
		Yields:
		  a context manager.
	**/
	static public function parameter_server_scope(is_chief:Dynamic, ps_job_name:Dynamic, num_ps_tasks:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}