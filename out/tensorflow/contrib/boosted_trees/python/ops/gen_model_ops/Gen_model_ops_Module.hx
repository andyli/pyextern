/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.gen_model_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.gen_model_ops") extern class Gen_model_ops_Module {
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
	static public var _tree_ensemble_serialize_outputs : Dynamic;
	static public var _tree_ensemble_used_handlers_outputs : Dynamic;
	/**
		Creates a tree ensemble model and returns a handle to it.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble resource to be created.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the initial value of the resource stamp.
		  tree_ensemble_config: A `Tensor` of type `string`.
		    Serialized proto of the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function create_tree_ensemble_variable(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function create_tree_ensemble_variable
	**/
	static public function create_tree_ensemble_variable_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function decision_tree_ensemble_resource_handle_op(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decision_tree_ensemble_resource_handle_op
	**/
	static public function decision_tree_ensemble_resource_handle_op_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		Deserializes a serialized tree ensemble config and replaces current tree
		
		ensemble.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the new value of the resource stamp.
		  tree_ensemble_config: A `Tensor` of type `string`.
		    Serialized proto of the ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tree_ensemble_deserialize(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_deserialize
	**/
	static public function tree_ensemble_deserialize_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, tree_ensemble_config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Checks whether a tree ensemble has been initialized.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function tree_ensemble_is_initialized_op(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_is_initialized_op
	**/
	static public function tree_ensemble_is_initialized_op_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Serializes the tree ensemble to a proto.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (stamp_token, tree_ensemble_config).
		
		  stamp_token: A `Tensor` of type `int64`. Stamp token of the tree ensemble resource.
		  tree_ensemble_config: A `Tensor` of type `string`. Serialized proto of the ensemble.
	**/
	static public function tree_ensemble_serialize(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_serialize
	**/
	static public function tree_ensemble_serialize_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieves the tree ensemble resource stamp token.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`. Stamp token of the tree ensemble resource.
	**/
	static public function tree_ensemble_stamp_token(tree_ensemble_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_stamp_token
	**/
	static public function tree_ensemble_stamp_token_eager_fallback(tree_ensemble_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the mask of used handlers along with the number of non-zero elements in
		
		this mask. Used in feature selection.
		
		Args:
		  tree_ensemble_handle: A `Tensor` of type `resource`.
		    Handle to the tree ensemble.
		  stamp_token: A `Tensor` of type `int64`.
		    Token to use as the new value of the resource stamp.
		  num_all_handlers: An `int` that is `>= 0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (num_used_handlers, used_handlers_mask).
		
		  num_used_handlers: A `Tensor` of type `int64`. number of feature column handlers used in the model.
		  used_handlers_mask: A `Tensor` of type `bool`. A boolean vector of showing which handlers are used in the
		    model.
	**/
	static public function tree_ensemble_used_handlers(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, num_all_handlers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tree_ensemble_used_handlers
	**/
	static public function tree_ensemble_used_handlers_eager_fallback(tree_ensemble_handle:Dynamic, stamp_token:Dynamic, num_all_handlers:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}