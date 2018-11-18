/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.gen_stats_accumulator_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.gen_stats_accumulator_ops") extern class Gen_stats_accumulator_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _stats_accumulator_scalar_flush_outputs : Dynamic;
	static public var _stats_accumulator_scalar_make_summary_outputs : Dynamic;
	static public var _stats_accumulator_scalar_serialize_outputs : Dynamic;
	static public var _stats_accumulator_tensor_flush_outputs : Dynamic;
	static public var _stats_accumulator_tensor_make_summary_outputs : Dynamic;
	static public var _stats_accumulator_tensor_serialize_outputs : Dynamic;
	/**
		Creates a scalar stats accumulator.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the stats accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the initial value of the resource stamp.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_stats_accumulator_scalar(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_stats_accumulator_scalar
	**/
	static public function create_stats_accumulator_scalar_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a tensor stats accumulator.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the tree ensemble resource to be created.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the initial value of the resource stamp.
		  per_slot_gradient_shape: A `Tensor` of type `int64`.
		    a vector that defines the shape of gradients.
		  per_slot_hessian_shape: A `Tensor` of type `int64`.
		    a vector that defines the shape of hessians.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_stats_accumulator_tensor(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, per_slot_gradient_shape:Dynamic, per_slot_hessian_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_stats_accumulator_tensor
	**/
	static public function create_stats_accumulator_tensor_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, per_slot_gradient_shape:Dynamic, per_slot_hessian_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Updates the scalar stats accumulator.
		
		Args:
		  stats_accumulator_handles: A list of at least 1 `Tensor` objects with type `resource`.
		    A list of handles to the stats accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  partition_ids: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `int32`.
		    A list of vectors of partition_ids.
		  feature_ids: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `int64`.
		    Rank 2 tensor of feature id and feature dimension ids.
		  gradients: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `float32`.
		    A list of vectors of gradients for each slot in
		    <partition_id, feature_id, feature_dimension_id>.
		  hessians: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `float32`.
		    A list of vectors of hessians for each slot in
		    <partition_id, feature_id, feature_dimension_id>.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stats_accumulator_scalar_add(stats_accumulator_handles:Dynamic, stamp_token:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_add
	**/
	static public function stats_accumulator_scalar_add_eager_fallback(stats_accumulator_handles:Dynamic, stamp_token:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets the scalar stats accumulator with the serialized state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the stats accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  num_updates: A `Tensor` of type `int64`.
		    Number of times stats were added to this accumulator since last
		    flush.
		  partition_ids: A `Tensor` of type `int32`. A vector of partition_ids.
		  feature_ids: A `Tensor` of type `int64`.
		    Rank 2 tensor of feature id and feature dimension ids.
		  gradients: A `Tensor` of type `float32`.
		    A vector of gradients for each slot in <partition_id, feature_id,
		    feature_dimension_id>.
		  hessians: A `Tensor` of type `float32`.
		    A vector of hessians for each slot in <partition_id, feature_id,
		    feature_dimension_id>
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stats_accumulator_scalar_deserialize(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_deserialize
	**/
	static public function stats_accumulator_scalar_deserialize_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Flushes the scalar stats accumulator to output and resets the internal state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the stats accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token for the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (num_updates, output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  num_updates: A `Tensor` of type `int64`. Number of times stats were added to this accumulator since last
		        flush.
		    output_partition_ids A vector of partition_ids for the slots.
		  output_partition_ids: A `Tensor` of type `int32`.
		  output_feature_ids: A `Tensor` of type `int64`. Rank 2 tensor of feature id and feature dimension ids.
		  output_gradients: A `Tensor` of type `float32`. A vector of gradients, with a value for each slot
		    in <output_partition_id, output_feature_id>.
		  output_hessians: A `Tensor` of type `float32`. A vector of hessians, with a value for each slot
		    in <output_partition_id, output_feature_id>.
	**/
	static public function stats_accumulator_scalar_flush(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_flush
	**/
	static public function stats_accumulator_scalar_flush_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a stats accumulator has been initialized.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function stats_accumulator_scalar_is_initialized(stats_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_is_initialized
	**/
	static public function stats_accumulator_scalar_is_initialized_eager_fallback(stats_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  partition_ids: A `Tensor` of type `int32`.
		  feature_ids: A `Tensor` of type `int64`.
		  gradients: A `Tensor` of type `float32`.
		  hessians: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  output_partition_ids: A `Tensor` of type `int32`.
		  output_feature_ids: A `Tensor` of type `int64`.
		  output_gradients: A `Tensor` of type `float32`.
		  output_hessians: A `Tensor` of type `float32`.
	**/
	static public function stats_accumulator_scalar_make_summary(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_make_summary
	**/
	static public function stats_accumulator_scalar_make_summary_eager_fallback(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function stats_accumulator_scalar_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_resource_handle_op
	**/
	static public function stats_accumulator_scalar_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the scalar stats accumulator state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the stats accumulator.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, num_updates, output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  stamp_token: A `Tensor` of type `int64`. The current stamp token for the resource.
		  num_updates: A `Tensor` of type `int64`. Number of times stats were added to this accumulator since last
		        flush.
		    output_partition_ids A vector of partition_ids for the slots.
		  output_partition_ids: A `Tensor` of type `int32`.
		  output_feature_ids: A `Tensor` of type `int64`. Rank 2 tensor of feature id and feature dimension ids.
		  output_gradients: A `Tensor` of type `float32`. A vector of gradients, with a value for each slot
		    in <output_partition_id, output_feature_id>.
		  output_hessians: A `Tensor` of type `float32`. A vector of hessians, with a value for each slot
		    in <output_partition_id, output_feature_id>.
	**/
	static public function stats_accumulator_scalar_serialize(stats_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_scalar_serialize
	**/
	static public function stats_accumulator_scalar_serialize_eager_fallback(stats_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Updates the tensor stats accumulator.
		
		Args:
		  stats_accumulator_handles: A list of at least 1 `Tensor` objects with type `resource`.
		    A list of handles to the stats accumulator.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  partition_ids: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `int32`.
		    A list of vectors of partition_ids.
		  feature_ids: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `int64`.
		    Rank 2 tensor of feature id and feature dimension ids.
		  gradients: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `float32`.
		    A list of vectors of gradients for each slot in
		    <partition_id, feature_id, feature_dimension_id>.
		  hessians: A list with the same length as `stats_accumulator_handles` of `Tensor` objects with type `float32`.
		    A list of vectors of hessians for each slot in
		    <partition_id, feature_id, feature_dimension_id>.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stats_accumulator_tensor_add(stats_accumulator_handles:Dynamic, stamp_token:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_add
	**/
	static public function stats_accumulator_tensor_add_eager_fallback(stats_accumulator_handles:Dynamic, stamp_token:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Resets the tensor stats accumulator with the serialized state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the tree ensemble resource to be created.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  num_updates: A `Tensor` of type `int64`.
		    Number of times stats were added to this accumulator since last
		    flush.
		  partition_ids: A `Tensor` of type `int32`. A vector of partition_ids.
		  feature_ids: A `Tensor` of type `int64`.
		    Rank 2 tensor of feature id and feature dimension ids.
		  gradients: A `Tensor` of type `float32`.
		    A vector of gradients for each slot in <partition_id, feature_id,
		    feature_dimension_id>
		  hessians: A `Tensor` of type `float32`.
		    A vector of hessians for each slot in <partition_id, feature_id,
		    feature_dimension_id>.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function stats_accumulator_tensor_deserialize(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_deserialize
	**/
	static public function stats_accumulator_tensor_deserialize_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Flushes the stats accumulator to output and resets the internal state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the tree ensemble resource to be created.
		  stamp_token: A `Tensor` of type `int64`.
		    Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  next_stamp_token: A `Tensor` of type `int64`.
		    Stamp token to be used for the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (num_updates, output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  num_updates: A `Tensor` of type `int64`. Number of times stats were added to this accumulator since last
		    flush.
		  output_partition_ids: A `Tensor` of type `int32`. A vector of partition_ids for the slots.
		  output_feature_ids: A `Tensor` of type `int64`. Rank 2 tensor of feature id and feature dimension ids.
		  output_gradients: A `Tensor` of type `float32`. A tensor of gradients, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>.
		  output_hessians: A `Tensor` of type `float32`. A tensor of hessians, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>>.
	**/
	static public function stats_accumulator_tensor_flush(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_flush
	**/
	static public function stats_accumulator_tensor_flush_eager_fallback(stats_accumulator_handle:Dynamic, stamp_token:Dynamic, next_stamp_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a tensor stats accumulator has been initialized.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function stats_accumulator_tensor_is_initialized(stats_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_is_initialized
	**/
	static public function stats_accumulator_tensor_is_initialized_eager_fallback(stats_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Summarizes the stats by summing the <gradients, hessians> that are for the same
		
		<partition_id, feature_id, feature_dimension_id>.
		
		Args:
		  partition_ids: A `Tensor` of type `int32`. A vector of partition_ids.
		  feature_ids: A `Tensor` of type `int64`.
		    Rank 2 tensor of feature id and feature dimension ids.
		  gradients: A `Tensor` of type `float32`.
		    A vector of gradients for each slot in <partition_id, feature_id,
		    feature_dimension_id>.
		  hessians: A `Tensor` of type `float32`.
		    A vector of hessians for each slot in <partition_id, feature_id,
		    feature_dimension_id>.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  output_partition_ids: A `Tensor` of type `int32`. A vector of partition_ids for the slots.
		  output_feature_ids: A `Tensor` of type `int64`. A rank2 tensor of feature_ids and dimensions for the slots.
		  output_gradients: A `Tensor` of type `float32`. A tensor of gradients, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>.
		  output_hessians: A `Tensor` of type `float32`. A tensor of hessians, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>.
	**/
	static public function stats_accumulator_tensor_make_summary(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_make_summary
	**/
	static public function stats_accumulator_tensor_make_summary_eager_fallback(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function stats_accumulator_tensor_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_resource_handle_op
	**/
	static public function stats_accumulator_tensor_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the scalar stats accumulator state.
		
		Args:
		  stats_accumulator_handle: A `Tensor` of type `resource`.
		    handle to the tree ensemble resource to be created.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, num_updates, output_partition_ids, output_feature_ids, output_gradients, output_hessians).
		
		  stamp_token: A `Tensor` of type `int64`. Stamp token for Read/Write operations.
		    Any operation with a mismatching token will be dropped.
		  num_updates: A `Tensor` of type `int64`. Number of times stats were added to this accumulator since last
		    flush.
		  output_partition_ids: A `Tensor` of type `int32`. A vector of partition_ids for the slots.
		  output_feature_ids: A `Tensor` of type `int64`. Rank 2 tensor of feature id and feature dimension ids.
		  output_gradients: A `Tensor` of type `float32`. A tensor of gradients, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>.
		  output_hessians: A `Tensor` of type `float32`. A tensor of hessians, first dimension matches slots
		    in <partition_id, feature_id, feature_dimension_id>.
	**/
	static public function stats_accumulator_tensor_serialize(stats_accumulator_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function stats_accumulator_tensor_serialize
	**/
	static public function stats_accumulator_tensor_serialize_eager_fallback(stats_accumulator_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}