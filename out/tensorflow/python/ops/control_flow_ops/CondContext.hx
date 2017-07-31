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
		Exit this control flow context.
	**/
	public function Exit():Dynamic;
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
	/**
		Add `op` to the current context.
	**/
	public function _AddOpInternal(op:Dynamic):Dynamic;
	public function _BuildCondTensor(v:Dynamic):Dynamic;
	public function _IsInOuterContext(op:Dynamic):Dynamic;
	/**
		Process an output tensor of a conditional branch.
	**/
	public function _ProcessOutputTensor(val:Dynamic):Dynamic;
	/**
		Remove any external control dependency on this op.
	**/
	public function _RemoveExternalControlEdges(op:Dynamic):Dynamic;
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
		Returns a `ControlFlowContext` created from `values_def`.
	**/
	static public function _from_proto(values_def:Dynamic, ?import_scope:Dynamic):Dynamic;
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
	public function _to_proto(?export_scope:Dynamic):Dynamic;
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
		Converts a `CondContext` to a `CondContextDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `CondContextDef` protocol buffer.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
}