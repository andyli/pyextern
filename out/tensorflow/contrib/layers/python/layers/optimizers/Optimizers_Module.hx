/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.optimizers;
@:pythonImport("tensorflow.contrib.layers.python.layers.optimizers") extern class Optimizers_Module {
	static public var OPTIMIZER_CLS_NAMES : Dynamic;
	static public var OPTIMIZER_SUMMARIES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds scaled noise from a 0-mean normal distribution to gradients.
	**/
	static public function _add_scaled_noise_to_gradients(grads_and_vars:Dynamic, gradient_noise_scale:Dynamic):Dynamic;
	/**
		Clips gradients by global norm.
	**/
	static public function _clip_gradients_by_norm(grads_and_vars:Dynamic, clip_gradients:Dynamic):Dynamic;
	/**
		Multiply specified gradients.
	**/
	static public function _multiply_gradients(grads_and_vars:Dynamic, gradient_multipliers:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Given loss and parameters for optimizer, returns a training op.
		
		Args:
		  loss: Tensor, 0 dimensional.
		  global_step: Tensor, step counter for each update.
		  learning_rate: float or Tensor, magnitude of update per each training step.
		  optimizer: string, class or optimizer instance, used as trainer.
		             string should be name of optimizer, like 'SGD',
		               'Adam', 'Adagrad'. Full list in OPTIMIZER_CLS_NAMES constant.
		             class should be sub-class of tf.Optimizer that implements
		               `compute_gradients` and `apply_gradients` functions.
		             optimizer instance should be instantion of tf.Optimizer sub-class
		               and have `compute_gradients` and `apply_gradients` functions.
		  gradient_noise_scale: float or None, adds 0-mean normal noise scaled by this
		                        value.
		  gradient_multipliers: dict of variables or variable names to floats.
		                        If present, gradients for specified
		                        variables will be multiplied by given constant.
		  clip_gradients: float or `None`, clips gradients by this value.
		  moving_average_decay: Deprecated. float or None, takes into account previous
		                        loss to make learning smoother due to outliers.
		  learning_rate_decay_fn: function, takes `learning_rate` and `global_step`
		                          `Tensor`s, returns `Tensor`.
		                          Can be used to implement any learning rate decay
		                          functions.
		                          For example: tf.train.exponential_decay.
		  update_ops: list of update `Operation`s to execute at each step. If `None`,
		              uses elements of UPDATE_OPS collection.
		  variables: list of variables to optimize or
		             `None` to use all trainable variables.
		  name: The name for this operation is used to scope operations and summaries.
		  summaries: List of internal quantities to visualize on tensorboard. If not
		             set only the loss and the learning rate will be reported. The
		             complete list is in OPTIMIZER_SUMMARIES.
		
		Returns:
		  Training op.
		
		Raises:
		  ValueError: if optimizer is wrong type.
	**/
	static public function optimize_loss(loss:Dynamic, global_step:Dynamic, learning_rate:Dynamic, optimizer:Dynamic, ?gradient_noise_scale:Dynamic, ?gradient_multipliers:Dynamic, ?clip_gradients:Dynamic, ?moving_average_decay:Dynamic, ?learning_rate_decay_fn:Dynamic, ?update_ops:Dynamic, ?variables:Dynamic, ?name:Dynamic, ?summaries:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}