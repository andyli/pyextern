/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.values;
@:pythonImport("tensorflow.contrib.distribute.python.values", "MultiStepContext") extern class MultiStepContext {
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
		Initializes an output context.
		
		Returns:
		  A context object.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initializes an output context.
		
		Returns:
		  A context object.
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
	/**
		Replace the entire dictionary of last step outputs.
	**/
	public function _set_last_step_outputs(outputs:Dynamic):Dynamic;
	/**
		A dictionary consisting of outputs to be captured on last step.
		
		Keys in the dictionary are names of tensors to be captured, as specified
		when `set_last_step_output` is called.
		Values in the dictionary are the tensors themselves. If
		`set_last_step_output` was called with an `aggregation` for this output,
		then the value is the aggregated value.
		
		Returns:
		  A dictionary with last step outputs.
	**/
	public var last_step_outputs : Dynamic;
	/**
		A dictionary consisting of any non tensor outputs to be captured.
	**/
	public var non_tensor_outputs : Dynamic;
	/**
		Set `output` with `name` to be outputted from the last step.
		
		Args:
		  name: String, name to identify the output. Doesn't need to match tensor
		    name.
		  output: The tensors that should be outputted with `name`. See below for
		    actual types supported.
		  aggregation: Aggregation method to use to aggregate outputs from multiple
		    towers. Required if `set_last_step_output` is called in a tower context.
		    Optional in cross_tower_context.
		    When present, the outputs from all the towers are aggregated using the
		    current distribution strategy's `reduce` method. Hence, the type of
		    `output` must be what's supported by the corresponding `reduce` method.
		    For e.g. if using MirroredStrategy and aggregation is set, output
		    must be a `PerDevice` value.
		    The aggregation method is also recorded in a dictionary
		    `_last_step_outputs_aggregations` for later interpreting of the
		    outputs as already reduced or not.
	**/
	public function set_last_step_output(name:Dynamic, output:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Set `output` with `name` to be captured as a non tensor output.
	**/
	public function set_non_tensor_output(name:Dynamic, output:Dynamic):Dynamic;
}