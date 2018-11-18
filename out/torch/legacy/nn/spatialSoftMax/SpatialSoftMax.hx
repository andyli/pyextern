/* This file is generated, do not edit! */
package torch.legacy.nn.spatialSoftMax;
@:pythonImport("torch.legacy.nn.SpatialSoftMax", "SpatialSoftMax") extern class SpatialSoftMax {
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
	public function _flatten(?parameters:Dynamic):Dynamic;
	static public var _flattenTensorBuffer : Dynamic;
	public function accGradParameters(input:Dynamic, gradOutput:Dynamic, ?scale:Dynamic):Dynamic;
	public function accUpdateGradParameters(input:Dynamic, gradOutput:Dynamic, lr:Dynamic):Dynamic;
	public function apply(callback:Dynamic):Dynamic;
	public function backward(input:Dynamic, gradOutput:Dynamic, ?scale:Dynamic):Dynamic;
	public function backwardUpdate(input:Dynamic, gradOutput:Dynamic, lr:Dynamic):Dynamic;
	public function clearState():Dynamic;
	public function clone(?arg:python.VarArgs<Dynamic>):Dynamic;
	public function cuda(?args:python.VarArgs<Dynamic>):Dynamic;
	public function double(?args:python.VarArgs<Dynamic>):Dynamic;
	public function evaluate():Dynamic;
	public function findModules(cls:Dynamic, ?container:Dynamic):Dynamic;
	public function flattenParameters():Dynamic;
	public function float(?args:python.VarArgs<Dynamic>):Dynamic;
	public function forward(input:Dynamic):Dynamic;
	public function listModules():Dynamic;
	public function parameters():Dynamic;
	public function read(f:Dynamic):Dynamic;
	public function replace(callback:Dynamic):Dynamic;
	public function reset():Dynamic;
	public function share(mlp:Dynamic, ?arg:python.VarArgs<Dynamic>):Dynamic;
	public function sharedAccUpdateGradParameters(input:Dynamic, gradOutput:Dynamic, lr:Dynamic):Dynamic;
	public function training():Dynamic;
	public function type(?type:Dynamic, ?tensorCache:Dynamic):Dynamic;
	public function updateGradInput(input:Dynamic, gradOutput:Dynamic):Dynamic;
	public function updateOutput(input:Dynamic):Dynamic;
	public function updateParameters(learningRate:Dynamic):Dynamic;
	public function write(f:Dynamic):Dynamic;
	public function zeroGradParameters():Dynamic;
}