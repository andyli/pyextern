/* This file is generated, do not edit! */
package tensorflow.python.keras.losses;
@:pythonImport("tensorflow.python.keras.losses", "LossFunctionWrapper") extern class LossFunctionWrapper {
	/**
		Invokes the `Loss` instance.
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`, except
		    sparse loss functions such as sparse categorical crossentropy where
		    shape = `[batch_size, d0, .. dN-1]`
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`
		  sample_weight: Optional `sample_weight` acts as a coefficient for the
		    loss. If a scalar is provided, then the loss is simply scaled by the
		    given value. If `sample_weight` is a tensor of size `[batch_size]`, then
		    the total loss for each sample of the batch is rescaled by the
		    corresponding element in the `sample_weight` vector. If the shape of
		    `sample_weight` is `[batch_size, d0, .. dN-1]` (or can be broadcasted to
		    this shape), then each loss element of `y_pred` is scaled
		    by the corresponding value of `sample_weight`. (Note on`dN-1`: all loss
		      functions reduce by 1 dimension, usually axis=-1.)
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has
		    shape `[batch_size, d0, .. dN-1]`; otherwise, it is scalar. (Note `dN-1`
		    because all loss functions reduce by 1 dimension, usually axis=-1.)
		
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
		Initializes `LossFunctionWrapper` class.
		
		Args:
		  fn: The loss function to wrap, with signature `fn(y_true, y_pred,
		    **kwargs)`.
		  reduction: Type of `tf.keras.losses.Reduction` to apply to
		    loss. Default value is `AUTO`. `AUTO` indicates that the reduction
		    option will be determined by the usage context. For almost all cases
		    this defaults to `SUM_OVER_BATCH_SIZE`. When used with
		    `tf.distribute.Strategy`, outside of built-in training loops such as
		    `tf.keras` `compile` and `fit`, using `AUTO` or `SUM_OVER_BATCH_SIZE`
		    will raise an error. Please see this custom training [tutorial](
		      https://www.tensorflow.org/tutorials/distribute/custom_training) for
		        more details.
		  name: Optional name for the instance.
		  **kwargs: The keyword arguments that are passed on to `fn`.
	**/
	@:native("__init__")
	public function ___init__(fn:Dynamic, ?reduction:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initializes `LossFunctionWrapper` class.
		
		Args:
		  fn: The loss function to wrap, with signature `fn(y_true, y_pred,
		    **kwargs)`.
		  reduction: Type of `tf.keras.losses.Reduction` to apply to
		    loss. Default value is `AUTO`. `AUTO` indicates that the reduction
		    option will be determined by the usage context. For almost all cases
		    this defaults to `SUM_OVER_BATCH_SIZE`. When used with
		    `tf.distribute.Strategy`, outside of built-in training loops such as
		    `tf.keras` `compile` and `fit`, using `AUTO` or `SUM_OVER_BATCH_SIZE`
		    will raise an error. Please see this custom training [tutorial](
		      https://www.tensorflow.org/tutorials/distribute/custom_training) for
		        more details.
		  name: Optional name for the instance.
		  **kwargs: The keyword arguments that are passed on to `fn`.
	**/
	public function new(fn:Dynamic, ?reduction:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Handles `AUTO` reduction cases and returns the reduction value.
	**/
	public function _get_reduction():Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		Creates a valid `name_scope` name.
	**/
	public function _set_name_scope():Dynamic;
	/**
		Invokes the `LossFunctionWrapper` instance.
		
		Args:
		  y_true: Ground truth values.
		  y_pred: The predicted values.
		
		Returns:
		  Loss values per sample.
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
	/**
		Returns the config dictionary for a `Loss` instance.
	**/
	public function get_config():Dynamic;
}