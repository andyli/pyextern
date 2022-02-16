/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "FtrlParameters") extern class FtrlParameters {
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
		Optimization parameters for Ftrl.
		
		Implements FTRL as described in the following [paper](
		https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41159.pdf)
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  learning_rate_power: A float value, must be less or equal to zero.
		    Controls how the learning rate decreases during training. Use zero for a
		    fixed learning rate. See section 3.1 in the
		    [paper](https://www.eecs.tufts.edu/~dsculley/papers/ad-click-prediction.pdf).
		  initial_accumulator_value: The starting value for accumulators. Only zero
		    or positive values are allowed.
		  l1_regularization_strength: A float value, must be greater than or equal
		    to zero.
		  l2_regularization_strength: A float value, must be greater than or equal
		    to zero.
		  use_gradient_accumulation: setting this to `False` makes embedding
		    gradients calculation less accurate but faster. Please see
		    `optimization_parameters.proto` for details. for details.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  multiply_linear_by_learning_rate: When true, multiplies the usages of the
		    linear slot in the weight update by the learning rate. This is useful
		    when ramping up learning rate from 0 (which would normally produce
		    NaNs).
		  beta: The beta parameter for FTRL.
		  allow_zero_accumulator: Changes the implementation of the square root to
		    allow for the case of initial_accumulator_value being zero. This will
		    cause a slight performance drop.
		  clip_gradient_min: the minimum value to clip by; None means -infinity.
		    Gradient accumulation must be set to true if this is set.
		  clip_gradient_max: the maximum value to clip by; None means +infinity.
		    Gradient accumulation must be set to true if this is set.
	**/
	@:native("__init__")
	public function ___init__(learning_rate:Dynamic, ?learning_rate_power:Dynamic, ?initial_accumulator_value:Dynamic, ?l1_regularization_strength:Dynamic, ?l2_regularization_strength:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?multiply_linear_by_learning_rate:Dynamic, ?beta:Dynamic, ?allow_zero_accumulator:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Dynamic;
	/**
		Optimization parameters for Ftrl.
		
		Implements FTRL as described in the following [paper](
		https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41159.pdf)
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  learning_rate_power: A float value, must be less or equal to zero.
		    Controls how the learning rate decreases during training. Use zero for a
		    fixed learning rate. See section 3.1 in the
		    [paper](https://www.eecs.tufts.edu/~dsculley/papers/ad-click-prediction.pdf).
		  initial_accumulator_value: The starting value for accumulators. Only zero
		    or positive values are allowed.
		  l1_regularization_strength: A float value, must be greater than or equal
		    to zero.
		  l2_regularization_strength: A float value, must be greater than or equal
		    to zero.
		  use_gradient_accumulation: setting this to `False` makes embedding
		    gradients calculation less accurate but faster. Please see
		    `optimization_parameters.proto` for details. for details.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  multiply_linear_by_learning_rate: When true, multiplies the usages of the
		    linear slot in the weight update by the learning rate. This is useful
		    when ramping up learning rate from 0 (which would normally produce
		    NaNs).
		  beta: The beta parameter for FTRL.
		  allow_zero_accumulator: Changes the implementation of the square root to
		    allow for the case of initial_accumulator_value being zero. This will
		    cause a slight performance drop.
		  clip_gradient_min: the minimum value to clip by; None means -infinity.
		    Gradient accumulation must be set to true if this is set.
		  clip_gradient_max: the maximum value to clip by; None means +infinity.
		    Gradient accumulation must be set to true if this is set.
	**/
	public function new(learning_rate:Dynamic, ?learning_rate_power:Dynamic, ?initial_accumulator_value:Dynamic, ?l1_regularization_strength:Dynamic, ?l2_regularization_strength:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?multiply_linear_by_learning_rate:Dynamic, ?beta:Dynamic, ?allow_zero_accumulator:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Void;
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