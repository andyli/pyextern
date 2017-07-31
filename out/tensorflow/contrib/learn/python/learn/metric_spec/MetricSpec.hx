/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.metric_spec;
@:pythonImport("tensorflow.contrib.learn.python.learn.metric_spec", "MetricSpec") extern class MetricSpec {
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
		Constructor.
		
		Creates a MetricSpec.
		
		Args:
		  metric_fn: A function to use as a metric. See `_adapt_metric_fn` for
		    rules on how `predictions`, `labels`, and `weights` are passed to this
		    function. This must return either a single `Tensor`, which is
		    interpreted as a value of this metric, or a pair
		    `(value_op, update_op)`, where `value_op` is the op to call to
		    obtain the value of the metric, and `update_op` should be run for
		    each batch to update internal state.
		  prediction_key: The key for a tensor in the `predictions` dict (output
		    from the `model_fn`) to use as the `predictions` input to the
		    `metric_fn`. Optional. If `None`, the `model_fn` must return a single
		    tensor or a dict with only a single entry as `predictions`.
		  label_key: The key for a tensor in the `labels` dict (output from the
		    `input_fn`) to use as the `labels` input to the `metric_fn`.
		    Optional. If `None`, the `input_fn` must return a single tensor or a
		    dict with only a single entry as `labels`.
		  weight_key: The key for a tensor in the `inputs` dict (output from the
		    `input_fn`) to use as the `weights` input to the `metric_fn`.
		    Optional. If `None`, no weights will be passed to the `metric_fn`.
	**/
	@:native("__init__")
	public function ___init__(metric_fn:Dynamic, ?prediction_key:Dynamic, ?label_key:Dynamic, ?weight_key:Dynamic):Dynamic;
	/**
		Constructor.
		
		Creates a MetricSpec.
		
		Args:
		  metric_fn: A function to use as a metric. See `_adapt_metric_fn` for
		    rules on how `predictions`, `labels`, and `weights` are passed to this
		    function. This must return either a single `Tensor`, which is
		    interpreted as a value of this metric, or a pair
		    `(value_op, update_op)`, where `value_op` is the op to call to
		    obtain the value of the metric, and `update_op` should be run for
		    each batch to update internal state.
		  prediction_key: The key for a tensor in the `predictions` dict (output
		    from the `model_fn`) to use as the `predictions` input to the
		    `metric_fn`. Optional. If `None`, the `model_fn` must return a single
		    tensor or a dict with only a single entry as `predictions`.
		  label_key: The key for a tensor in the `labels` dict (output from the
		    `input_fn`) to use as the `labels` input to the `metric_fn`.
		    Optional. If `None`, the `input_fn` must return a single tensor or a
		    dict with only a single entry as `labels`.
		  weight_key: The key for a tensor in the `inputs` dict (output from the
		    `input_fn`) to use as the `weights` input to the `metric_fn`.
		    Optional. If `None`, no weights will be passed to the `metric_fn`.
	**/
	public function new(metric_fn:Dynamic, ?prediction_key:Dynamic, ?label_key:Dynamic, ?weight_key:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Connect our `metric_fn` to the specified members of the given dicts.
		
		This function will call the `metric_fn` given in our constructor as follows:
		
		```
		  metric_fn(predictions[self.prediction_key],
		            labels[self.label_key],
		            weights=weights[self.weight_key])
		```
		
		And returns the result. The `weights` argument is only passed if
		`self.weight_key` is not `None`.
		
		`predictions` and `labels` may be single tensors as well as dicts. If
		`predictions` is a single tensor, `self.prediction_key` must be `None`. If
		`predictions` is a single element dict, `self.prediction_key` is allowed to
		be `None`. Conversely, if `labels` is a single tensor, `self.label_key` must
		be `None`. If `labels` is a single element dict, `self.label_key` is allowed
		to be `None`.
		
		Args:
		  inputs: A dict of inputs produced by the `input_fn`
		  labels: A dict of labels or a single label tensor produced by the
		    `input_fn`.
		  predictions: A dict of predictions or a single tensor produced by the
		    `model_fn`.
		
		Returns:
		  The result of calling `metric_fn`.
		
		Raises:
		  ValueError: If `predictions` or `labels` is a single `Tensor` and
		    `self.prediction_key` or `self.label_key` is not `None`; or if
		    `self.label_key` is `None` but `labels` is a dict with more than one
		    element, or if `self.prediction_key` is `None` but `predictions` is a
		    dict with more than one element.
	**/
	public function create_metric_ops(inputs:Dynamic, labels:Dynamic, predictions:Dynamic):Dynamic;
	public var label_key : Dynamic;
	/**
		Metric function.
		
		This function accepts named args: `predictions`, `labels`, `weights`. It
		returns a single `Tensor` or `(value_op, update_op)` pair. See `metric_fn`
		constructor argument for more details.
		
		Returns:
		  Function, see `metric_fn` constructor argument for more details.
	**/
	public var metric_fn : Dynamic;
	public var prediction_key : Dynamic;
	public var weight_key : Dynamic;
}