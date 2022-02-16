/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops", "CondContext") extern class CondContext {
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
		Add the subgraph defined by fn() to the graph.
	**/
	public function BuildCondBranch(fn:Dynamic):Dynamic;
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
	**/
	public function _AddOpInternal(op:Dynamic):Dynamic;
	public function _BuildCondTensor(v:Dynamic):Dynamic;
	/**
		Process an output tensor of a conditional branch.
	**/
	public function _ProcessOutputTensor(val:Dynamic):Dynamic;
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
		Creates a `CondContext`.
		
		Args:
		  pred: The `boolean` tensor for the conditional predicate.
		  pivot: The predicate tensor in this branch.
		  branch: 0 or 1 representing this branch.
		  name: Name of the `CondContext` python object.
		  context_def: Optional `ContextDef` protocol buffer to initialize the
		    `CondContext` object from.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initialing from protocol buffer.
	**/
	@:native("__init__")
	public function ___init__(?pred:Dynamic, ?pivot:Dynamic, ?branch:Dynamic, ?name:Dynamic, ?context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Creates a `CondContext`.
		
		Args:
		  pred: The `boolean` tensor for the conditional predicate.
		  pivot: The predicate tensor in this branch.
		  branch: 0 or 1 representing this branch.
		  name: Name of the `CondContext` python object.
		  context_def: Optional `ContextDef` protocol buffer to initialize the
		    `CondContext` object from.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initialing from protocol buffer.
	**/
	public function new(?pred:Dynamic, ?pivot:Dynamic, ?branch:Dynamic, ?name:Dynamic, ?context_def:Dynamic, ?import_scope:Dynamic):Void;
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
		Creates a new `CondContext` from protocol buffer.
		
		Args:
		  context_def: `CondContextDef` protocol buffer.
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
	public var back_prop : Dynamic;
	public var branch : Dynamic;
	/**
		Returns a `CondContext` object created from `context_def`.
	**/
	static public function from_proto(context_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	public var grad_state : Dynamic;
	public var name : Dynamic;
	/**
		Return the context containing this context.
	**/
	public var outer_context : Dynamic;
	public var pivot : Dynamic;
	public var pred : Dynamic;
	/**
		Serializes this into `context_def`.
		
		Args:
		  context_def: a `ControlFlowContextDef` protocol buffer.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	public function to_control_flow_context_def(context_def:Dynamic, ?export_scope:Dynamic):Dynamic;
	/**
		Converts a `CondContext` to a `CondContextDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `CondContextDef` protocol buffer.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
}