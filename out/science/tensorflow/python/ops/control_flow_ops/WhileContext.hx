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
	public function AddBackpropAccumulator(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		This is used for accumulating gradients that are IndexedSlices.
		
		This is essentially the equivalent of AddBackpropAccumulator but optimized
		for things like updating embeddings from within a while loop.
		
		Args:
		  op: The Enter op for a loop invariant.
		  grad: The partial gradients represented as an IndexedSlices.
		
		Returns:
		  The accumulated IndexedSlices gradient of the loop invariant.
	**/
	public function AddBackpropIndexedSlicesAccumulator(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Add the backprop loop that controls the iterations.
		
		This is added to the backprop loop. It is used to control the loop
		termination of the backprop loop. Called in the outer context of
		this grad context.
		
		The pseudocode is:
		  `n = count; while (n >= 1) { n--; }`
		
		Note that a control dependency is added to `final_zero` to ensure the
		correct execution order of stack pop ops.
		
		Args:
		  count: The number of iterations for backprop.
		  outer_grad_state: The outer grad state. None if not nested.
		
		Returns:
		  The loop index.
	**/
	public function AddBackpropLoopCounter(count:Dynamic, outer_grad_state:Dynamic):Dynamic;
	/**
		Adds a loop that counts the number of iterations.
		
		This is added to the forward loop at the time when we start to
		create the loop for backprop gradient computation. Called in
		the outer context of this forward context.
		
		The pseudocode is:
		  `n = 0; while (_pivot) { n++; }`
		
		Note that a control dependency is added to `n` to ensure the correct
		execution order of stack push ops.
		
		Args:
		  outer_grad_state: The outer grad state. None if not nested.
		
		Returns:
		  The number of iterations taken by the forward loop and the loop index.
	**/
	public function AddForwardLoopCounter(outer_grad_state:Dynamic):Dynamic;
	/**
		Notifies a scope about an operator added to an inner scope.
	**/
	public function AddInnerOp(op:Dynamic):Dynamic;
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
	public function BuildLoop(pred:Dynamic, body:Dynamic, loop_vars:Dynamic, shape_invariants:Dynamic, return_same_structure:Dynamic):Dynamic;
	/**
		Enter this control flow context.
	**/
	public function Enter():Dynamic;
	/**
		Start building a gradient colocated with an op.
	**/
	public function EnterGradientColocation(op:Dynamic, gradient_uid:Dynamic):Dynamic;
	/**
		Exit this control flow context.
	**/
	public function Exit():Dynamic;
	/**
		Start building a gradient colocated with an op.
	**/
	public function ExitGradientColocation(op:Dynamic, gradient_uid:Dynamic):Dynamic;
	/**
		Make a list of tensors available in the outer context.
	**/
	public function ExitResult(result:Dynamic):Dynamic;
	/**
		Returns the pivot node for this context, or None.
	**/
	public function GetControlPivot():Dynamic;
	/**
		Return the while context containing this context.
	**/
	public function GetWhileContext():Dynamic;
	public function IsCondContext():Dynamic;
	public function IsWhileContext():Dynamic;
	public function IsXLAContext():Dynamic;
	/**
		Add `op` to the current context.
		
		We move any external control dependencies of the op to the loop pivot, to
		ensure they get executed.
	**/
	public function _AddOpInternal(op:Dynamic):Dynamic;
	/**
		Core: Add the loop termination condition and body to the graph.
	**/
	public function _BuildLoop(pred:Dynamic, body:Dynamic, original_loop_vars:Dynamic, loop_vars:Dynamic, shape_invariants:Dynamic):Dynamic;
	public function _FixControlInputsAndContext(enters:Dynamic):Dynamic;
	/**
		Makes the values known to this context.
	**/
	public function _InitializeValues(values:Dynamic):Dynamic;
	/**
		Add a control input to the op if it only depends on loop invariants.
	**/
	public function _MaybeAddControlDependency(op:Dynamic):Dynamic;
	/**
		Remove any external control dependency on this op.
	**/
	public function _RemoveExternalControlEdges(op:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		"Creates a `WhileContext`.
		
		Args:
		  maximum_iterations: Optional upper bound on number of loop iterations.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		  grad_state: The gradient loop state.
		  context_def: Optional `WhileContextDef` protocol buffer to initialize the
		    `Whilecontext` python object from.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initialing from protocol buffer.
	**/
	@:native("__init__")
	public function ___init__(?maximum_iterations:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic, ?grad_state:Dynamic, ?context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		"Creates a `WhileContext`.
		
		Args:
		  maximum_iterations: Optional upper bound on number of loop iterations.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		  grad_state: The gradient loop state.
		  context_def: Optional `WhileContextDef` protocol buffer to initialize the
		    `Whilecontext` python object from.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initialing from protocol buffer.
	**/
	public function new(?maximum_iterations:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?name:Dynamic, ?grad_state:Dynamic, ?context_def:Dynamic, ?import_scope:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Creates a new `WhileContext` from arguments.
		
		Args:
		  maximum_iterations: Optional upper bound on number of loop iterations.
		  parallel_iterations: The number of iterations allowed to run in parallel.
		  back_prop: Whether backprop is enabled for this while loop.
		  swap_memory: Whether GPU-CPU memory swap is enabled for this loop.
		  name: Optional name prefix for the returned tensors.
		
		Raises:
		  ValueError: If `parallel_iterations` has invalid value.
	**/
	public function _init_from_args(maximum_iterations:Dynamic, parallel_iterations:Dynamic, back_prop:Dynamic, swap_memory:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates a new `WhileContext` from protocol buffer.
		
		Args:
		  context_def: `WhileContextDef` protocol buffer.
		  import_scope: Optional `string`. Name scope to add.
	**/
	public function _init_from_proto(context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Initializes values and external_values from `ValuesDef` protocol buffer.
		
		Args:
		  values_def: `ValuesDef` protocol buffer.
		  import_scope: Optional `string`. Name scope to add.
	**/
	public function _init_values_from_proto(values_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Converts the values to a `ValuesDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `ValuesDef` protocol buffer.
	**/
	public function _to_values_def(?export_scope:Dynamic):Dynamic;
	/**
		True iff backprop is enabled for this while loop.
	**/
	public var back_prop : Dynamic;
	/**
		Returns a `WhileContext` object created from `context_def`.
		
		Args:
		  context_def: A `WhileContextDef` protocol buffer.
		  import_scope: Optional `string`. Name scope to add.
		
		Returns:
		  A `WhileContext` Python object.
	**/
	static public function from_proto(context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		The gradient loop state.
	**/
	public var grad_state : Dynamic;
	/**
		The list of enter tensors for loop variables.
	**/
	public var loop_enters : Dynamic;
	/**
		The list of exit tensors for loop variables.
	**/
	public var loop_exits : Dynamic;
	/**
		The maximum number of iterations that will be executed.
	**/
	public var maximum_iterations : Dynamic;
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
		True iff GPU-CPU memory swap is enabled for this while loop.
	**/
	public var swap_memory : Dynamic;
	/**
		Serializes this into `context_def`.
		
		Args:
		  context_def: a `ControlFlowContextDef` protocol buffer.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	public function to_control_flow_context_def(context_def:Dynamic, ?export_scope:Dynamic):Dynamic;
	/**
		Converts a `WhileContext` to a `WhileContextDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `WhileContextDef` protocol buffer.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
}