/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.estimator.python.head;
@:pythonImport("tensorflow.contrib.gan.python.estimator.python.head") extern class Head_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a `GANHead`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.contrib.gan.GANEstimator without explicitly making a GANHead.
		
		Args:
		  generator_loss_fn: A TFGAN loss function for the generator. Takes a
		    `GANModel` and returns a scalar.
		  discriminator_loss_fn: Same as `generator_loss_fn`, but for the
		    discriminator.
		  generator_optimizer: The optimizer for generator updates.
		  discriminator_optimizer: Same as `generator_optimizer`, but for the
		    discriminator updates.
		  use_loss_summaries: If `True`, add loss summaries. If `False`, does not.
		    If `None`, uses defaults.
		  get_hooks_fn: A function that takes a `GANTrainOps` tuple and returns a
		    list of hooks.
		  get_eval_metric_ops_fn: A function that takes a `GANModel`, and returns a
		    dict of metric results keyed by name. The output of this function is
		    passed into `tf.estimator.EstimatorSpec` during evaluation.
		  name: name of the head. If provided, summary and metrics keys will be
		    suffixed by `"/" + name`.
		
		Returns:
		  An instance of `GANHead`.
	**/
	static public function gan_head(generator_loss_fn:Dynamic, discriminator_loss_fn:Dynamic, generator_optimizer:Dynamic, discriminator_optimizer:Dynamic, ?use_loss_summaries:Dynamic, ?get_hooks_fn:Dynamic, ?get_eval_metric_ops_fn:Dynamic, ?name:Dynamic):Dynamic;
}