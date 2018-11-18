/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.math_utils;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.math_utils") extern class Math_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function batch_end_time(times:Dynamic):Dynamic;
	/**
		Compute powers of matrices, e.g. A^3 = matmul(matmul(A, A), A).
		
		Uses exponentiation by squaring, with O(log(p)) matrix multiplications to
		compute A^p.
		
		Args:
		  matrices: [batch size x N x N]
		  powers: Which integer power to raise each matrix to [batch size]
		Returns:
		  The matrices raised to their respective powers, same dimensions as the
		  "matrices" argument.
	**/
	static public function batch_matrix_pow(matrices:Dynamic, powers:Dynamic):Dynamic;
	static public function batch_start_time(times:Dynamic):Dynamic;
	/**
		Multiply a batch of matrices by a single matrix.
		
		Functionally equivalent to:
		tf.matmul(batch, array_ops.tile(gen_math_ops.expand_dims(matrix, 0),
		                               [array_ops.shape(batch)[0], 1, 1]),
		                adjoint_a=adj_x, adjoint_b=adj_y)
		
		Args:
		  batch: [batch_size x N x M] after optional transpose
		  matrix: [M x P] after optional transpose
		  adj_x: If true, transpose the second two dimensions of "batch" before
		      multiplying.
		  adj_y: If true, transpose "matrix" before multiplying.
		Returns:
		  [batch_size x N x P]
	**/
	static public function batch_times_matrix(batch:Dynamic, matrix:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic):Dynamic;
	/**
		Constructs block-diagonal matrices from a list of batched 2D tensors.
		
		Args:
		  matrices: A list of Tensors with shape [..., N_i, M_i] (i.e. a list of
		    matrices with the same batch dimension).
		  dtype: Data type to use. The Tensors in `matrices` must match this dtype.
		  name: A name for the returned op.
		Returns:
		  A matrix with the input matrices stacked along its main diagonal, having
		  shape [..., \sum_i N_i, \sum_i M_i].
	**/
	static public function block_diagonal(matrices:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enforce constraints on a covariance matrix to improve numerical stability.
		
		Args:
		  covariance_matrix: A [..., N, N] batch of covariance matrices.
		  maximum_variance_ratio: The maximum allowed ratio of two diagonal
		    entries. Any entries lower than the maximum entry divided by this ratio
		    will be set to that value.
		  minimum_variance: A floor for diagonal entries in the returned matrix.
		Returns:
		  A new covariance matrix with the requested constraints enforced. If the
		  input was positive definite, the output will be too.
	**/
	static public function clip_covariance(covariance_matrix:Dynamic, maximum_variance_ratio:Dynamic, minimum_variance:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Approximates a similar Cauchy distribution given a covariance matrix.
		
		Since Cauchy distributions do not have moments, entropy matching provides one
		way to set a Cauchy's scale parameter in a way that provides a similar
		distribution. The effect is dividing the standard deviation of an independent
		Gaussian by a constant very near 3.
		
		To set the scale of the Cauchy distribution, we first select the diagonals of
		`covariance`. Since this ignores cross terms, it overestimates the entropy of
		the Gaussian. For each of these variances, we solve for the Cauchy scale
		parameter which gives the same entropy as the Gaussian with that
		variance. This means setting the (univariate) Gaussian entropy
		    0.5 * ln(2 * variance * pi * e)
		equal to the Cauchy entropy
		    ln(4 * pi * scale)
		Solving, we get scale = sqrt(variance * (e / (8 pi))).
		
		Args:
		  covariance: A [batch size x N x N] batch of covariance matrices to produce
		      Cauchy scales for.
		Returns:
		  A [batch size x N] set of Cauchy scale parameters for each part of the batch
		  and each dimension of the input Gaussians.
	**/
	static public function entropy_matched_cauchy_scale(covariance:Dynamic):Dynamic;
	/**
		Compute a relatively uninformative prior for noise parameters.
		
		Helpful for avoiding noise over-estimation, where noise otherwise decreases
		very slowly during optimization.
		
		See:
		  Villegas, C. On the A Priori Distribution of the Covariance Matrix.
		  Ann. Math. Statist. 40 (1969), no. 3, 1098--1099.
		
		Args:
		  covariance: A covariance matrix.
		Returns:
		  For a [p x p] matrix:
		    log(det(covariance)^(-(p + 1) / 2))
	**/
	static public function log_noninformative_covariance_prior(covariance:Dynamic):Dynamic;
	/**
		Make a symmetric Toeplitz matrix from input array of values.
		
		Args:
		  inputs: a 3-D tensor of shape [num_blocks, block_size, block_size].
		  name: the name of the operation.
		
		Returns:
		  a symmetric Toeplitz matrix of shape
		    [num_blocks*block_size, num_blocks*block_size].
	**/
	static public function make_toeplitz_matrix(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Like batch_times_matrix, but with the multiplication order swapped.
	**/
	static public function matrix_times_batch(matrix:Dynamic, batch:Dynamic, ?adj_x:Dynamic, ?adj_y:Dynamic):Dynamic;
	/**
		Raise a single matrix to multiple powers.
	**/
	static public function matrix_to_powers(matrix:Dynamic, powers:Dynamic):Dynamic;
	/**
		Computes \sum_{i=0}^{N-1} A^i B (A^i)^T for N=0..(array_size + 1).
		
		Args:
		  array_size: The number of non-trivial sums to pre-compute.
		  power_matrix: The "A" matrix above.
		  multiplier: The "B" matrix above
		Returns:
		  A Tensor with S[N] = \sum_{i=0}^{N-1} A^i B (A^i)^T
		    S[0] is the zero matrix
		    S[1] is B
		    S[2] is A B A^T + B
		    ...and so on
	**/
	static public function power_sums_tensor(array_size:Dynamic, power_matrix:Dynamic, multiplier:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Create batch versions of state.
		
		Takes a list of Tensors, adds a batch dimension, and replicates
		batch_size times across that batch dimension. Used to replicate the
		non-batch state returned by get_start_state in define_loss.
		
		Args:
		  start_state: Model-defined state to replicate.
		  batch_size: Batch dimension for data.
		Returns:
		  Replicated versions of the state.
	**/
	static public function replicate_state(start_state:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Constructs a positive definite matrix from an unconstrained input matrix.
		
		We want to keep the whole matrix on a log scale, but also allow off-diagonal
		elements to be negative, so the sign of off-diagonal elements is modeled
		separately from their magnitude (using the lower and upper triangles
		respectively). Specifically:
		
		for i < j, we have:
		  output_cholesky[i, j] = raw[j, i] / (abs(raw[j, i]) + 1) *
		      exp((off_diagonal_scale + overall_scale + raw[i, j]) / 2)
		
		output_cholesky[i, i] = exp((raw[i, i] + overall_scale) / 2)
		
		output = output_cholesky^T * output_cholesky
		
		where raw, off_diagonal_scale, and overall_scale are
		un-constrained real-valued variables. The resulting values are stable
		around zero due to the exponential (and the softsign keeps the function
		smooth).
		
		Args:
		  raw: A [..., M, M] Tensor.
		  off_diagonal_scale: A scalar or [...] shaped Tensor controlling the relative
		      scale of off-diagonal values in the output matrix.
		  overall_scale: A scalar or [...] shaped Tensor controlling the overall scale
		      of the output matrix.
		Returns:
		  The `output` matrix described above, a [..., M, M] positive definite matrix.
	**/
	static public function sign_magnitude_positive_definite(raw:Dynamic, ?off_diagonal_scale:Dynamic, ?overall_scale:Dynamic):Dynamic;
	/**
		Construct covariance matrices via transformations from input_vectors.
		
		Args:
		  input_vectors: A [batch size x input size] batch of vectors to transform.
		  matrix_size: An integer indicating one dimension of the (square) output
		      matrix.
		Returns:
		  A [batch size x matrix_size x matrix_size] batch of covariance matrices.
	**/
	static public function transform_to_covariance_matrices(input_vectors:Dynamic, matrix_size:Dynamic):Dynamic;
	/**
		Construct a Variable-parameterized positive definite matrix.
		
		Useful for parameterizing covariance matrices.
		
		Args:
		  size: The size of the main diagonal, the returned matrix having shape [size
		      x size].
		  name: The name to use when defining variables and ops.
		  dtype: The floating point data type to use.
		  initial_diagonal_values: A Tensor with shape [size] with initial values for
		      the diagonal values of the returned matrix. Must be positive.
		  initial_overall_scale_log: Initial value of the bias term for every element
		      of the matrix in log space.
		Returns:
		  A Variable-parameterized covariance matrix with shape [size x size].
	**/
	static public function variable_covariance_matrix(size:Dynamic, name:Dynamic, dtype:Dynamic, ?initial_diagonal_values:Dynamic, ?initial_overall_scale_log:Dynamic):Dynamic;
}