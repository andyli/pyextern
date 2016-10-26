/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.mvn;
@:pythonImport("tensorflow.contrib.distributions.python.ops.mvn") extern class Mvn_Module {
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
		Batched KL divergence `KL(mvn_a || mvn_b)` for multivariate normals.
		
		With `X`, `Y` both multivariate normals in `R^k` with means `mu_x`, `mu_y` and
		covariance `C_x`, `C_y` respectively,
		
		```
		KL(X || Y) = 0.5 * ( T + Q + - k + L ),
		T := trace(C_b^{-1} C_a),
		Q := (mu_b - mu_a)^T C_b^{-1} (mu_b - mu_a),
		L := Log[Det(C_b)] - Log[Det(C_a)]
		```
		
		This `Op` computes the trace by solving `C_b^{-1} C_a`.  Although efficient
		methods for solving systems with `C_b` may be available, a dense version of
		(the square root of) `C_a` is used, so performance is `O(B s k^2)` where `B`
		is the batch size, and `s` is the cost of solving `C_b x = y` for vectors `x`
		and `y`.
		
		Args:
		  mvn_a:  Instance of subclass of `MultivariateNormalOperatorPD`.
		  mvn_b:  Instance of subclass of `MultivariateNormalOperatorPD`.
		  name:  (optional) name to use for created ops.  Default "kl_mvn_mvn".
		
		Returns:
		  Batchwise `KL(mvn_a || mvn_b)`.
	**/
	static public function _kl_mvn_mvn_brute_force(mvn_a:Dynamic, mvn_b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var kl_classes : Dynamic;
	static public var print_function : Dynamic;
}