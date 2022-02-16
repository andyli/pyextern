/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizer_v2.learning_rate_schedule;
@:pythonImport("tensorflow.python.keras.optimizer_v2.learning_rate_schedule", "ExponentialDecay") extern class ExponentialDecay {
	/**
		Call self as a function.
	**/
	public function __call__(step:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Applies exponential decay to the learning rate.
		
		Args:
		  initial_learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The decay rate.
		  staircase: Boolean.  If `True` decay the learning rate at discrete
		    intervals
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialDecay'.
	**/
	@:native("__init__")
	public function ___init__(initial_learning_rate:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies exponential decay to the learning rate.
		
		Args:
		  initial_learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The decay rate.
		  staircase: Boolean.  If `True` decay the learning rate at discrete
		    intervals
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialDecay'.
	**/
	public function new(initial_learning_rate:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		Instantiates a `LearningRateSchedule` from its config.
		
		Args:
		    config: Output of `get_config()`.
		
		Returns:
		    A `LearningRateSchedule` instance.
	**/
	static public function from_config(config:Dynamic):Dynamic;
	public function get_config():Dynamic;
}