/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.input_fn_utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.input_fn_utils") extern class Input_fn_utils_Module {
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
		Build an input_fn appropriate for serving, expecting feature Tensors.
		
		Creates an input_fn that expects all features to be fed directly.
		This input_fn is for use at serving time, so the labels return value is always
		None.
		
		Args:
		  features: a dict of string to `Tensor`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  An input_fn suitable for use in serving.
	**/
	static public function build_default_serving_input_fn(features:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Build an input_fn appropriate for serving, expecting fed tf.Examples.
		
		Creates an input_fn that expects a serialized tf.Example fed into a string
		placeholder.  The function parses the tf.Example according to the provided
		feature_spec, and returns all parsed Tensors as features.  This input_fn is
		for use at serving time, so the labels return value is always None.
		
		Args:
		  feature_spec: a dict of string to `VarLenFeature`/`FixedLenFeature`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  An input_fn suitable for use in serving.
	**/
	static public function build_parsing_serving_input_fn(feature_spec:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}