/* This file is generated, do not edit! */
package tensorflow.compiler.tf2xla.ops.gen_xla_ops;
@:pythonImport("tensorflow.compiler.tf2xla.ops.gen_xla_ops") extern class Gen_xla_ops_Module {
	/**
		Wraps the XLA AllReduce operator
		
		  documented at https://www.tensorflow.org/xla/operation_semantics#allreduce.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `int32`, `uint32`.
		    Array or a non-empty tuple of arrays to reduce across replicas.
		  group_assignment: A `Tensor` of type `int32`.
		    Groups between which the reductions are performed.
		  reduce_op: A `string` from: `"Min", "Max", "Mul", "Add", "Mean"`.
		    Reduction computation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaAllReduce(input:Dynamic, group_assignment:Dynamic, reduce_op:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper operator for performing XLA-style broadcasts
		
		Broadcasts `lhs` and `rhs` to the same rank, by adding size 1 dimensions to
		whichever of `lhs` and `rhs` has the lower rank, using XLA's broadcasting rules
		for binary operators.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS input tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the RHS input tensor
		  broadcast_dims: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    an XLA-style broadcast dimension specification
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (lhs_output, rhs_output).
		
		  lhs_output: A `Tensor`. Has the same type as `lhs`. the broadcasted LHS tensor
		  rhs_output: A `Tensor`. Has the same type as `lhs`. the broadcasted RHS tensor
	**/
	static public function XlaBroadcastHelper(lhs:Dynamic, rhs:Dynamic, broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA ConvGeneralDilated operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#conv_convolution
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the kernel tensor
		  window_strides: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_strides`.
		    the padding to apply at the start and end of each input dimensions
		  lhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between input elements
		  rhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between kernel elements
		  feature_group_count: A `Tensor`. Must have the same type as `window_strides`.
		    number of feature groups for grouped convolution.
		  dimension_numbers: A `string`.
		    a serialized xla::ConvolutionDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `lhs`.
	**/
	static public function XlaConv(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA ConvGeneralDilated operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#conv_convolution
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  rhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the kernel tensor
		  window_strides: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_strides`.
		    the padding to apply at the start and end of each input dimensions
		  lhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between input elements
		  rhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between kernel elements
		  feature_group_count: A `Tensor`. Must have the same type as `window_strides`.
		    number of feature groups for grouped convolution.
		  dimension_numbers: A `string`.
		    a serialized xla::ConvolutionDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  preferred_element_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `preferred_element_type`.
	**/
	static public function XlaConvV2(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Takes the packed uint32 input and unpacks the input to uint8 to do
		
		Dequantization on device.
		
		Args:
		  input: A `Tensor` of type `uint32`.
		    Input tensors whose types is uint32, shape is [d0, ..., dn].
		  min_range: A `float`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `float`.
		    The maximum scalar value possibly produced for the input.
		  mode: A `string`.
		    String to determine the dequantize mode in {"MIN_COMBINED", "MIN_FIRST", "SCALED"}.
		  transpose_output: A `bool`.
		    Boolean to determine if output is transposed. transpose_output
		    is faster when input is large and rank of input is higher than 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bfloat16`.
		  Output tensors whose types is bloat16. If transpose_output is true,
		  output shape is [dn * 4, dn-1, ..., d1, d0]. If transpose_output
		  is false, output shape is [d0,..., dn * 4].
	**/
	static public function XlaDequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, mode:Dynamic, transpose_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA DotGeneral operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dotgeneral
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the RHS tensor
		  dimension_numbers: A `string`.
		    a serialized xla::DotDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `lhs`.
	**/
	static public function XlaDot(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA DotGeneral operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dotgeneral
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS tensor
		  rhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the RHS tensor
		  dimension_numbers: A `string`.
		    a serialized xla::DotDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  preferred_element_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `preferred_element_type`.
	**/
	static public function XlaDotV2(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicslice
		.
		
		DynamicSlice extracts a sub-array from the input array at dynamic
		start_indices. The size of the slice in each dimension is passed in
		size_indices, which specify the end point of exclusive slice intervals in each
		dimension -- [start, start + size). The shape of start_indices must have rank 1,
		with dimension size equal to the rank of operand.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  start_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    List of N integers containing the slice size for each
		    dimension. Each value must be strictly greater than zero, and start + size
		    must be less than or equal to the size of the dimension to avoid
		    implementation defined behavior.
		  size_indices: A `Tensor`. Must have the same type as `start_indices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaDynamicSlice(input:Dynamic, start_indices:Dynamic, size_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicUpdateSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicupdateslice
		.
		
		XlaDynamicUpdateSlice generates a result which is the value of the `input`
		operand, with a slice update overwritten at `indices`. The shape of `update`
		determines the shape of the sub-array of the result which is updated. The shape
		of indices must be rank == 1, with dimension size equal to the rank of `input`.
		
		Handling of out-of-bounds slice indices is implementation-defined.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  update: A `Tensor`. Must have the same type as `input`.
		    A `Tensor` of type T. Same rank as `input`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into `input`. Must have length equal to the rank of
		    `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function XlaDynamicUpdateSlice(input:Dynamic, update:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which supports basic einsum op with 2 inputs and 1 output.
		
		This op has better TPU performance since it doesn't have explicitly reshape and
		transpose operations as tf.einsum does.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `complex64`, `bfloat16`, `float32`.
		  b: A `Tensor`. Must have the same type as `a`.
		  equation: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function XlaEinsum(a:Dynamic, b:Dynamic, equation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Gather operator documented at
		
		  https://www.tensorflow.org/xla/operation_semantics#gather
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    The array we're gathering from.
		  start_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Array containing the starting indices of the slices we gather.
		  slice_sizes: A `Tensor`. Must have the same type as `start_indices`.
		    slice_sizes[i] is the bounds for the slice on dimension i.
		  dimension_numbers: A `string`.
		    A serialized xla::GatherDimensionNumbers proto.
		  indices_are_sorted: A `bool`.
		    Boolean indicating if the indices are sorted.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function XlaGather(operand:Dynamic, start_indices:Dynamic, slice_sizes:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(inputs) : else_branch(inputs).
		
		Args:
		  cond: A `Tensor`. A boolean scalar.
		  inputs: A list of `Tensor` objects. A list of input tensors.
		  then_branch: A function decorated with @Defun.
		    A function takes 'inputs' and returns a list of tensors,
		    whose types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		    A function takes 'inputs' and returns a list of tensors.
		    whose types are the same as what then_branch returns.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
		  A list of tensors returned by either then_branch(inputs) or
		  else_branch(inputs). The input shapes of the then_branch and
		  else_branch must match.
	**/
	static public function XlaIf(cond:Dynamic, inputs:Dynamic, then_branch:Dynamic, else_branch:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  keys: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A `Tensor` of type K.
		  values: A `Tensor`. A `Tensor` of type V.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sorted_keys, sorted_values).
		
		  sorted_keys: A `Tensor`. Has the same type as `keys`. A `Tensor` of type K.
		  sorted_values: A `Tensor`. Has the same type as `values`. A `Tensor` of type V.
	**/
	static public function XlaKeyValueSort(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Pad operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#pad
		.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    A scalar `Tensor` of type T.
		  padding_low: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the padding to apply at the start of each input dimensions. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_high: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply at the end of each input dimension. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_interior: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply between each input element. Must
		    be a compile-time constant 1D tensor of length equal to rank of input,
		    containing only non-negative values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function XlaPad(input:Dynamic, padding_value:Dynamic, padding_low:Dynamic, padding_high:Dynamic, padding_interior:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Receives the named tensor from another XLA computation. Wraps the XLA Recv
		
		operator documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#recv .
		
		Args:
		  dtype: A `tf.DType`. The type of the tensor.
		  tensor_name: A `string`. A string key that identifies the channel.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The tensor to receive.
	**/
	static public function XlaRecv(dtype:Dynamic, tensor_name:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Reduce operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#reduce .
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor
		  init_value: A `Tensor`. Must have the same type as `input`.
		    a scalar representing the initial value for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaReduce(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA ReduceScatter operator
		
		  documented at https://www.tensorflow.org/xla/operation_semantics#reducescatter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `int32`, `uint32`.
		    Array or a non-empty tuple of arrays to reduce across replicas.
		  group_assignment: A `Tensor` of type `int32`.
		    Groups between which the reductions are performed.
		  scatter_dimension: A `Tensor` of type `int32`. Dimension to scatter.
		  reduce_op: A `string` from: `"Min", "Max", "Mul", "Add", "Mean"`.
		    Reduction computation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaReduceScatter(input:Dynamic, group_assignment:Dynamic, scatter_dimension:Dynamic, reduce_op:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA ReduceWindow operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#reducewindow .
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor
		  init_value: A `Tensor`. Must have the same type as `input`.
		    a scalar representing the initial value for the reduction
		  window_dimensions: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the shape of the window
		  window_strides: A `Tensor`. Must have the same type as `window_dimensions`.
		    the inter-window strides
		  base_dilations: A `Tensor`. Must have the same type as `window_dimensions`.
		  window_dilations: A `Tensor`. Must have the same type as `window_dimensions`.
		  padding: A `Tensor`. Must have the same type as `window_dimensions`.
		    the padding to apply at the start and end of each input dimensions
		  computation: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaReduceWindow(input:Dynamic, init_value:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, base_dilations:Dynamic, window_dilations:Dynamic, padding:Dynamic, computation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse of XlaSetDynamicDimensionSize.
		
		Make an xla bounded dynamic dimension into a static dimension. The bound of the
		size of dimension `dim_index` becomes the static dimension size.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaRemoveDynamicDimensionSize(input:Dynamic, dim_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Replica ID.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function XlaReplicaId(?name:Dynamic):Dynamic;
	/**
		Stateless PRNG bit generator.
		
		Wraps the XLA RngBitGenerator operator, documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#rngbitgenerator.
		
		Args:
		  algorithm: A `Tensor` of type `int32`. The PRNG algorithm to use, one of
		    tf.random.Algorithm.{PHILOX, THREEFRY, AUTO_SELECT}.
		  initial_state: A `Tensor` of type `uint64`.
		    Initial state for the PRNG algorithm. For THREEFRY, it should be
		    a u64[2] and for PHILOX a u64[3].
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The output shape of the generated data.
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_key, output).
		
		  output_key: A `Tensor` of type `uint64`.
		  output: A `Tensor` of type `dtype`.
	**/
	static public function XlaRngBitGenerator(algorithm:Dynamic, initial_state:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Scatter operator documented at
		
		  https://www.tensorflow.org/xla/operation_semantics#scatter.
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    Array to be scattered into.
		  scatter_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Array containing the starting indices of the slices that must
		    be scattered to.
		  updates: A `Tensor`. Must have the same type as `operand`.
		    Array containing the values that must be used for scattering.
		  update_computation: A function decorated with @Defun.
		    Computation to be used for combining the existing values in
		    the input array and the updates during scatter.
		  dimension_numbers: A `string`.
		    A serialized xla::ScatterDimensionNumbers proto.
		  indices_are_sorted: A `bool`.
		    Boolean indicating if the indices are sorted.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function XlaScatter(operand:Dynamic, scatter_indices:Dynamic, updates:Dynamic, update_computation:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA SelectAndScatter operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#selectandscatter
		.
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  window_dimensions: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the shape of the window
		  window_strides: A `Tensor`. Must have the same type as `window_dimensions`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_dimensions`.
		    the padding to apply at the start and end of each input dimensions
		  source: A `Tensor`. Must have the same type as `operand`.
		    a tensor of values to scatter
		  init_value: A `Tensor`. Must have the same type as `operand`.
		    a scalar representing the initial value for the output tensor
		  select: A function decorated with @Defun. a selection function to apply
		  scatter: A function decorated with @Defun. a scatter function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function XlaSelectAndScatter(operand:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, padding:Dynamic, source:Dynamic, init_value:Dynamic, select:Dynamic, scatter:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices
		
		(Note: Only real inputs are supported).
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices in
		tensor such that tensor[...,:,:] * v[..., :,i] = e[..., i] * v[...,:,i], for
		i=0...N-1.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor.
		  lower: A `bool`.
		    a boolean specifies whether the calculation is done with the lower
		    triangular part or the upper triangular part.
		  max_iter: An `int`.
		    maximum number of sweep update, i.e., the whole lower triangular
		    part or upper triangular part based on parameter lower. Heuristically, it has
		    been argued that approximately logN sweeps are needed in practice (Ref: Golub &
		    van Loan "Matrix Computation").
		  epsilon: A `float`. the tolerance ratio.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (w, v).
		
		  w: A `Tensor`. Has the same type as `a`. The eigenvalues in ascending order, each repeated according to its
		    multiplicity.
		  v: A `Tensor`. Has the same type as `a`. The column v[..., :, i] is the normalized eigenvector corresponding to the
		    eigenvalue w[..., i].
	**/
	static public function XlaSelfAdjointEig(a:Dynamic, lower:Dynamic, max_iter:Dynamic, epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sends the named tensor to another XLA computation. Wraps the XLA Send operator
		
		documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#send .
		
		Args:
		  tensor: A `Tensor`. The tensor to send.
		  tensor_name: A `string`. A string key that identifies the channel.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function XlaSend(tensor:Dynamic, tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Set a bound for the given input value as a hint to Xla compiler,
		
		        returns the same value.
		
		Args:
		  input: A `Tensor` of type `int32`.
		  bound: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function XlaSetBound(input:Dynamic, bound:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Make a static dimension into a xla bounded dynamic dimension.
		
		        The current static dimension size will become the bound and the second
		        operand becomes the dynamic size of the dimension.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  size: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaSetDynamicDimensionSize(input:Dynamic, dim_index:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which shards the input based on the given sharding attribute. It can
		
		selectively annotate a subset of tensor dimensions by skipping unspecified_dims,
		and the sharding annotation should be replicated in those dims.
		
		Args:
		  input: A `Tensor`.
		  sharding: An optional `string`. Defaults to `""`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaSharding(input:Dynamic, ?sharding:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function XlaSort(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from automatic partitioning to
		
		manual partitioning. It annotates the input (full-shape, to be automatically
		partitioned) with the same sharding used by manual partitioning, and outputs a
		shard-shaped tensor to be consumed by later manually-partitioned ops. If the
		shape is not evenly partitionable, the padding region will be masked with 0s.
		The conversion can happen partially in subgroups, by specifying the dim
		attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaSpmdFullToShardShape(input:Dynamic, manual_sharding:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from manual partitioning to
		
		automatic partitioning. It converts the shard-shaped, manually partitioned input
		into full-shaped tensor to be partitioned automatically with the same sharding
		used by manual partitioning. The conversion can happen partially in subgroups,
		by specifying the dim attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  full_shape: A `tf.TensorShape` or list of `ints`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function XlaSpmdShardToFullShape(input:Dynamic, manual_sharding:Dynamic, full_shape:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices
		
		(Note: Only real inputs are supported).
		
		Computes the eigenvalues and eigenvectors of the innermost M-by-N matrices in
		tensor such that tensor[...,:,:] = u[..., :, :] * Diag(s[..., :]) * Transpose(v[...,:,:]).
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor.
		  max_iter: An `int`.
		    maximum number of sweep update, i.e., the whole lower triangular
		    part or upper triangular part based on parameter lower. Heuristically, it has
		    been argued that approximately log(min (M, N)) sweeps are needed in practice
		    (Ref: Golub & van Loan "Matrix Computation").
		  epsilon: A `float`. the tolerance ratio.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (s, u, v).
		
		  s: A `Tensor`. Has the same type as `a`. Singular values. The values are sorted in reverse order of magnitude, so
		    s[..., 0] is the largest value, s[..., 1] is the second largest, etc.
		  u: A `Tensor`. Has the same type as `a`. Left singular vectors.
		  v: A `Tensor`. Has the same type as `a`. Right singular vectors.
	**/
	static public function XlaSvd(a:Dynamic, max_iter:Dynamic, epsilon:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the variadic XLA Reduce operator.
		
		Semantics are documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#variadic_reduce.
		
		This version is limited to operands of the same dtype.
		XlaVariadicReduceV2 is a version that supports heterogeneous operands.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor(s)
		  init_value: A list with the same length as `input` of `Tensor` objects with the same type as `input`.
		    scalar initial value(s) for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with the same type as `input`.
	**/
	static public function XlaVariadicReduce(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the variadic XLA Reduce operator.
		
		Semantics are documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#variadic_reduce.
		
		This is an expanded version of XlaVariadicReduce, with support for
		operands of different dtypes, and improved shape inference.
		
		Args:
		  inputs: A list of `Tensor` objects. the input tensor(s)
		  init_values: A list of `Tensor` objects. Must have the same type as `inputs`.
		    scalar initial value(s) for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
	**/
	static public function XlaVariadicReduceV2(inputs:Dynamic, init_values:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts one or more tensors, with support for custom comparator, dimension, and
		is_stable attributes.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of `Tensor` of identical shape but possibly different types.
		  dimension: A `Tensor` of type `int32`.
		    The dimension along which to sort. Must be a compile-time constant.
		  comparator: A function decorated with @Defun.
		    A comparator function to apply to 2*N scalars and returning a
		    boolean. N is the number of sort inputs. If you want to sort in ascending
		    order then the comparator should perform a less-than comparison.
		  is_stable: A `bool`. Whether to use stable sort.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
		  A list of `Tensor` of same shape and types as the `input`.
	**/
	static public function XlaVariadicSort(inputs:Dynamic, dimension:Dynamic, comparator:Dynamic, is_stable:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		    A function takes 'input' and returns a tensor.  If the tensor is
		    a scalar of non-boolean, the scalar is converted to a boolean
		    according to the following rule: if the scalar is a numerical
		    value, non-zero means True and zero means False; if the scalar is
		    a string, non-empty means True and empty means False. If the
		    tensor is not a scalar, non-emptiness means True and False
		    otherwise.
		  body: A function decorated with @Defun.
		    A function that takes a list of tensors and returns another
		    list of tensors. Both lists have the same types as specified by T.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function XlaWhile(input:Dynamic, cond:Dynamic, body:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_all_reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_broadcast_helper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_conv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_conv_v2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_dequantize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_dot_v2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_dynamic_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_dynamic_update_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_if(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_key_value_sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_pad(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_recv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_reduce_scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_reduce_window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_remove_dynamic_dimension_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_replica_id(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_rng_bit_generator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_select_and_scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_self_adjoint_eig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_send(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_set_bound(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_set_dynamic_dimension_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_sharding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_spmd_full_to_shard_shape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_spmd_shard_to_full_shape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_svd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_variadic_reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_variadic_reduce_v2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_variadic_sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_xla_while(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wraps the XLA AllReduce operator
		
		  documented at https://www.tensorflow.org/xla/operation_semantics#allreduce.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `int32`, `uint32`.
		    Array or a non-empty tuple of arrays to reduce across replicas.
		  group_assignment: A `Tensor` of type `int32`.
		    Groups between which the reductions are performed.
		  reduce_op: A `string` from: `"Min", "Max", "Mul", "Add", "Mean"`.
		    Reduction computation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_all_reduce(input:Dynamic, group_assignment:Dynamic, reduce_op:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_all_reduce_eager_fallback(input:Dynamic, group_assignment:Dynamic, reduce_op:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Helper operator for performing XLA-style broadcasts
		
		Broadcasts `lhs` and `rhs` to the same rank, by adding size 1 dimensions to
		whichever of `lhs` and `rhs` has the lower rank, using XLA's broadcasting rules
		for binary operators.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS input tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the RHS input tensor
		  broadcast_dims: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    an XLA-style broadcast dimension specification
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (lhs_output, rhs_output).
		
		  lhs_output: A `Tensor`. Has the same type as `lhs`. the broadcasted LHS tensor
		  rhs_output: A `Tensor`. Has the same type as `lhs`. the broadcasted RHS tensor
	**/
	static public function xla_broadcast_helper(lhs:Dynamic, rhs:Dynamic, broadcast_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_broadcast_helper_eager_fallback(lhs:Dynamic, rhs:Dynamic, broadcast_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA ConvGeneralDilated operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#conv_convolution
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the kernel tensor
		  window_strides: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_strides`.
		    the padding to apply at the start and end of each input dimensions
		  lhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between input elements
		  rhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between kernel elements
		  feature_group_count: A `Tensor`. Must have the same type as `window_strides`.
		    number of feature groups for grouped convolution.
		  dimension_numbers: A `string`.
		    a serialized xla::ConvolutionDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `lhs`.
	**/
	static public function xla_conv(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_conv_eager_fallback(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA ConvGeneralDilated operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#conv_convolution
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  rhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the kernel tensor
		  window_strides: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_strides`.
		    the padding to apply at the start and end of each input dimensions
		  lhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between input elements
		  rhs_dilation: A `Tensor`. Must have the same type as `window_strides`.
		    dilation to apply between kernel elements
		  feature_group_count: A `Tensor`. Must have the same type as `window_strides`.
		    number of feature groups for grouped convolution.
		  dimension_numbers: A `string`.
		    a serialized xla::ConvolutionDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  preferred_element_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `preferred_element_type`.
	**/
	static public function xla_conv_v2(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_conv_v2_eager_fallback(lhs:Dynamic, rhs:Dynamic, window_strides:Dynamic, padding:Dynamic, lhs_dilation:Dynamic, rhs_dilation:Dynamic, feature_group_count:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Takes the packed uint32 input and unpacks the input to uint8 to do
		
		Dequantization on device.
		
		Args:
		  input: A `Tensor` of type `uint32`.
		    Input tensors whose types is uint32, shape is [d0, ..., dn].
		  min_range: A `float`.
		    The minimum scalar value possibly produced for the input.
		  max_range: A `float`.
		    The maximum scalar value possibly produced for the input.
		  mode: A `string`.
		    String to determine the dequantize mode in {"MIN_COMBINED", "MIN_FIRST", "SCALED"}.
		  transpose_output: A `bool`.
		    Boolean to determine if output is transposed. transpose_output
		    is faster when input is large and rank of input is higher than 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bfloat16`.
		  Output tensors whose types is bloat16. If transpose_output is true,
		  output shape is [dn * 4, dn-1, ..., d1, d0]. If transpose_output
		  is false, output shape is [d0,..., dn * 4].
	**/
	static public function xla_dequantize(input:Dynamic, min_range:Dynamic, max_range:Dynamic, mode:Dynamic, transpose_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_dequantize_eager_fallback(input:Dynamic, min_range:Dynamic, max_range:Dynamic, mode:Dynamic, transpose_output:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA DotGeneral operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dotgeneral
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS tensor
		  rhs: A `Tensor`. Must have the same type as `lhs`. the RHS tensor
		  dimension_numbers: A `string`.
		    a serialized xla::DotDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `lhs`.
	**/
	static public function xla_dot(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_dot_eager_fallback(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA DotGeneral operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dotgeneral
		.
		
		Args:
		  lhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the LHS tensor
		  rhs: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the RHS tensor
		  dimension_numbers: A `string`.
		    a serialized xla::DotDimensionNumbers proto.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  preferred_element_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.complex64, tf.int64, tf.qint8, tf.quint8, tf.qint32, tf.bfloat16, tf.uint16, tf.complex128, tf.half, tf.uint32, tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `preferred_element_type`.
	**/
	static public function xla_dot_v2(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_dot_v2_eager_fallback(lhs:Dynamic, rhs:Dynamic, dimension_numbers:Dynamic, precision_config:Dynamic, preferred_element_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicslice
		.
		
		DynamicSlice extracts a sub-array from the input array at dynamic
		start_indices. The size of the slice in each dimension is passed in
		size_indices, which specify the end point of exclusive slice intervals in each
		dimension -- [start, start + size). The shape of start_indices must have rank 1,
		with dimension size equal to the rank of operand.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  start_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    List of N integers containing the slice size for each
		    dimension. Each value must be strictly greater than zero, and start + size
		    must be less than or equal to the size of the dimension to avoid
		    implementation defined behavior.
		  size_indices: A `Tensor`. Must have the same type as `start_indices`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_dynamic_slice(input:Dynamic, start_indices:Dynamic, size_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_dynamic_slice_eager_fallback(input:Dynamic, start_indices:Dynamic, size_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA DynamicUpdateSlice operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#dynamicupdateslice
		.
		
		XlaDynamicUpdateSlice generates a result which is the value of the `input`
		operand, with a slice update overwritten at `indices`. The shape of `update`
		determines the shape of the sub-array of the result which is updated. The shape
		of indices must be rank == 1, with dimension size equal to the rank of `input`.
		
		Handling of out-of-bounds slice indices is implementation-defined.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  update: A `Tensor`. Must have the same type as `input`.
		    A `Tensor` of type T. Same rank as `input`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A vector of indices into `input`. Must have length equal to the rank of
		    `input`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function xla_dynamic_update_slice(input:Dynamic, update:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_dynamic_update_slice_eager_fallback(input:Dynamic, update:Dynamic, indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which supports basic einsum op with 2 inputs and 1 output.
		
		This op has better TPU performance since it doesn't have explicitly reshape and
		transpose operations as tf.einsum does.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `complex64`, `bfloat16`, `float32`.
		  b: A `Tensor`. Must have the same type as `a`.
		  equation: A `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `a`.
	**/
	static public function xla_einsum(a:Dynamic, b:Dynamic, equation:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_einsum_eager_fallback(a:Dynamic, b:Dynamic, equation:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Gather operator documented at
		
		  https://www.tensorflow.org/xla/operation_semantics#gather
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    The array we're gathering from.
		  start_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Array containing the starting indices of the slices we gather.
		  slice_sizes: A `Tensor`. Must have the same type as `start_indices`.
		    slice_sizes[i] is the bounds for the slice on dimension i.
		  dimension_numbers: A `string`.
		    A serialized xla::GatherDimensionNumbers proto.
		  indices_are_sorted: A `bool`.
		    Boolean indicating if the indices are sorted.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function xla_gather(operand:Dynamic, start_indices:Dynamic, slice_sizes:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_gather_eager_fallback(operand:Dynamic, start_indices:Dynamic, slice_sizes:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(inputs) : else_branch(inputs).
		
		Args:
		  cond: A `Tensor`. A boolean scalar.
		  inputs: A list of `Tensor` objects. A list of input tensors.
		  then_branch: A function decorated with @Defun.
		    A function takes 'inputs' and returns a list of tensors,
		    whose types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		    A function takes 'inputs' and returns a list of tensors.
		    whose types are the same as what then_branch returns.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
		  A list of tensors returned by either then_branch(inputs) or
		  else_branch(inputs). The input shapes of the then_branch and
		  else_branch must match.
	**/
	static public function xla_if(cond:Dynamic, inputs:Dynamic, then_branch:Dynamic, else_branch:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_if_eager_fallback(cond:Dynamic, inputs:Dynamic, then_branch:Dynamic, else_branch:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  keys: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    A `Tensor` of type K.
		  values: A `Tensor`. A `Tensor` of type V.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sorted_keys, sorted_values).
		
		  sorted_keys: A `Tensor`. Has the same type as `keys`. A `Tensor` of type K.
		  sorted_values: A `Tensor`. Has the same type as `values`. A `Tensor` of type V.
	**/
	static public function xla_key_value_sort(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_key_value_sort_eager_fallback(keys:Dynamic, values:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Pad operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#pad
		.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  padding_value: A `Tensor`. Must have the same type as `input`.
		    A scalar `Tensor` of type T.
		  padding_low: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the padding to apply at the start of each input dimensions. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_high: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply at the end of each input dimension. Must
		    be a compile-time constant 1D tensor of length equal to rank of input.
		  padding_interior: A `Tensor`. Must have the same type as `padding_low`.
		    the padding to apply between each input element. Must
		    be a compile-time constant 1D tensor of length equal to rank of input,
		    containing only non-negative values.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function xla_pad(input:Dynamic, padding_value:Dynamic, padding_low:Dynamic, padding_high:Dynamic, padding_interior:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_pad_eager_fallback(input:Dynamic, padding_value:Dynamic, padding_low:Dynamic, padding_high:Dynamic, padding_interior:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Receives the named tensor from another XLA computation. Wraps the XLA Recv
		
		operator documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#recv .
		
		Args:
		  dtype: A `tf.DType`. The type of the tensor.
		  tensor_name: A `string`. A string key that identifies the channel.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. The tensor to receive.
	**/
	static public function xla_recv(dtype:Dynamic, tensor_name:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_recv_eager_fallback(dtype:Dynamic, tensor_name:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Reduce operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#reduce .
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor
		  init_value: A `Tensor`. Must have the same type as `input`.
		    a scalar representing the initial value for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_reduce(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_reduce_eager_fallback(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA ReduceScatter operator
		
		  documented at https://www.tensorflow.org/xla/operation_semantics#reducescatter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `int32`, `uint32`.
		    Array or a non-empty tuple of arrays to reduce across replicas.
		  group_assignment: A `Tensor` of type `int32`.
		    Groups between which the reductions are performed.
		  scatter_dimension: A `Tensor` of type `int32`. Dimension to scatter.
		  reduce_op: A `string` from: `"Min", "Max", "Mul", "Add", "Mean"`.
		    Reduction computation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_reduce_scatter(input:Dynamic, group_assignment:Dynamic, scatter_dimension:Dynamic, reduce_op:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_reduce_scatter_eager_fallback(input:Dynamic, group_assignment:Dynamic, scatter_dimension:Dynamic, reduce_op:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA ReduceWindow operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#reducewindow .
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor
		  init_value: A `Tensor`. Must have the same type as `input`.
		    a scalar representing the initial value for the reduction
		  window_dimensions: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the shape of the window
		  window_strides: A `Tensor`. Must have the same type as `window_dimensions`.
		    the inter-window strides
		  base_dilations: A `Tensor`. Must have the same type as `window_dimensions`.
		  window_dilations: A `Tensor`. Must have the same type as `window_dimensions`.
		  padding: A `Tensor`. Must have the same type as `window_dimensions`.
		    the padding to apply at the start and end of each input dimensions
		  computation: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_reduce_window(input:Dynamic, init_value:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, base_dilations:Dynamic, window_dilations:Dynamic, padding:Dynamic, computation:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_reduce_window_eager_fallback(input:Dynamic, init_value:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, base_dilations:Dynamic, window_dilations:Dynamic, padding:Dynamic, computation:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Inverse of XlaSetDynamicDimensionSize.
		
		Make an xla bounded dynamic dimension into a static dimension. The bound of the
		size of dimension `dim_index` becomes the static dimension size.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_remove_dynamic_dimension_size(input:Dynamic, dim_index:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_remove_dynamic_dimension_size_eager_fallback(input:Dynamic, dim_index:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Replica ID.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function xla_replica_id(?name:Dynamic):Dynamic;
	static public function xla_replica_id_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Stateless PRNG bit generator.
		
		Wraps the XLA RngBitGenerator operator, documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#rngbitgenerator.
		
		Args:
		  algorithm: A `Tensor` of type `int32`. The PRNG algorithm to use, one of
		    tf.random.Algorithm.{PHILOX, THREEFRY, AUTO_SELECT}.
		  initial_state: A `Tensor` of type `uint64`.
		    Initial state for the PRNG algorithm. For THREEFRY, it should be
		    a u64[2] and for PHILOX a u64[3].
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The output shape of the generated data.
		  dtype: An optional `tf.DType` from: `tf.int32, tf.int64, tf.uint32, tf.uint64`. Defaults to `tf.uint64`.
		    The type of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_key, output).
		
		  output_key: A `Tensor` of type `uint64`.
		  output: A `Tensor` of type `dtype`.
	**/
	static public function xla_rng_bit_generator(algorithm:Dynamic, initial_state:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_rng_bit_generator_eager_fallback(algorithm:Dynamic, initial_state:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Scatter operator documented at
		
		  https://www.tensorflow.org/xla/operation_semantics#scatter.
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    Array to be scattered into.
		  scatter_indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Array containing the starting indices of the slices that must
		    be scattered to.
		  updates: A `Tensor`. Must have the same type as `operand`.
		    Array containing the values that must be used for scattering.
		  update_computation: A function decorated with @Defun.
		    Computation to be used for combining the existing values in
		    the input array and the updates during scatter.
		  dimension_numbers: A `string`.
		    A serialized xla::ScatterDimensionNumbers proto.
		  indices_are_sorted: A `bool`.
		    Boolean indicating if the indices are sorted.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function xla_scatter(operand:Dynamic, scatter_indices:Dynamic, updates:Dynamic, update_computation:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_scatter_eager_fallback(operand:Dynamic, scatter_indices:Dynamic, updates:Dynamic, update_computation:Dynamic, dimension_numbers:Dynamic, indices_are_sorted:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA SelectAndScatter operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#selectandscatter
		.
		
		Args:
		  operand: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor
		  window_dimensions: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    the shape of the window
		  window_strides: A `Tensor`. Must have the same type as `window_dimensions`.
		    the inter-window strides
		  padding: A `Tensor`. Must have the same type as `window_dimensions`.
		    the padding to apply at the start and end of each input dimensions
		  source: A `Tensor`. Must have the same type as `operand`.
		    a tensor of values to scatter
		  init_value: A `Tensor`. Must have the same type as `operand`.
		    a scalar representing the initial value for the output tensor
		  select: A function decorated with @Defun. a selection function to apply
		  scatter: A function decorated with @Defun. a scatter function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `operand`.
	**/
	static public function xla_select_and_scatter(operand:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, padding:Dynamic, source:Dynamic, init_value:Dynamic, select:Dynamic, scatter:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_select_and_scatter_eager_fallback(operand:Dynamic, window_dimensions:Dynamic, window_strides:Dynamic, padding:Dynamic, source:Dynamic, init_value:Dynamic, select:Dynamic, scatter:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices
		
		(Note: Only real inputs are supported).
		
		Computes the eigenvalues and eigenvectors of the innermost N-by-N matrices in
		tensor such that tensor[...,:,:] * v[..., :,i] = e[..., i] * v[...,:,i], for
		i=0...N-1.
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor.
		  lower: A `bool`.
		    a boolean specifies whether the calculation is done with the lower
		    triangular part or the upper triangular part.
		  max_iter: An `int`.
		    maximum number of sweep update, i.e., the whole lower triangular
		    part or upper triangular part based on parameter lower. Heuristically, it has
		    been argued that approximately logN sweeps are needed in practice (Ref: Golub &
		    van Loan "Matrix Computation").
		  epsilon: A `float`. the tolerance ratio.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (w, v).
		
		  w: A `Tensor`. Has the same type as `a`. The eigenvalues in ascending order, each repeated according to its
		    multiplicity.
		  v: A `Tensor`. Has the same type as `a`. The column v[..., :, i] is the normalized eigenvector corresponding to the
		    eigenvalue w[..., i].
	**/
	static public function xla_self_adjoint_eig(a:Dynamic, lower:Dynamic, max_iter:Dynamic, epsilon:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_self_adjoint_eig_eager_fallback(a:Dynamic, lower:Dynamic, max_iter:Dynamic, epsilon:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sends the named tensor to another XLA computation. Wraps the XLA Send operator
		
		documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#send .
		
		Args:
		  tensor: A `Tensor`. The tensor to send.
		  tensor_name: A `string`. A string key that identifies the channel.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function xla_send(tensor:Dynamic, tensor_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_send_eager_fallback(tensor:Dynamic, tensor_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Set a bound for the given input value as a hint to Xla compiler,
		
		        returns the same value.
		
		Args:
		  input: A `Tensor` of type `int32`.
		  bound: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function xla_set_bound(input:Dynamic, bound:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_set_bound_eager_fallback(input:Dynamic, bound:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Make a static dimension into a xla bounded dynamic dimension.
		
		        The current static dimension size will become the bound and the second
		        operand becomes the dynamic size of the dimension.
		
		Args:
		  input: A `Tensor`.
		  dim_index: A `Tensor` of type `int32`.
		  size: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_set_dynamic_dimension_size(input:Dynamic, dim_index:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_set_dynamic_dimension_size_eager_fallback(input:Dynamic, dim_index:Dynamic, size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which shards the input based on the given sharding attribute. It can
		
		selectively annotate a subset of tensor dimensions by skipping unspecified_dims,
		and the sharding annotation should be replicated in those dims.
		
		Args:
		  input: A `Tensor`.
		  sharding: An optional `string`. Defaults to `""`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_sharding(input:Dynamic, ?sharding:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_sharding_eager_fallback(input:Dynamic, sharding:Dynamic, unspecified_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts a tensor. Currently only sorts in ascending order are supported.
		
		Args:
		  input: A `Tensor`. A `Tensor` of type T.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. A `Tensor` of type T.
	**/
	static public function xla_sort(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_sort_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from automatic partitioning to
		
		manual partitioning. It annotates the input (full-shape, to be automatically
		partitioned) with the same sharding used by manual partitioning, and outputs a
		shard-shaped tensor to be consumed by later manually-partitioned ops. If the
		shape is not evenly partitionable, the padding region will be masked with 0s.
		The conversion can happen partially in subgroups, by specifying the dim
		attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_spmd_full_to_shard_shape(input:Dynamic, manual_sharding:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_spmd_full_to_shard_shape_eager_fallback(input:Dynamic, manual_sharding:Dynamic, dim:Dynamic, unspecified_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op used by XLA SPMD partitioner to switch from manual partitioning to
		
		automatic partitioning. It converts the shard-shaped, manually partitioned input
		into full-shaped tensor to be partitioned automatically with the same sharding
		used by manual partitioning. The conversion can happen partially in subgroups,
		by specifying the dim attribute, where only that dim will be converted.
		
		Args:
		  input: A `Tensor`.
		  manual_sharding: A `string`.
		  full_shape: A `tf.TensorShape` or list of `ints`.
		  dim: An optional `int`. Defaults to `-1`.
		  unspecified_dims: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function xla_spmd_shard_to_full_shape(input:Dynamic, manual_sharding:Dynamic, full_shape:Dynamic, ?dim:Dynamic, ?unspecified_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_spmd_shard_to_full_shape_eager_fallback(input:Dynamic, manual_sharding:Dynamic, full_shape:Dynamic, dim:Dynamic, unspecified_dims:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the eigen decomposition of a batch of self-adjoint matrices
		
		(Note: Only real inputs are supported).
		
		Computes the eigenvalues and eigenvectors of the innermost M-by-N matrices in
		tensor such that tensor[...,:,:] = u[..., :, :] * Diag(s[..., :]) * Transpose(v[...,:,:]).
		
		Args:
		  a: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    the input tensor.
		  max_iter: An `int`.
		    maximum number of sweep update, i.e., the whole lower triangular
		    part or upper triangular part based on parameter lower. Heuristically, it has
		    been argued that approximately log(min (M, N)) sweeps are needed in practice
		    (Ref: Golub & van Loan "Matrix Computation").
		  epsilon: A `float`. the tolerance ratio.
		  precision_config: A `string`. a serialized xla::PrecisionConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (s, u, v).
		
		  s: A `Tensor`. Has the same type as `a`. Singular values. The values are sorted in reverse order of magnitude, so
		    s[..., 0] is the largest value, s[..., 1] is the second largest, etc.
		  u: A `Tensor`. Has the same type as `a`. Left singular vectors.
		  v: A `Tensor`. Has the same type as `a`. Right singular vectors.
	**/
	static public function xla_svd(a:Dynamic, max_iter:Dynamic, epsilon:Dynamic, precision_config:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_svd_eager_fallback(a:Dynamic, max_iter:Dynamic, epsilon:Dynamic, precision_config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the variadic XLA Reduce operator.
		
		Semantics are documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#variadic_reduce.
		
		This version is limited to operands of the same dtype.
		XlaVariadicReduceV2 is a version that supports heterogeneous operands.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type in: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    the input tensor(s)
		  init_value: A list with the same length as `input` of `Tensor` objects with the same type as `input`.
		    scalar initial value(s) for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A list with the same length as `input` of `Tensor` objects with the same type as `input`.
	**/
	static public function xla_variadic_reduce(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_variadic_reduce_eager_fallback(input:Dynamic, init_value:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the variadic XLA Reduce operator.
		
		Semantics are documented at
		 https://www.tensorflow.org/performance/xla/operation_semantics#variadic_reduce.
		
		This is an expanded version of XlaVariadicReduce, with support for
		operands of different dtypes, and improved shape inference.
		
		Args:
		  inputs: A list of `Tensor` objects. the input tensor(s)
		  init_values: A list of `Tensor` objects. Must have the same type as `inputs`.
		    scalar initial value(s) for the reduction
		  dimensions_to_reduce: A list of `ints`.
		    dimension numbers over which to reduce
		  reducer: A function decorated with @Defun. a reducer function to apply
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
	**/
	static public function xla_variadic_reduce_v2(inputs:Dynamic, init_values:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_variadic_reduce_v2_eager_fallback(inputs:Dynamic, init_values:Dynamic, dimensions_to_reduce:Dynamic, reducer:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Wraps the XLA Sort operator, documented at
		
		 https://www.tensorflow.org/performance/xla/operation_semantics#sort
		.
		
		Sorts one or more tensors, with support for custom comparator, dimension, and
		is_stable attributes.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of `Tensor` of identical shape but possibly different types.
		  dimension: A `Tensor` of type `int32`.
		    The dimension along which to sort. Must be a compile-time constant.
		  comparator: A function decorated with @Defun.
		    A comparator function to apply to 2*N scalars and returning a
		    boolean. N is the number of sort inputs. If you want to sort in ascending
		    order then the comparator should perform a less-than comparison.
		  is_stable: A `bool`. Whether to use stable sort.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `inputs`.
		  A list of `Tensor` of same shape and types as the `input`.
	**/
	static public function xla_variadic_sort(inputs:Dynamic, dimension:Dynamic, comparator:Dynamic, is_stable:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_variadic_sort_eager_fallback(inputs:Dynamic, dimension:Dynamic, comparator:Dynamic, is_stable:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		    A function takes 'input' and returns a tensor.  If the tensor is
		    a scalar of non-boolean, the scalar is converted to a boolean
		    according to the following rule: if the scalar is a numerical
		    value, non-zero means True and zero means False; if the scalar is
		    a string, non-empty means True and empty means False. If the
		    tensor is not a scalar, non-emptiness means True and False
		    otherwise.
		  body: A function decorated with @Defun.
		    A function that takes a list of tensors and returns another
		    list of tensors. Both lists have the same types as specified by T.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
		  A list of output tensors whose types are T.
	**/
	static public function xla_while(input:Dynamic, cond:Dynamic, body:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_while_eager_fallback(input:Dynamic, cond:Dynamic, body:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}