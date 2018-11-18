/* This file is generated, do not edit! */
package tensorflow.contrib.constrained_optimization.python.swap_regret_optimizer;
@:pythonImport("tensorflow.contrib.constrained_optimization.python.swap_regret_optimizer") extern class Swap_regret_optimizer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the maximal right-eigenvector of `matrix` using the power method.
		
		Args:
		  matrix: 2D Tensor, the matrix of which we will find the maximal
		    right-eigenvector.
		  epsilon: nonnegative float, if two iterations of the power method differ (in
		    L2 norm) by no more than epsilon, we will terminate.
		  maximum_iterations: nonnegative int, if we perform this many iterations, we
		    will terminate.
		
		Result:
		  The maximal right-eigenvector of `matrix`.
		
		Raises:
		  ValueError: If the `matrix` tensor is not floating-point, or if the
		    `epsilon` or `maximum_iterations` parameters violate their bounds.
	**/
	static public function _maximal_eigenvector_power_method(matrix:Dynamic, ?epsilon:Dynamic, ?maximum_iterations:Dynamic):Dynamic;
	/**
		Projects its argument onto the set of log-left-stochastic matrices.
		
		Args:
		  log_matrix: 2d square tensor, the element-wise logarithm of the matrix to
		    project.
		
		Returns:
		  The 2d square tensor that results from projecting exp(`matrix`) onto the set
		    of left-stochastic matrices w.r.t. the KL-divergence applied column-wise.
	**/
	static public function _project_log_stochastic_matrix_wrt_kl_divergence(log_matrix:Dynamic):Dynamic;
	/**
		Projects its argument onto the set of left-stochastic matrices.
		
		This algorithm is O(n^3) at worst, where `matrix` is n*n. It can be done in
		O(n^2 * log(n)) time by sorting each column (and maybe better with a different
		algorithm), but the algorithm implemented here is easier to implement in
		TensorFlow.
		
		Args:
		  matrix: 2d square tensor, the matrix to project.
		
		Returns:
		  The 2d square tensor that results from projecting `matrix` onto the set of
		    left-stochastic matrices w.r.t. the Euclidean norm applied column-wise
		    (i.e. the Frobenius norm).
		
		Raises:
		  ValueError: if the `matrix` tensor is not floating-point, does not have a
		    fully-known shape, or is not two-dimensional and square.
	**/
	static public function _project_stochastic_matrix_wrt_euclidean_norm(matrix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}