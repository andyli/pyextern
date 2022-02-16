/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "MomentumParameters") extern class MomentumParameters {
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
		Optimization parameters for momentum.
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  momentum: a floating point value.  The momentum.
		  use_nesterov: If `True` use Nesterov Momentum. See (Sutskever et al.,
		    2013). This implementation always computes gradients at the value of the
		    variable(s) passed to the optimizer. Using Nesterov Momentum makes the
		    variable(s) track the values called `theta_t + mu*v_t` in the paper.
		    This implementation is an approximation of the original formula, valid
		    for high values of momentum. It will compute the "adjusted gradient" in
		    NAG by assuming that the new gradient will be estimated by the current
		    average gradient plus the product of momentum and the change in the
		    average gradient.
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
	public function ___init__(learning_rate:Dynamic, momentum:Dynamic, ?use_nesterov:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Dynamic;
	/**
		Optimization parameters for momentum.
		
		Args:
		  learning_rate: a floating point value. The learning rate.
		  momentum: a floating point value.  The momentum.
		  use_nesterov: If `True` use Nesterov Momentum. See (Sutskever et al.,
		    2013). This implementation always computes gradients at the value of the
		    variable(s) passed to the optimizer. Using Nesterov Momentum makes the
		    variable(s) track the values called `theta_t + mu*v_t` in the paper.
		    This implementation is an approximation of the original formula, valid
		    for high values of momentum. It will compute the "adjusted gradient" in
		    NAG by assuming that the new gradient will be estimated by the current
		    average gradient plus the product of momentum and the change in the
		    average gradient.
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
	public function new(learning_rate:Dynamic, momentum:Dynamic, ?use_nesterov:Dynamic, ?use_gradient_accumulation:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clip_gradient_min:Dynamic, ?clip_gradient_max:Dynamic):Void;
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
}