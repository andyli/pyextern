/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.training.functions.gbdt_batch;
@:pythonImport("tensorflow.contrib.boosted_trees.python.training.functions.gbdt_batch", "GradientBoostedDecisionTreeModel") extern class GradientBoostedDecisionTreeModel {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct a new GradientBoostedDecisionTreeModel function.
		
		Args:
		  is_chief: Whether to build the chief graph.
		  num_ps_replicas: Number of parameter server replicas, can be 0.
		  ensemble_handle: A handle to the ensemble variable.
		  center_bias: Whether to center the bias before growing trees.
		  examples_per_layer: Number of examples to accumulate before growing a tree
		    layer. It can also be a function that computes the number of examples
		    based on the depth of the layer that's being built.
		  learner_config: A learner config.
		  features: `dict` of `Tensor` objects.
		  logits_dimension: An int, the dimension of logits.
		  loss_reduction: Either `SUM_OVER_NONZERO_WEIGHTS` (mean) or `SUM`.
		  feature_columns: A list of feature columns.
		  use_core_columns: A boolean specifying whether core feature columns are
		    used.
		  output_leaf_index: A boolean variable indicating whether to output leaf
		    index into predictions dictionary.
		  output_leaf_index_modes: A list of modes from (TRAIN, EVAL, INFER) which
		    dictates when leaf indices will be outputted. By default, leaf indices
		    are only outputted in INFER mode.
		  num_quantiles: Number of quantiles to build for numeric feature values.
		
		Raises:
		  ValueError: if inputs are not valid.
	**/
	@:native("__init__")
	public function ___init__(is_chief:Dynamic, num_ps_replicas:Dynamic, ensemble_handle:Dynamic, center_bias:Dynamic, examples_per_layer:Dynamic, learner_config:Dynamic, features:Dynamic, logits_dimension:Dynamic, ?loss_reduction:Dynamic, ?feature_columns:Dynamic, ?use_core_columns:Dynamic, ?output_leaf_index:Dynamic, ?output_leaf_index_modes:Dynamic, ?num_quantiles:Dynamic):Dynamic;
	/**
		Construct a new GradientBoostedDecisionTreeModel function.
		
		Args:
		  is_chief: Whether to build the chief graph.
		  num_ps_replicas: Number of parameter server replicas, can be 0.
		  ensemble_handle: A handle to the ensemble variable.
		  center_bias: Whether to center the bias before growing trees.
		  examples_per_layer: Number of examples to accumulate before growing a tree
		    layer. It can also be a function that computes the number of examples
		    based on the depth of the layer that's being built.
		  learner_config: A learner config.
		  features: `dict` of `Tensor` objects.
		  logits_dimension: An int, the dimension of logits.
		  loss_reduction: Either `SUM_OVER_NONZERO_WEIGHTS` (mean) or `SUM`.
		  feature_columns: A list of feature columns.
		  use_core_columns: A boolean specifying whether core feature columns are
		    used.
		  output_leaf_index: A boolean variable indicating whether to output leaf
		    index into predictions dictionary.
		  output_leaf_index_modes: A list of modes from (TRAIN, EVAL, INFER) which
		    dictates when leaf indices will be outputted. By default, leaf indices
		    are only outputted in INFER mode.
		  num_quantiles: Number of quantiles to build for numeric feature values.
		
		Raises:
		  ValueError: if inputs are not valid.
	**/
	public function new(is_chief:Dynamic, num_ps_replicas:Dynamic, ensemble_handle:Dynamic, center_bias:Dynamic, examples_per_layer:Dynamic, learner_config:Dynamic, features:Dynamic, logits_dimension:Dynamic, ?loss_reduction:Dynamic, ?feature_columns:Dynamic, ?use_core_columns:Dynamic, ?output_leaf_index:Dynamic, ?output_leaf_index_modes:Dynamic, ?num_quantiles:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Prepares hessians for diagonal-hessian multiclass mode.
	**/
	public function _diagonal_hessian(grads:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Prepares hessians for full-hessian multiclass strategy.
	**/
	public function _full_hessian(grads:Dynamic, predictions:Dynamic):Dynamic;
	public function _get_class_id(predictions_dict:Dynamic):Dynamic;
	/**
		Creates a replica device setter.
	**/
	public function _get_replica_device_setter(worker_device:Dynamic):Dynamic;
	/**
		Derives weights to be used based on hessians and multiclass strategy.
	**/
	public function _get_weights(hessian_shape:Dynamic, hessians:Dynamic):Dynamic;
	/**
		A method to create the function which updates the bias stats.
	**/
	public function _make_update_bias_stats_fn(ensemble_stamp:Dynamic, predictions:Dynamic, gradients:Dynamic, bias_stats_accumulator:Dynamic):Dynamic;
	/**
		Runs prediction and returns a dictionary of the prediction results.
		
		Args:
		  ensemble_handle: ensemble resource handle.
		  ensemble_stamp: stamp of ensemble resource.
		  mode: learn.ModeKeys.TRAIN or EVAL or INFER.
		
		Returns:
		  a dictionary of prediction results -
		    ENSEMBLE_STAMP, PREDICTION, PARTITION_IDS,
		    NUM_LAYER_ATTEMPTED, NUM_TREES_ATTEMPTED.
	**/
	public function _predict_and_return_dict(ensemble_handle:Dynamic, ensemble_stamp:Dynamic, mode:Dynamic):Dynamic;
	public function get_max_tree_depth():Dynamic;
	public function get_number_of_trees_tensor():Dynamic;
	/**
		Increments number of visited examples and grows the ensemble.
		
		If the number of visited examples reaches the target examples_per_layer,
		ensemble is updated.
		
		Args:
		  predictions_dict: Dictionary of Rank 2 `Tensor` representing information
		      about predictions per example.
		  training_state: `dict` returned by update_stats.
		
		Returns:
		  An op that updates the counters and potientially grows the ensemble.
	**/
	public function increment_step_counter_and_maybe_update_ensemble(predictions_dict:Dynamic, training_state:Dynamic):Dynamic;
	/**
		A method to create the function which updates the tree ensemble.
	**/
	public function make_update_ensemble_fn(ensemble_stamp:Dynamic, training_state:Dynamic, dropout_seed:Dynamic, class_id:Dynamic):Dynamic;
	/**
		Returns predictions given the features and mode.
		
		Args:
		  mode: Mode the graph is running in (train|predict|eval).
		
		Returns:
		  A dict of predictions tensors.
		
		Raises:
		  ValueError: if features is not valid.
	**/
	public function predict(mode:Dynamic):Dynamic;
	/**
		Updates the accumalator stats and grows the ensemble.
		
		Args:
		  loss: A scalar tensor representing average loss of examples.
		  predictions_dict: Dictionary of Rank 2 `Tensor` representing information
		      about predictions per example.
		  labels: Rank 2 `Tensor` representing labels per example. Has no effect
		      on the training and is only kept for backward compatibility.
		
		Returns:
		  An op that adds a new tree to the ensemble.
		
		Raises:
		  ValueError: if inputs are not valid.
	**/
	public function train(loss:Dynamic, predictions_dict:Dynamic, labels:Dynamic):Dynamic;
	/**
		Update the accumulators with stats from this batch.
		
		Args:
		  loss: A scalar tensor representing average loss of examples.
		  predictions_dict: Dictionary of Rank 2 `Tensor` representing information
		      about predictions per example.
		
		Returns:
		  Three values:
		    - An op that adds a new tree to the ensemble, and
		    - An op that increments the stamp but removes all the trees and resets
		        the handlers. This can be used to reset the state of the ensemble.
		    - A dict containing the training state.
		
		Raises:
		  ValueError: if inputs are not valid.
	**/
	public function update_stats(loss:Dynamic, predictions_dict:Dynamic):Dynamic;
}