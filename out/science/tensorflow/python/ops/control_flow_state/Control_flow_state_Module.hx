/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_state;
@:pythonImport("tensorflow.python.ops.control_flow_state") extern class Control_flow_state_Module {
	/**
		Create the state for all the while loops involved in one gradients().
		
		We create a _ControlFlowState when there are while loops involved in
		gradients(). In gradients(), control flow logic is only invoked when
		the _ControlFlowState is not None.
		
		Note that this method modifies `between_op_list` and `between_ops`.
	**/
	static public function MaybeCreateControlFlowState(between_op_list:Dynamic, between_ops:Dynamic, colocate_gradients_with_ops:Dynamic):Dynamic;
	/**
		Create zeros_like for the specified output of an op.
	**/
	static public function ZerosLike(op:Dynamic, index:Dynamic):Dynamic;
	/**
		Calculate a max_size for use by stack ops inside an XLA while_loop.
		
		Args:
		  value: The value inside the while_loop forward context.  Used for printing
		    error messages.
		  while_ctxt: The forward context inside which value resides.  This does not
		    always match the value's immediate context, as `value` may be inside e.g.
		    a cond context inside the while_loop.
		
		Returns:
		  A tensor containing the `max_size` to feed to a Stack initializer.
		
		Raises:
		  ValueError: If `value` is nested inside a `while_loop` that either
		    lacks a `maximum_iterations` parameter, or the `maximum_iterations`
		    parameter:
		
		      - is inside a `while_loop` that is a parent of the calling context, and
		      - cannot be evaluated at graph build time to a constant.
	**/
	static public function _GetMaxSizeFromNestedMaximumIterations(value:Dynamic, while_ctxt:Dynamic):Dynamic;
	/**
		Branch of ZerosLike for TF1.
	**/
	static public function _ZerosLikeV1(op:Dynamic, index:Dynamic):Dynamic;
	/**
		Branch of ZerosLike for TF2.
	**/
	static public function _ZerosLikeV2(op:Dynamic, index:Dynamic):Dynamic;
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
}