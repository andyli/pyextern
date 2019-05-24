/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_tensor_forest_ops;
@:pythonImport("tensorflow.python.ops.gen_tensor_forest_ops") extern class Gen_tensor_forest_ops_Module {
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
		Creates a tree resource and returns a handle to it.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`.
		    Handle to the tree resource to be created.
		  tree_config: A `Tensor` of type `string`.
		    Serialized proto string of the boosted_trees.Tree.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tensor_forest_create_tree_variable(tree_handle:Dynamic, tree_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_create_tree_variable
	**/
	static public function tensor_forest_create_tree_variable_eager_fallback(tree_handle:Dynamic, tree_config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Deserializes a proto into the tree handle
		
		Args:
		  tree_handle: A `Tensor` of type `resource`.
		    Handle to the tree resource to be restored.
		  tree_config: A `Tensor` of type `string`.
		    Serialied proto string of the boosted_trees.Tree proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tensor_forest_tree_deserialize(tree_handle:Dynamic, tree_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_deserialize
	**/
	static public function tensor_forest_tree_deserialize_eager_fallback(tree_handle:Dynamic, tree_config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a tree has been initialized.
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. Handle to the tree.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function tensor_forest_tree_is_initialized_op(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_is_initialized_op
	**/
	static public function tensor_forest_tree_is_initialized_op_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Output the logits for the given input data
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. Handle to the tree resource.
		  dense_features: A `Tensor` of type `float32`.
		    Rank 2 dense features tensor.
		  logits_dimension: An `int`. Scalar, dimension of the logits.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tensor_forest_tree_predict(tree_handle:Dynamic, dense_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_predict
	**/
	static public function tensor_forest_tree_predict_eager_fallback(tree_handle:Dynamic, dense_features:Dynamic, logits_dimension:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Creates a handle to a TensorForestTreeResource
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tensor_forest_tree_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_resource_handle_op
	**/
	static public function tensor_forest_tree_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the tree handle to a proto
		
		Args:
		  tree_handle: A `Tensor` of type `resource`.
		    Handle to the tree resource to be serialized.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tensor_forest_tree_serialize(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_serialize
	**/
	static public function tensor_forest_tree_serialize_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Get the number of nodes in a tree
		
		Args:
		  tree_handle: A `Tensor` of type `resource`. Handle to the tree resource.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tensor_forest_tree_size(tree_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tensor_forest_tree_size
	**/
	static public function tensor_forest_tree_size_eager_fallback(tree_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}