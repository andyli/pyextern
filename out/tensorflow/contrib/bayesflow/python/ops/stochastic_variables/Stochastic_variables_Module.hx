/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_variables;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_variables") extern class Stochastic_variables_Module {
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
		Custom variable getter for stochastic variables.
		
		`get_stochastic_variable` will create variables backing the parameters of a
		distribution, defined by `dist_cls`, and return a `StochasticTensor` which
		represents a sample from the backing distribution.
		
		Meant to be passed as the `custom_getter` to a `variable_scope`. Use
		`make_stochastic_variable_getter` to partially apply distribution-related
		args.
		
		Usage:
		
		```python
		
		sv = tf.contrib.bayesflow.stochastic_variables
		dist = tf.contrib.distributions
		
		with tf.variable_scope('my_scope',
		                       custom_getter=sv.make_stochastic_variable_getter(
		                           dist_cls=dist.NormalWithSoftplusSigma
		                           param_initializers={
		                             "sigma": lambda shape, dtype, pi: (
		                                 tf.constant(0.5, dtype=dtype, shape=shape))
		                           })):
		  v = tf.get_variable('my_var', (10, 20))
		```
		
		`v` is a `StochasticTensor`, which is a sample from a backing
		`NormalWithSoftplusSigma` distribution. Underneath, 2 variables have been
		created: `my_var_mu` and `my_var_sigma`. `my_var_sigma` has been appropriately
		constrained to be positive by the `NormalWithSoftplusSigma` constructor, and
		initialized to a value of 0.5, which results in a sigma of ~1 after the
		softplus. The sample will have shape `(10, 20)`.
		
		Args:
		  getter: original variable getter.
		  name: prefix for variable(s) backing distribution parameters.
		  shape: shape of the sample from the distribution (i.e. shape of the
		      returned `StochasticTensor`).
		  dist_cls: subclass of `Distribution` that implements `param_shapes`. Should
		      accept unconstrained parameters (e.g. `NormalWithSoftplusSigma` accepts
		      real-valued `sigma` and constrains it to be positive with `softplus`).
		  dist_kwargs: `dict` of kwargs to be forwarded to `dist_cls`.
		  param_initializers: `dict` from parameter name to initializer (see
		      `get_variable` for initializer docs). Will override `initializer` in
		      `kwargs`. `param_initializers` may contain initializers for only some of
		      the parameters. Those parameters that do not contain entries will be
		      initialized by `kwargs['initializer']`, if provided; otherwise, the
		      default initialization of `getter` will be used.
		  prior: instance of `Distribution` or a callable
		      `(TensorShape, dtype) => Distribution`. If provided, will be registered
		      as the prior for the `StochasticTensor` using
		      `variational_inference.register_prior`.
		  **kwargs: kwargs forwarded to `getter`.
		
		Returns:
		  `StochasticTensor`, which represents a sample from the backing distribution.
	**/
	static public function get_stochastic_variable(getter:Dynamic, name:Dynamic, ?shape:Dynamic, ?dist_cls:Dynamic, ?dist_kwargs:Dynamic, ?param_initializers:Dynamic, ?prior:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		`get_stochastic_variable` with args partially applied.
	**/
	static public function make_stochastic_variable_getter(dist_cls:Dynamic, ?dist_kwargs:Dynamic, ?param_initializers:Dynamic, ?prior:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}