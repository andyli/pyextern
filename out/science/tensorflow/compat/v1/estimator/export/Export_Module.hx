/* This file is generated, do not edit! */
package tensorflow.compat.v1.estimator.export;
@:pythonImport("tensorflow.compat.v1.estimator.export") extern class Export_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Build a serving_input_receiver_fn expecting fed tf.Examples.
		
		Creates a serving_input_receiver_fn that expects a serialized tf.Example fed
		into a string placeholder.  The function parses the tf.Example according to
		the provided feature_spec, and returns all parsed Tensors as features.
		
		Args:
		  feature_spec: a dict of string to `VarLenFeature`/`FixedLenFeature`.
		  default_batch_size: the number of query examples expected per batch. Leave
		    unset for variable batch size (recommended).
		
		Returns:
		  A serving_input_receiver_fn suitable for use in serving.
	**/
	static public function build_parsing_serving_input_receiver_fn(feature_spec:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Build a serving_input_receiver_fn expecting feature Tensors.
		
		Creates an serving_input_receiver_fn that expects all features to be fed
		directly.
		
		Args:
		  features: a dict of string to `Tensor`.
		  default_batch_size: the number of query examples expected per batch. Leave
		    unset for variable batch size (recommended).
		
		Returns:
		  A serving_input_receiver_fn.
	**/
	static public function build_raw_serving_input_receiver_fn(features:Dynamic, ?default_batch_size:Dynamic):Dynamic;
}