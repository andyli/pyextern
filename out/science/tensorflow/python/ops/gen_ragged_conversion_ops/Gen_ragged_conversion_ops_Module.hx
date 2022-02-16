/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_ragged_conversion_ops;
@:pythonImport("tensorflow.python.ops.gen_ragged_conversion_ops") extern class Gen_ragged_conversion_ops_Module {
	/**
		Decodes a `variant` Tensor into a `RaggedTensor`.
		
		Decodes the given `variant` Tensor and returns a `RaggedTensor`. The input
		could be a scalar, meaning it encodes a single `RaggedTensor` with ragged_rank
		`output_ragged_rank`. It could also have an arbitrary rank, in which case each
		element is decoded into a `RaggedTensor` with ragged_rank `input_ragged_rank`
		and these are then stacked according to the input shape to output a single
		`RaggedTensor` with ragged_rank `output_ragged_rank`. Each `variant` element in
		the input Tensor is decoded by retrieving from the element a 1-D `variant`
		Tensor with `input_ragged_rank + 1` Tensors, corresponding to the splits and
		values of the decoded `RaggedTensor`. If `input_ragged_rank` is -1, then it is
		inferred as `output_ragged_rank` - `rank(encoded_ragged)`. See
		`RaggedTensorToVariant` for the corresponding encoding logic.
		
		Args:
		  encoded_ragged: A `Tensor` of type `variant`.
		    A `variant` Tensor containing encoded `RaggedTensor`s.
		  input_ragged_rank: An `int` that is `>= -1`.
		    The ragged rank of each encoded `RaggedTensor` component in the input. If set to
		    -1, this is inferred as `output_ragged_rank` - `rank(encoded_ragged)`
		  output_ragged_rank: An `int` that is `>= 0`.
		    The expected ragged rank of the output `RaggedTensor`. The following must hold:
		    `output_ragged_rank = rank(encoded_ragged) + input_ragged_rank`.
		  Tvalues: A `tf.DType`.
		  Tsplits: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_nested_splits, output_dense_values).
		
		  output_nested_splits: A list of `output_ragged_rank` `Tensor` objects with type `Tsplits`.
		  output_dense_values: A `Tensor` of type `Tvalues`.
	**/
	static public function RaggedTensorFromVariant(encoded_ragged:Dynamic, input_ragged_rank:Dynamic, output_ragged_rank:Dynamic, Tvalues:Dynamic, ?Tsplits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `RaggedTensor` into a `SparseTensor` with the same values.
		
		input=ragged.from_nested_row_splits(rt_dense_values, rt_nested_splits)
		output=SparseTensor(indices=sparse_indices, values=sparse_values,
		                    dense_shape=sparse_dense_shape)
		
		Args:
		  rt_nested_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    The `row_splits` for the `RaggedTensor`.
		  rt_dense_values: A `Tensor`. The `flat_values` for the `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_dense_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor`. Has the same type as `rt_dense_values`.
		  sparse_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function RaggedTensorToSparse(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a dense tensor from a ragged tensor, possibly altering its shape.
		
		The `ragged_to_dense` op creates a dense tensor from a list of row partition
		tensors, a value vector, and default values. If the shape is unspecified, the
		minimal shape required to contain all the elements in the ragged tensor (the
		natural shape) will be used. If some dimensions are left unspecified, then the
		size of the natural shape is used in that dimension.
		
		The default_value will be broadcast to the output shape. After that, the values
		from the ragged tensor overwrite the default values. Note that the default_value
		must have less dimensions than the value.
		
		The row partition tensors are in the order of the dimensions.
		At present, the types can be:
		* "ROW_SPLITS": the row_splits tensor from the ragged tensor.
		* "VALUE_ROWIDS": the value_rowids tensor from the ragged tensor.
		* "FIRST_DIM_SIZE": if value_rowids is used for the first dimension, then it
		  is preceded by "FIRST_DIM_SIZE".
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int64`, `int32`.
		    The desired shape of the output tensor. If left unspecified (empty),
		    the minimal shape required to contain all the elements in the ragged tensor
		    (the natural shape) will be used. If some dimensions are left unspecified, then
		    the size of the natural shape is used in that dimension.
		
		    Note that dense dimensions cannot be modified by the shape argument. Trying to
		    change the size of a dense dimension will cause the op to fail.
		    Examples:
		    natural shape: [4, 5, 6]
		    shape: -1
		    output shape: [4, 5, 6]
		
		    natural shape: [4, 5, 6]
		    shape: [3, -1, 2]
		    output shape: [3, 5, 2]
		
		    natural shape: [4, 5, 6]
		    shape: [3, 7, 2]
		    output shape: [3, 7, 2]
		  values: A `Tensor`.
		    A 1D tensor representing the values of the ragged tensor.
		  default_value: A `Tensor`. Must have the same type as `values`.
		    The default_value when the shape is larger than the ragged tensor. The
		    default_value is broadcast until it is the shape of the output tensor, and
		    then overwritten by values in the ragged tensor. The default value must be
		    compatible with this broadcast operation, and must have fewer dimensions than
		    the value tensor.
		  row_partition_tensors: A list of at least 1 `Tensor` objects with the same type in: `int64`, `int32`.
		  row_partition_types: A list of `strings`.
		    The types of the row partition tensors. At present, these can be:
		    * "ROW_SPLITS": the row_splits tensor from the ragged tensor.
		    * "VALUE_ROWIDS": the value_rowids tensor from the ragged tensor.
		    * "FIRST_DIM_SIZE": if value_rowids is used for the first dimension, then it
		      is preceeded by "FIRST_DIM_SIZE".
		    The tensors are in the order of the dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function RaggedTensorToTensor(shape:Dynamic, values:Dynamic, default_value:Dynamic, row_partition_tensors:Dynamic, row_partition_types:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Encodes a `RaggedTensor` into a `variant` Tensor.
		
		
		Encodes the given `RaggedTensor` and returns a `variant` Tensor. If
		`batched_input` is True, then input `RaggedTensor` is unbatched along the
		zero-th dimension, each component `RaggedTensor` is encoded into a scalar
		`variant` Tensor, and these are stacked to return a 1-D `variant` Tensor.
		If `batched_input` is False, then the input `RaggedTensor` is encoded as is and
		a scalar `variant` Tensor is returned. A `RaggedTensor` is encoded by first
		creating a 1-D `variant` Tensor with `ragged_rank + 1` elements, containing the
		splits and values Tensors of the `RaggedTensor`. Then the 1-D `variant` Tensor
		is wrapped in a scalar `variant` Tensor. See `RaggedTensorFromVariant` for the
		corresponding decoding logic.
		
		Args:
		  rt_nested_splits: A list of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of one or more Tensors representing the splits of the input
		    `RaggedTensor`.
		  rt_dense_values: A `Tensor`.
		    A Tensor representing the values of the input `RaggedTensor`.
		  batched_input: A `bool`.
		    A `bool` denoting whether the input is a batched `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function RaggedTensorToVariant(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, batched_input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper used to compute the gradient for `RaggedTensorToVariant`.
		
		Computes the gradient for the dense_values input to the RaggedTensorToVariant
		op, given the variant-encoded ragged gradients of the outputs, along with
		the outer row-splits and the shape of the dense-values that were provided as
		inputs to the RaggedTensorToVariant op.
		
		Args:
		  encoded_ragged_grad: A `Tensor` of type `variant`.
		    A `variant` Tensor containing encoded `RaggedTensor` gradients.
		  row_splits: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Outermost row-splits that were used as input to the RaggedTensorToVariant op.
		  dense_values_shape: A `Tensor` of type `int32`.
		    Shape of the dense_values that was used as an input to the
		    RaggedTensorToVariant op.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tvalues`.
	**/
	static public function RaggedTensorToVariantGradient(encoded_ragged_grad:Dynamic, row_splits:Dynamic, dense_values_shape:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decodes a `variant` Tensor into a `RaggedTensor`.
		
		Decodes the given `variant` Tensor and returns a `RaggedTensor`. The input
		could be a scalar, meaning it encodes a single `RaggedTensor` with ragged_rank
		`output_ragged_rank`. It could also have an arbitrary rank, in which case each
		element is decoded into a `RaggedTensor` with ragged_rank `input_ragged_rank`
		and these are then stacked according to the input shape to output a single
		`RaggedTensor` with ragged_rank `output_ragged_rank`. Each `variant` element in
		the input Tensor is decoded by retrieving from the element a 1-D `variant`
		Tensor with `input_ragged_rank + 1` Tensors, corresponding to the splits and
		values of the decoded `RaggedTensor`. If `input_ragged_rank` is -1, then it is
		inferred as `output_ragged_rank` - `rank(encoded_ragged)`. See
		`RaggedTensorToVariant` for the corresponding encoding logic.
		
		Args:
		  encoded_ragged: A `Tensor` of type `variant`.
		    A `variant` Tensor containing encoded `RaggedTensor`s.
		  input_ragged_rank: An `int` that is `>= -1`.
		    The ragged rank of each encoded `RaggedTensor` component in the input. If set to
		    -1, this is inferred as `output_ragged_rank` - `rank(encoded_ragged)`
		  output_ragged_rank: An `int` that is `>= 0`.
		    The expected ragged rank of the output `RaggedTensor`. The following must hold:
		    `output_ragged_rank = rank(encoded_ragged) + input_ragged_rank`.
		  Tvalues: A `tf.DType`.
		  Tsplits: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_nested_splits, output_dense_values).
		
		  output_nested_splits: A list of `output_ragged_rank` `Tensor` objects with type `Tsplits`.
		  output_dense_values: A `Tensor` of type `Tvalues`.
	**/
	static public function ragged_tensor_from_variant(encoded_ragged:Dynamic, input_ragged_rank:Dynamic, output_ragged_rank:Dynamic, Tvalues:Dynamic, ?Tsplits:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_tensor_from_variant_eager_fallback(encoded_ragged:Dynamic, input_ragged_rank:Dynamic, output_ragged_rank:Dynamic, Tvalues:Dynamic, Tsplits:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts a `RaggedTensor` into a `SparseTensor` with the same values.
		
		input=ragged.from_nested_row_splits(rt_dense_values, rt_nested_splits)
		output=SparseTensor(indices=sparse_indices, values=sparse_values,
		                    dense_shape=sparse_dense_shape)
		
		Args:
		  rt_nested_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    The `row_splits` for the `RaggedTensor`.
		  rt_dense_values: A `Tensor`. The `flat_values` for the `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_dense_shape).
		
		  sparse_indices: A `Tensor` of type `int64`.
		  sparse_values: A `Tensor`. Has the same type as `rt_dense_values`.
		  sparse_dense_shape: A `Tensor` of type `int64`.
	**/
	static public function ragged_tensor_to_sparse(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_tensor_to_sparse_eager_fallback(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Create a dense tensor from a ragged tensor, possibly altering its shape.
		
		The `ragged_to_dense` op creates a dense tensor from a list of row partition
		tensors, a value vector, and default values. If the shape is unspecified, the
		minimal shape required to contain all the elements in the ragged tensor (the
		natural shape) will be used. If some dimensions are left unspecified, then the
		size of the natural shape is used in that dimension.
		
		The default_value will be broadcast to the output shape. After that, the values
		from the ragged tensor overwrite the default values. Note that the default_value
		must have less dimensions than the value.
		
		The row partition tensors are in the order of the dimensions.
		At present, the types can be:
		* "ROW_SPLITS": the row_splits tensor from the ragged tensor.
		* "VALUE_ROWIDS": the value_rowids tensor from the ragged tensor.
		* "FIRST_DIM_SIZE": if value_rowids is used for the first dimension, then it
		  is preceded by "FIRST_DIM_SIZE".
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int64`, `int32`.
		    The desired shape of the output tensor. If left unspecified (empty),
		    the minimal shape required to contain all the elements in the ragged tensor
		    (the natural shape) will be used. If some dimensions are left unspecified, then
		    the size of the natural shape is used in that dimension.
		
		    Note that dense dimensions cannot be modified by the shape argument. Trying to
		    change the size of a dense dimension will cause the op to fail.
		    Examples:
		    natural shape: [4, 5, 6]
		    shape: -1
		    output shape: [4, 5, 6]
		
		    natural shape: [4, 5, 6]
		    shape: [3, -1, 2]
		    output shape: [3, 5, 2]
		
		    natural shape: [4, 5, 6]
		    shape: [3, 7, 2]
		    output shape: [3, 7, 2]
		  values: A `Tensor`.
		    A 1D tensor representing the values of the ragged tensor.
		  default_value: A `Tensor`. Must have the same type as `values`.
		    The default_value when the shape is larger than the ragged tensor. The
		    default_value is broadcast until it is the shape of the output tensor, and
		    then overwritten by values in the ragged tensor. The default value must be
		    compatible with this broadcast operation, and must have fewer dimensions than
		    the value tensor.
		  row_partition_tensors: A list of at least 1 `Tensor` objects with the same type in: `int64`, `int32`.
		  row_partition_types: A list of `strings`.
		    The types of the row partition tensors. At present, these can be:
		    * "ROW_SPLITS": the row_splits tensor from the ragged tensor.
		    * "VALUE_ROWIDS": the value_rowids tensor from the ragged tensor.
		    * "FIRST_DIM_SIZE": if value_rowids is used for the first dimension, then it
		      is preceeded by "FIRST_DIM_SIZE".
		    The tensors are in the order of the dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
	**/
	static public function ragged_tensor_to_tensor(shape:Dynamic, values:Dynamic, default_value:Dynamic, row_partition_tensors:Dynamic, row_partition_types:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_tensor_to_tensor_eager_fallback(shape:Dynamic, values:Dynamic, default_value:Dynamic, row_partition_tensors:Dynamic, row_partition_types:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Encodes a `RaggedTensor` into a `variant` Tensor.
		
		
		Encodes the given `RaggedTensor` and returns a `variant` Tensor. If
		`batched_input` is True, then input `RaggedTensor` is unbatched along the
		zero-th dimension, each component `RaggedTensor` is encoded into a scalar
		`variant` Tensor, and these are stacked to return a 1-D `variant` Tensor.
		If `batched_input` is False, then the input `RaggedTensor` is encoded as is and
		a scalar `variant` Tensor is returned. A `RaggedTensor` is encoded by first
		creating a 1-D `variant` Tensor with `ragged_rank + 1` elements, containing the
		splits and values Tensors of the `RaggedTensor`. Then the 1-D `variant` Tensor
		is wrapped in a scalar `variant` Tensor. See `RaggedTensorFromVariant` for the
		corresponding decoding logic.
		
		Args:
		  rt_nested_splits: A list of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of one or more Tensors representing the splits of the input
		    `RaggedTensor`.
		  rt_dense_values: A `Tensor`.
		    A Tensor representing the values of the input `RaggedTensor`.
		  batched_input: A `bool`.
		    A `bool` denoting whether the input is a batched `RaggedTensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function ragged_tensor_to_variant(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, batched_input:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_tensor_to_variant_eager_fallback(rt_nested_splits:Dynamic, rt_dense_values:Dynamic, batched_input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Helper used to compute the gradient for `RaggedTensorToVariant`.
		
		Computes the gradient for the dense_values input to the RaggedTensorToVariant
		op, given the variant-encoded ragged gradients of the outputs, along with
		the outer row-splits and the shape of the dense-values that were provided as
		inputs to the RaggedTensorToVariant op.
		
		Args:
		  encoded_ragged_grad: A `Tensor` of type `variant`.
		    A `variant` Tensor containing encoded `RaggedTensor` gradients.
		  row_splits: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Outermost row-splits that were used as input to the RaggedTensorToVariant op.
		  dense_values_shape: A `Tensor` of type `int32`.
		    Shape of the dense_values that was used as an input to the
		    RaggedTensorToVariant op.
		  Tvalues: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tvalues`.
	**/
	static public function ragged_tensor_to_variant_gradient(encoded_ragged_grad:Dynamic, row_splits:Dynamic, dense_values_shape:Dynamic, Tvalues:Dynamic, ?name:Dynamic):Dynamic;
	static public function ragged_tensor_to_variant_gradient_eager_fallback(encoded_ragged_grad:Dynamic, row_splits:Dynamic, dense_values_shape:Dynamic, Tvalues:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}