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
	static public function _einsum_reduction(t0:Dynamic, t0_axis_labels:Dynamic, t1:Dynamic, t1_axis_labels:Dynamic, axes_to_sum:Dynamic):Dynamic;
	/**
		Fallback implementation that supports summing an index over > 2 inputs.
	**/
	static public function _exponential_space_einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>):Dynamic;
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
		Computes the Bessel i1 function of `x` element-wise.
		
		Modified Bessel function of order 1.
		
		It is preferable to use the numerically stabler function `i1e(x)` instead.
		
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
	static public var division : Dynamic;
	/**
		A generalized contraction between tensors of arbitrary dimension.
		
		This function returns a tensor whose elements are defined by `equation`,
		which is written in a shorthand form inspired by the Einstein summation
		convention.  As an example, consider multiplying two matrices
		A and B to form a matrix C.  The elements of C are given by:
		
		```
		  C[i,k] = sum_j A[i,j] * B[j,k]
		```
		
		The corresponding `equation` is:
		
		```
		  ij,jk->ik
		```
		
		In general, the `equation` is obtained from the more familiar element-wise
		equation by
		  1. removing variable names, brackets, and commas,
		  2. replacing "*" with ",",
		  3. dropping summation signs, and
		  4. moving the output to the right, and replacing "=" with "->".
		
		Many common operations can be expressed in this way.  For example:
		
		```python
		# Matrix multiplication
		>>> einsum('ij,jk->ik', m0, m1)  # output[i,k] = sum_j m0[i,j] * m1[j, k]
		
		# Dot product
		>>> einsum('i,i->', u, v)  # output = sum_i u[i]*v[i]
		
		# Outer product
		>>> einsum('i,j->ij', u, v)  # output[i,j] = u[i]*v[j]
		
		# Transpose
		>>> einsum('ij->ji', m)  # output[j,i] = m[i,j]
		
		# Batch matrix multiplication
		>>> einsum('aij,ajk->aik', s, t)  # out[a,i,k] = sum_j s[a,i,j] * t[a, j, k]
		```
		
		This function behaves like `numpy.einsum`, but does not support:
		
		* Ellipses (subscripts like `ij...,jk...->ik...`)
		* Subscripts where an axis appears more than once for a single input
		  (e.g. `ijj,k->ik`).
		* Subscripts that are summed across multiple inputs (e.g., `ij,ij,jk->ik`).
		
		Args:
		  equation: a `str` describing the contraction, in the same format as
		    `numpy.einsum`.
		  *inputs: the inputs to contract (each one a `Tensor`), whose shapes should
		    be consistent with `equation`.
		  name: A name for the operation (optional).
		
		Returns:
		  The contracted `Tensor`, with shape determined by `equation`.
		
		Raises:
		  ValueError: If
		    - the format of `equation` is incorrect,
		    - the number of inputs implied by `equation` does not match `len(inputs)`,
		    - an axis appears in the output subscripts but not in any of the inputs,
		    - the number of dimensions of an input differs from the number of
		      indices in its subscript, or
		    - the input shapes are inconsistent along a particular axis.
	**/
	static public function einsum(equation:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes \\(ln(|Beta(x)|)\\), reducing along the last dimension.
		
		Given one-dimensional `z = [z_0,...,z_{K-1}]`, we define
		
		$$Beta(z) = \prod_j Gamma(z_j) / Gamma(\sum_j z_j)$$
		
		And for `n + 1` dimensional `x` with shape `[N1, ..., Nn, K]`, we define
		$$lbeta(x)[i1, ..., in] = Log(|Beta(x[i1, ..., in, :])|)$$.
		
		In other words, the last dimension is treated as the `z` vector.
		
		Note that if `z = [u, v]`, then
		\\(Beta(z) = int_0^1 t^{u-1} (1 - t)^{v-1} dt\\), which defines the
		traditional bivariate beta function.
		
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}