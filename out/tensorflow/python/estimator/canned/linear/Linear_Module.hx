/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.linear;
@:pythonImport("tensorflow.python.estimator.canned.linear") extern class Linear_Module {
	static public var _LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a linear variables list, compute the fraction of zero weights.
		
		Args:
		  variables: A list or list of list of variables
		
		Returns:
		  The fraction of zeros (sparsity) in the linear model.
	**/
	static public function _compute_fraction_of_zero(variables:Dynamic):Dynamic;
	static public function _get_default_optimizer(feature_columns:Dynamic):Dynamic;
	/**
		Given a list of variables, expands them if they are partitioned.
		
		Args:
		  var_list: A list of variables.
		
		Returns:
		  A list of variables where each partitioned variable is expanded to its
		  components.
	**/
	static public function _get_expanded_variable_list(var_list:Dynamic):Dynamic;
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
	static public function _linear_logit_fn_builder(units:Dynamic, feature_columns:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
	/**
		A model_fn for linear models that use a gradient-based optimizer.
		
		Args:
		  features: dict of `Tensor`.
		  labels: `Tensor` of shape `[batch_size, logits_dimension]`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  head: A `Head` instance.
		  feature_columns: An iterable containing all the feature columns used by
		    the model.
		  optimizer: string, `Optimizer` object, or callable that defines the
		    optimizer to use for training. If `None`, will use a FTRL optimizer.
		  partitioner: Partitioner for variables.
		  config: `RunConfig` object to configure the runtime settings.
		  sparse_combiner: A string specifying how to reduce if a categorical column
		    is multivalent.  One of "mean", "sqrtn", and "sum".
		
		Returns:
		  An `EstimatorSpec` instance.
		
		Raises:
		  ValueError: mode or params are invalid, or features has the wrong type.
	**/
	static public function _linear_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, feature_columns:Dynamic, optimizer:Dynamic, partitioner:Dynamic, config:Dynamic, ?sparse_combiner:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}