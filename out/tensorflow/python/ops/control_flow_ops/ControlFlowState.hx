/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops", "ControlFlowState") extern class ControlFlowState {
	/**
		Add the grad state for the while loop that op belongs to.
		
		Note that op is an Exit, and this method must be called in
		the control flow context where gradients() is called.
		
		Note that this method modifies `between_op_list` and `between_ops`.
	**/
	public function AddWhileContext(op:Dynamic, between_op_list:Dynamic, between_ops:Dynamic):Dynamic;
	/**
		Enter the WhileContext for gradient computation.
	**/
	public function EnterGradWhileContext(op:Dynamic, before:Dynamic):Dynamic;
	/**
		Exit the WhileContext for gradient computation.
	**/
	public function ExitGradWhileContext(op:Dynamic, before:Dynamic):Dynamic;
	/**
		Return a list containing the exits of all the loops.
	**/
	public function GetAllLoopExits():Dynamic;
	/**
		Perform postprocessing at the end of gradients().
		
		We have created the gradient graph at this point. So this function
		can be used to perform any postprocessing on the gradient graph.
		We currently perform the following postprocessing:
		  1. Patch the gradient graph if the output of a loop variable
		     doesn't depend on its input.
	**/
	public function PostProcessing():Dynamic;
	/**
		Create zeros_like for the specified output of an op.
		
		If op is in a while loop that is part of gradients(), this method
		must be called in its grad loop context.
		
		Args:
		  op: A tensorflow operation.
		  index: the index for a specific output of the op.
		
		Returns:
		  A zero tensor of the same shape of op.outputs[index].
	**/
	public function ZerosLike(op:Dynamic, index:Dynamic):Dynamic;
	/**
		Create zeros_like gradient for a loop exit.
		
		If the result of a loop variable is not used but is involved in
		computing the result of some needed loop variable, we create a
		zero-valued tensor that is fed as gradient for the Exit node of that
		loop variable. Note that val.op is an Exit, and this method must be
		called in the control flow context where gradients() is called.
		
		Args:
		  val: The output tensor of an Exit op.
		
		Returns:
		  A zero tensor of the same shape of val.
	**/
	public function ZerosLikeForExit(val:Dynamic):Dynamic;
	/**
		Return the grad state for this op if it's in a forward loop context.
	**/
	public function _GetGradState(op:Dynamic, before:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}