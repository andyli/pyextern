/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.real_nvp;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.real_nvp") extern class Real_nvp_Module {
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Build a scale-and-shift function using a multi-layer neural network. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		This will be wrapped in a make_template to ensure the variables are only
		created once. It takes the `d`-dimensional input x[0:d] and returns the `D-d`
		dimensional outputs `loc` ("mu") and `log_scale` ("alpha").
		
		Arguments:
		  hidden_layers: Python `list`-like of non-negative integer, scalars
		    indicating the number of units in each hidden layer. Default: `[512, 512].
		  shift_only: Python `bool` indicating if only the `shift` term shall be
		    computed (i.e. NICE bijector). Default: `False`.
		  activation: Activation function (callable). Explicitly setting to `None`
		    implies a linear activation.
		  name: A name for ops managed by this function. Default:
		    "real_nvp_default_template".
		  *args: `tf.layers.dense` arguments.
		  **kwargs: `tf.layers.dense` keyword arguments.
		
		Returns:
		  shift: `Float`-like `Tensor` of shift terms ("mu" in
		    [Papamakarios et al.  (2016)][1]).
		  log_scale: `Float`-like `Tensor` of log(scale) terms ("alpha" in
		    [Papamakarios et al. (2016)][1]).
		
		Raises:
		  NotImplementedError: if rightmost dimension of `inputs` is unknown prior to
		    graph execution.
		
		#### References
		
		[1]: George Papamakarios, Theo Pavlakou, and Iain Murray. Masked
		     Autoregressive Flow for Density Estimation. In _Neural Information
		     Processing Systems_, 2017. https://arxiv.org/abs/1705.07057
	**/
	static public function real_nvp_default_template(hidden_layers:Dynamic, ?shift_only:Dynamic, ?activation:Dynamic, ?name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}