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
		Find max_norm given norm and previous average.
	**/
	static public function _adaptive_max_norm(norm:Dynamic, std_factor:Dynamic, decay:Dynamic, global_step:Dynamic, epsilon:Dynamic, name:Dynamic):Dynamic;
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
	/**
		Adapt the clipping value using statistics on the norms.
		
		Implement adaptive gradient as presented in section 3.2.1 of
		https://arxiv.org/abs/1412.1602.
		
		Keeps a moving average of the mean and std of the log(norm) of the gradient.
		If the norm exceeds `exp(mean + std_factor*std)` then all gradients will be
		rescaled such that the global norm becomes `exp(mean)`.
		
		Args:
		  std_factor: Python scaler (or tensor).
		    `max_norm = exp(mean + std_factor*std)`
		  decay: The smoothing factor of the moving averages.
		  static_max_norm: If provided, will threshold the norm to this value as an
		    extra safety.
		  global_step: Optional global_step. If provided, `decay = decay*n/(n+1)`.
		    This provides a quicker adaptation of the mean for the first steps.
		  report_summary: If `True`, will add histogram summaries of the `max_norm`.
		  epsilon: Small value chosen to avoid zero variance.
		  name: The name for this operation is used to scope operations and summaries.
		
		Returns:
		  A function for applying gradient clipping.
	**/
	static public function adaptive_clipping_fn(?std_factor:Dynamic, ?decay:Dynamic, ?static_max_norm:Dynamic, ?global_step:Dynamic, ?report_summary:Dynamic, ?epsilon:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Given loss and parameters for optimizer, returns a training op.
		
		Various ways of passing optimizers include:
		
		- by string specifying the name of the optimizer. See OPTIMIZER_CLS_NAMES
		    for full list. E.g. `optimize_loss(..., optimizer='Adam')`.
		- by function taking learning rate `Tensor` as argument and returning an
		    `Optimizer` instance. E.g. `optimize_loss(...,
		    optimizer=lambda lr: tf.train.MomentumOptimizer(lr, momentum=0.5))`.
		  Alternatively, if `learning_rate` is `None`, the function takes no
		  arguments. E.g. `optimize_loss(..., learning_rate=None,
		    optimizer=lambda: tf.train.MomentumOptimizer(0.5, momentum=0.5))`.
		- by a subclass of `Optimizer` having a single-argument constructor
		    (the argument is the learning rate), such as AdamOptimizer or
		    AdagradOptimizer. E.g. `optimize_loss(...,
		    optimizer=tf.train.AdagradOptimizer)`.
		- by an instance of a subclass of `Optimizer`.
		    E.g., `optimize_loss(..., optimizer=tf.train.AdagradOptimizer(0.5))`.
		
		Args:
		  loss: Scalar `Tensor`.
		  global_step: Scalar int `Tensor`, step counter to update on each step
		               unless `increment_global_step` is `False`. If not supplied,
		               it will be fetched from the default graph (see
		               `tf.train.get_global_step` for details). If it has
		               not been created, no step will be incremented with each weight
		               update. `learning_rate_decay_fn` requires `global_step`.
		  learning_rate: float or `Tensor`, magnitude of update per each training
		                 step. Can be `None`.
		  optimizer: string, class or optimizer instance, used as trainer.
		             string should be name of optimizer, like 'SGD',
		               'Adam', 'Adagrad'. Full list in OPTIMIZER_CLS_NAMES constant.
		             class should be sub-class of `tf.Optimizer` that implements
		               `compute_gradients` and `apply_gradients` functions.
		             optimizer instance should be instantiation of `tf.Optimizer`
		               sub-class and have `compute_gradients` and `apply_gradients`
		               functions.
		  gradient_noise_scale: float or None, adds 0-mean normal noise scaled by this
		                        value.
		  gradient_multipliers: dict of variables or variable names to floats.
		                        If present, gradients for specified
		                        variables will be multiplied by given constant.
		  clip_gradients: float, callable or `None`. If float, is provided, a global
		    clipping is applied to prevent the norm of the gradient to exceed this
		    value. Alternatively, a callable can be provided e.g.: adaptive_clipping.
		    This callable takes a `list` of `(gradients, variables)` `tuple`s and
		    returns the same thing with the gradients modified.
		  learning_rate_decay_fn: function, takes `learning_rate` and `global_step`
		                          `Tensor`s, returns `Tensor`.
		                          Can be used to implement any learning rate decay
		                          functions.
		                          For example: `tf.train.exponential_decay`.
		                          Ignored if `learning_rate` is not supplied.
		  update_ops: list of update `Operation`s to execute at each step. If `None`,
		              uses elements of UPDATE_OPS collection. The order of execution
		              between `update_ops` and `loss` is non-deterministic.
		  variables: list of variables to optimize or
		             `None` to use all trainable variables.
		  name: The name for this operation is used to scope operations and summaries.
		  summaries: List of internal quantities to visualize on tensorboard. If not
		             set, the loss, the learning rate, and the global norm of the
		             gradients will be reported. The complete list of possible values
		             is in OPTIMIZER_SUMMARIES.
		  colocate_gradients_with_ops: If True, try colocating gradients with the
		                               corresponding op.
		  increment_global_step: Whether to increment `global_step`. If your model
		    calls `optimize_loss` multiple times per training step (e.g. to optimize
		    different parts of the model), use this arg to avoid incrementing
		    `global_step` more times than necessary.
		
		Returns:
		  Training op.
		
		Raises:
		  ValueError: if:
		      * `loss` is an invalid type or shape.
		      * `global_step` is an invalid type or shape.
		      * `learning_rate` is an invalid type or value.
		      * `optimizer` has the wrong type.
		      * `clip_gradients` is neither float nor callable.
		      * `learning_rate` and `learning_rate_decay_fn` are supplied, but no
		        `global_step` is available.
		      * `gradients` is empty.
	**/
	static public function optimize_loss(loss:Dynamic, global_step:Dynamic, learning_rate:Dynamic, optimizer:Dynamic, ?gradient_noise_scale:Dynamic, ?gradient_multipliers:Dynamic, ?clip_gradients:Dynamic, ?learning_rate_decay_fn:Dynamic, ?update_ops:Dynamic, ?variables:Dynamic, ?name:Dynamic, ?summaries:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?increment_global_step:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}