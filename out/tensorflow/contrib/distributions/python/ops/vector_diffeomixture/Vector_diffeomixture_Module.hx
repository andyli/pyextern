/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.vector_diffeomixture;
@:pythonImport("tensorflow.contrib.distributions.python.ops.vector_diffeomixture") extern class Vector_diffeomixture_Module {
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
		Adds inputs; interprets `None` as zero. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function add(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Concatenates input vectors, statically if possible. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function concat_vectors(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper to infer batch_shape and event_shape. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function determine_batch_event_shapes(grid:Dynamic, endpoint_affine:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Helper which interpolates between two locs. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function interpolate_loc(grid:Dynamic, loc:Dynamic):Dynamic;
	/**
		Helper which interpolates between two scales. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function interpolate_scale(grid:Dynamic, scale:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function linop_scale(w:Dynamic, op:Dynamic):Dynamic;
	/**
		Helper which checks validity of `loc` and `scale` init args. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function maybe_check_quadrature_param(param:Dynamic, name:Dynamic, validate_args:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Use Gauss-Hermite quadrature to form quadrature on `K - 1` simplex. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		A `SoftmaxNormal` random variable `Y` may be generated via
		
		```
		Y = SoftmaxCentered(X),
		X = Normal(normal_loc, normal_scale)
		```
		
		Note: for a given `quadrature_size`, this method is generally less accurate
		than `quadrature_scheme_softmaxnormal_quantiles`.
		
		Args:
		  normal_loc: `float`-like `Tensor` with shape `[b1, ..., bB, K-1]`, B>=0.
		    The location parameter of the Normal used to construct the SoftmaxNormal.
		  normal_scale: `float`-like `Tensor`. Broadcastable with `normal_loc`.
		    The scale parameter of the Normal used to construct the SoftmaxNormal.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    convex combination of affine parameters for `K` components.
		    `grid[..., :, n]` is the `n`-th grid point, living in the `K - 1` simplex.
		  probs:  Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    associated with each grid point.
	**/
	static public function quadrature_scheme_softmaxnormal_gauss_hermite(normal_loc:Dynamic, normal_scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use SoftmaxNormal quantiles to form quadrature on `K - 1` simplex. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		A `SoftmaxNormal` random variable `Y` may be generated via
		
		```
		Y = SoftmaxCentered(X),
		X = Normal(normal_loc, normal_scale)
		```
		
		Args:
		  normal_loc: `float`-like `Tensor` with shape `[b1, ..., bB, K-1]`, B>=0.
		    The location parameter of the Normal used to construct the SoftmaxNormal.
		  normal_scale: `float`-like `Tensor`. Broadcastable with `normal_loc`.
		    The scale parameter of the Normal used to construct the SoftmaxNormal.
		  quadrature_size: Python `int` scalar representing the number of quadrature
		    points.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  name: Python `str` name prefixed to Ops created by this class.
		
		Returns:
		  grid: Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    convex combination of affine parameters for `K` components.
		    `grid[..., :, n]` is the `n`-th grid point, living in the `K - 1` simplex.
		  probs:  Shape `[b1, ..., bB, K, quadrature_size]` `Tensor` representing the
		    associated with each grid point.
	**/
	static public function quadrature_scheme_softmaxnormal_quantiles(normal_loc:Dynamic, normal_scale:Dynamic, quadrature_size:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Equivalent to tf.nn.softmax but works around b/70297725. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function softmax(x:Dynamic, axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the outer-product of a (batch of) vector, i.e., x.T x. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function vec_osquare(x:Dynamic):Dynamic;
}