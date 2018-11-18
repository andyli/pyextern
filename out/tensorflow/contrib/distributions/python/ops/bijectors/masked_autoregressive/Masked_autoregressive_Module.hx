/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.masked_autoregressive;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.masked_autoregressive") extern class Masked_autoregressive_Module {
	static public var MASK_EXCLUSIVE : Dynamic;
	static public var MASK_INCLUSIVE : Dynamic;
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
		Clips input while leaving gradient unaltered. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function _clip_by_value_preserve_grad(x:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate the mask for building an autoregressive dense layer. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function _gen_mask(num_blocks:Dynamic, n_in:Dynamic, n_out:Dynamic, ?mask_type:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Generate the slices for building an autoregressive mask. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function _gen_slices(num_blocks:Dynamic, n_in:Dynamic, n_out:Dynamic, ?mask_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Build the Masked Autoregressive Density Estimator (Germain et al., 2015). (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		This will be wrapped in a make_template to ensure the variables are only
		created once. It takes the input and returns the `loc` ("mu" in [Germain et
		al. (2015)][1]) and `log_scale` ("alpha" in [Germain et al. (2015)][1]) from
		the MADE network.
		
		Warning: This function uses `masked_dense` to create randomly initialized
		`tf.Variables`. It is presumed that these will be fit, just as you would any
		other neural architecture which uses `tf.layers.dense`.
		
		#### About Hidden Layers
		
		Each element of `hidden_layers` should be greater than the `input_depth`
		(i.e., `input_depth = tf.shape(input)[-1]` where `input` is the input to the
		neural network). This is necessary to ensure the autoregressivity property.
		
		#### About Clipping
		
		This function also optionally clips the `log_scale` (but possibly not its
		gradient). This is useful because if `log_scale` is too small/large it might
		underflow/overflow making it impossible for the `MaskedAutoregressiveFlow`
		bijector to implement a bijection. Additionally, the `log_scale_clip_gradient`
		`bool` indicates whether the gradient should also be clipped. The default does
		not clip the gradient; this is useful because it still provides gradient
		information (for fitting) yet solves the numerical stability problem. I.e.,
		`log_scale_clip_gradient = False` means
		`grad[exp(clip(x))] = grad[x] exp(clip(x))` rather than the usual
		`grad[clip(x)] exp(clip(x))`.
		
		Args:
		  hidden_layers: Python `list`-like of non-negative integer, scalars
		    indicating the number of units in each hidden layer. Default: `[512, 512].
		  shift_only: Python `bool` indicating if only the `shift` term shall be
		    computed. Default: `False`.
		  activation: Activation function (callable). Explicitly setting to `None`
		    implies a linear activation.
		  log_scale_min_clip: `float`-like scalar `Tensor`, or a `Tensor` with the
		    same shape as `log_scale`. The minimum value to clip by. Default: -5.
		  log_scale_max_clip: `float`-like scalar `Tensor`, or a `Tensor` with the
		    same shape as `log_scale`. The maximum value to clip by. Default: 3.
		  log_scale_clip_gradient: Python `bool` indicating that the gradient of
		    `tf.clip_by_value` should be preserved. Default: `False`.
		  name: A name for ops managed by this function. Default:
		    "masked_autoregressive_default_template".
		  *args: `tf.layers.dense` arguments.
		  **kwargs: `tf.layers.dense` keyword arguments.
		
		Returns:
		  shift: `Float`-like `Tensor` of shift terms (the "mu" in
		    [Germain et al.  (2015)][1]).
		  log_scale: `Float`-like `Tensor` of log(scale) terms (the "alpha" in
		    [Germain et al. (2015)][1]).
		
		Raises:
		  NotImplementedError: if rightmost dimension of `inputs` is unknown prior to
		    graph execution.
		
		#### References
		
		[1]: Mathieu Germain, Karol Gregor, Iain Murray, and Hugo Larochelle. MADE:
		     Masked Autoencoder for Distribution Estimation. In _International
		     Conference on Machine Learning_, 2015. https://arxiv.org/abs/1502.03509
	**/
	static public function masked_autoregressive_default_template(hidden_layers:Dynamic, ?shift_only:Dynamic, ?activation:Dynamic, ?log_scale_min_clip:Dynamic, ?log_scale_max_clip:Dynamic, ?log_scale_clip_gradient:Dynamic, ?name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A autoregressively masked dense layer. Analogous to `tf.layers.dense`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		See [Germain et al. (2015)][1] for detailed explanation.
		
		Arguments:
		  inputs: Tensor input.
		  units: Python `int` scalar representing the dimensionality of the output
		    space.
		  num_blocks: Python `int` scalar representing the number of blocks for the
		    MADE masks.
		  exclusive: Python `bool` scalar representing whether to zero the diagonal of
		    the mask, used for the first layer of a MADE.
		  kernel_initializer: Initializer function for the weight matrix.
		    If `None` (default), weights are initialized using the
		    `tf.glorot_random_initializer`.
		  reuse: Python `bool` scalar representing whether to reuse the weights of a
		    previous layer by the same name.
		  name: Python `str` used to describe ops managed by this function.
		  *args: `tf.layers.dense` arguments.
		  **kwargs: `tf.layers.dense` keyword arguments.
		
		Returns:
		  Output tensor.
		
		Raises:
		  NotImplementedError: if rightmost dimension of `inputs` is unknown prior to
		    graph execution.
		
		#### References
		
		[1]: Mathieu Germain, Karol Gregor, Iain Murray, and Hugo Larochelle. MADE:
		     Masked Autoencoder for Distribution Estimation. In _International
		     Conference on Machine Learning_, 2015. https://arxiv.org/abs/1502.03509
	**/
	static public function masked_dense(inputs:Dynamic, units:Dynamic, ?num_blocks:Dynamic, ?exclusive:Dynamic, ?kernel_initializer:Dynamic, ?reuse:Dynamic, ?name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}