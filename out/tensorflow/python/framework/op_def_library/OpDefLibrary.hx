/* This file is generated, do not edit! */
package tensorflow.python.framework.op_def_library;
@:pythonImport("tensorflow.python.framework.op_def_library", "OpDefLibrary") extern class OpDefLibrary {
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Register an OpDef. May call apply_op with the name afterwards.
	**/
	public function add_op(op_def:Dynamic):Dynamic;
	/**
		Register the OpDefs from an OpList.
	**/
	public function add_op_list(op_list:Dynamic):Dynamic;
	/**
		Add a node invoking a registered Op to a graph.
		
		Example usage:
		   # input1 and input2 can be Tensors or anything ops.convert_to_tensor()
		   # will convert to a Tensor.
		   op_def_library.apply_op("op", input1=input1, input2=input2)
		   # Can specify a node name.
		   op_def_library.apply_op("op", input1=input1, name="node_name")
		   # Must use keyword arguments, with the names specified in the OpDef.
		   op_def_library.apply_op("op", input_name=input, attr_name=attr)
		
		All attrs must either be inferred from an input or specified.
		(If inferred, the attr must not be specified.)  If an attr has a default
		value specified in the Op's OpDef, then you may pass None as the value
		of that attr to get the default.
		
		Args:
		  op_type_name: string. Must match the name field of a registered Op.
		  name: string. Optional name of the created op.
		  **keywords: input Tensor and attr arguments specified by name,
		    and optional parameters to pass when constructing the Operation.
		
		Returns:
		  The Tensor(s) representing the output of the operation, or the Operation
		  itself if there are no outputs.
		
		Raises:
		  RuntimeError: On some errors.
		  TypeError: On some errors.
		  ValueError: On some errors.
	**/
	public function apply_op(op_type_name:Dynamic, ?name:Dynamic, ?keywords:python.KwArgs<Dynamic>):Dynamic;
}