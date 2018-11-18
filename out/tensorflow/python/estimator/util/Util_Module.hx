/* This file is generated, do not edit! */
package tensorflow.python.estimator.util;
@:pythonImport("tensorflow.python.estimator.util") extern class Util_Module {
	static public var MAX_DIRECTORY_CREATION_ATTEMPTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get argument names for function-like object.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `tuple` of string argument names.
		
		Raises:
		  ValueError: if partial function has positionally bound arguments
	**/
	static public function fn_args(fn:Dynamic):Dynamic;
	/**
		Builds a path to a new subdirectory within the base directory.
		
		The subdirectory will be named using the current time.
		This guarantees monotonically increasing directory numbers even across
		multiple runs of the pipeline.
		The timestamp used is the number of seconds since epoch UTC.
		
		Args:
		  dir_base: A string containing a directory to create the subdirectory under.
		
		Returns:
		  The full path of the new subdirectory (which is not actually created yet).
		
		Raises:
		  RuntimeError: if repeated attempts fail to obtain a unique timestamped
		    directory name.
	**/
	static public function get_timestamped_dir(dir_base:Dynamic):Dynamic;
	/**
		Gets features, labels, and hooks from the result of an Estimator input_fn.
		
		Args:
		  result: output of an input_fn to an estimator, which should be one of:
		
		    * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		    * A tuple (features, labels): Where `features` is a `Tensor` or a
		      dictionary of string feature name to `Tensor` and `labels` is a
		      `Tensor` or a dictionary of string label name to `Tensor`. Both
		      `features` and `labels` are consumed by `model_fn`. They should
		      satisfy the expectation of `model_fn` from inputs.
		
		Returns:
		  Tuple of features, labels, and input_hooks, where features are as described
		  above, labels are as described above or None, and input_hooks are a list
		  of SessionRunHooks to be included when running.
		
		Raises:
		  ValueError: if the result is a list or tuple of length != 2.
	**/
	static public function parse_input_fn_result(result:Dynamic):Dynamic;
	/**
		Gets features, labels from result.
	**/
	static public function parse_iterator_result(result:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}