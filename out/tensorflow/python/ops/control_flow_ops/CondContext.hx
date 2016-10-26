/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_ops;
@:pythonImport("tensorflow.python.ops.control_flow_ops", "CondContext") extern class CondContext {
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
	**/
	public function _AddOpInternal(op:Dynamic):Dynamic;
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
	public function ___init__(pred:Dynamic, pivot:Dynamic, branch:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(pred:Dynamic, pivot:Dynamic, branch:Dynamic):Void;
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
	public var back_prop : Dynamic;
	public var branch : Dynamic;
	public var grad_state : Dynamic;
	/**
		Return the context containing this context.
	**/
	public var outer_context : Dynamic;
	public var pivot : Dynamic;
	public var pred : Dynamic;
}