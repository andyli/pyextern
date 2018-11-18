/* This file is generated, do not edit! */
package tensorflow.python.eager.execution_callbacks;
@:pythonImport("tensorflow.python.eager.execution_callbacks", "InfOrNanError") extern class InfOrNanError {
	/**
		exception cause
	**/
	public var __cause__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exception context
	**/
	public var __context__ : Dynamic;
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
		Constructor of InfOrNanError.
		
		Args:
		  op_type: Type name of the op that generated the tensor that generated the
		    `inf`(s) or `nan`(s) (e.g., `Div`).
		  op_name: Name of the op that generated the tensor with `inf`(s) or
		    `nan`(s). This name is set by client and can be `None` if it is unset.
		  output_index: The 0-based output index of the tensor that contains
		    `inf`(s) or `nan`(s).
		  num_outputs: Total number of outputs of the operation.
		  value: The tensor value that contains `inf`(s) or `nan`(s).
	**/
	@:native("__init__")
	public function ___init__(op_type:Dynamic, op_name:Dynamic, output_index:Dynamic, num_outputs:Dynamic, value:Dynamic):Dynamic;
	/**
		Constructor of InfOrNanError.
		
		Args:
		  op_type: Type name of the op that generated the tensor that generated the
		    `inf`(s) or `nan`(s) (e.g., `Div`).
		  op_name: Name of the op that generated the tensor with `inf`(s) or
		    `nan`(s). This name is set by client and can be `None` if it is unset.
		  output_index: The 0-based output index of the tensor that contains
		    `inf`(s) or `nan`(s).
		  num_outputs: Total number of outputs of the operation.
		  value: The tensor value that contains `inf`(s) or `nan`(s).
	**/
	public function new(op_type:Dynamic, op_name:Dynamic, output_index:Dynamic, num_outputs:Dynamic, value:Dynamic):Void;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var __suppress_context__ : Dynamic;
	public var __traceback__ : Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Get the error message describing this InfOrNanError object.
	**/
	public function _get_error_message():Dynamic;
	public var args : Dynamic;
	public var num_outputs : Dynamic;
	public var op_name : Dynamic;
	public var op_type : Dynamic;
	public var output_index : Dynamic;
	public var value : Dynamic;
	/**
		Exception.with_traceback(tb) --
		set self.__traceback__ to tb and return self.
	**/
	public function with_traceback(args:haxe.extern.Rest<Dynamic>):Dynamic;
}