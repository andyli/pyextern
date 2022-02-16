/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu;
@:pythonImport("tensorflow.python.tpu.tpu", "TPUReplicateContext") extern class TPUReplicateContext {
	/**
		Notifies a scope about an operator added to an inner scope.
	**/
	public function AddInnerOp(op:Dynamic):Dynamic;
	public function AddName(name:Dynamic):Dynamic;
	public function AddOp(op:Dynamic):Dynamic;
	/**
		Add `val` to the current context and its outer context recursively.
	**/
	public function AddValue(val:Dynamic):Dynamic;
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
	public function HostComputeCore():Dynamic;
	public function IsCondContext():Dynamic;
	public function IsWhileContext():Dynamic;
	public function IsXLAContext():Dynamic;
	/**
		Returns whether the tf.function should be retraced if the context changes.
		    
	**/
	public function RequiresUniqueFunctionRetracing():Dynamic;
	public function _EnterOutsideCompilationScope(?cluster:Dynamic):Dynamic;
	public function _ExitOutsideCompilationScope():Dynamic;
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
		Builds a new TPUReplicateContext.
		
		Args:
		  name: a unique name for the context, used to populate the `_tpu_replicate`
		    attribute.
		  num_replicas: an integer that gives the number of replicas for the
		    computation.
		  pivot: a pivot node. Nodes in the TPUReplicateContext that do not have any
		    inputs will have a control dependency on the pivot node. This ensures
		    that nodes are correctly included in any enclosing control flow
		    contexts.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, num_replicas:Dynamic, pivot:Dynamic):Dynamic;
	/**
		Builds a new TPUReplicateContext.
		
		Args:
		  name: a unique name for the context, used to populate the `_tpu_replicate`
		    attribute.
		  num_replicas: an integer that gives the number of replicas for the
		    computation.
		  pivot: a pivot node. Nodes in the TPUReplicateContext that do not have any
		    inputs will have a control dependency on the pivot node. This ensures
		    that nodes are correctly included in any enclosing control flow
		    contexts.
	**/
	public function new(name:Dynamic, num_replicas:Dynamic, pivot:Dynamic):Void;
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
		Forwards to the enclosing while context, if any.
	**/
	public var back_prop : Dynamic;
	/**
		Returns a variable handle for replicated TPU variable 'var'.
		
		This is a method used by an experimental replicated variable implementation
		and is not intended as a public API.
		
		Args:
		  name: The common name of the variable.
		  vars_: The replicated TPU variables or handles.
		  is_mirrored: Whether the variables are mirrored, which guarantees the
		    values in each replica are always the same.
		  is_packed: Whether the replicated variables are packed into one variable.
		
		Returns:
		  The handle of the TPU replicated input node.
	**/
	public function get_replicated_var_handle(name:Dynamic, vars_:Dynamic, ?is_mirrored:Dynamic, ?is_packed:Dynamic):Dynamic;
	public var grad_state : Dynamic;
	public var name : Dynamic;
	/**
		Return the context containing this context.
	**/
	public var outer_context : Dynamic;
	public function report_unsupported_operations():Dynamic;
	/**
		Serializes this into `context_def`.
		
		Args:
		  context_def: a `ControlFlowContextDef` protocol buffer.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	public function to_control_flow_context_def(context_def:Dynamic, ?export_scope:Dynamic):Dynamic;
}