/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_graph;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_graph", "SampleAndReshapeValue") extern class SampleAndReshapeValue {
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
		Sample `n` times and reshape the outer 2 axes so rank does not change.
		
		Args:
		  n: A python integer or int32 tensor.  The number of samples to take.
		  stop_gradient: If `True`, StochasticTensors' values are wrapped in
		    `stop_gradient`, to avoid backpropagation through.
	**/
	@:native("__init__")
	public function ___init__(?n:Dynamic, ?stop_gradient:Dynamic):Dynamic;
	/**
		Sample `n` times and reshape the outer 2 axes so rank does not change.
		
		Args:
		  n: A python integer or int32 tensor.  The number of samples to take.
		  stop_gradient: If `True`, StochasticTensors' values are wrapped in
		    `stop_gradient`, to avoid backpropagation through.
	**/
	public function new(?n:Dynamic, ?stop_gradient:Dynamic):Void;
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
	public function declare_inputs(unused_stochastic_tensor:Dynamic, unused_inputs_dict:Dynamic):Dynamic;
	public var n : Dynamic;
	public function popped_above(unused_value_type:Dynamic):Dynamic;
	public function pushed_above(unused_value_type:Dynamic):Dynamic;
	/**
		Whether the value should be wrapped in stop_gradient.
		
		StochasticTensors must respect this property.
	**/
	public var stop_gradient : Dynamic;
}