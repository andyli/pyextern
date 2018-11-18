/* This file is generated, do not edit! */
package tensorflow.contrib.mixed_precision.python.loss_scale_manager;
@:pythonImport("tensorflow.contrib.mixed_precision.python.loss_scale_manager", "FixedLossScaleManager") extern class FixedLossScaleManager {
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
		Creates the fixed loss scale manager.
		
		Args:
		  loss_scale: A Python float. Its ideal value varies depending on models to
		    run. Choosing a too small loss_scale might affect model quality; a too
		    big loss_scale might cause inf or nan. There is no single right
		    loss_scale to apply. There is no harm choosing a relatively big number
		    as long as no nan or inf is encountered in training.
		
		Raises:
		  ValueError: If loss_scale is less than 1.
	**/
	@:native("__init__")
	public function ___init__(loss_scale:Dynamic):Dynamic;
	/**
		Creates the fixed loss scale manager.
		
		Args:
		  loss_scale: A Python float. Its ideal value varies depending on models to
		    run. Choosing a too small loss_scale might affect model quality; a too
		    big loss_scale might cause inf or nan. There is no single right
		    loss_scale to apply. There is no harm choosing a relatively big number
		    as long as no nan or inf is encountered in training.
		
		Raises:
		  ValueError: If loss_scale is less than 1.
	**/
	public function new(loss_scale:Dynamic):Void;
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
	/**
		Returns the loss scale as a scalar `float32` tensor.
	**/
	public function get_loss_scale():Dynamic;
	/**
		Updates loss scale based on if gradients are finite in current step.
		
		Args:
		  finite_grads: bool scalar tensor indicating if all gradients are
		    finite (i.e., not inf or nan).
		
		Returns:
		  An op, when executed updates the loss scale. If eager execution is
		  enabled, does not return anything.
	**/
	public function update_loss_scale(finite_grads:Dynamic):Dynamic;
}