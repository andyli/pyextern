/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.logit_fns;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.logit_fns") extern class Logit_fns_Module {
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
		Calls logit_fn.
		
		A utility function that calls the provided logit_fn with the relevant subset
		of provided arguments.  Similar to tf.estimator._call_model_fn().
		
		Args:
		  logit_fn: A logit_fn as defined above.
		  features: The features dict.
		  mode: TRAIN / EVAL / PREDICT ModeKeys.
		  params: The hyperparameter dict.
		  config: The configuration object.
		
		Returns:
		  A logit Tensor, the output of logit_fn.
		
		Raises:
		  ValueError: if logit_fn does not return a Tensor or a dictionary mapping
		    strings to Tensors.
	**/
	static public function call_logit_fn(logit_fn:Dynamic, features:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Function builder for a dnn logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.  In the
		    MultiHead case, this should be the sum of all component Heads' logit
		    dimensions.
		  hidden_units: Iterable of integer number of hidden units per layer.
		  feature_columns: Iterable of `feature_column._FeatureColumn` model inputs.
		  activation_fn: Activation function applied to each layer.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Partitioner for input layer.
		  batch_norm: Whether to use batch normalization after each hidden layer.
		  shared_state_manager: A SharedEmbeddingStateManager object to hold the
		    shared state for SharedEmbeddingColumn's.
		
		Returns:
		  A logit_fn (see below).
		
		Raises:
		  ValueError: If units is not an int.
	**/
	static public function dnn_logit_fn_builder(units:Dynamic, hidden_units:Dynamic, feature_columns:Dynamic, activation_fn:Dynamic, dropout:Dynamic, input_layer_partitioner:Dynamic, batch_norm:Dynamic, ?shared_state_manager:Dynamic):Dynamic;
	/**
		Function builder for a linear logit_fn.
		
		Args:
		  units: An int indicating the dimension of the logit layer.
		  feature_columns: An iterable containing all the feature columns used by
		    the model.
		  sparse_combiner: A string specifying how to reduce if a categorical column
		    is multivalent.  One of "mean", "sqrtn", and "sum".
		
		Returns:
		  A logit_fn (see below).
	**/
	static public function linear_logit_fn_builder(units:Dynamic, feature_columns:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}