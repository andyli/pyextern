/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor", "_PforInput") extern class _PforInput {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a _PforInput object.
		
		Args:
		  pfor: PFor converter object.
		  op: the Operation object that is being converted.
		  inputs: list of WrappedTensor objects representing converted values of the
		    inputs of `op`.
	**/
	@:native("__init__")
	public function ___init__(pfor:Dynamic, op:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Creates a _PforInput object.
		
		Args:
		  pfor: PFor converter object.
		  op: the Operation object that is being converted.
		  inputs: list of WrappedTensor objects representing converted values of the
		    inputs of `op`.
	**/
	public function new(pfor:Dynamic, op:Dynamic, inputs:Dynamic):Void;
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
	/**
		Reshapes stacked inputs to prepare them for broadcast.
		
		Since stacked inputs have an extra leading dimension, automatic broadcasting
		rules could incorrectly try to expand dimensions before that leading
		dimension. To avoid that, we reshape these stacked inputs to the maximum
		rank they will need to be broadcasted to.
	**/
	public function expanddim_inputs_for_broadcast():Dynamic;
	public function get_attr(attr:Dynamic):Dynamic;
	public function input(index:Dynamic):Dynamic;
	public var inputs : Dynamic;
	public var num_inputs : Dynamic;
	public var op : Dynamic;
	public var op_type : Dynamic;
	public function output(index:Dynamic):Dynamic;
	public var outputs : Dynamic;
	/**
		Stacks unstacked inputs at `stack_indices`.
		
		Args:
		  stack_indices: indices of inputs at which stacking is done. If None,
		    stacking is done at all indices.
	**/
	public function stack_inputs(?stack_indices:Dynamic):Dynamic;
	public function stacked_input(index:Dynamic):Dynamic;
	public function unstacked_input(index:Dynamic):Dynamic;
}