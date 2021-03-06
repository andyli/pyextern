/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_embedding", "AdagradParameters") extern class AdagradParameters {
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
		Optimization parameters for Adagrad.
		
		Args:
		  learning_rate: used for updating embedding table.
		  initial_accumulator: initial accumulator for Adagrad.
		  use_gradient_accumulation: setting this to `True` makes embedding
		     gradients calculation more accurate but slower. Please see
		     `optimization_parameters.proto` for details.
		     for details.
		  pipeline_execution_with_tensor_core: setting this to `True` makes training
		    faster, but trained model will be different if step N and step N+1
		    involve the same set of embedding ID. Please see
		    `tpu_embedding_configuration.proto` for details.
	**/
	@:native("__init__")
	public function ___init__(learning_rate:Dynamic, initial_accumulator:Dynamic, ?use_gradient_accumulation:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic):Dynamic;
	/**
		Optimization parameters for Adagrad.
		
		Args:
		  learning_rate: used for updating embedding table.
		  initial_accumulator: initial accumulator for Adagrad.
		  use_gradient_accumulation: setting this to `True` makes embedding
		     gradients calculation more accurate but slower. Please see
		     `optimization_parameters.proto` for details.
		     for details.
		  pipeline_execution_with_tensor_core: setting this to `True` makes training
		    faster, but trained model will be different if step N and step N+1
		    involve the same set of embedding ID. Please see
		    `tpu_embedding_configuration.proto` for details.
	**/
	public function new(learning_rate:Dynamic, initial_accumulator:Dynamic, ?use_gradient_accumulation:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic):Void;
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