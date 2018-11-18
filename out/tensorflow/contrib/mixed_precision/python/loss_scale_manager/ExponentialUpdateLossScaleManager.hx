/* This file is generated, do not edit! */
package tensorflow.contrib.mixed_precision.python.loss_scale_manager;
@:pythonImport("tensorflow.contrib.mixed_precision.python.loss_scale_manager", "ExponentialUpdateLossScaleManager") extern class ExponentialUpdateLossScaleManager {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		Constructor of exponential-update loss scale manager.
		
		Args:
		  init_loss_scale: A Python float.  The loss scale to use at the beginning.
		  incr_every_n_steps: Increases loss scale every n consecutive steps with
		    finite gradients.
		  decr_every_n_nan_or_inf: Decreases loss scale every n accumulated steps
		    with nan or inf gradients.
		  incr_ratio: The multiplier to use when increasing the loss scale.
		  decr_ratio: The less-than-one-multiplier to use when decreasing the loss
		    scale.
	**/
	@:native("__init__")
	public function ___init__(init_loss_scale:Dynamic, incr_every_n_steps:Dynamic, ?decr_every_n_nan_or_inf:Dynamic, ?incr_ratio:Dynamic, ?decr_ratio:Dynamic):Dynamic;
	/**
		Constructor of exponential-update loss scale manager.
		
		Args:
		  init_loss_scale: A Python float.  The loss scale to use at the beginning.
		  incr_every_n_steps: Increases loss scale every n consecutive steps with
		    finite gradients.
		  decr_every_n_nan_or_inf: Decreases loss scale every n accumulated steps
		    with nan or inf gradients.
		  incr_ratio: The multiplier to use when increasing the loss scale.
		  decr_ratio: The less-than-one-multiplier to use when decreasing the loss
		    scale.
	**/
	public function new(init_loss_scale:Dynamic, incr_every_n_steps:Dynamic, ?decr_every_n_nan_or_inf:Dynamic, ?incr_ratio:Dynamic, ?decr_ratio:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	public function _reset_stats():Dynamic;
	/**
		Returns the loss scale.
	**/
	public function get_loss_scale():Dynamic;
	/**
		Updates loss scale based on if gradients are finite in current step.
	**/
	public function update_loss_scale(finite_grads:Dynamic):Dynamic;
}