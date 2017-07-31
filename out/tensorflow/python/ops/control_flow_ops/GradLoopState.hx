/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops", "GradLoopState") extern class GradLoopState {
	/**
		Add the getter for an accumulated value in the grad context.
		
		This is added to the backprop loop. Called in the grad context to
		get the value of an accumulated value. The stack pop op must be guarded
		by the pred of the controlling cond.
		
		Args:
		  history_value: The history (a stack) of a value.
		  value: The value that is pushed onto the stack.
		  dead_branch: True iff the tensor is on a dead branch of a cond.
		
		Returns:
		  The current value (the top of the stack).
	**/
	public function AddBackPropAccumulatedValue(history_value:Dynamic, value:Dynamic, ?dead_branch:Dynamic):Dynamic;
	/**
		Add an accumulator for each forward tensor that is needed in backprop.
		
		This is added to the forward loop at the first time when a tensor
		in the forward loop is used by backprop gradient computation loop.
		We create an accumulator that accumulates the value of tensor at each
		iteration. Called in the control flow context where gradients() is called.
		
		The pseudocode is:
		```
		  acc = stack();
		  while (_pivot) {
		    acc = stack_push(acc, value);
		  }
		```
		
		We make sure that the stack push op in one iteration is executed before
		next iteration. This is achieved by adding a control edge from
		`forward_index.op.inputs[0].op` to the push op, and another control
		edge from the push op to either `forward_index.op` or `forward_sync`.
		
		Args:
		  value: The source tensor in forward that is to be accumulated.
		  dead_branch: True iff the tensor is on a dead branch of a cond.
		
		Returns:
		  The stack that contains the accumulated history of the tensor.
		
		Raises:
		  TypeError: For internal errors involving the value condition context.
	**/
	public function AddForwardAccumulator(value:Dynamic, ?dead_branch:Dynamic):Dynamic;
	/**
		Get the real value of `value`.
		
		If backprop "uses" a value produced by forward inference, an accumulator
		is added in the forward loop to accumulate its values.  We use the
		accumulated value. This method must be called in the grad loop context.
		`value` must be in forward and needed for backprop.
		
		Args:
		  value: A tensor to be captured.
		
		Returns:
		  The same tensor obtained from the saved history.
	**/
	public function GetRealValue(value:Dynamic):Dynamic;
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
	public function ___init__(forward_ctxt:Dynamic, outer_grad_state:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(forward_ctxt:Dynamic, outer_grad_state:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		The list of "deferred" exits.
	**/
	public var deferred_exits : Dynamic;
	/**
		The while loop context for forward.
	**/
	public var forward_context : Dynamic;
	/**
		The loop index of forward loop.
	**/
	public var forward_index : Dynamic;
	/**
		The list of exits of the forward loop.
	**/
	public var forward_loop_exits : Dynamic;
	/**
		A control trigger node for synchronization in the forward loop.
		
		One main use is to keep the push ops of a stack executed in the
		iteration order.
	**/
	public var forward_sync : Dynamic;
	/**
		The corresponding WhileContext for gradient.
	**/
	public var grad_context : Dynamic;
	/**
		The loop index of backprop loop.
	**/
	public var grad_index : Dynamic;
	/**
		A control trigger node for synchronization in the grad loop.
		
		One main use is to keep the pop ops of a stack executed in the
		iteration order.
	**/
	public var grad_sync : Dynamic;
	/**
		The map that records all the tensors needed for backprop.
	**/
	public var history_map : Dynamic;
	/**
		The grad loop state for outer loop.
	**/
	public var outer_grad_state : Dynamic;
	/**
		The number of exits we expect to see but haven't.
	**/
	public var pending_exits_count : Dynamic;
	/**
		The map that records all the Switch ops for the while loop.
	**/
	public var switch_map : Dynamic;
	/**
		The list of "unused" exits.
	**/
	public var unused_exits : Dynamic;
}