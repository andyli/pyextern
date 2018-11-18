/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.estimator.python.stargan_estimator_impl;
@:pythonImport("tensorflow.contrib.gan.python.estimator.python.stargan_estimator_impl") extern class Stargan_estimator_impl_Module {
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
		Get the EstimatorSpec for the current mode.
	**/
	static public function _get_estimator_spec(mode:Dynamic, gan_model:Dynamic, loss_fn:Dynamic, get_eval_metric_ops_fn:Dynamic, generator_optimizer:Dynamic, discriminator_optimizer:Dynamic, ?get_hooks_fn:Dynamic):Dynamic;
	/**
		Return an EstimatorSpec for the eval case.
	**/
	static public function _get_eval_estimator_spec(gan_model:Dynamic, gan_loss:Dynamic, ?get_eval_metric_ops_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes the StarGANModel tuple.
	**/
	static public function _get_gan_model(mode:Dynamic, generator_fn:Dynamic, discriminator_fn:Dynamic, input_data:Dynamic, input_data_domain_label:Dynamic, add_summaries:Dynamic, ?generator_scope:Dynamic):Dynamic;
	/**
		Return an EstimatorSpec for the train case.
	**/
	static public function _get_train_estimator_spec(gan_model:Dynamic, gan_loss:Dynamic, generator_optimizer:Dynamic, discriminator_optimizer:Dynamic, get_hooks_fn:Dynamic, ?train_op_fn:Dynamic):Dynamic;
	/**
		Construct a `StarGANModel`, and optionally pass in `mode`.
	**/
	static public function _make_gan_model(generator_fn:Dynamic, discriminator_fn:Dynamic, input_data:Dynamic, input_data_domain_label:Dynamic, generator_scope:Dynamic, add_summaries:Dynamic, mode:Dynamic):Dynamic;
	/**
		Make a `StarGANModel` from just the generator.
	**/
	static public function _make_prediction_gan_model(input_data:Dynamic, input_data_domain_label:Dynamic, generator_fn:Dynamic, generator_scope:Dynamic):Dynamic;
	static public var _summary_type_map : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		StarGAN Estimator prediction input_fn wrapper.
		
		Since estimator will disregard the "label" variable pass to the model, we will
		use a wrapper to pack the (feature, label) tuple as feature passed to the
		model.
		
		Args:
		  fn: input_fn for the prediction.
		
		Returns:
		  A tuple ((feature, label), None) where the second element is the dummy label
		  to be disregarded and the first element is the true input to the estimator.
	**/
	static public function stargan_prediction_input_fn_wrapper(fn:Dynamic):Dynamic;
}