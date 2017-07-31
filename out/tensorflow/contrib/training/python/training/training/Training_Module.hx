/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.training;
@:pythonImport("tensorflow.contrib.training.python.training.training") extern class Training_Module {
	static public var _USE_GLOBAL_STEP : Dynamic;
	static public var __all__ : Dynamic;
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
		Add summaries to gradients.
		
		Args:
		  grads_and_vars: A list of gradient to variable pairs (tuples).
		
		Returns:
		  The list of created summaries.
	**/
	static public function add_gradients_summaries(grads_and_vars:Dynamic):Dynamic;
	/**
		Clips the gradients by the given value.
		
		Args:
		  gradients_to_variables: A list of gradient to variable pairs (tuples).
		  max_norm: the maximum norm value.
		
		Returns:
		  A list of clipped gradient to variable pairs.
	**/
	static public function clip_gradient_norms(gradients_to_variables:Dynamic, max_norm:Dynamic):Dynamic;
	/**
		Creates an `Operation` that evaluates the gradients and returns the loss.
		
		Args:
		  total_loss: A `Tensor` representing the total loss.
		  optimizer: A tf.Optimizer to use for computing the gradients.
		  global_step: A `Tensor` representing the global step variable. If left as
		    `_USE_GLOBAL_STEP`, then tf.contrib.framework.global_step() is used.
		  update_ops: An optional list of updates to execute. If `update_ops` is
		    `None`, then the update ops are set to the contents of the
		    `tf.GraphKeys.UPDATE_OPS` collection. If `update_ops` is not `None`, but
		    it doesn't contain all of the update ops in `tf.GraphKeys.UPDATE_OPS`,
		    a warning will be displayed.
		  variables_to_train: an optional list of variables to train. If None, it will
		    default to all tf.trainable_variables().
		  transform_grads_fn: A function which takes a single argument, a list of
		    gradient to variable pairs (tuples), performs any requested gradient
		    updates, such as gradient clipping or multipliers, and returns the updated
		    list.
		  summarize_gradients: Whether or not add summaries for each gradient.
		  gate_gradients: How to gate the computation of gradients. See tf.Optimizer.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: Whether or not to try colocating the gradients
		    with the ops that generated them.
		  check_numerics: Whether or not we apply check_numerics.
		
		Returns:
		  A `Tensor` that when evaluated, computes the gradients and returns the total
		    loss value.
	**/
	static public function create_train_op(total_loss:Dynamic, optimizer:Dynamic, ?global_step:Dynamic, ?update_ops:Dynamic, ?variables_to_train:Dynamic, ?transform_grads_fn:Dynamic, ?summarize_gradients:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?check_numerics:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Multiply specified gradients.
		
		Args:
		  grads_and_vars: A list of gradient to variable pairs (tuples).
		  gradient_multipliers: A map from either `Variables` or `Variable` op names
		    to the coefficient by which the associated gradient should be scaled.
		
		Returns:
		  The updated list of gradient to variable pairs.
		
		Raises:
		  ValueError: If `grads_and_vars` is not a list or if `gradient_multipliers`
		  is empty or None or if `gradient_multipliers` is not a dictionary.
	**/
	static public function multiply_gradients(grads_and_vars:Dynamic, gradient_multipliers:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs the training loop.
		
		Args:
		  train_op: A `Tensor` that, when executed, will apply the gradients and
		    return the loss value.
		  logdir: The directory where the graph and checkpoints are saved.
		  master: The URL of the master.
		  is_chief: Specifies whether or not the training is being run by the primary
		    replica during replica training.
		  scaffold: An tf.train.Scaffold instance.
		  hooks: List of `tf.train.SessionRunHook` callbacks which are run inside the
		    training loop.
		  chief_only_hooks: List of `tf.train.SessionRunHook` instances which are run
		    inside the training loop for the chief trainer only.
		  save_checkpoint_secs: The frequency, in seconds, that a checkpoint is saved
		    using a default checkpoint saver. If `save_checkpoint_secs` is set to
		    `None`, then the default checkpoint saver isn't used.
		  save_summaries_steps: The frequency, in number of global steps, that the
		    summaries are written to disk using a default summary saver. If
		    `save_summaries_steps` is set to `None`, then the default summary saver
		    isn't used.
		  config: An instance of `tf.ConfigProto`.
		
		Returns:
		  the value of the loss function after training.
		
		Raises:
		  ValueError: if `logdir` is `None` and either `save_checkpoint_secs` or
		  `save_summaries_steps` are `None.
	**/
	static public function train(train_op:Dynamic, logdir:Dynamic, ?master:Dynamic, ?is_chief:Dynamic, ?scaffold:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?config:Dynamic):Dynamic;
}