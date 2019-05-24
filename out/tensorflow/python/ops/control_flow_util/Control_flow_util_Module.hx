/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_util;
@:pythonImport("tensorflow.python.ops.control_flow_util") extern class Control_flow_util_Module {
	/**
		Returns whether `input_op` can be used from `op`s context.
		
		Conceptually, only inputs from op's while context or any ancestor while
		context (including outside of any context) are valid. In practice, there are
		many other edge cases as well.
		
		Args:
		  op: Operation
		  input_op: Operation
		
		Raises:
		  ValueError: if input_op is from an invalid context.
	**/
	static public function CheckInputFromValidContext(op:Dynamic, input_op:Dynamic):Dynamic;
	static public var ENABLE_CONTROL_FLOW_V2 : Dynamic;
	/**
		Returns the first ancestor CondContext of `ctxt`.
		
		Returns `ctxt` if `ctxt` is a CondContext, or None if `ctxt` is not in a cond.
		
		Args:
		  ctxt: ControlFlowContext
		
		Returns:
		  `ctxt` if `ctxt` is a CondContext, the most nested CondContext containing
		  `ctxt`, or None if `ctxt` is not in a cond.
	**/
	static public function GetContainingCondContext(ctxt:Dynamic):Dynamic;
	/**
		Returns the first ancestor WhileContext of `ctxt`.
		
		Returns `ctxt` if `ctxt` is a WhileContext, or None if `ctxt` is not in a
		while loop.
		
		Args:
		  ctxt: ControlFlowContext
		  stop_ctxt: ControlFlowContext, optional. If provided, the search will end
		    if it sees stop_ctxt.
		
		Returns:
		  `ctxt` if `ctxt` is a WhileContext, the most nested WhileContext containing
		  `ctxt`, or None if `ctxt` is not in a while loop.  If `stop_ctxt` is not
		  `None`, this returns `ctxt` if it matches `stop_ctxt` in its traversal.
	**/
	static public function GetContainingWhileContext(ctxt:Dynamic, ?stop_ctxt:Dynamic):Dynamic;
	/**
		Returns the first ancestor XLAContext of `ctxt`.
		
		Returns `ctxt` if `ctxt` is a XLAContext, or None if `ctxt` is not in a
		while loop.
		
		Args:
		  ctxt: ControlFlowContext
		
		Returns:
		  `ctxt` if `ctxt` is a XLAContext, the most nested XLAContext containing
		  `ctxt`, or None if `ctxt` is not in a while loop.
	**/
	static public function GetContainingXLAContext(ctxt:Dynamic):Dynamic;
	/**
		Return the enter op if we can infer `value` to be a loop invariant.
	**/
	static public function GetLoopConstantEnter(value:Dynamic):Dynamic;
	/**
		Return the control flow context for the output of an op.
	**/
	static public function GetOutputContext(op:Dynamic):Dynamic;
	static public function InXlaContext(graph:Dynamic):Dynamic;
	/**
		Return true if `op` is the Merge for a conditional.
	**/
	static public function IsCondMerge(op:Dynamic):Dynamic;
	/**
		Return true if `op` is the Switch for a conditional.
	**/
	static public function IsCondSwitch(op:Dynamic):Dynamic;
	/**
		Returns true if `maybe_containing_ctxt` is or contains `ctxt`.
	**/
	static public function IsContainingContext(ctxt:Dynamic, maybe_containing_ctxt:Dynamic):Dynamic;
	static public function IsInCond(op:Dynamic):Dynamic;
	static public function IsInWhileLoop(op:Dynamic):Dynamic;
	static public function IsInXLAContext(op:Dynamic):Dynamic;
	/**
		Return true iff op is a loop invariant.
	**/
	static public function IsLoopConstantEnter(op:Dynamic):Dynamic;
	/**
		Returns true if `op` is an Enter.
	**/
	static public function IsLoopEnter(op:Dynamic):Dynamic;
	/**
		Return true if `op` is an Exit.
	**/
	static public function IsLoopExit(op:Dynamic):Dynamic;
	/**
		Return true if `op` is the Merge for a while loop.
	**/
	static public function IsLoopMerge(op:Dynamic):Dynamic;
	/**
		Return true if `op` is the Switch for a while loop.
	**/
	static public function IsLoopSwitch(op:Dynamic):Dynamic;
	/**
		Return true if `op` is a Merge.
	**/
	static public function IsMerge(op:Dynamic):Dynamic;
	/**
		Return true if `op` is a Switch.
	**/
	static public function IsSwitch(op:Dynamic):Dynamic;
	static public function OpInContext(op:Dynamic, ctxt:Dynamic):Dynamic;
	static public function TensorInContext(tensor:Dynamic, ctxt:Dynamic):Dynamic;
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