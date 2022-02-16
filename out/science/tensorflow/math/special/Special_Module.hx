/* This file is generated, do not edit! */
package tensorflow.math.special;
@:pythonImport("tensorflow.math.special") extern class Special_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the Bessel i0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		It is preferable to use the numerically stabler function `i0e(x)` instead.
		
		>>> tf.math.special.bessel_i0([-1., -0.5, 0.5, 1.]).numpy()
		array([1.26606588, 1.06348337, 1.06348337, 1.26606588], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0
		@end_compatibility
	**/
	static public function bessel_i0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i0e function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		>>> tf.math.special.bessel_i0e([-1., -0.5, 0.5, 1.]).numpy()
		array([0.46575961, 0.64503527, 0.64503527, 0.46575961], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i0e
		@end_compatibility
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i0e(x.values, ...), x.dense_shape)`
	**/
	static public function bessel_i0e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `i1e(x)` instead.
		
		>>> tf.math.special.bessel_i1([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.5651591 , -0.25789431,  0.25789431,  0.5651591 ], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1
		@end_compatibility
	**/
	static public function bessel_i1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel i1e function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_i1e([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.20791042, -0.15642083,  0.15642083,  0.20791042], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.i1e
		@end_compatibility
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.bessel_i1e(x.values, ...), x.dense_shape)`
	**/
	static public function bessel_i1e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel j0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		>>> tf.math.special.bessel_j0([0.5, 1., 2., 4.]).numpy()
		array([ 0.93846981,  0.76519769,  0.22389078, -0.39714981], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.j0
		@end_compatibility
	**/
	static public function bessel_j0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel j1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_j1([0.5, 1., 2., 4.]).numpy()
		array([ 0.24226846,  0.44005059,  0.57672481, -0.06604333], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.j1
		@end_compatibility
	**/
	static public function bessel_j1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel k0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		It is preferable to use the numerically stabler function `k0e(x)` instead.
		
		>>> tf.math.special.bessel_k0([0.5, 1., 2., 4.]).numpy()
		array([0.92441907, 0.42102444, 0.11389387, 0.01115968], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.k0
		@end_compatibility
	**/
	static public function bessel_k0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel k0e function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		>>> tf.math.special.bessel_k0e([0.5, 1., 2., 4.]).numpy()
		array([1.52410939, 1.14446308, 0.84156822, 0.60929767], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.k0e
		@end_compatibility
	**/
	static public function bessel_k0e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel k1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `k1e(x)` instead.
		
		>>> tf.math.special.bessel_k1([0.5, 1., 2., 4.]).numpy()
		array([1.65644112, 0.60190723, 0.13986588, 0.0124835 ], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.k1
		@end_compatibility
	**/
	static public function bessel_k1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel k1e function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_k1e([0.5, 1., 2., 4.]).numpy()
		array([2.73100971, 1.63615349, 1.03347685, 0.68157595], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.k1e
		@end_compatibility
	**/
	static public function bessel_k1e(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel y0 function of `x` element-wise.
		
		Modified Bessel function of order 0.
		
		>>> tf.math.special.bessel_y0([0.5, 1., 2., 4.]).numpy()
		array([-0.44451873,  0.08825696,  0.51037567, -0.01694074], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.y0
		@end_compatibility
	**/
	static public function bessel_y0(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Bessel y1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		>>> tf.math.special.bessel_y1([0.5, 1., 2., 4.]).numpy()
		array([-1.47147239, -0.78121282, -0.10703243,  0.39792571], dtype=float32)
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.y1
		@end_compatibility
	**/
	static public function bessel_y1(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Dawson's integral of `x` element-wise.
		
		Dawson's integral is defined as `exp(-x**2)` times the integral of
		`exp(t**2)` from `0` to `x`, with the domain of definition all real numbers.
		
		Dawson's function is odd.
		>>> tf.math.special.dawsn([-1., -0.5, 0.5, 1.]).numpy()
		array([-0.5380795, -0.4244364, 0.4244364,  0.5380795], dtype=float32)
		
		This implementation is based off of the Cephes math library.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types:
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.dawsn
		@end_compatibility
	**/
	static public function dawsn(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Exponential integral of `x` element-wise.
		
		The Exponential integral is defined as the integral of `exp(t) / t` from
		`-inf` to `x`, with the domain of definition all positive real numbers.
		
		>>> tf.math.special.expint([1., 1.1, 2.1, 4.1]).numpy()
		array([ 1.8951179,  2.1673784,  5.3332353, 21.048464], dtype=float32)
		
		This implementation is based off of the Cephes math library.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types:
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.expi
		@end_compatibility
	**/
	static public function expint(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Fresnel's cosine integral of `x` element-wise.
		
		The Fresnel cosine integral is defined as the integral of `cos(t^2)` from
		`0` to `x`, with the domain of definition all real numbers.
		
		The Fresnel cosine integral is odd.
		>>> tf.math.special.fresnel_cos([-1., -0.1, 0.1, 1.]).numpy()
		array([-0.7798934 , -0.09999753,  0.09999753,  0.7798934 ], dtype=float32)
		
		This implementation is based off of the Cephes math library.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types:
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.fresnel second output.
		@end_compatibility
	**/
	static public function fresnel_cos(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Fresnel's sine integral of `x` element-wise.
		
		The Fresnel sine integral is defined as the integral of `sin(t^2)` from
		`0` to `x`, with the domain of definition all real numbers.
		
		>>> tf.math.special.fresnel_sin([-1., -0.1, 0.1, 1.]).numpy()
		array([-0.43825912, -0.00052359,  0.00052359,  0.43825912], dtype=float32)
		
		This implementation is based off of the Cephes math library.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types:
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.fresnel first output.
		@end_compatibility
	**/
	static public function fresnel_sin(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Spence's integral of `x` element-wise.
		
		Spence's integral is defined as the integral of `log(t) / (1 - t)` from
		`1` to `x`, with the domain of definition all non-negative real numbers.
		
		>>> tf.math.special.spence([0.5, 1., 2., 3.]).numpy()
		array([ 0.58224034,  0.        , -0.82246685, -1.4367464], dtype=float32)
		
		This implementation is based off of the Cephes math library.
		
		Args:
		  x: A `Tensor` or `SparseTensor`. Must be one of the following types:
		    `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor`, respectively. Has the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.spence
		@end_compatibility
	**/
	static public function spence(x:Dynamic, ?name:Dynamic):Dynamic;
}