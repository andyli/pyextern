/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.util;
@:pythonImport("tensorflow.contrib.graph_editor.util") extern class Util_Module {
	static public var _INTERNAL_VARIABLE_RE : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Find corresponding ops/tensors in a different graph.
		
		`targets` is a Python tree, that is, a nested structure of iterable
		(list, tupple, dictionary) whose leaves are instances of
		`tf.Tensor` or `tf.Operation`
		
		Args:
		  targets: A Python tree containing `tf.Tensor` or `tf.Operation`
		    belonging to the original graph.
		  dst_graph: The graph in which the corresponding graph element must be found.
		  dst_scope: A scope which is prepended to the name to look for.
		  src_scope: A scope which is removed from the original of `top` name.
		
		Returns:
		  A Python tree containin the corresponding tf.Tensor` or a `tf.Operation`.
		
		Raises:
		  ValueError: if `src_name` does not start with `src_scope`.
		  TypeError: if `top` is not a `tf.Tensor` or a `tf.Operation`
		  KeyError: If the corresponding graph element cannot be found.
	**/
	static public function find_corresponding(targets:Dynamic, dst_graph:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic):Dynamic;
	/**
		Find corresponding op/tensor in a different graph.
		
		Args:
		  target: A `tf.Tensor` or a `tf.Operation` belonging to the original graph.
		  dst_graph: The graph in which the corresponding graph element must be found.
		  dst_scope: A scope which is prepended to the name to look for.
		  src_scope: A scope which is removed from the original of `target` name.
		
		Returns:
		  The corresponding tf.Tensor` or a `tf.Operation`.
		
		Raises:
		  ValueError: if `src_name` does not start with `src_scope`.
		  TypeError: if `target` is not a `tf.Tensor` or a `tf.Operation`
		  KeyError: If the corresponding graph element cannot be found.
	**/
	static public function find_corresponding_elem(target:Dynamic, dst_graph:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic):Dynamic;
	/**
		Flatten a tree into a list.
		
		Args:
		  tree: iterable or not. If iterable, its elements (child) can also be
		    iterable or not.
		  leaves: list to which the tree leaves are appended (None by default).
		Returns:
		  A list of all the leaves in the tree.
	**/
	static public function flatten_tree(tree:Dynamic, ?leaves:Dynamic):Dynamic;
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
		Return all the predefined collection names.
	**/
	static public function get_predefined_collection_names():Dynamic;
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
	/**
		Return true if the object is iterable.
	**/
	static public function is_iterable(obj:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		Returns:
		  A newly created tf.placeholder.
	**/
	static public function make_placeholder_from_dtype_and_shape(dtype:Dynamic, ?shape:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Create a `tf.placeholder` for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		
		Args:
		  t: a `tf.Tensor` whose name will be used to create the placeholder
		    (see function placeholder_name).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of `t` is preserved. `""` means the root scope.
		Returns:
		  A newly created `tf.placeholder`.
		Raises:
		  TypeError: if `t` is not `None` or a `tf.Tensor`.
	**/
	static public function make_placeholder_from_tensor(t:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Create placeholder name for the graph editor.
		
		Args:
		  t: optional tensor on which the placeholder operation's name will be based
		    on
		  scope: absolute scope with which to prefix the placeholder's name. None
		    means that the scope of t is preserved. "" means the root scope.
		Returns:
		  A new placeholder name prefixed by "geph". Note that "geph" stands for
		    Graph Editor PlaceHolder. This convention allows to quickly identify the
		    placeholder generated by the Graph Editor.
		Raises:
		  TypeError: if t is not None or a tf.Tensor.
	**/
	static public function placeholder_name(?t:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function scope_basename(scope:Dynamic):Dynamic;
	static public function scope_dirname(scope:Dynamic):Dynamic;
	static public function scope_finalize(scope:Dynamic):Dynamic;
	/**
		Transform all the nodes of a tree.
		
		Args:
		  tree: iterable or not. If iterable, its elements (child) can also be
		    iterable or not.
		  fn: function to apply to each leaves.
		  iterable_type: type use to construct the resulting tree for unknwon
		    iterable, typically `list` or `tuple`.
		Returns:
		  A tree whose leaves has been transformed by `fn`.
		  The hierarchy of the output tree mimics the one of the input tree.
	**/
	static public function transform_tree(tree:Dynamic, fn:Dynamic, ?iterable_type:Dynamic):Dynamic;
}