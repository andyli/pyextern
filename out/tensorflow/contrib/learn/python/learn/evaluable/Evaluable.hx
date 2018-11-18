/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.evaluable;
@:pythonImport("tensorflow.contrib.learn.python.learn.evaluable", "Evaluable") extern class Evaluable {
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		Evaluates given model with provided evaluation data.
		
		Stop conditions - we evaluate on the given input data until one of the
		following:
		- If `steps` is provided, and `steps` batches of size `batch_size` are
		processed.
		- If `input_fn` is provided, and it raises an end-of-input
		exception (`OutOfRangeError` or `StopIteration`).
		- If `x` is provided, and all items in `x` have been processed.
		
		The return value is a dict containing the metrics specified in `metrics`, as
		well as an entry `global_step` which contains the value of the global step
		for which this evaluation was performed.
		
		Args:
		  x: Matrix of shape [n_samples, n_features...] or dictionary of many
		    matrices
		    containing the input samples for fitting the model. Can be iterator that
		      returns
		    arrays of features or dictionary of array of features. If set,
		      `input_fn` must
		    be `None`.
		  y: Vector or matrix [n_samples] or [n_samples, n_outputs] containing the
		    label values (class labels in classification, real numbers in
		    regression) or dictionary of multiple vectors/matrices. Can be iterator
		    that returns array of targets or dictionary of array of targets. If set,
		    `input_fn` must be `None`. Note: For classification, label values must
		    be integers representing the class index (i.e. values from 0 to
		    n_classes-1).
		  input_fn: Input function returning a tuple of:
		    features - Dictionary of string feature name to `Tensor` or `Tensor`.
		    labels - `Tensor` or dictionary of `Tensor` with labels.
		    If input_fn is set, `x`, `y`, and `batch_size` must be `None`. If
		    `steps` is not provided, this should raise `OutOfRangeError` or
		    `StopIteration` after the desired amount of data (e.g., one epoch) has
		    been provided. See "Stop conditions" above for specifics.
		  feed_fn: Function creating a feed dict every time it is called. Called
		    once per iteration. Must be `None` if `input_fn` is provided.
		  batch_size: minibatch size to use on the input, defaults to first
		    dimension of `x`, if specified. Must be `None` if `input_fn` is
		    provided.
		  steps: Number of steps for which to evaluate model. If `None`, evaluate
		    until `x` is consumed or `input_fn` raises an end-of-input exception.
		    See "Stop conditions" above for specifics.
		  metrics: Dict of metrics to run. If None, the default metric functions
		    are used; if {}, no metrics are used. Otherwise, `metrics` should map
		    friendly names for the metric to a `MetricSpec` object defining which
		    model outputs to evaluate against which labels with which metric
		    function.
		    Metric ops should support streaming, e.g., returning `update_op` and
		    `value` tensors. For example, see the options defined in
		    `../../../metrics/python/ops/metrics_ops.py`.
		  name: Name of the evaluation if user needs to run multiple evaluations on
		    different data sets, such as on training data vs test data.
		  checkpoint_path: Path of a specific checkpoint to evaluate. If `None`, the
		    latest checkpoint in `model_dir` is used.
		  hooks: List of `SessionRunHook` subclass instances. Used for callbacks
		    inside the evaluation call.
		
		Returns:
		  Returns `dict` with evaluation results.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?feed_fn:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic):Dynamic;
	/**
		Returns a path in which the eval process will look for checkpoints.
	**/
	public var model_dir : Dynamic;
}