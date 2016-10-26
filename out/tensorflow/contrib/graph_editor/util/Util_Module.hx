/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.util;
@:pythonImport("tensorflow.contrib.graph_editor.util") extern class Util_Module {
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
		Add all the elements of lb in la if they are not there already.
	**/
	static public function concatenate_unique(la:Dynamic, lb:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return all the consuming ops of the tensors in ts.
		
		Args:
		  ts: a list of tf.Tensor
		Returns:
		  A list of all the consuming tf.Operation of the tensors in ts.
		Raises:
		  TypeError: if ts cannot be converted to a list of tf.Tensor.
	**/
	static public function get_consuming_ops(ts:Dynamic):Dynamic;
	/**
		Return all the generating ops of the tensors in ts.
		
		Args:
		  ts: a list of tf.Tensor
		Returns:
		  A list of all the generating tf.Operation of the tensors in ts.
		Raises:
		  TypeError: if ts cannot be converted to a list of tf.Tensor.
	**/
	static public function get_generating_ops(ts:Dynamic):Dynamic;
	/**
		get all the tensors which are input or output of an op in the graph.
		
		Args:
		  graph: a tf.Graph.
		Returns:
		  A list of tf.Tensor.
		Raises:
		  TypeError: if graph is not a tf.Graph.
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
		Convert ops to a list of tf.Operation.
		
		Args:
		  ops: can be an iterable of tf.Operation, a tf.Graph or a single operation.
		  check_graph: if True check if all the operations belong to the same graph.
		  allow_graph: if False a tf.Graph cannot be converted.
		  ignore_ts: if True, silently ignore tf.Tensor.
		Returns:
		  a newly created list of tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation or,
		   if check_graph is True, if all the ops do not belong to the same graph.
	**/
	static public function make_list_of_op(ops:Dynamic, ?check_graph:Dynamic, ?allow_graph:Dynamic, ?ignore_ts:Dynamic):Dynamic;
	/**
		Convert ts to a list of tf.Tensor.
		
		Args:
		  ts: can be an iterable of tf.Tensor, a tf.Graph or a single tensor.
		  check_graph: if True check if all the tensors belong to the same graph.
		  allow_graph: if False a tf.Graph cannot be converted.
		  ignore_ops: if True, silently ignore tf.Operation.
		Returns:
		  a newly created list of tf.Tensor.
		Raises:
		  TypeError: if ts cannot be converted to a list of tf.Tensor or,
		   if check_graph is True, if all the ops do not belong to the same graph.
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
		Create a tf.placeholder for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		
		Args:
		  t: a tf.Tensor whose name will be used to create the placeholder
		    (see function placeholder_name).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of t is preserved. "" means the root scope.
		Returns:
		  A newly created tf.placeholder.
		Raises:
		  TypeError: if t is not None or a tf.Tensor.
	**/
	static public function make_placeholder_from_tensor(t:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Create placeholder name for tjhe graph editor.
		
		Args:
		  t: optional tensor on which the placeholder operation's name will be based
		    on
		  scope: absolute scope with which to predix the placeholder's name. None
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
}