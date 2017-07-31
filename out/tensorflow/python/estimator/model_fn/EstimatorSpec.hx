/* This file is generated, do not edit! */
package tensorflow.python.estimator.model_fn;
@:pythonImport("tensorflow.python.estimator.model_fn", "EstimatorSpec") extern class EstimatorSpec {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Creates a validated `EstimatorSpec` instance.
		
		Depending on the value of `mode`, different arguments are required. Namely
		* For `mode == ModeKeys.TRAIN`: required fields are `loss` and `train_op`.
		* For `mode == ModeKeys.EVAL`: required field is`loss`.
		* For `mode == ModeKeys.PREDICT`: required fields are `predictions`.
		
		model_fn can populate all arguments independent of mode. In this case, some
		arguments will be ignored by `Estimator`. E.g. `train_op` will be ignored
		in eval and infer modes. Example:
		
		```python
		def my_model_fn(mode, features, labels):
		  predictions = ...
		  loss = ...
		  train_op = ...
		  return tf.estimator.EstimatorSpec(
		      mode=mode,
		      predictions=predictions,
		      loss=loss,
		      train_op=train_op)
		```
		
		Alternatively, model_fn can just populate the arguments appropriate to the
		given mode. Example:
		
		```python
		def my_model_fn(mode, features, labels):
		  if (mode == tf.estimator.ModeKeys.TRAIN or
		      mode == tf.estimator.ModeKeys.EVAL):
		    loss = ...
		  else:
		    loss = None
		  if mode == tf.estimator.ModeKeys.TRAIN:
		    train_op = ...
		  else:
		    train_op = None
		  if mode == tf.estimator.ModeKeys.PREDICT:
		    predictions = ...
		  else:
		    predictions = None
		
		  return tf.estimator.EstimatorSpec(
		      mode=mode,
		      predictions=predictions,
		      loss=loss,
		      train_op=train_op)
		```
		
		Args:
		  mode: A `ModeKeys`. Specifies if this is training, evaluation or
		    prediction.
		  predictions: Predictions `Tensor` or dict of `Tensor`.
		  loss: Training loss `Tensor`. Must be either scalar, or with shape `[1]`.
		  train_op: Op for the training step.
		  eval_metric_ops: Dict of metric results keyed by name. The values of the
		    dict are the results of calling a metric function, namely a
		    `(metric_tensor, update_op)` tuple.
		  export_outputs: Describes the output signatures to be exported to
		    `SavedModel` and used during serving.
		    A dict `{name: output}` where:
		    * name: An arbitrary name for this output.
		    * output: an `ExportOutput` object such as `ClassificationOutput`,
		        `RegressionOutput`, or `PredictOutput`.
		    Single-headed models only need to specify one entry in this dictionary.
		    Multi-headed models should specify one entry for each head, one of
		    which must be named using
		    signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY.
		  training_chief_hooks: Iterable of `tf.train.SessionRunHook` objects to
		    run on the chief worker during training.
		  training_hooks: Iterable of `tf.train.SessionRunHook` objects that to run
		    on all workers during training.
		  scaffold: A `tf.train.Scaffold` object that can be used to set
		    initialization, saver, and more to be used in training.
		
		Returns:
		  A validated `EstimatorSpec` object.
		
		Raises:
		  ValueError: If validation fails.
		  TypeError: If any of the arguments is not the expected type.
	**/
	static public function __new__(cls:Dynamic, mode:Dynamic, ?predictions:Dynamic, ?loss:Dynamic, ?train_op:Dynamic, ?eval_metric_ops:Dynamic, ?export_outputs:Dynamic, ?training_chief_hooks:Dynamic, ?training_hooks:Dynamic, ?scaffold:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new EstimatorSpec object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new EstimatorSpec object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 3
	**/
	public var eval_metric_ops : Dynamic;
	/**
		Alias for field number 4
	**/
	public var export_outputs : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 1
	**/
	public var loss : Dynamic;
	/**
		Alias for field number 0
	**/
	public var predictions : Dynamic;
	/**
		Alias for field number 7
	**/
	public var scaffold : Dynamic;
	/**
		Alias for field number 2
	**/
	public var train_op : Dynamic;
	/**
		Alias for field number 5
	**/
	public var training_chief_hooks : Dynamic;
	/**
		Alias for field number 6
	**/
	public var training_hooks : Dynamic;
}