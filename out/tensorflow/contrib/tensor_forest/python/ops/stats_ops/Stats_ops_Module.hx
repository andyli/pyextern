/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.stats_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.stats_ops") extern class Stats_ops_Module {
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
		Creates a stats object and returns a handle to it.
		
		Args:
		  params: A TensorForestParams object.
		  stats_config: A `Tensor` of type `string`. Serialized proto of the stats.
		  name: A name for the variable.
		  container: An optional `string`. Defaults to `""`.
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the stats.
	**/
	static public function fertile_stats_variable(params:Dynamic, stats_config:Dynamic, name:Dynamic, ?container:Dynamic):Dynamic;
	/**
		Puts the Leaf models inside the tree into their final form.
		
		If drop_final_class is true, the per-class probability prediction of the
		last class is not stored in the leaf models.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  stats_handle: A `Tensor` of type `resource`. The handle to the stats.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function finalize_tree(tree_handle:Dynamic, stats_handle:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Grows the tree for finished nodes and allocates waiting nodes.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  stats_handle: A `Tensor` of type `resource`. The handle to the stats.
		  finished_nodes: A `Tensor` of type `int32`.
		    A 1-d Tensor of finished node ids from ProcessInput.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function grow_tree_v4(tree_handle:Dynamic, stats_handle:Dynamic, finished_nodes:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Add labels to stats after traversing the tree for each example.
		
		Outputs node ids that are finished.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. The handle to the tree.
		  stats_handle: A `Tensor` of type `resource`. The handle to the stats.
		  input_data: A `Tensor` of type `float32`.
		    The training batch's features as a 2-d tensor; `input_data[i][j]`
		    gives the j-th feature of the i-th input.
		  sparse_input_indices: A `Tensor` of type `int64`.
		    The indices tensor from the SparseTensor input.
		  sparse_input_values: A `Tensor` of type `float32`.
		    The values tensor from the SparseTensor input.
		  sparse_input_shape: A `Tensor` of type `int64`.
		    The shape tensor from the SparseTensor input.
		  input_labels: A `Tensor` of type `float32`.
		    The training batch's labels as a 1 or 2-d tensor.
		    'input_labels[i][j]' gives the j-th label/target for the i-th input.
		  input_weights: A `Tensor` of type `float32`.
		    The training batch's weights as a 1-d tensor.
		    'input_weights[i]' gives the weight for the i-th input.
		  leaf_ids: A `Tensor` of type `int32`.
		    `leaf_ids[i]` is the leaf id for input i.
		  random_seed: An `int`.
		  input_spec: A `string`.
		  params: A `string`. A serialized TensorForestParams proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
		  A 1-d tensor of node ids that have finished and are ready to
		  grow.
	**/
	static public function process_input_v4(tree_handle:Dynamic, stats_handle:Dynamic, input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_labels:Dynamic, input_weights:Dynamic, leaf_ids:Dynamic, random_seed:Dynamic, input_spec:Dynamic, params:Dynamic, ?name:Dynamic):Dynamic;
}