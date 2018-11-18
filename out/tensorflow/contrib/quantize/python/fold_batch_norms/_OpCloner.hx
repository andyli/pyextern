/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.fold_batch_norms;
@:pythonImport("tensorflow.contrib.quantize.python.fold_batch_norms", "_OpCloner") extern class _OpCloner {
	public function Clone(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
	/**
		Makes sure that convolution inputs have compatible shapes.
		
		Args:
		  op_name: Operation name, only used in error message.
		  input_tensor: Input that is convolved.
		  weights: Weights of the convolution filter.
		
		Raises:
		  ValueError: When input shapes are incompatible.
	**/
	public function _AssertConvShapes(op_name:Dynamic, input_tensor:Dynamic, weights:Dynamic):Dynamic;
	/**
		Makes sure that FC layer inputs have compatible shapes.
		
		Args:
		  op_name: Operation name, only used in error message.
		  weights: Weights used in FC layer.
		  input_tensor: Input into FC layer.
		
		Raises:
		  ValueError: When input shapes are incompatible.
	**/
	public function _AssertFCShapes(op_name:Dynamic, weights:Dynamic, input_tensor:Dynamic):Dynamic;
	public function _CloneAdd(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
	public function _CloneConv2d(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
	public function _CloneDepthwiseConv2d(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
	public function _CloneMatMul(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
	public function _CloneMul(op:Dynamic, inputs:Dynamic, new_name:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
}