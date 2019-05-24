/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu", "_TPUInferenceContext") extern class _TPUInferenceContext {
	/**
		Notifies a scope about an operator added to an inner scope.
	**/
	public function AddInnerOp(op:Dynamic):Dynamic;
	public function AddName(name:Dynamic):Dynamic;
	public function AddOp(op:Dynamic):Dynamic;
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
	public function IsCondContext():Dynamic;
	public function IsWhileContext():Dynamic;
	public function IsXLAContext():Dynamic;
	public function _AddOpInternal(op:Dynamic):Dynamic;
	public function _IsInOuterContext(op:Dynamic):Dynamic;
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
	public function ___init__(name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
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
	public var grad_state : Dynamic;
	public var name : Dynamic;
	/**
		Return the context containing this context.
	**/
	public var outer_context : Dynamic;
	/**
		Serializes this into `context_def`.
		
		Args:
		  context_def: a `ControlFlowContextDef` protocol buffer.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	public function to_control_flow_context_def(context_def:Dynamic, ?export_scope:Dynamic):Dynamic;
}