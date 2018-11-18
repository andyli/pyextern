/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.model_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.model_ops") extern class Model_ops_Module {
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
	static public var print_function : Dynamic;
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
		Creates a tree ensemble model and returns a handle to it.
		
		Args:
		  stamp_token: The initial stamp token value for the ensemble resource.
		  tree_ensemble_config: A `Tensor` of type `string`.
		    Serialized proto of the tree ensemble.
		  name: A name for the ensemble variable.
		  container: An optional `string`. Defaults to `""`.
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the tree ensemble.
	**/
	static public function tree_ensemble_variable(stamp_token:Dynamic, tree_ensemble_config:Dynamic, name:Dynamic, ?container:Dynamic):Dynamic;
}