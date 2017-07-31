/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.reroute;
@:pythonImport("tensorflow.contrib.graph_editor.reroute") extern class Reroute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Make sure the shape and dtype of the two tensor's lists are compatible.
		
		Args:
		  ts0: an object convertible to a list of `tf.Tensor`.
		  ts1: an object convertible to a list of `tf.Tensor`.
		Raises:
		  ValueError: if any pair of tensors (same index in ts0 and ts1) have
		    a dtype or a shape which is not compatible.
	**/
	static public function _check_ts_compatibility(ts0:Dynamic, ts1:Dynamic):Dynamic;
	/**
		Re-route both the inputs and the outputs of the two subgraph views.
		
		This involves swapping all the inputs/ouputs of the two subgraph views.
		
		Args:
		  sgv0: the first subgraph to be swapped. This argument is converted to a
		    subgraph using the same rules than the function subgraph.make_view.
		  sgv1: the second subgraph to be swapped. This argument is converted to a
		    subgraph using the same rules than the function subgraph.make_view.
		  mode: reroute mode, see _reroute_ts(...).
		Returns:
		  A tuple `(sgv0, sgv1)` of subgraph views with their outputs and inputs
		    swapped.
		    Note that the function argument sgv0 and sgv1 are also modified in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function _reroute_sgv(sgv0:Dynamic, sgv1:Dynamic, mode:Dynamic):Dynamic;
	/**
		Re-route all the inputs of two subgraphs.
		
		Args:
		  sgv0: the first subgraph to have its inputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  sgv1: the second subgraph to have its inputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  mode: reroute mode, see _reroute_ts(...).
		Returns:
		  A tuple `(sgv0, sgv1)` of subgraph views with their inputs swapped.
		    Note that the function argument sgv0 and sgv1 are also modified in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function _reroute_sgv_inputs(sgv0:Dynamic, sgv1:Dynamic, mode:Dynamic):Dynamic;
	/**
		Re-route all the outputs of two operations.
		
		Args:
		  sgv0: the first subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  sgv1: the second subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules than the function
		    subgraph.make_view.
		  mode: reroute mode, see _reroute_ts(...).
		Returns:
		  A tuple `(sgv0, sgv1)` of subgraph views with their outputs swapped.
		    Note that the function argument sgv0 and sgv1 are also modified in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function _reroute_sgv_outputs(sgv0:Dynamic, sgv1:Dynamic, mode:Dynamic):Dynamic;
	/**
		Remap in place the inputs of two subgraph views to mimic the reroute.
		
		This function is meant to used by reroute_inputs only.
		
		Args:
		  sgv0: the first subgraph to have its inputs remapped.
		  sgv1: the second subgraph to have its inputs remapped.
		  mode: reroute mode, see _reroute_ts(...).
		Raises:
		  TypeError: if svg0 or svg1 are not SubGraphView.
		  ValueError: if sgv0 and sgv1 do not belong to the same graph.
	**/
	static public function _reroute_sgv_remap(sgv0:Dynamic, sgv1:Dynamic, mode:Dynamic):Dynamic;
	/**
		Reroute the end of the tensors (t0,t1).
		
		Warning: this function is directly manipulating the internals of the
		`tf.Graph`.
		
		Args:
		  t0: a tf.Tensor.
		  t1: a tf.Tensor.
		  consumers1: The consumers of t1 which needs to be rerouted.
		  can_modify: iterable of operations which can be modified. Any operation
		    outside within_ops will be left untouched by this function.
		  cannot_modify: iterable of operations which cannot be modified.
		    Any operation within cannot_modify will be left untouched by this
		    function.
		Returns:
		  The number of individual modifications made by the function.
	**/
	static public function _reroute_t(t0:Dynamic, t1:Dynamic, consumers1:Dynamic, ?can_modify:Dynamic, ?cannot_modify:Dynamic):Dynamic;
	/**
		Reroute the end of the tensors in each pair (t0,t1) in ts0 x ts1.
		
		This function is the back-bone of the Graph-Editor. It is essentially a thin
		wrapper on top of the tf.Operation._update_input.
		
		Given a pair of tensor t0, t1 in ts0 x ts1, this function re-route the end
		of t0 and t1 in three possible ways:
		1) The reroute mode is "a<->b" or "b<->a": the tensors' end are swapped. After
		this operation, the previous consumers of t0 are now consumers of t1 and
		vice-versa.
		2) The reroute mode is "a->b": the tensors' end of t0 are re-routed to the
		tensors's end of t1 (which are left dangling). After this operation, the
		previous consumers of t0 are still consuming t0 but the previous consumers of
		t1 are not also consuming t0. The tensor t1 has no consumer.
		3) The reroute mode is "b->a": this mode is the symmetric of the "a->b" mode.
		
		Note that this function is re-routing the end of two tensors, not the start.
		Re-routing the start of two tensors is not supported by this library. The
		reason for that is the following: TensorFlow, by design, creates a strong bond
		between an op and its output tensor. This Graph editor follows this design and
		treats an operation A and its generating tensors {t_i} as an entity which
		cannot be broken. In other words, an op cannot be detached from any of its
		output tensors, ever. But it is possible to detach an op from its input
		tensors, which is what this function concerns itself with.
		
		Warning: this function is directly manipulating the internals of the tf.Graph.
		
		Args:
		  ts0: an object convertible to a list of `tf.Tensor`.
		  ts1: an object convertible to a list of `tf.Tensor`.
		  mode: what to do with those tensors: "a->b" or "b<->a" for swaping and
		    "a->b" or "b->a" for one direction re-routing.
		  can_modify: iterable of operations which can be modified. Any operation
		    outside within_ops will be left untouched by this function.
		  cannot_modify: iterable of operations which cannot be modified.
		    Any operation within cannot_modify will be left untouched by this
		    function.
		Returns:
		  The number of individual modifications made by the function.
		Raises:
		  TypeError: if `ts0` or `ts1` cannot be converted to a list of `tf.Tensor`.
		  TypeError: if `can_modify` or `cannot_modify` is not `None` and cannot be
		    converted to a list of `tf.Operation`.
	**/
	static public function _reroute_ts(ts0:Dynamic, ts1:Dynamic, mode:Dynamic, ?can_modify:Dynamic, ?cannot_modify:Dynamic):Dynamic;
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
		Re-route all the inputs of sgv0 to sgv1 (see reroute_inputs).
	**/
	static public function reroute_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route the inputs and outputs of sgv0 to sgv1 (see _reroute).
	**/
	static public function reroute_ios(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the outputs of sgv0 to sgv1 (see _reroute_outputs).
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
		Swap all the inputs of sgv0 and sgv1 (see reroute_inputs).
	**/
	static public function swap_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap the inputs and outputs of sgv1 to sgv0 (see _reroute).
	**/
	static public function swap_ios(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap all the outputs of sgv0 and sgv1 (see _reroute_outputs).
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
}