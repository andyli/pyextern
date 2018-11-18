/* This file is generated, do not edit! */
package tensorflow.contrib.meta_graph_transform.meta_graph_transform;
@:pythonImport("tensorflow.contrib.meta_graph_transform.meta_graph_transform") extern class Meta_graph_transform_Module {
	static public var _FREEZE_GRAPH_TRANSFORM : Dynamic;
	static public var _SPARSIFY_GATHER_TRANSFORM : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add new inits to collection.
		
		Args:
		  meta_graph_def: The MetaGraphDef protocol buffer to update.
		  updated_initializer_names: Dictionary of the updated "infrastructural" nodes
		    (initializers, save and restore ops, etc.). The keys in this dictionary
		    indicate the collection where these nodes were obtained from.
		
		Raises:
		  ValueError: if the tensor was removed.
	**/
	static public function _add_new_inits_to_collection(meta_graph_def:Dynamic, updated_initializer_names:Dynamic):Dynamic;
	/**
		Copy collection to the transformed MetaGraphDef, omitting removed items.
	**/
	static public function _add_pruned_collection(base_meta_graph_def:Dynamic, meta_graph_def:Dynamic, collection_name:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Copy the Saver into the transformed MetaGraphDef, if valid.
		
		Currently this copies the Saver as is, after verifying that none of the
		referenced Save & Restore ops were removed.  A future version will modify
		the Save and Restore ops themselves as needed to account for removed
		Variables.
		
		Args:
		  base_meta_graph_def: The untransformed MetaGraphDef.
		  meta_graph_def: The transformed MetaGraphDef being built.
		  removed_op_names: An iterable of names of ops that were removed.
	**/
	static public function _add_pruned_saver(base_meta_graph_def:Dynamic, meta_graph_def:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Copy the named signature into the transformed MetaGraphDef, if valid.
		
		If any input or output mentioned in the signature was removed by the graph
		transform, the signature is silently omitted from the transformed
		MetaGraphDef.
		
		Args:
		  base_meta_graph_def: The untransformed MetaGraphDef.
		  meta_graph_def: The transformed MetaGraphDef being built.
		  signature_name: The name of the signature to copy.
		  removed_op_names: An iterable of names of ops that were removed.
	**/
	static public function _add_pruned_signature(base_meta_graph_def:Dynamic, meta_graph_def:Dynamic, signature_name:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Verify that the named tensor was not removed.
		
		Args:
		  tensor_name: the name of a tensor to check.
		  removed_op_names: An iterable of names of ops that were removed.
		
		Raises:
		  ValueError: if the tensor was removed.
	**/
	static public function _check_tensor_not_removed(tensor_name:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Clean the specified save and restore op.
		
		Updates the dtypes attribute of the save / restore op and the associated name
		and shape tensors to remove entries for variables that have been removed.
		
		Args:
		  graph_def: A GraphDef proto to be transformed.
		  op: The save or restore op to update.
		  removed_op_names: List of op names that have been removed.
	**/
	static public function _clean_save_and_restore(graph_def:Dynamic, op:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Creates a new shared init node that is connected to via control deps.
		
		Args:
		  graph_def: The GraphDef proto to add the shared init node to.
		  shared_init_op_name: A string specifying the name of the shared init node to
		    create.
		  nodes_to_connect: A list of strings specifying the names of nodes to connect
		    to the shared node via control dependencies.
	**/
	static public function _connect_to_shared_init_op(graph_def:Dynamic, shared_init_op_name:Dynamic, nodes_to_connect:Dynamic):Dynamic;
	/**
		Apply requested transforms to a GraphDef, including freezing.
		
		Args:
		  graph_def: A GraphDef proto to be transformed.
		  input_names: Names of input nodes.
		  output_names: Names of output nodes.
		  initializer_names: Dictionary of the "infrastructural" nodes (initializers,
		    save and restore ops, etc.) that should be retained even if they are not
		    transitively reachable from output nodes. The keys in this dictionary
		    indicate the collection where these nodes were obtained from.
		  transforms: A list of strings naming the graph transforms to be applied in
		    order.  These transform names are exactly those supported by the Graph
		    Transform Tool, with the addition of the 'freeze_graph' and
		    'sparsify_gather' transforms.
		  saver_def: A SaverDef proto used for restoring a checkpoint during freezing,
		    if needed (default None).
		  checkpoint_path:  A path to a checkpoint to restore during freezing,
		    if needed (default None).
		Returns:
		   A tuple containing the GraphDef and a Dict of updated initializer nodes.
	**/
	static public function _do_transforms(graph_def:Dynamic, input_names:Dynamic, output_names:Dynamic, initializer_names:Dynamic, transforms:Dynamic, ?saver_def:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Identify all infrastructural Ops, to ensure that they are retained.
		
		We need to retain infrastructural Ops (init and saver stuff), in addition
		to the desired outputs.
		
		For now we retain *all* save and restore ops, variable initializers,
		table initializers, and main init ops.
		This means that strip_unused_nodes will not remove unused variables.
		
		Args:
		  base_meta_graph_def: a GraphDef proto in which to identify nodes to retain.
		
		Returns:
		  A dictionary corresponding to the nodes associated with each collection
		  that are to be retained.
	**/
	static public function _find_all_mandatory_retain_ops(base_meta_graph_def:Dynamic):Dynamic;
	/**
		Fetch a node from a GraphDef proto by name.
	**/
	static public function _find_op(graph_def:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Converts all variables in a graph and checkpoint into constants.
		
		During this process, we need to retain certain initializer nodes (e.g. table
		initializer nodes). Instead of determining which dependencies
		of the shared initializer node (e.g. group_deps) to keep, we
		reconstruct the connections between the individual initializer nodes and
		the shared node after freezing the graph.
		
		Args:
		  input_graph_def: A GraphDef proto to be frozen.
		  output_node_names: Names of output nodes.
		  initializer_names: Names of initializer nodes to keep.
		  shared_init_op_name: The name of the shared initializer node to connect the
		    nodes in initializer names to.
		  input_saver_def: A SaverDef proto used for restoring a checkpoint.
		  input_checkpoint: A path to a checkpoint to restore.
		
		Returns:
		  A frozen GraphDef.
	**/
	static public function _freeze_graph_with_def_protos(input_graph_def:Dynamic, output_node_names:Dynamic, initializer_names:Dynamic, shared_init_op_name:Dynamic, input_saver_def:Dynamic, input_checkpoint:Dynamic):Dynamic;
	/**
		Handle the freeze transform.
		
		Determine which initializer nodes should be retained by the freeze transform.
		Retain those nodes and return an updated dictionary containing them.
		
		Args:
		  graph_def: A GraphDef proto to be transformed.
		  output_names: Names of output nodes.
		  initializer_names: Dictionary of the "infrastructural" nodes (initializers,
		    save and restore ops, etc.). The keys in this dictionary
		    indicate the collection where these nodes were obtained from.
		  saver_def: A SaverDef proto used for restoring a checkpoint during freezing,
		    if needed (default None).
		  checkpoint_path:  A path to a checkpoint to restore during freezing,
		    if needed (default None).
		
		Returns:
		  A tuple containing the GraphDef and a Dict of pruned initializer nodes.
	**/
	static public function _freeze_transform(graph_def:Dynamic, output_names:Dynamic, initializer_names:Dynamic, saver_def:Dynamic, checkpoint_path:Dynamic):Dynamic;
	/**
		Obtain node names from a collection.
	**/
	static public function _get_all_node_names_from_collection(meta_graph_def:Dynamic, collection_key:Dynamic):Dynamic;
	/**
		Obtain node names from a collection.
	**/
	static public function _get_all_protos_from_collection(meta_graph_def:Dynamic, collection_key:Dynamic):Dynamic;
	/**
		Obtain the shared init op name, if it exists.
		
		Args:
		 initializer_names: Dictionary of the "infrastructural" nodes (initializers,
		   save and restore ops, etc.). The keys in this dictionary
		   indicate the collection where these nodes were obtained from.
		
		Returns:
		  A string indicating the shared init op name or none if None if none exists.
	**/
	static public function _get_shared_init_op(initializer_names:Dynamic):Dynamic;
	/**
		Obtain a node name that is the single element of a collection.
	**/
	static public function _get_single_node_name_from_collection(meta_graph_def:Dynamic, collection_key:Dynamic):Dynamic;
	/**
		Pass through gtt transforms, applying them to the graph_def.
		
		Args:
		  graph_def: A GraphDef proto to be transformed.
		  input_names: Names of input nodes.
		  output_names: Names of output nodes.
		  initializer_names: Dictionary of the "infrastructural" nodes (initializers,
		    save and restore ops, etc.) that should be retained even if they are not
		    transitively reachable from output nodes. The keys in this dictionary
		    indicate the collection where these nodes were obtained from.
		  transforms: A list of strings naming the graph transforms to be applied in
		    order.
		Returns:
		  The transformed GraphDef.
	**/
	static public function _gtt_transforms(graph_def:Dynamic, input_names:Dynamic, output_names:Dynamic, initializer_names:Dynamic, transforms:Dynamic):Dynamic;
	/**
		Determine whether the named tensor is an output of a removed op.
	**/
	static public function _is_removed(tensor_name:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Determine whether any removed op is mentioned in the given object.
		
		This relies on the string representation of the object.  This is used for
		proto messages that may mention ops by name in nested fields.  The string
		representation of the proto includes those field values, so this string
		search approach is sufficient.
		
		Args:
		  s: an object to search for removed op names.
		  removed_op_names: An iterable of names of ops that were removed.
		
		Returns:
		  True if any removed op is mentioned in the given object, False otherwise.
	**/
	static public function _is_removed_mentioned(s:Dynamic, removed_op_names:Dynamic):Dynamic;
	/**
		Get the op name from a tensor name.
	**/
	static public function _op_name(tensor_name:Dynamic):Dynamic;
	/**
		Handle the sparsify gather transform.
		
		Provides the transform the checkpoint and keeps track of the newly created
		initializer nodes.
		
		Args:
		  graph_def: A GraphDef proto to be transformed.
		  input_names: Names of input nodes.
		  output_names: Names of output nodes.
		  initializer_names: Dictionary of the "infrastructural" nodes (initializers,
		    save and restore ops, etc.). The keys in this dictionary
		    indicate the collection where these nodes were obtained from.
		  checkpoint_path:  A path to a checkpoint.
		
		Returns:
		  A tuple containing the GraphDef and a Dict of updated initializer nodes.
		Raises:
		  ValueError: if the restore_op_name does not have the expected format.
	**/
	static public function _sparsify_gather_transform(graph_def:Dynamic, input_names:Dynamic, output_names:Dynamic, initializer_names:Dynamic, checkpoint_path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Apply the Graph Transform tool to a MetaGraphDef.
		
		Args:
		  base_meta_graph_def: A MetaGraphDef protocol buffer to transform.
		  input_names: Names of input nodes.
		  output_names: Names of output nodes.
		  transforms: A list of strings naming the graph transforms to be applied in
		    order.  These transform names are exactly those supported by the Graph
		    Transform Tool, with the addition of the 'freeze_graph' and
		    'sparsify_gather' transforms.
		  tags: A list of tags with which to annotate the transformed MetaGraphDef.
		  checkpoint_path: A path to a checkpoint to restore during freezing,
		    if needed (default None).
		
		Returns:
		  A new transformed MetaGraphDef protocol buffer.
	**/
	static public function meta_graph_transform(base_meta_graph_def:Dynamic, input_names:Dynamic, output_names:Dynamic, transforms:Dynamic, tags:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}