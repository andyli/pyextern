/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.dnn_tree_combined_estimator;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.dnn_tree_combined_estimator") extern class Dnn_tree_combined_estimator_Module {
	static public var _DNN_LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_hidden_layer_summary(value:Dynamic, tag:Dynamic):Dynamic;
	/**
		DNN and GBDT combined model_fn.
		
		Args:
		  features: `dict` of `Tensor` objects.
		  labels: Labels used to train on.
		  mode: Mode we are in. (TRAIN/EVAL/INFER)
		  head: A `Head` instance.
		  dnn_hidden_units: List of hidden units per layer.
		  dnn_feature_columns: An iterable containing all the feature columns
		    used by the model's DNN.
		  tree_learner_config: A config for the tree learner.
		  num_trees: Number of trees to grow model to after training DNN.
		  tree_examples_per_layer: Number of examples to accumulate before
		    growing the tree a layer. This value has a big impact on model
		    quality and should be set equal to the number of examples in
		    training dataset if possible. It can also be a function that computes
		    the number of examples based on the depth of the layer that's
		    being built.
		  config: `RunConfig` of the estimator.
		  dnn_optimizer: string, `Optimizer` object, or callable that defines the
		    optimizer to use for training the DNN. If `None`, will use the Adagrad
		    optimizer with default learning rate of 0.001.
		  dnn_activation_fn: Activation function applied to each layer of the DNN.
		    If `None`, will use `tf.nn.relu`.
		  dnn_dropout: When not `None`, the probability to drop out a given
		    unit in the DNN.
		  dnn_input_layer_partitioner: Partitioner for input layer of the DNN.
		    Defaults to `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  dnn_input_layer_to_tree: Whether to provide the DNN's input layer
		  as a feature to the tree.
		  dnn_steps_to_train: Number of steps to train dnn for before switching
		    to gbdt.
		  predict_with_tree_only: Whether to use only the tree model output as the
		    final prediction.
		  tree_feature_columns: An iterable containing all the feature columns
		    used by the model's boosted trees. If dnn_input_layer_to_tree is
		    set to True, these features are in addition to dnn_feature_columns.
		  tree_center_bias: Whether a separate tree should be created for
		    first fitting the bias.
		  dnn_to_tree_distillation_param: A Tuple of (float, loss_fn), where the
		    float defines the weight of the distillation loss, and the loss_fn, for
		    computing distillation loss, takes dnn_logits, tree_logits and weight
		    tensor. If the entire tuple is None, no distillation will be applied. If
		    only the loss_fn is None, we will take the sigmoid/softmax cross entropy
		    loss be default. When distillation is applied, `predict_with_tree_only`
		    will be set to True.
		  use_core_versions: Whether feature columns and loss are from the core (as
		    opposed to contrib) version of tensorflow.
		  output_type: Whether to return ModelFnOps (old interface) or EstimatorSpec
		    (new interface).
		  override_global_step_value: If after the training is done, global step
		    value must be reset to this value. This is particularly useful for hyper
		    parameter tuning, which can't recognize early stopping due to the number
		    of trees. If None, no override of global step will happen.
		
		Returns:
		  A `ModelFnOps` object.
		Raises:
		  ValueError: if inputs are not valid.
	**/
	static public function _dnn_tree_combined_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, dnn_hidden_units:Dynamic, dnn_feature_columns:Dynamic, tree_learner_config:Dynamic, num_trees:Dynamic, tree_examples_per_layer:Dynamic, ?config:Dynamic, ?dnn_optimizer:Dynamic, ?dnn_activation_fn:Dynamic, ?dnn_dropout:Dynamic, ?dnn_input_layer_partitioner:Dynamic, ?dnn_input_layer_to_tree:Dynamic, ?dnn_steps_to_train:Dynamic, ?predict_with_tree_only:Dynamic, ?tree_feature_columns:Dynamic, ?tree_center_bias:Dynamic, ?dnn_to_tree_distillation_param:Dynamic, ?use_core_versions:Dynamic, ?output_type:Dynamic, ?override_global_step_value:Dynamic):Dynamic;
	static public function _get_optimizer(optimizer:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}