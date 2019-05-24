/* This file is generated, do not edit! */
package tensorflow.python.keras.losses;
@:pythonImport("tensorflow.python.keras.losses", "CosineProximity") extern class CosineProximity {
	/**
		Invokes the `Loss` instance.
		
		Args:
		  y_true: Ground truth values.
		  y_pred: The predicted values.
		  sample_weight: Optional `Tensor` whose rank is either 0, or the same rank
		    as `y_true`, or is broadcastable to `y_true`. `sample_weight` acts as a
		    coefficient for the loss. If a scalar is provided, then the loss is
		    simply scaled by the given value. If `sample_weight` is a tensor of size
		    `[batch_size]`, then the total loss for each sample of the batch is
		    rescaled by the corresponding element in the `sample_weight` vector. If
		    the shape of `sample_weight` matches the shape of `y_pred`, then the
		    loss of each measurable element of `y_pred` is scaled by the
		    corresponding value of `sample_weight`.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		    shape as `y_true`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `sample_weight` is invalid.
	**/
	public function __call__(y_true:Dynamic, y_pred:Dynamic, ?sample_weight:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?reduction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?reduction:Dynamic, ?name:Dynamic):Void;
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
		Calculates the cosine proximity loss.
		
		Args:
		  y_true: Ground truth values.
		  y_pred: The predicted values.
		
		Returns:
		  Cosine distance loss.
	**/
	public function call(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Instantiates a `Loss` from its config (output of `get_config()`).
		
		Args:
		    config: Output of `get_config()`.
		
		Returns:
		    A `Loss` instance.
	**/
	static public function from_config(config:Dynamic):Dynamic;
	public function get_config():Dynamic;
}