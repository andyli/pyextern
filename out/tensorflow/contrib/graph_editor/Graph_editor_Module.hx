/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor;
@:pythonImport("tensorflow.contrib.graph_editor") extern class Graph_editor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add the control inputs cops to op.
		
		Warning: this function is directly manipulating the internals of the tf.Graph.
		
		Args:
		  op: a tf.Operation to which the control inputs are added.
		  cops: an object convertible to a list of `tf.Operation`.
		Raises:
		  TypeError: if op is not a tf.Operation
		  ValueError: if any cop in cops is already a control input of op.
	**/
	static public function add_control_inputs(op:Dynamic, cops:Dynamic):Dynamic;
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
		Bypass the given subgraph by connecting its inputs to its outputs.
		
		Args:
		  sgv: the subgraph view to be bypassed. This argument is converted to a
		    subgraph using the same rules than the function subgraph.make_view.
		    Note that sgv is modified in place.
		Returns:
		  A tuple `(sgv, detached_inputs)` where:
		    `sgv` is a new subgraph view of the bypassed subgraph;
		    `detached_inputs` is a list of the created input placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function bypass(sgv:Dynamic):Dynamic;
	/**
		Return True if obj can be turned into a regular expression.
	**/
	static public function can_be_regex(obj:Dynamic):Dynamic;
	/**
		Do various check on control_inputs and control_outputs.
		
		Args:
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A tuple `(control_inputs, control_outputs)` where:
		    `control_inputs` is a boolean indicating whether to use control inputs.
		    `control_outputs` is an instance of util.ControlOutputs or None
		Raises:
		  ValueError: if control_inputs is an instance of util.ControlOutputs but
		    control_outputs is not None
		  TypeError: if control_outputs is not None and is not a util.ControlOutputs.
	**/
	static public function check_cios(?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Compute the tensors at the boundary of a set of ops.
		
		This function looks at all the tensors connected to the given ops (in/out)
		and classify them into three categories:
		1) input tensors: tensors whose generating operation is not in ops.
		2) output tensors: tensors whose consumer operations are not in ops
		3) inside tensors: tensors which are neither input nor output tensors.
		
		Note that a tensor can be both an inside tensor and an output tensor if it is
		consumed by operations both outside and inside of `ops`.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		Returns:
		  A tuple `(outside_input_ts, outside_output_ts, inside_ts)` where:
		    `outside_input_ts` is a Python list of input tensors;
		    `outside_output_ts` is a python list of output tensors;
		    `inside_ts` is a python list of inside tensors.
		  Since a tensor can be both an inside tensor and an output tensor,
		  `outside_output_ts` and `inside_ts` might intersect.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function compute_boundary_ts(ops:Dynamic):Dynamic;
	/**
		Connect the outputs of sgv0 to the inputs of sgv1.
		
		Args:
		  sgv0: the first subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		    Note that sgv0 is modified in place.
		  sgv1: the second subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		    Note that sgv1 is modified in place.
		  disconnect_first: if True the current outputs of sgv0 are disconnected.
		Returns:
		  A tuple `(sgv0, sgv1)` of the now connected subgraphs.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function connect(sgv0:Dynamic, sgv1:Dynamic, ?disconnect_first:Dynamic):Dynamic;
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
		Detach both the inputs and the outputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A tuple `(sgv, detached_inputs, detached_outputs)` where:
		  `sgv` is a new subgraph view of the detached subgraph;
		  `detach_inputs` is a list of the created input placeholders;
		  `detach_outputs` is a list of the created output placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach(sgv:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Detach all the external control inputs of the subgraph sgv.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
	**/
	static public function detach_control_inputs(sgv:Dynamic):Dynamic;
	/**
		Detach all the external control outputs of the subgraph sgv.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		  control_outputs: a util.ControlOutputs instance.
	**/
	static public function detach_control_outputs(sgv:Dynamic, control_outputs:Dynamic):Dynamic;
	/**
		Detach the inputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_inputs: if True control_inputs are also detached.
		Returns:
		  A tuple `(sgv, input_placeholders)` where
		    `sgv` is a new subgraph view of the detached subgraph;
		    `input_placeholders` is a list of the created input placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_inputs(sgv:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Detach the output of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_outputs: a util.ControlOutputs instance or None. If not None the
		    control outputs are also detached.
		Returns:
		  A tuple `(sgv, output_placeholders)` where
		    `sgv` is a new subgraph view of the detached subgraph;
		    `output_placeholders` is a list of the created output placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_outputs(sgv:Dynamic, ?control_outputs:Dynamic):Dynamic;
	/**
		Get the ops passing the given filter.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  positive_filter: a function deciding where to keep an operation or not.
		    If True, all the operations are returned.
		Returns:
		  A list of selected tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ops(ops:Dynamic, positive_filter:Dynamic):Dynamic;
	/**
		Get all the operations that match the given regex.
		
		Args:
		  ops: an object convertible to a list of `tf.Operation`.
		  regex: a regular expression matching the operation's name.
		    For example, `"^foo(/.*)?$"` will match all the operations in the "foo"
		    scope.
		Returns:
		  A list of `tf.Operation`.
		Raises:
		  TypeError: if ops cannot be converted to a list of `tf.Operation`.
	**/
	static public function filter_ops_from_regex(ops:Dynamic, regex:Dynamic):Dynamic;
	/**
		Get all the tensors which are input or output of an op in ops.
		
		Args:
		  ops: an object convertible to a list of `tf.Operation`.
		  positive_filter: a function deciding whether to keep a tensor or not.
		    If `True`, all the tensors are returned.
		Returns:
		  A list of `tf.Tensor`.
		Raises:
		  TypeError: if ops cannot be converted to a list of `tf.Operation`.
	**/
	static public function filter_ts(ops:Dynamic, positive_filter:Dynamic):Dynamic;
	/**
		Get all the tensors linked to ops that match the given regex.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  regex: a regular expression matching the tensors' name.
		    For example, "^foo(/.*)?:\d+$" will match all the tensors in the "foo"
		    scope.
		Returns:
		  A list of tf.Tensor.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ts_from_regex(ops:Dynamic, regex:Dynamic):Dynamic;
	/**
		Do a backward graph walk and return all the visited ops.
		
		Args:
		  seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  inclusive: if True the given seed_ops are also part of the resulting set.
		  within_ops: an iterable of `tf.Operation` within which the search is
		    restricted. If `within_ops` is `None`, the search is performed within
		    the whole graph.
		  within_ops_fn: if provided, a function on ops that should return True iff
		    the op is within the graph traversal. This can be used along within_ops,
		    in which case an op is within if it is also in within_ops.
		  stop_at_ts: an iterable of tensors at which the graph walk stops.
		  control_inputs: if True, control inputs will be used while moving backward.
		Returns:
		  A Python set of all the `tf.Operation` behind `seed_ops`.
		Raises:
		  TypeError: if `seed_ops` or `within_ops` cannot be converted to a list of
		    `tf.Operation`.
	**/
	static public function get_backward_walk_ops(seed_ops:Dynamic, ?inclusive:Dynamic, ?within_ops:Dynamic, ?within_ops_fn:Dynamic, ?stop_at_ts:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Return all the consuming ops of the tensors in ts.
		
		Args:
		  ts: a list of `tf.Tensor`
		Returns:
		  A list of all the consuming `tf.Operation` of the tensors in `ts`.
		Raises:
		  TypeError: if ts cannot be converted to a list of `tf.Tensor`.
	**/
	static public function get_consuming_ops(ts:Dynamic):Dynamic;
	/**
		Do a forward graph walk and return all the visited ops.
		
		Args:
		  seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  inclusive: if True the given seed_ops are also part of the resulting set.
		  within_ops: an iterable of `tf.Operation` within which the search is
		    restricted. If `within_ops` is `None`, the search is performed within
		    the whole graph.
		  within_ops_fn: if provided, a function on ops that should return True iff
		    the op is within the graph traversal. This can be used along within_ops,
		    in which case an op is within if it is also in within_ops.
		  stop_at_ts: an iterable of tensors at which the graph walk stops.
		  control_outputs: a `util.ControlOutputs` instance or None.
		    If not `None`, it will be used while walking the graph forward.
		Returns:
		  A Python set of all the `tf.Operation` ahead of `seed_ops`.
		Raises:
		  TypeError: if `seed_ops` or `within_ops` cannot be converted to a list of
		    `tf.Operation`.
	**/
	static public function get_forward_walk_ops(seed_ops:Dynamic, ?inclusive:Dynamic, ?within_ops:Dynamic, ?within_ops_fn:Dynamic, ?stop_at_ts:Dynamic, ?control_outputs:Dynamic):Dynamic;
	/**
		Return all the generating ops of the tensors in `ts`.
		
		Args:
		  ts: a list of `tf.Tensor`
		Returns:
		  A list of all the generating `tf.Operation` of the tensors in `ts`.
		Raises:
		  TypeError: if `ts` cannot be converted to a list of `tf.Tensor`.
	**/
	static public function get_generating_ops(ts:Dynamic):Dynamic;
	/**
		Get all the operations under the given scope path.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  scope: a scope path.
		Returns:
		  A list of tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function get_name_scope_ops(ops:Dynamic, scope:Dynamic):Dynamic;
	/**
		Return all the `tf.Operation` which are connected to an op in ops.
		
		Args:
		  ops: an object convertible to a list of `tf.Operation`.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of `util.ControlOutputs` or `None`. If not
		    `None`, control outputs are enabled.
		  control_ios:  An instance of `util.ControlOutputs` or `None`. If not `None`,
		    both control inputs and control outputs are enabled. This is equivalent to
		    set `control_inputs` to `True` and `control_outputs` to the
		    `util.ControlOutputs` instance.
		Returns:
		  All the `tf.Operation` surrounding the given ops.
		Raises:
		  TypeError: if `ops` cannot be converted to a list of `tf.Operation`.
	**/
	static public function get_ops_ios(ops:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		get all the tensors which are input or output of an op in the graph.
		
		Args:
		  graph: a `tf.Graph`.
		Returns:
		  A list of `tf.Tensor`.
		Raises:
		  TypeError: if graph is not a `tf.Graph`.
	**/
	static public function get_tensors(graph:Dynamic):Dynamic;
	/**
		Return the intersection of a forward and a backward walk.
		
		Args:
		  forward_seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  backward_seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  forward_inclusive: if True the given forward_seed_ops are also part of the
		    resulting set.
		  backward_inclusive: if True the given backward_seed_ops are also part of the
		    resulting set.
		  within_ops: an iterable of tf.Operation within which the search is
		    restricted. If within_ops is None, the search is performed within
		    the whole graph.
		  within_ops_fn: if provided, a function on ops that should return True iff
		    the op is within the graph traversal. This can be used along within_ops,
		    in which case an op is within if it is also in within_ops.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A Python set of all the tf.Operation in the intersection of a forward and a
		    backward walk.
		Raises:
		  TypeError: if `forward_seed_ops` or `backward_seed_ops` or `within_ops`
		    cannot be converted to a list of `tf.Operation`.
	**/
	static public function get_walks_intersection_ops(forward_seed_ops:Dynamic, backward_seed_ops:Dynamic, ?forward_inclusive:Dynamic, ?backward_inclusive:Dynamic, ?within_ops:Dynamic, ?within_ops_fn:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return the union of a forward and a backward walk.
		
		Args:
		  forward_seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  backward_seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  forward_inclusive: if True the given forward_seed_ops are also part of the
		    resulting set.
		  backward_inclusive: if True the given backward_seed_ops are also part of the
		    resulting set.
		  within_ops: restrict the search within those operations. If within_ops is
		    None, the search is done within the whole graph.
		  within_ops_fn: if provided, a function on ops that should return True iff
		    the op is within the graph traversal. This can be used along within_ops,
		    in which case an op is within if it is also in within_ops.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A Python set of all the tf.Operation in the union of a forward and a
		    backward walk.
		Raises:
		  TypeError: if forward_seed_ops or backward_seed_ops or within_ops cannot be
		    converted to a list of tf.Operation.
	**/
	static public function get_walks_union_ops(forward_seed_ops:Dynamic, backward_seed_ops:Dynamic, ?forward_inclusive:Dynamic, ?backward_inclusive:Dynamic, ?within_ops:Dynamic, ?within_ops_fn:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return all the `tf.Operation` within the given boundary.
		
		Args:
		  ops: an object convertible to a list of `tf.Operation`. those ops define the
		    set in which to perform the operation (if a `tf.Graph` is given, it
		    will be converted to the list of all its operations).
		  seed_ops: the operations from which to start expanding.
		  boundary_ops: the ops forming the boundary.
		  inclusive: if `True`, the result will also include the boundary ops.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of `util.ControlOutputs` or `None`. If not
		    `None`, control outputs are enabled.
		  control_ios:  An instance of `util.ControlOutputs` or `None`. If not
		    `None`, both control inputs and control outputs are enabled. This is
		    equivalent to set control_inputs to True and control_outputs to
		    the `util.ControlOutputs` instance.
		Returns:
		  All the `tf.Operation` surrounding the given ops.
		Raises:
		  TypeError: if `ops` or `seed_ops` cannot be converted to a list of
		    `tf.Operation`.
		  ValueError: if the boundary is intersecting with the seeds.
	**/
	static public function get_within_boundary_ops(ops:Dynamic, seed_ops:Dynamic, ?boundary_ops:Dynamic, ?inclusive:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
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
	/**
		Convert ops to a list of `tf.Operation`.
		
		Args:
		  ops: can be an iterable of `tf.Operation`, a `tf.Graph` or a single
		    operation.
		  check_graph: if `True` check if all the operations belong to the same graph.
		  allow_graph: if `False` a `tf.Graph` cannot be converted.
		  ignore_ts: if True, silently ignore `tf.Tensor`.
		Returns:
		  A newly created list of `tf.Operation`.
		Raises:
		  TypeError: if ops cannot be converted to a list of `tf.Operation` or,
		   if `check_graph` is `True`, if all the ops do not belong to the
		   same graph.
	**/
	static public function make_list_of_op(ops:Dynamic, ?check_graph:Dynamic, ?allow_graph:Dynamic, ?ignore_ts:Dynamic):Dynamic;
	/**
		Convert ts to a list of `tf.Tensor`.
		
		Args:
		  ts: can be an iterable of `tf.Tensor`, a `tf.Graph` or a single tensor.
		  check_graph: if `True` check if all the tensors belong to the same graph.
		  allow_graph: if `False` a `tf.Graph` cannot be converted.
		  ignore_ops: if `True`, silently ignore `tf.Operation`.
		Returns:
		  A newly created list of `tf.Tensor`.
		Raises:
		  TypeError: if `ts` cannot be converted to a list of `tf.Tensor` or,
		   if `check_graph` is `True`, if all the ops do not belong to the same graph.
	**/
	static public function make_list_of_t(ts:Dynamic, ?check_graph:Dynamic, ?allow_graph:Dynamic, ?ignore_ops:Dynamic):Dynamic;
	/**
		Create a tf.placeholder for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		The placeholder is named using the function placeholder_name (with no
		tensor argument).
		
		Args:
		  dtype: the tensor type.
		  shape: the tensor shape (optional).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of t is preserved. "" means the root scope.
		  prefix: placeholder name prefix.
		Returns:
		  A newly created tf.placeholder.
	**/
	static public function make_placeholder_from_dtype_and_shape(dtype:Dynamic, ?shape:Dynamic, ?scope:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Create a `tf.placeholder` for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		
		Args:
		  t: a `tf.Tensor` whose name will be used to create the placeholder
		    (see function placeholder_name).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of `t` is preserved. `""` means the root scope.
		  prefix: placeholder name prefix.
		Returns:
		  A newly created `tf.placeholder`.
		Raises:
		  TypeError: if `t` is not `None` or a `tf.Tensor`.
	**/
	static public function make_placeholder_from_tensor(t:Dynamic, ?scope:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Return a compiled regular expression.
		
		Args:
		  obj: a string or a regular expression.
		Returns:
		  A compiled regular expression.
		Raises:
		  ValueError: if obj could not be converted to a regular expression.
	**/
	static public function make_regex(obj:Dynamic):Dynamic;
	/**
		Create a SubGraphView from selected operations and passthrough tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or 2) (array of)
		    `tf.Operation` 3) (array of) `tf.Tensor`. Those objects will be converted
		    into a list of operations and a list of candidate for passthrough tensors.
		  **kwargs: keyword graph is used 1) to check that the ops and ts are from
		    the correct graph 2) for regular expression query
		Returns:
		  A subgraph view.
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Tensor`
		    or an (array of) `tf.Operation` or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected.
	**/
	static public function make_view(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a subgraph from a name scope.
		
		Args:
		  scope: the name of the scope.
		  graph: the `tf.Graph`.
		Returns:
		  A subgraph view representing the given scope.
	**/
	static public function make_view_from_scope(scope:Dynamic, graph:Dynamic):Dynamic;
	/**
		Create a tf.placeholder for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		The placeholder is named using the function placeholder_name (with no
		tensor argument).
		
		Args:
		  dtype: the tensor type.
		  shape: the tensor shape (optional).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of t is preserved. "" means the root scope.
		  prefix: placeholder name prefix.
		Returns:
		  A newly created tf.placeholder.
	**/
	static public function ph(dtype:Dynamic, ?shape:Dynamic, ?scope:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Create placeholder name for the graph editor.
		
		Args:
		  t: optional tensor on which the placeholder operation's name will be based
		    on
		  scope: absolute scope with which to prefix the placeholder's name. None
		    means that the scope of t is preserved. "" means the root scope.
		  prefix: placeholder name prefix.
		Returns:
		  A new placeholder name prefixed by "geph". Note that "geph" stands for
		    Graph Editor PlaceHolder. This convention allows to quickly identify the
		    placeholder generated by the Graph Editor.
		Raises:
		  TypeError: if t is not None or a tf.Tensor.
	**/
	static public function placeholder_name(?t:Dynamic, ?scope:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Remove the control inputs cops from co.
		
		Warning: this function is directly manipulating the internals of the
		`tf.Graph`.
		
		Args:
		  op: a `tf.Operation` from which to remove the control inputs.
		  cops: an object convertible to a list of `tf.Operation`.
		Raises:
		  TypeError: if op is not a `tf.Operation`.
		  ValueError: if any cop in cops is not a control input of op.
	**/
	static public function remove_control_inputs(op:Dynamic, cops:Dynamic):Dynamic;
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
	/**
		Re-route all the inputs of two subgraphs.
		
		Args:
		  sgv0: the first subgraph to have its inputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  sgv1: the second subgraph to have its inputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		Returns:
		  A tuple `(sgv0, sgv1)` of subgraph views with their inputs swapped.
		    Note that the function argument sgv0 and sgv1 are also modified in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function reroute_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route the inputs and outputs of sgv0 to sgv1 (see _reroute_sgv).
	**/
	static public function reroute_ios(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the outputs of two operations.
		
		Args:
		  sgv0: the first subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  sgv1: the second subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		Returns:
		  A tuple `(sgv0, sgv1)` of subgraph views with their outputs swapped.
		    Note that the function argument sgv0 and sgv1 are also modified in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function reroute_outputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		For each tensor's pair, replace the end of t1 by the end of t0.
		
		    B0 B1     B0 B1
		    |  |    => |/
		    A0 A1     A0 A1
		
		The end of the tensors in ts1 are left dangling.
		
		Args:
		  ts0: an object convertible to a list of `tf.Tensor`.
		  ts1: an object convertible to a list of `tf.Tensor`.
		  can_modify: iterable of operations which can be modified. Any operation
		    outside within_ops will be left untouched by this function.
		  cannot_modify: iterable of operations which cannot be modified. Any
		    operation within cannot_modify will be left untouched by this function.
		Returns:
		  The number of individual modifications made by the function.
		Raises:
		  TypeError: if ts0 or ts1 cannot be converted to a list of tf.Tensor.
		  TypeError: if can_modify or cannot_modify is not None and cannot be
		    converted to a list of tf.Operation.
	**/
	static public function reroute_ts(ts0:Dynamic, ts1:Dynamic, ?can_modify:Dynamic, ?cannot_modify:Dynamic):Dynamic;
	/**
		Helper to select operations.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or 2) (array of)
		    `tf.Operation`. `tf.Tensor` instances are silently ignored.
		  **kwargs: 'graph': `tf.Graph` in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if `positive_filter(elem)` is
		      `True`. This is optional.
		    'restrict_ops_regex': a regular expression is ignored if it doesn't start
		      with the substring "(?#ops)".
		Returns:
		  A list of `tf.Operation`.
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Operation`
		    or an (array of) `tf.Tensor` (silently ignored) or a string
		    or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ops(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper to select operations and tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or 2) (array of)
		    `tf.Operation` 3) (array of) tf.Tensor. Regular expressions matching
		    tensors must start with the comment `"(?#ts)"`, for instance:
		    `"(?#ts)^foo/.*"`.
		  **kwargs: 'graph': `tf.Graph` in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if `positive_filter(elem)` is
		      `True`. This is optional.
		Returns:
		  A tuple `(ops, ts)` where:
		    `ops` is a list of `tf.Operation`, and
		    `ts` is a list of `tf.Tensor`
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Tensor`
		    or an (array of) `tf.Operation` or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ops_and_ts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper to select tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or 2) (array of)
		    `tf.Tensor`. `tf.Operation` instances are silently ignored.
		  **kwargs: 'graph': `tf.Graph` in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if `positive_filter(elem)` is
		      `True`. This is optional.
		    'restrict_ts_regex': a regular expression is ignored if it doesn't start
		      with the substring "(?#ts)".
		Returns:
		  A list of `tf.Tensor`.
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Tensor`
		    or an (array of) `tf.Operation` (silently ignored) or a string
		    or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a SubGraphView from selected operations and passthrough tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or 2) (array of)
		    `tf.Operation` 3) (array of) `tf.Tensor`. Those objects will be converted
		    into a list of operations and a list of candidate for passthrough tensors.
		  **kwargs: keyword graph is used 1) to check that the ops and ts are from
		    the correct graph 2) for regular expression query
		Returns:
		  A subgraph view.
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Tensor`
		    or an (array of) `tf.Operation` or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected.
	**/
	static public function sgv(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a subgraph from a name scope.
		
		Args:
		  scope: the name of the scope.
		  graph: the `tf.Graph`.
		Returns:
		  A subgraph view representing the given scope.
	**/
	static public function sgv_scope(scope:Dynamic, graph:Dynamic):Dynamic;
	/**
		Swap all the inputs of sgv0 and sgv1 (see reroute_inputs).
	**/
	static public function swap_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap the inputs and outputs of sgv1 to sgv0 (see _reroute_sgv).
	**/
	static public function swap_ios(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap all the outputs of sgv0 and sgv1 (see reroute_outputs).
	**/
	static public function swap_outputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		For each tensor's pair, swap the end of (t0,t1).
		
		    B0 B1     B0 B1
		    |  |    =>  X
		    A0 A1     A0 A1
		
		Args:
		  ts0: an object convertible to a list of `tf.Tensor`.
		  ts1: an object convertible to a list of `tf.Tensor`.
		  can_modify: iterable of operations which can be modified. Any operation
		    outside within_ops will be left untouched by this function.
		  cannot_modify: iterable of operations which cannot be modified.
		    Any operation within cannot_modify will be left untouched by this
		    function.
		Returns:
		  The number of individual modifications made by the function.
		Raises:
		  TypeError: if ts0 or ts1 cannot be converted to a list of tf.Tensor.
		  TypeError: if can_modify or cannot_modify is not None and cannot be
		    converted to a list of tf.Operation.
	**/
	static public function swap_ts(ts0:Dynamic, ts1:Dynamic, ?can_modify:Dynamic, ?cannot_modify:Dynamic):Dynamic;
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