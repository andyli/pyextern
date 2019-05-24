/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_embedding") extern class Tpu_embedding_Module {
	static public var INFERENCE : Dynamic;
	static public var TRAINING : Dynamic;
	static public var _HOST_PATTERN : Dynamic;
	static public var _MASTER_JOB : Dynamic;
	static public var _NUM_CORES_PER_HOST : Dynamic;
	static public var _TEST_HOST : Dynamic;
	static public var _TEST_MASTER_JOB : Dynamic;
	static public var _TEST_NUM_CORES_PER_HOST : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_combiners(table_to_config_dict:Dynamic):Dynamic;
	/**
		Create device_fn() to use with _create_partitioned_variables().
	**/
	static public function _create_device_fn(hosts:Dynamic):Dynamic;
	/**
		Create an OrderedDict from Dict.
	**/
	static public function _create_ordered_dict(d:Dynamic):Dynamic;
	/**
		Creates ParitionedVariables based on `num_hosts` for `table`.
	**/
	static public function _create_partitioned_variables(name:Dynamic, num_hosts:Dynamic, vocabulary_size:Dynamic, embedding_dimension:Dynamic, initializer:Dynamic, ?collections:Dynamic):Dynamic;
	/**
		Create mapping from table to a list of its features.
	**/
	static public function _create_table_to_features_dict(feature_to_table_dict:Dynamic):Dynamic;
	/**
		Saves the gradient of embedding activations ops in a graph collection.
	**/
	static public function _embedding_activations_grad(activations_op:Dynamic, grad_wrt_activations:Dynamic):Dynamic;
	static public function _get_optimization_handler(optimization_parameters:Dynamic):Dynamic;
	static public function _validate_batch_size(batch_size:Dynamic, num_cores:Dynamic):Dynamic;
	/**
		Validate `feature_to_table_dict`.
	**/
	static public function _validate_feature_to_table_dict(table_to_config_dict:Dynamic, feature_to_table_dict:Dynamic):Dynamic;
	static public function _validate_optimization_parameters(optimization_parameters:Dynamic):Dynamic;
	/**
		Validate `table_to_config_dict`.
	**/
	static public function _validate_table_to_config_dict(table_to_config_dict:Dynamic):Dynamic;
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