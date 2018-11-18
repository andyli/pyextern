/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.model;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.model") extern class Model_Module {
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
		Multi-machine batch gradient descent tree model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: Labels used to train on.
		  mode: Mode we are in. (TRAIN/EVAL/INFER)
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance.
		    * learner_config: A config for the learner.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * examples_per_layer: Number of examples to accumulate before growing a
		        layer. It can also be a function that computes the number of examples
		        based on the depth of the layer that's being built.
		    * weight_column_name: The name of weight column.
		    * center_bias: Whether a separate tree should be created for first fitting
		        the bias.
		    * override_global_step_value: If after the training is done, global step
		      value must be reset to this value. This is particularly useful for hyper
		      parameter tuning, which can't recognize early stopping due to the number
		      of trees. If None, no override of global step will happen.
		  config: `RunConfig` of the estimator.
		  output_type: Whether to return ModelFnOps (old interface) or EstimatorSpec
		    (new interface).
		
		Returns:
		  A `ModelFnOps` object.
		Raises:
		  ValueError: if inputs are not valid.
	**/
	static public function model_builder(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic, ?output_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Multi-machine batch gradient descent tree model for ranking.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: Labels used to train on.
		  mode: Mode we are in. (TRAIN/EVAL/INFER)
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance.
		    * learner_config: A config for the learner.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * examples_per_layer: Number of examples to accumulate before growing a
		        layer. It can also be a function that computes the number of examples
		        based on the depth of the layer that's being built.
		    * weight_column_name: The name of weight column.
		    * center_bias: Whether a separate tree should be created for first fitting
		        the bias.
		    * ranking_model_pair_keys (Optional): Keys to distinguish between features
		      for left and right part of the training pairs for ranking. For example,
		      for an Example with features "a.f1" and "b.f1", the keys would be
		      ("a", "b").
		    * override_global_step_value: If after the training is done, global step
		      value must be reset to this value. This is particularly useful for hyper
		      parameter tuning, which can't recognize early stopping due to the number
		      of trees. If None, no override of global step will happen.
		  config: `RunConfig` of the estimator.
		  output_type: Whether to return ModelFnOps (old interface) or EstimatorSpec
		    (new interface).
		
		
		Returns:
		  A `ModelFnOps` object.
		Raises:
		  ValueError: if inputs are not valid.
	**/
	static public function ranking_model_builder(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic, ?output_type:Dynamic):Dynamic;
}