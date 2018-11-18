/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.gen_model_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.gen_model_ops") extern class Gen_model_ops_Module {
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
	static public var _tree_predictions_v4_outputs : Dynamic;
	/**
		Creates a tree  model and returns a handle to it.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`.
		    handle to the tree resource to be created.
		  tree_config: A `Tensor` of type `string`. Serialized proto of the tree.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_tree_variable(tree_handle:Dynamic, tree_config:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_tree_variable
	**/
	static public function create_tree_variable_eager_fallback(tree_handle:Dynamic, tree_config:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function decision_tree_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decision_tree_resource_handle_op
	**/
	static public function decision_tree_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Outputs the number of times each feature was used in a split.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  `feature_counts[i]` is the number of times feature i was used
		  in a split.
	**/
	static public function feature_usage_counts(tree_handle:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function feature_usage_counts
	**/
	static public function feature_usage_counts_eager_fallback(tree_handle:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Outputs the leaf ids for the given input data.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  input_data: A `Tensor` of type `float32`.
		    The training batch's features as a 2-d tensor; `input_data[i][j]`
		    gives the j-th feature of the i-th input.
		  sparse_input_indices: A `Tensor` of type `int64`.
		    The indices tensor from the SparseTensor input.
		  sparse_input_values: A `Tensor` of type `float32`.
		    The values tensor from the SparseTensor input.
		  sparse_input_shape: A `Tensor` of type `int64`.
		    The shape tensor from the SparseTensor input.
		  input_spec: A `string`.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. `leaf_ids[i]` is the leaf id for input i.
	**/
	static public function traverse_tree_v4(tree_handle:Dynamic, input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_spec:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function traverse_tree_v4
	**/
	static public function traverse_tree_v4_eager_fallback(tree_handle:Dynamic, input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_spec:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deserializes a serialized tree config and replaces current tree.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree .
		  tree_config: A `Tensor` of type `string`. Serialized proto of the .
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tree_deserialize(tree_handle:Dynamic, tree_config:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_deserialize
	**/
	static public function tree_deserialize_eager_fallback(tree_handle:Dynamic, tree_config:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a tree has been initialized.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function tree_is_initialized_op(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_is_initialized_op
	**/
	static public function tree_is_initialized_op_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs the predictions for the given input data.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  input_data: A `Tensor` of type `float32`.
		    The training batch's features as a 2-d tensor; `input_data[i][j]`
		    gives the j-th feature of the i-th input.
		  sparse_input_indices: A `Tensor` of type `int64`.
		    The indices tensor from the SparseTensor input.
		  sparse_input_values: A `Tensor` of type `float32`.
		    The values tensor from the SparseTensor input.
		  sparse_input_shape: A `Tensor` of type `int64`.
		    The shape tensor from the SparseTensor input.
		  input_spec: A `string`.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (predictions, tree_paths).
		
		  predictions: A `Tensor` of type `float32`. `predictions[i][j]` is the probability that input i is class j.
		  tree_paths: A `Tensor` of type `string`. `tree_paths[i]` is a serialized TreePath proto for example i.
	**/
	static public function tree_predictions_v4(tree_handle:Dynamic, input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_spec:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_predictions_v4
	**/
	static public function tree_predictions_v4_eager_fallback(tree_handle:Dynamic, input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_spec:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the tree  to a proto.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Serialized proto of the tree.
	**/
	static public function tree_serialize(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_serialize
	**/
	static public function tree_serialize_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Outputs the size of the tree, including leaves.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. Size scalar.
	**/
	static public function tree_size(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_size
	**/
	static public function tree_size_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Updates the given leaves for each example with the new labels.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  leaf_ids: A `Tensor` of type `int32`.
		    `leaf_ids[i]` is the leaf id for input i.
		  input_labels: A `Tensor` of type `float32`.
		    The training batch's labels as a 1 or 2-d tensor.
		    'input_labels[i][j]' gives the j-th label/target for the i-th input.
		  input_weights: A `Tensor` of type `float32`.
		    The training batch's weights as a 1-d tensor.
		    'input_weights[i]' gives the weight for the i-th input.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function update_model_v4(tree_handle:Dynamic, leaf_ids:Dynamic, input_labels:Dynamic, input_weights:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function update_model_v4
	**/
	static public function update_model_v4_eager_fallback(tree_handle:Dynamic, leaf_ids:Dynamic, input_labels:Dynamic, input_weights:Dynamic, params:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}