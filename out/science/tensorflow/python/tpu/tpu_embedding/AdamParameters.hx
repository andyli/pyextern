/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "AdamParameters") extern class AdamParameters {
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
		Optimization parameters for Adam.
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  beta1: A float value. The exponential decay rate for the 1st moment
		    estimates.
		  beta2: A float value. The exponential decay rate for the 2nd moment
		    estimates.
		  epsilon: A small constant for numerical stability.
		  lazy_adam: Use lazy Adam instead of Adam. Lazy Adam trains faster. See
		    `optimization_parameters.proto` for details.
		  sum_inside_sqrt: This improves training speed. Please see
		    `optimization_parameters.proto` for details.
		  use_gradient_accumulation: setting this to `False` makes embedding
		    gradients calculation less accurate but faster. Please see
		    `optimization_parameters.proto` for details.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  clip_gradient_min: the minimum value to clip by; None means -infinity.
		    Gradient accumulation must be set to true if this is set.
		  clip_gradient_max: the maximum value to clip by; None means +infinity.
		    Gradient accumulation must be set to true if this is set.
	**/
	@:native("__init__")
	public function ___init__(learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?lazy_adam:Dynamic, ?sum_inside_sqrt:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Dynamic;
	/**
		Optimization parameters for Adam.
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  beta1: A float value. The exponential decay rate for the 1st moment
		    estimates.
		  beta2: A float value. The exponential decay rate for the 2nd moment
		    estimates.
		  epsilon: A small constant for numerical stability.
		  lazy_adam: Use lazy Adam instead of Adam. Lazy Adam trains faster. See
		    `optimization_parameters.proto` for details.
		  sum_inside_sqrt: This improves training speed. Please see
		    `optimization_parameters.proto` for details.
		  use_gradient_accumulation: setting this to `False` makes embedding
		    gradients calculation less accurate but faster. Please see
		    `optimization_parameters.proto` for details.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  clip_gradient_min: the minimum value to clip by; None means -infinity.
		    Gradient accumulation must be set to true if this is set.
		  clip_gradient_max: the maximum value to clip by; None means +infinity.
		    Gradient accumulation must be set to true if this is set.
	**/
	public function new(learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?lazy_adam:Dynamic, ?sum_inside_sqrt:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}