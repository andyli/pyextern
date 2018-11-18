/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.poisson_lognormal;
@:pythonImport("tensorflow.contrib.distributions.python.ops.poisson_lognormal") extern class Poisson_lognormal_Module {
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
		Concatenates input vectors, statically if possible. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function concat_vectors(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Use Gauss-Hermite quadrature to form quadrature on positive-reals. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Note: for a given `quadrature_size`, this method is generally less accurate
		than `quadrature_scheme_lognormal_quantiles`.
		
		Args:
		  loc: `float`-like (batch of) scalar `Tensor`; the location parameter of
		    the LogNormal prior.
		  scale: `float`-like (batch of) scalar `Tensor`; the scale parameter of
		    the LogNormal prior.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: (Batch of) length-`quadrature_size` vectors representing the
		    `log_rate` parameters of a `Poisson`.
		  probs: (Batch of) length-`quadrature_size` vectors representing the
		    weight associate with each `grid` value.
	**/
	static public function quadrature_scheme_lognormal_gauss_hermite(loc:Dynamic, scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use LogNormal quantiles to form quadrature on positive-reals. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  loc: `float`-like (batch of) scalar `Tensor`; the location parameter of
		    the LogNormal prior.
		  scale: `float`-like (batch of) scalar `Tensor`; the scale parameter of
		    the LogNormal prior.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: (Batch of) length-`quadrature_size` vectors representing the
		    `log_rate` parameters of a `Poisson`.
		  probs: (Batch of) length-`quadrature_size` vectors representing the
		    weight associate with each `grid` value.
	**/
	static public function quadrature_scheme_lognormal_quantiles(loc:Dynamic, scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
}