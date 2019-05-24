/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.mvn_linear_operator;
@:pythonImport("tensorflow.contrib.distributions.python.ops.mvn_linear_operator") extern class Mvn_linear_operator_Module {
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
		Batched KL divergence `KL(a || b)` for multivariate Normals. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		With `X`, `Y` both multivariate Normals in `R^k` with means `mu_a`, `mu_b` and
		covariance `C_a`, `C_b` respectively,
		
		```
		KL(a || b) = 0.5 * ( L - k + T + Q ),
		L := Log[Det(C_b)] - Log[Det(C_a)]
		T := trace(C_b^{-1} C_a),
		Q := (mu_b - mu_a)^T C_b^{-1} (mu_b - mu_a),
		```
		
		This `Op` computes the trace by solving `C_b^{-1} C_a`. Although efficient
		methods for solving systems with `C_b` may be available, a dense version of
		(the square root of) `C_a` is used, so performance is `O(B s k**2)` where `B`
		is the batch size, and `s` is the cost of solving `C_b x = y` for vectors `x`
		and `y`.
		
		Args:
		  a: Instance of `MultivariateNormalLinearOperator`.
		  b: Instance of `MultivariateNormalLinearOperator`.
		  name: (optional) name to use for created ops. Default "kl_mvn".
		
		Returns:
		  Batchwise `KL(a || b)`.
	**/
	static public function _kl_brute_force(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var _mvn_sample_note : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}