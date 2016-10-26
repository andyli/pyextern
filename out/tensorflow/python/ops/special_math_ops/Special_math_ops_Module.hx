/* This file is generated, do not edit! */
package tensorflow.python.ops.special_math_ops;
@:pythonImport("tensorflow.python.ops.special_math_ops") extern class Special_math_ops_Module {
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
		Computes `ln(|Beta(x)|)`, reducing along the last dimension.
		
		Given one-dimensional `z = [z_0,...,z_{K-1}]`, we define
		
		```Beta(z) = \prod_j Gamma(z_j) / Gamma(\sum_j z_j)```
		
		And for `n + 1` dimensional `x` with shape `[N1, ..., Nn, K]`, we define
		`lbeta(x)[i1, ..., in] = Log(|Beta(x[i1, ..., in, :])|)`.  In other words,
		the last dimension is treated as the `z` vector.
		
		Note that if `z = [u, v]`, then
		`Beta(z) = int_0^1 t^{u-1} (1 - t)^{v-1} dt`, which defines the traditional
		bivariate beta function.
		
		Args:
		  x: A rank `n + 1` `Tensor` with type `float`, or `double`.
		  name: A name for the operation (optional).
		
		Returns:
		  The logarithm of `|Beta(x)|` reducing along the last dimension.
		
		Raises:
		  ValueError:  If `x` is empty with rank one or less.
	**/
	static public function lbeta(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}