/* This file is generated, do not edit! */
package tensorflow.python.ops.op_selector;
@:pythonImport("tensorflow.python.ops.op_selector") extern class Op_selector_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_operation(op_or_tensor:Dynamic):Dynamic;
	static public function _get_inputs(op:Dynamic, only_differentiable:Dynamic):Dynamic;
	/**
		Find one path from `from_op` to `tensor`, ignoring `sources`.
		
		Args:
		  from_op: A `tf.Operation`.
		  tensor: A `tf.Operation` or `tf.Tensor`.
		  sources: A list of `tf.Tensor`.
		
		Returns:
		  A python string containing the path, or "??" if none is found.
	**/
	static public function _path_from(from_op:Dynamic, tensor:Dynamic, sources:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Check that all the element in args belong to the same graph.
		
		Args:
		  *args: a list of object with a obj.graph property.
		Raises:
		  ValueError: if all the elements do not belong to the same graph.
	**/
	static public function check_graphs(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Add all the elements of `lb` to `la` if they are not there already.
		
		The elements added to `la` maintain ordering with respect to `lb`.
		
		Args:
		  la: List of Python objects.
		  lb: List of Python objects.
		Returns:
		  `la`: The list `la` with missing elements from `lb`.
	**/
	static public function concatenate_unique(la:Dynamic, lb:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		  only_differentiable: if True, only traverse ops which are differentiable.
		    This includes natively differentiable ops, or ops with custom gradients.
		Returns:
		  A Python set of all the `tf.Operation` behind `seed_ops`.
		Raises:
		  TypeError: if `seed_ops` or `within_ops` cannot be converted to a list of
		    `tf.Operation`.
	**/
	static public function get_backward_walk_ops(seed_ops:Dynamic, ?inclusive:Dynamic, ?within_ops:Dynamic, ?within_ops_fn:Dynamic, ?stop_at_ts:Dynamic, ?control_inputs:Dynamic, ?only_differentiable:Dynamic):Dynamic;
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
		Return the unique graph used by the all the elements in tops.
		
		Args:
		  tops: list of elements to check (usually a list of tf.Operation and/or
		    tf.Tensor). Or a tf.Graph.
		  check_types: check that the element in tops are of given type(s). If None,
		    the types (tf.Operation, tf.Tensor) are used.
		  none_if_empty: don't raise an error if tops is an empty list, just return
		    None.
		Returns:
		  The unique graph used by all the tops.
		Raises:
		  TypeError: if tops is not a iterable of tf.Operation.
		  ValueError: if the graph is not unique.
	**/
	static public function get_unique_graph(tops:Dynamic, ?check_types:Dynamic, ?none_if_empty:Dynamic):Dynamic;
	static public function graph_inputs(op:Dynamic):Dynamic;
	static public function is_differentiable(op:Dynamic):Dynamic;
	/**
		Return true if the object is iterable.
	**/
	static public function is_iterable(obj:Dynamic):Dynamic;
	/**
		Convert ops to a list of `tf.Operation`.
		
		Args:
		  tops: can be an iterable of `tf.Operation`, a `tf.Graph` or a single
		    operation.
		  check_graph: if `True` check if all the operations belong to the same graph.
		  allow_graph: if `False` a `tf.Graph` cannot be converted.
		  ignore_ts: if True, silently ignore `tf.Tensor`.
		Returns:
		  A newly created list of `tf.Operation`.
		Raises:
		  TypeError: if tops cannot be converted to a list of `tf.Operation` or,
		   if `check_graph` is `True`, if all the ops do not belong to the
		   same graph.
	**/
	static public function make_list_of_op(tops:Dynamic, ?check_graph:Dynamic, ?allow_graph:Dynamic, ?ignore_ts:Dynamic):Dynamic;
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
		Walk a Graph and capture the subgraph between init_tensor and sources.
		
		Note: This function mutates visited_ops and op_outputs.
		
		Args:
		  init_tensor:  A Tensor or Operation where the subgraph terminates.
		  sources:  A set of Tensors where subgraph extraction should stop.
		  disallowed_placeholders: An optional set of ops which may not appear in the
		    lifted graph. Defaults to all placeholders.
		  visited_ops: A set of operations which were visited in a prior pass.
		  op_outputs: A defaultdict containing the outputs of an op which are to be
		    copied into the new subgraph.
		  add_sources: A boolean indicating whether placeholders which are not in
		    sources should be allowed.
		
		Returns:
		  The set of placeholders upon which init_tensor depends and are not in
		  sources.
		
		Raises:
		  UnliftableError: if init_tensor depends on a placeholder which is not in
		    sources and add_sources is False.
	**/
	static public function map_subgraph(init_tensor:Dynamic, sources:Dynamic, disallowed_placeholders:Dynamic, visited_ops:Dynamic, op_outputs:Dynamic, add_sources:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}