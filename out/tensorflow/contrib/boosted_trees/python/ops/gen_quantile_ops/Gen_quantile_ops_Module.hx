/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.gen_quantile_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.gen_quantile_ops") extern class Gen_quantile_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _make_quantile_summaries_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _quantile_accumulator_get_buckets_outputs : Dynamic;
	static public var _quantile_accumulator_serialize_outputs : Dynamic;
	static public var _quantile_buckets_outputs : Dynamic;
	static public var _quantiles_outputs : Dynamic;
	/**
		Bucketizes 'input' based on 'boundaries'. This function is similar to Bucketize
		
		op in core math_ops, except that boundaries are specified using an input tensor,
		as compared with a fixed attribute in Bucketize().
		
		For example, if the inputs are
		    boundaries = [0, 10, 100]
		    input = [[-5, 10000]
		             [150,   10]
		             [5,    100]]
		
		then the output will be
		    output = [[0, 3]
		              [3, 2]
		              [1, 3]]
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		    Any shape of Tensor contains with numeric type.
		  boundaries: A `Tensor` of type `float32`.
		    A vector Tensor of sorted floats specifies the boundaries
		    of the buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  Same shape as 'input', where each value of input is replaced with its corresponding bucket index.
	**/
	static public function bucketize_with_input_boundaries(input:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function bucketize_with_input_boundaries
	**/
	static public function bucketize_with_input_boundaries_eager_fallback(input:Dynamic, boundaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a stateful accumulator for quantile summaries.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		    The handle to the accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the initial value of the resource stamp.
		  epsilon: A `float`. Error bound on the quantile summary.
		  num_quantiles: An `int`. Number of buckets that we create from the data.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  max_elements: An optional `int`. Defaults to `1099511627776`.
		  generate_quantiles: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_quantile_accumulator(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, epsilon:Dynamic, num_quantiles:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?max_elements:Dynamic, ?generate_quantiles:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_quantile_accumulator
	**/
	static public function create_quantile_accumulator_eager_fallback(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, epsilon:Dynamic, num_quantiles:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?max_elements:Dynamic, ?generate_quantiles:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Creates a summary for the given features.
		
		Args:
		  dense_float_features: A list of `Tensor` objects with type `float32`.
		    A list of vectors which contains dense values.
		  sparse_float_feature_indices: A list of `Tensor` objects with type `int64`.
		    List of rank 2 tensors containing the sparse float
		    feature indices.
		  sparse_float_feature_values: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`.
		    List of rank 1 tensors containing the sparse float
		    feature values.
		  sparse_float_feature_shapes: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `int64`.
		    List of rank 1 tensors containing the shape of the
		    float feature.
		  example_weights: A `Tensor` of type `float32`.
		    Rank 2 (N, 1) tensor of per-example weights. Should match
		    dense and sparse features shape.
		  epsilon: A `float`. Error bound on the computed summary.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (dense_summaries, sparse_summaries).
		
		  dense_summaries: A list with the same length as `dense_float_features` of `Tensor` objects with type `string`. A list of serialized QuantileSummaryState for dense columns.
		  sparse_summaries: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `string`. A list of serialized QuantileSummaryState for sparse columns.
	**/
	static public function make_quantile_summaries(dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, example_weights:Dynamic, epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function make_quantile_summaries
	**/
	static public function make_quantile_summaries_eager_fallback(dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, example_weights:Dynamic, epsilon:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds each quantile summary to its stream.
		
		Args:
		  quantile_accumulator_handles: A list of at least 1 `Tensor` objects with type `resource`.
		    The handles to the quantile stream resources.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token to validate the Read/Write operation.
		  summaries: A list with the same length as `quantile_accumulator_handles` of `Tensor` objects with type `string`.
		    A list of serialized QuantileSummaryState.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function quantile_accumulator_add_summaries(quantile_accumulator_handles:Dynamic, stamp_token:Dynamic, summaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_add_summaries
	**/
	static public function quantile_accumulator_add_summaries_eager_fallback(quantile_accumulator_handles:Dynamic, stamp_token:Dynamic, summaries:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the state of the given resource.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		    The handle to the accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  stream_state: A `Tensor` of type `string`.
		    A serialized QuantileStreamState.
		  are_buckets_ready: A `Tensor` of type `bool`.
		    Whether the buckets are ready or not.
		  buckets: A `Tensor` of type `float32`.
		    Output quantile summary representing boundaries with "num_quantile"
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function quantile_accumulator_deserialize(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, stream_state:Dynamic, are_buckets_ready:Dynamic, buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_deserialize
	**/
	static public function quantile_accumulator_deserialize_eager_fallback(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, stream_state:Dynamic, are_buckets_ready:Dynamic, buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets quantile summary streams for each column with a new token.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		    The handle to the accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token to be used for the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function quantile_accumulator_flush(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_flush
	**/
	static public function quantile_accumulator_flush_eager_fallback(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets quantile summary stream and returns the summary.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		    The handle to the accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token to be used for the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  A scalar string that is the a summary of the accumulator.
	**/
	static public function quantile_accumulator_flush_summary(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_flush_summary
	**/
	static public function quantile_accumulator_flush_summary_eager_fallback(quantile_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns quantile buckets created during previous flush of the accumulator.
		
		Args:
		  quantile_accumulator_handles: A list of at least 1 `Tensor` objects with type `resource`.
		    The handles to the quantile stream resources.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token to validate the Read/Write operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (are_buckets_ready, buckets).
		
		  are_buckets_ready: A list with the same length as `quantile_accumulator_handles` of `Tensor` objects with type `bool`. Whether the buckets are ready or not.
		  buckets: A list with the same length as `quantile_accumulator_handles` of `Tensor` objects with type `float32`. Output quantile summary representing boundaries with "num_quantile"
		    elements.
	**/
	static public function quantile_accumulator_get_buckets(quantile_accumulator_handles:Dynamic, stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_get_buckets
	**/
	static public function quantile_accumulator_get_buckets_eager_fallback(quantile_accumulator_handles:Dynamic, stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a quantile accumulator has been initialized.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function quantile_accumulator_is_initialized(quantile_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_is_initialized
	**/
	static public function quantile_accumulator_is_initialized_eager_fallback(quantile_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the state of the given resource.
		
		Args:
		  quantile_accumulator_handle: A `Tensor` of type `resource`.
		    The handle to the accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, stream_state, are_buckets_ready, buckets).
		
		  stamp_token: A `Tensor` of type `int64`. Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  stream_state: A `Tensor` of type `string`. A serialized QuantileStreamState.
		  are_buckets_ready: A `Tensor` of type `bool`. Whether the buckets are ready or not.
		  buckets: A `Tensor` of type `float32`. Output quantile buckets representing boundaries with "num_quantile"
		    elements.
	**/
	static public function quantile_accumulator_serialize(quantile_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_accumulator_serialize
	**/
	static public function quantile_accumulator_serialize_eager_fallback(quantile_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes quantile buckets for a given list of dense and sparse features with
		
		given example weights.
		
		Args:
		  dense_float_features: A list of `Tensor` objects with type `float32`.
		    A list of vectors which contains dense values.
		  sparse_float_feature_indices: A list of `Tensor` objects with type `int64`.
		    List of rank 2 tensors containing the sparse float
		    feature indices.
		  sparse_float_feature_values: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`.
		    List of rank 1 tensors containing the sparse float
		    feature values.
		  sparse_float_feature_shapes: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `int64`.
		    List of rank 1 tensors containing the shape of the
		    float feature.
		  example_weights: A `Tensor` of type `float32`.
		    Rank 1 tensor containing the example weight tensor.
		  dense_config: A list of `strings`.
		    Config for computing buckets for dense values.
		    Each entry is QuantileConfig proto.
		  sparse_config: A list of `strings`.
		    Config for computing buckets for sparse feature values.
		    Each entry is QuantileConfig proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (dense_buckets, sparse_buckets).
		
		  dense_buckets: A list with the same length as `dense_float_features` of `Tensor` objects with type `float32`. Output quantile summary for each dense float tensor
		    representing boundaries each with "num_quantile" elements.
		  sparse_buckets: A list with the same length as `sparse_float_feature_indices` of `Tensor` objects with type `float32`. Output quantile summary for each sparse float value tensor
		    representing boundaries each with "num_quantile" elements.
	**/
	static public function quantile_buckets(dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, example_weights:Dynamic, dense_config:Dynamic, sparse_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_buckets
	**/
	static public function quantile_buckets_eager_fallback(dense_float_features:Dynamic, sparse_float_feature_indices:Dynamic, sparse_float_feature_values:Dynamic, sparse_float_feature_shapes:Dynamic, example_weights:Dynamic, dense_config:Dynamic, sparse_config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function quantile_stream_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantile_stream_resource_handle_op
	**/
	static public function quantile_stream_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes quantile for each a given list of dense and sparse feature values using
		
		the given buckets.
		
		Args:
		  dense_values: A list of `Tensor` objects with type `float32`.
		    List of rank 1 tensors containing the dense values.
		  sparse_values: A list of `Tensor` objects with type `float32`.
		    List of rank 1 tensors containing the sparse feature values.
		  dense_buckets: A list with the same length as `dense_values` of `Tensor` objects with type `float32`.
		    Quantile summary for each of the dense float tensor.
		  sparse_buckets: A list with the same length as `sparse_values` of `Tensor` objects with type `float32`.
		    Quantile summary for each of the sparse feature float tensor.
		  sparse_indices: A list with the same length as `sparse_values` of `Tensor` objects with type `int64`.
		    List of rank 2 tensors with indices for sparse float
		    tensors.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (dense_quantiles, sparse_quantiles).
		
		  dense_quantiles: A list with the same length as `dense_values` of `Tensor` objects with type `int32`. Rank 2 tensors representing associated quantiles for each of
		    dense float tensors and the dimension.
		  sparse_quantiles: A list with the same length as `sparse_values` of `Tensor` objects with type `int32`. Rank 2 tensors representing associated quantiles for each of
		    the sparse feature tensors for each of sparse feature dimensions:
		    [quantile id, dimension id].
	**/
	static public function quantiles(dense_values:Dynamic, sparse_values:Dynamic, dense_buckets:Dynamic, sparse_buckets:Dynamic, sparse_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function quantiles
	**/
	static public function quantiles_eager_fallback(dense_values:Dynamic, sparse_values:Dynamic, dense_buckets:Dynamic, sparse_buckets:Dynamic, sparse_indices:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}