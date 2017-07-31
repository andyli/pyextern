/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.operator_pd;
@:pythonImport("tensorflow.contrib.distributions.python.ops.operator_pd") extern class Operator_pd_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Flip matrix to vector with dynamic shapes.
	**/
	static public function _flip_matrix_to_vector_dynamic(mat:Dynamic, batch_shape:Dynamic):Dynamic;
	/**
		Flip matrix to vector with static shapes.
	**/
	static public function _flip_matrix_to_vector_static(mat:Dynamic, static_batch_shape:Dynamic):Dynamic;
	/**
		flip_vector_to_matrix with dynamic shapes.
	**/
	static public function _flip_vector_to_matrix_dynamic(vec:Dynamic, batch_shape:Dynamic):Dynamic;
	/**
		flip_vector_to_matrix with static shapes.
	**/
	static public function _flip_vector_to_matrix_static(vec:Dynamic, batch_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Extract the batch shape from `x`.
		
		Assuming `x.shape = batch_shape + event_shape`, when `event_shape` has
		`num_event_dims` dimensions.  This `Op` returns the batch shape `Tensor`.
		
		Args:
		  x: `Tensor` with rank at least `num_event_dims`.  If rank is not high enough
		    this `Op` will fail.
		  num_event_dims:  `int32` scalar `Tensor`.  The number of trailing dimensions
		    in `x` to be considered as part of `event_shape`.
		  name:  A name to prepend to created `Ops`.
		
		Returns:
		  batch_shape:  `1-D` `int32` `Tensor`
	**/
	static public function extract_batch_shape(x:Dynamic, num_event_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Flip dims to reshape batch matrix `mat` to a vector with given batch shape.
		
		```python
		mat = tf.random_normal(2, 3, 4, 6)
		
		# Flip the trailing dimension around to the front.
		flip_matrix_to_vector(mat, [6, 2, 3], [6, 3, 2])  # Shape [6, 2, 3, 4]
		
		# Flip the trailing dimension around then reshape batch indices to batch_shape
		flip_matrix_to_vector(mat, [6, 3, 2], [6, 3, 2])  # Shape [6, 3, 2, 4]
		flip_matrix_to_vector(mat, [2, 3, 2, 3], [2,3,2,3])  # Shape [2, 3, 2, 3, 4]
		```
		
		Assume `mat.shape = matrix_batch_shape + [k, M]`.  The returned vector is
		generated in two steps:
		
		1. Flip the final dimension to the front, giving a shape
		  `[M] + matrix_batch_shape + [k]`.
		2. Reshape the leading dimensions, giving final shape = `batch_shape + [k]`.
		
		The reshape in step 2 will fail if the number of elements is not equal, i.e.
		`M*prod(matrix_batch_shape) != prod(batch_shape)`.
		
		See also:  flip_vector_to_matrix.
		
		Args:
		  mat:  `Tensor` with rank `>= 2`.
		  batch_shape:  `int32` `Tensor` giving leading "batch" shape of result.
		  static_batch_shape:  `TensorShape` object giving batch shape of result.
		
		Returns:
		  `Tensor` with same elements as `mat` but with shape `batch_shape + [k]`.
	**/
	static public function flip_matrix_to_vector(mat:Dynamic, batch_shape:Dynamic, static_batch_shape:Dynamic):Dynamic;
	/**
		Flip dims to reshape batch vector `x` to a matrix with given batch shape.
		
		```python
		vec = tf.random_normal(2, 3, 4, 5)
		
		# Flip the leading dimension to the end.
		flip_vector_to_matrix(vec, [3, 4], [3, 4])  # Shape [3, 4, 5, 2]
		
		# Flip nothing, just extend with a singleton dimension.
		flip_vector_to_matrix(vec, [2, 3, 4], [2, 3, 4])  # Shape [2, 3, 4, 5, 1]
		
		# Flip leading dimension to the end and reshape the batch indices to
		# batch_shape.
		flip_vector_to_matrix(vec, [4, 3], [4, 3])  # Shape [4, 3, 5, 2]
		```
		
		Suppose `batch_shape` is length `n`.  Then...
		
		Given `vec.shape = [M1,...,Mm] + [N1,...,Nn] + [k]`, for some
		`m > 0` we reshape to a batch matrix with shape `batch_shape + [k, M]`
		where `M = M1*...*Mm`.  This is done by "flipping" the leading dimensions to
		the end and possibly reshaping `[N1,...,Nn]` to `batch_shape`.
		
		In the case `vec.shape = [N1,...,Nn] + [k]`, we reshape to
		`batch_shape + [k, 1]` by extending the tensor with a singleton dimension and
		possibly reshaping `[N1,...,Nn]` to `batch_shape`.
		
		See also: flip_matrix_to_vector.
		
		Args:
		  vec:  `Tensor` with shape `[M1,...,Mm] + [N1,...,Nn] + [k]`
		  batch_shape:  `int32` `Tensor`.
		  static_batch_shape:  `TensorShape` with statically determined batch shape.
		
		Returns:
		  `Tensor` with same `dtype` as `vec` and new shape.
	**/
	static public function flip_vector_to_matrix(vec:Dynamic, batch_shape:Dynamic, static_batch_shape:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}