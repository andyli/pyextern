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
	static public function _einsum_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Legacy implementation of einsum without using EinsumOp.
	**/
	static public function _einsum_v1(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for einsum() that splits/resolves inputs & outputs.
		
		Args:
		  equation: Equation string given as argument to einsum().
		  input_shapes: List of the shapes of all inputs given to einsum()
		
		Returns:
		  input_axis_labels, output_axis_labels where:
		    input_axis_labels: List of length len(input_shapes) of strings
		    representing the character label for each dimension of each given input,
		    resolving any broadcast (...) axes,
		  output_axis_labels: A string of character labels for each axes of output
		    tensor, filling in missing output subscripts and broadcast axes.
		
		Raises:
		  ValueError: If equation is in the uncorrect format, incorrect number of
		    inputs given or broadcast axes "..." or output axes could not be resolved.
	**/
	static public function _einsum_v1_parse_and_resolve_equation(equation:Dynamic, input_shapes:Dynamic):Dynamic;
	/**
		Helper for einsum() that computes the result of a two-argument einsum().
		
		Args:
		  t0: a `Tensor`
		  t0_axis_labels: a string of axis labels.  This string's length must equal
		    the rank of t0.
		  t1: a `Tensor`
		  t1_axis_labels: a string to axis labels.  This string's length must equal
		    the rank of t1.
		  axes_to_sum: set of labels of axes to be summed over
		
		Returns:
		  A `Tensor` whose elements are obtained by summing, over all axes in
		  `axes_to_sum`, the corresponding elements of `t0` and `t1`.
		
		  For example, if t0_axis_labels == 'abijk', t1_axis_labels == 'acjkl', and
		  axes_to_sum == {j,k}, this will return a tensor x where
		
		    out[a,b,c,i,l] = sum_j sum_k t0[a,b,i,j,k] * t1[a,c,j,k,l]
		
		Raises:
		  ValueError: if the rank of `t0` does not match the length of
		    `t0_axis_labels`, or that of `t1` does not match the length of
		    `t1_axis_labels`.
	**/
	static public function _einsum_v1_reduction(t0:Dynamic, t0_axis_labels:Dynamic, t1:Dynamic, t1_axis_labels:Dynamic, axes_to_sum:Dynamic):Dynamic;
	/**
		Implementation of einsum utilizing opt_einsum and EinsumOp.
	**/
	static public function _einsum_v2(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper which validates einsum equation and resolves input shapes.
	**/
	static public function _einsum_v2_parse_and_resolve_equation(equation:Dynamic, input_shapes:Dynamic):Dynamic;
	static public function _enclosing_tpu_context():Dynamic;
	/**
		Fallback implementation that supports summing an index over > 2 inputs.
	**/
	static public function _exponential_space_einsum_v1(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the (memoized) result of opt_einsum.contract_path.
	**/
	static public function _get_opt_einsum_contract_path(equation:Dynamic, shaped_inputs_tuple:Dynamic, optimize:Dynamic):Dynamic;
	/**
		Like get_shape().as_list(), but explicitly queries the shape of a tensor
		if necessary to ensure that the returned value contains no unknown value.
	**/
	static public function _get_shape(tensor:Dynamic):Dynamic;
	/**
		Like reshape(), but avoids creating a new tensor if possible.
	**/
	static public function _reshape_if_necessary(tensor:Dynamic, new_shape:Dynamic):Dynamic;
	/**
		Given list of tensor shape values, returns total size.
		If shape_values contains tensor values (which are results of
		array_ops.shape), then it returns a scalar tensor.
		If not, it returns an integer.
	**/
	static public function _total_size(shape_values:Dynamic):Dynamic;
	/**
		Like transpose(), but avoids creating a new tensor if possible.
	**/
	static public function _transpose_if_necessary(tensor:Dynamic, perm:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Tensor contraction over specified indices and outer product.
		
		Einsum allows defining Tensors by defining their element-wise computation.
		This computation is defined by `equation`, a shorthand form based on Einstein
		summation. As an example, consider multiplying two matrices A and B to form a
		matrix C.  The elements of C are given by:
		
		$$ C_{i,k} = \sum_j A_{i,j} B_{j,k} $$
		
		or
		
		```
		C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding einsum `equation` is:
		
		```
		ij,jk->ik
		```
		
		In general, to convert the element-wise equation into the `equation` string,
		use the following procedure (intermediate strings for matrix multiplication
		example provided in parentheses):
		
		1. remove variable names, brackets, and commas, (`ik = sum_j ij * jk`)
		2. replace "*" with ",", (`ik = sum_j ij , jk`)
		3. drop summation signs, and (`ik = ij, jk`)
		4. move the output to the right, while replacing "=" with "->". (`ij,jk->ik`)
		
		Note: If the output indices are not specified repeated indices are summed.
		So `ij,jk->ik` can be simplified to `ij,jk`.
		
		Many common operations can be expressed in this way.  For example:
		
		**Matrix multiplication**
		
		>>> m0 = tf.random.normal(shape=[2, 3])
		>>> m1 = tf.random.normal(shape=[3, 5])
		>>> e = tf.einsum('ij,jk->ik', m0, m1)
		>>> # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		Repeated indices are summed if the output indices are not specified.
		
		>>> e = tf.einsum('ij,jk', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		>>> print(e.shape)
		(2, 5)
		
		
		**Dot product**
		
		>>> u = tf.random.normal(shape=[5])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		>>> print(e.shape)
		()
		
		**Outer product**
		
		>>> u = tf.random.normal(shape=[3])
		>>> v = tf.random.normal(shape=[5])
		>>> e = tf.einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		>>> print(e.shape)
		(3, 5)
		
		**Transpose**
		
		>>> m = tf.ones(2,3)
		>>> e = tf.einsum('ij->ji', m0)  # output[j,i] = m0[i,j]
		>>> print(e.shape)
		(3, 2)
		
		**Diag**
		
		>>> m = tf.reshape(tf.range(9), [3,3])
		>>> diag = tf.einsum('ii->i', m)
		>>> print(diag.shape)
		(3,)
		
		**Trace**
		
		>>> # Repeated indices are summed.
		>>> trace = tf.einsum('ii', m)  # output[j,i] = trace(m) = sum_i m[i, i]
		>>> assert trace == sum(diag)
		>>> print(trace.shape)
		()
		
		**Batch matrix multiplication**
		
		>>> s = tf.random.normal(shape=[7,5,3])
		>>> t = tf.random.normal(shape=[7,3,2])
		>>> e = tf.einsum('bij,bjk->bik', s, t)
		>>> # output[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		>>> print(e.shape)
		(7, 5, 2)
		
		This method does not support broadcasting on named-axes. All axes with
		matching labels should have the same length. If you have length-1 axes,
		use `tf.squeseze` or `tf.reshape` to eliminate them.
		
		To write code that is agnostic to the number of indices in the input
		use an ellipsis. The ellipsis is a placeholder for "whatever other indices
		fit here".
		
		For example, to perform a NumPy-style broadcasting-batch-matrix multiplication
		where the matrix multiply acts on the last two axes of the input, use:
		
		>>> s = tf.random.normal(shape=[11, 7, 5, 3])
		>>> t = tf.random.normal(shape=[11, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Einsum **will** broadcast over axes covered by the ellipsis.
		
		>>> s = tf.random.normal(shape=[11, 1, 5, 3])
		>>> t = tf.random.normal(shape=[1, 7, 3, 2])
		>>> e =  tf.einsum('...ij,...jk->...ik', s, t)
		>>> print(e.shape)
		(11, 7, 5, 2)
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  **kwargs:
		    - optimize: Optimization strategy to use to find contraction path using
		      opt_einsum. Must be 'greedy', 'optimal', 'branch-2', 'branch-all' or
		        'auto'. (optional, default: 'greedy').
		    - name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - number of inputs or their shapes are inconsistent with `equation`.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional $z = [z_1,...,z_K]$, we define
		
		$$Beta(z) = \frac{\prod_j \Gamma(z_j)}{\Gamma(\sum_j z_j)},$$
		
		where $\Gamma$ is the gamma function.
		
		And for $n + 1$ dimensional $x$ with shape $[N_1, ..., N_n, K]$, we define
		
		$$lbeta(x)[i_1, ..., i_n] = \log{|Beta(x[i_1, ..., i_n, :])|}.$$
		
		In other words, the last dimension is treated as the $z$ vector.
		
		Note that if $z = [u, v]$, then
		
		$$Beta(z) = \frac{\Gamma(u)\Gamma(v)}{\Gamma(u + v)}
		  = \int_0^1 t^{u-1} (1 - t)^{v-1} \mathrm{d}t,$$
		
		which defines the traditional bivariate beta function.
		
		If the last dimension is empty, we follow the convention that the sum over
		the empty set is zero, and the product is one.
		
		Args:
		  x: A rank `n + 1` `Tensor`, `n >= 0` with type `float`, or `double`.
		  name: A name for the operation (optional).
		
		Returns:
		  The logarithm of \\(|Beta(x)|\\) reducing along the last dimension.
	**/
	static public function lbeta(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}