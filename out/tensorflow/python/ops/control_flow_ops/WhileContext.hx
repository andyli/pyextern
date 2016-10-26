/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops", "WhileContext") extern class WhileContext {
	/**
		Add an accumulation loop for every loop invariant.
		
		This is added to the backprop loop. It is used to accumulate partial
		gradients within each loop iteration. Called when in the gradient while
		context.
		
		The pseudocode is:
		  ```
		  acc = 0.0;
		  while (_pivot) {
		    acc += grad;
		  }
		  ```
		
		Args:
		  op: The Enter op for a loop invariant.
		  grad: The partial gradient of an iteration for a loop invariant.
		
		Returns:
		  The gradient for a loop invariant.
	**/
	public function AddBackPropAccumulator(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Add the backprop loop that controls the iterations.
		
		This is added to the backprop loop. It is used to control the loop
		termination of the backprop loop. Called in the outer context of
		this grad context.
		
		The pseudocode is:
		  `n = count; while (n >= 1) { n--; }`
		
		Args:
		  count: The number of iterations for backprop.
		
		Returns:
		  The loop index.
	**/
	public function AddBackPropCounter(count:Dynamic):Dynamic;
	/**
		This is used for accumulating gradients that are IndexedSlices.
		
		This is essentially the equavalent of AddBackPropAccumulator but optimized
		for things like updating embeddings from within a while loop.
		
		Args:
		  op: The Enter op for a loop invariant.
		  grad: The partial gradients represented as an IndexedSlices.
		
		Returns:
		  The accumulated IndexedSlices gradient of the loop invariant.
	**/
	public function AddBackPropIndexedSlicesAccumulator(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Adds a loop that counts the number of iterations.
		
		This is added to the forward loop at the time when we start to
		create the loop for backprop gradient computation. Called in
		the outer context of this forward context.
		
		The pseudocode is:
		  `n = 0; while (_pivot) { n++; }`
		
		Returns:
		  The number of iterations taken by the forward loop and the loop index.
	**/
	public function AddForwardCounter():Dynamic;
	public function AddName(name:Dynamic):Dynamic;
	/**
		Add `op` to the current context.
	**/
	public function AddOp(op:Dynamic):Dynamic;
	/**
		Add `val` to the current context and its outer context recursively.
	**/
	public function AddValue(val:Dynamic):Dynamic;
	/**
		Add the loop termination condition and body to the graph.
	**/
	public function BuildLoop(pred:Dynamic, body:Dynamic, loop_vars:Dynamic):Dynamic;
	/**
		Enter this control flow context.
	**/
	public function Enter():Dynamic;
	/**
		Exit this control flow context.
	**/
	public function Exit():Dynamic;
	/**
		Make a list of tensors available in the outer context.
	**/
	public function ExitResult(result:Dynamic):Dynamic;
	public function GetControlPivot():Dynamic;
	/**
		Return the while context containing this context.
	**/
	public function GetWhileContext():Dynamic;
	/**
		Add a control dependency to the containing WhileContext.
		
		The added control dependency ensures that the outputs of this op
		belong to the WhileContext. Do nothing if the op is not contained
		in a WhileContext.
		
		Args:
		  op: An operation.
	**/
	public function MaybeAddToWhileContext(op:Dynamic):Dynamic;
	/**
		Add `op` to the current context.
		
		In the case that op has only external data inputs, we remove all of its
		external control inputs so all its inputs are in the same while loop
		context. This is valid because op now has an Enter input that has all
		the right control dependency.
	**/
	public function _AddOpInternal(op:Dynamic):Dynamic;
	/**
		Core: Add the loop termination condition and body to the graph.
	**/
	public function _BuildLoop(pred:Dynamic, body:Dynamic, original_loop_vars:Dynamic, loop_vars:Dynamic):Dynamic;
	public function _FixControlInputsAndContext(enters:Dynamic):Dynamic;
	public function _InitializeValues(values:Dynamic):Dynamic;
	/**
		Add a control input to the op if it only depends on loop invariants.
	**/
	public function _MaybeAddControlDependency(op:Dynamic):Dynamic;
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
	public function ___init__(parallel_iterations:Dynamic, back_prop:Dynamic, swap_memory:Dynamic, name:Dynamic, ?grad_state:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parallel_iterations:Dynamic, back_prop:Dynamic, swap_memory:Dynamic, name:Dynamic, ?grad_state:Dynamic):Void;
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
		True iff backprop is enabled for this While loop.
	**/
	public var back_prop : Dynamic;
	/**
		The gradient loop state.
	**/
	public var grad_state : Dynamic;
	/**
		The list of exit tensors for loop variables.
	**/
	public var loop_exits : Dynamic;
	public var name : Dynamic;
	/**
		Return the context containing this context.
	**/
	public var outer_context : Dynamic;
	/**
		The number of iterations allowed to run in parallel.
	**/
	public var parallel_iterations : Dynamic;
	/**
		The boolean tensor representing the loop termination condition.
	**/
	public var pivot : Dynamic;
	/**
		True iff GPU-CPU memory swap is enabled for this While loop.
	**/
	public var swap_memory : Dynamic;
}