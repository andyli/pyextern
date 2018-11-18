/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "ConditionalAccumulatorBase") extern class ConditionalAccumulatorBase {
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
		Creates a new ConditionalAccumulator.
		
		Args:
		  dtype: Datatype of the accumulated gradients.
		  shape: Shape of the accumulated gradients.
		  accumulator_ref: A handle to the conditional accumulator, created by sub-
		    classes
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, shape:Dynamic, accumulator_ref:Dynamic):Dynamic;
	/**
		Creates a new ConditionalAccumulator.
		
		Args:
		  dtype: Datatype of the accumulated gradients.
		  shape: Shape of the accumulated gradients.
		  accumulator_ref: A handle to the conditional accumulator, created by sub-
		    classes
	**/
	public function new(dtype:Dynamic, shape:Dynamic, accumulator_ref:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		The underlying accumulator reference.
	**/
	public var accumulator_ref : Dynamic;
	/**
		The datatype of the gradients accumulated by this accumulator.
	**/
	public var dtype : Dynamic;
	/**
		The name of the underlying accumulator.
	**/
	public var name : Dynamic;
	/**
		Number of gradients that have currently been aggregated in accumulator.
		
		Args:
		  name: Optional name for the operation.
		
		Returns:
		  Number of accumulated gradients currently in accumulator.
	**/
	public function num_accumulated(?name:Dynamic):Dynamic;
	/**
		Sets the global time step of the accumulator.
		
		The operation logs a warning if we attempt to set to a time step that is
		lower than the accumulator's own time step.
		
		Args:
		  new_global_step: Value of new time step. Can be a variable or a constant
		  name: Optional name for the operation.
		
		Returns:
		  Operation that sets the accumulator's time step.
	**/
	public function set_global_step(new_global_step:Dynamic, ?name:Dynamic):Dynamic;
}