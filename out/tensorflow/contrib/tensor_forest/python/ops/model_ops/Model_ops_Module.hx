/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.model_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.model_ops") extern class Model_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
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
		Outputs the size of the tree, including leaves.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`. Size scalar.
	**/
	static public function tree_size(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a tree model and returns a handle to it.
		
		Args:
		  params: A TensorForestParams object.
		  tree_config: A `Tensor` of type `string`. Serialized proto of the tree.
		  stats_handle: Resource handle to the stats object.
		  name: A name for the variable.
		  container: An optional `string`. Defaults to `""`.
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the tree.
	**/
	static public function tree_variable(params:Dynamic, tree_config:Dynamic, stats_handle:Dynamic, name:Dynamic, ?container:Dynamic):Dynamic;
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
}