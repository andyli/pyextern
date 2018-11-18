/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.transform;
@:pythonImport("tensorflow.contrib.graph_editor.transform") extern class Transform_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Complete `ops` so that the transformed graph is valid.
		
		Partially copying a graph can lead to a malformed graph. For instance,
		copying half of a while construct is likely to result in an invalid graph.
		This function attempts to add missing ops so that the transformation result
		in a valid graph.
		
		Args:
		  ops: list of ops (modifed in-place).
		  control_ios: object created by a call to `util.ControlOutputs`.
	**/
	static public function _add_control_flow_ops(ops:Dynamic, control_ios:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add the transformed elem to the (renamed) collections of elem.
		
		A collection is renamed only if is not a known key, as described in
		`tf.GraphKeys`.
		
		Args:
		  info: Transform._TmpInfo instance.
		  elem: the original element (`tf.Tensor` or `tf.Operation`)
		  elem_: the transformed element
	**/
	static public function assign_renamed_collections_handler(info:Dynamic, elem:Dynamic, elem_:Dynamic):Dynamic;
	/**
		Copy a subgraph.
		
		Args:
		  sgv: the source subgraph-view. This argument is converted to a subgraph
		    using the same rules than the function subgraph.make_view.
		  dst_graph: the destination graph.
		  dst_scope: the destination scope.
		  src_scope: the source scope.
		  reuse_dst_scope: if True the dst_scope is re-used if it already exists.
		    Otherwise, the scope is given a unique name based on the one given
		    by appending an underscore followed by a digit (default).
		Returns:
		  A tuple `(sgv, info)` where:
		    `sgv` is the transformed subgraph view;
		    `info` is an instance of TransformerInfo containing
		    information about the transform, including mapping between
		    original and transformed tensors and operations.
		Raises:
		  TypeError: if `dst_graph` is not a `tf.Graph`.
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function copy(sgv:Dynamic, ?dst_graph:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic, ?reuse_dst_scope:Dynamic):Dynamic;
	/**
		Copy a `tf.Operation`.
		
		Args:
		  info: Transform._TmpInfo instance.
		  op: the `tf.Operation` to be copied.
		  new_inputs: The new inputs for this op.
		  copy_shape: also copy the shape of the tensor
		  nodedef_fn: If provided, a function that will be run on the NodeDef
		    and should return a mutated NodeDef before a new Operation is created.
		    This is useful as certain features cannot be set on the Operation and
		    must be modified in NodeDef.
		
		Returns:
		  A `(op, op_outputs)` tuple containing the transformed op and its outputs.
	**/
	static public function copy_op_handler(info:Dynamic, op:Dynamic, new_inputs:Dynamic, ?copy_shape:Dynamic, ?nodedef_fn:Dynamic):Dynamic;
	/**
		Copy a subgraph, replacing some of its inputs.
		
		Note a replacement only happens if the tensor to be replaced
		is an input of the given subgraph. The inputs of a subgraph can
		be queried using sgv.inputs.
		
		Args:
		  sgv: the source subgraph-view. This argument is converted to a subgraph
		    using the same rules as the function subgraph.make_view.
		  replacement_ts: dictionary mapping from original tensors to the
		    replaced one.
		  dst_graph: the destination graph.
		  dst_scope: the destination scope.
		  src_scope: the source scope.
		  reuse_dst_scope: if True the dst_scope is re-used if it already exists.
		    Otherwise, the scope is given a unique name based on the one given
		    by appending an underscore followed by a digit (default).
		Returns:
		  A tuple `(sgv, info)` where:
		    `sgv` is the transformed subgraph view;
		    `info` is an instance of TransformerInfo containing
		    information about the transform, including mapping between
		    original and transformed tensors and operations.
		Raises:
		  TypeError: if dst_graph is not a tf.Graph.
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules as the function subgraph.make_view.
	**/
	static public function copy_with_input_replacements(sgv:Dynamic, replacement_ts:Dynamic, ?dst_graph:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic, ?reuse_dst_scope:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Create a new graph which compute the targets from the replaced Tensors.
		
		Args:
		  target_ts: a single tf.Tensor or an iterable of tf.Tensor.
		  replacement_ts: dictionary mapping from original tensors to replaced tensors
		  dst_scope: the destination scope.
		  src_scope: the source scope.
		  reuse_dst_scope: if True the dst_scope is re-used if it already exists.
		    Otherwise, the scope is given a unique name based on the one given
		    by appending an underscore followed by a digit (default).
		Returns:
		  A single tf.Tensor or a list of target tf.Tensor, depending on
		  the type of the input argument `target_ts`.
		  The returned tensors are recomputed using the tensors from replacement_ts.
		Raises:
		  ValueError: if the targets are not connected to replacement_ts.
	**/
	static public function graph_replace(target_ts:Dynamic, replacement_ts:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic, ?reuse_dst_scope:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the keys of a dictionary.
	**/
	static public function iterkeys(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Transform a tensor into itself (identity) if possible.
		
		This handler transform a tensor into itself if the source and destination
		graph are the same. Otherwise it will create a placeholder.
		This handler is typically used to transform a hidden input tensors.
		
		Args:
		  info: Transform._TmpInfo instance.
		  t: tensor whose input must be transformed into a place holder.
		Returns:
		  The tensor generated by the newly created place holder.
	**/
	static public function keep_t_if_possible_handler(info:Dynamic, t:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Transform a tensor into a placeholder tensor.
		
		This handler is typically used to transform a subgraph input tensor into a
		placeholder.
		
		Args:
		  info: Transform._TmpInfo instance.
		  t: tensor whose input must be transformed into a place holder.
		Returns:
		  The tensor generated by the newly created place holder.
	**/
	static public function replace_t_with_placeholder_handler(info:Dynamic, t:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Transform an optional op only if it is inside the subgraph.
		
		This handler is typically use to handle original op: it is fine to keep them
		if they are inside the subgraph, otherwise they are just ignored.
		
		Args:
		  info: Transform._TmpInfo instance.
		  op: the optional op to transform (or ignore).
		  keep_if_possible: re-attach to the original op if possible, that is,
		    if the source graph and the destination graph are the same.
		Returns:
		  The transformed op or None.
	**/
	static public function transform_op_if_inside_handler(info:Dynamic, op:Dynamic, ?keep_if_possible:Dynamic):Dynamic;
}