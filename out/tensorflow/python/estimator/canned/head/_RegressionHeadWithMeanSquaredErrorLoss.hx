/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.head;
@:pythonImport("tensorflow.python.estimator.canned.head", "_RegressionHeadWithMeanSquaredErrorLoss") extern class _RegressionHeadWithMeanSquaredErrorLoss {
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
		`Head` for regression.
	**/
	@:native("__init__")
	public function ___init__(label_dimension:Dynamic, ?weight_column:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?inverse_link_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		`Head` for regression.
	**/
	public function new(label_dimension:Dynamic, ?weight_column:Dynamic, ?loss_reduction:Dynamic, ?loss_fn:Dynamic, ?inverse_link_fn:Dynamic, ?name:Dynamic):Void;
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
		Returns an `EstimatorSpec`.
		
		Args:
		  features: Input `dict` of `Tensor` or `SparseTensor` objects.
		  mode: Estimator's `ModeKeys`.
		  logits: logits `Tensor` with shape `[D0, D1, ... DN, logits_dimension]`.
		    For many applications, the shape is `[batch_size, logits_dimension]`.
		  labels: Labels `Tensor` with shape matching `logits`, namely
		    `[D0, D1, ... DN, logits_dimension]`. When `logits_dimension=1`, shape
		    `[D0, D1, ... DN]` is also supported. `labels` is required argument when
		    `mode` equals `TRAIN` or `EVAL`.
		  optimizer: `Optimizer` instance to optimize the loss in TRAIN mode.
		    Namely, sets `train_op = optimizer.minimize(loss, global_step)`, which
		    updates variables and increments `global_step`.
		  train_op_fn: Function that takes a scalar loss `Tensor` and returns
		    `train_op`. Used if `optimizer` is `None`.
		  regularization_losses: A list of additional scalar losses to be added to
		    the training loss, such as regularization losses. These losses are
		    usually expressed as a batch average, so for best results users need to
		    set `loss_reduction=SUM_OVER_BATCH_SIZE` or
		    `loss_reduction=SUM_OVER_NONZERO_WEIGHTS` when creating the head to
		    avoid scaling errors.
		Returns:
		  A `model_fn._TPUEstimatorSpec` instance.
		Raises:
		  ValueError: If both `train_op_fn` and `optimizer` are `None` in TRAIN
		    mode, or if both are set.
	**/
	public function _create_tpu_estimator_spec(features:Dynamic, mode:Dynamic, logits:Dynamic, ?labels:Dynamic, ?optimizer:Dynamic, ?train_op_fn:Dynamic, ?regularization_losses:Dynamic):Dynamic;
	/**
		Returns the Eval metric ops.
	**/
	public function _eval_metric_ops(predicted_value:Dynamic, labels:Dynamic, weights:Dynamic, unreduced_loss:Dynamic, regularization_loss:Dynamic):Dynamic;
	/**
		Returns `EstimatorSpec` that a model_fn can return.
		
		Please note that,
		+ All args must be passed via name.
		
		Args:
		  features: Input `dict` of `Tensor` or `SparseTensor` objects.
		  mode: Estimator's `ModeKeys`.
		  logits: logits `Tensor` to be used by the head.
		  labels: Labels `Tensor`, or `dict` of same.
		  optimizer: `Optimizer` instance to optimize the loss in TRAIN mode.
		    Namely, sets `train_op = optimizer.minimize(loss, global_step)`, which
		    updates variables and increments `global_step`.
		  train_op_fn: Function that takes a scalar loss `Tensor` and returns an op
		    to optimize the model with the loss in TRAIN mode. Used if `optimizer`
		    is `None`. Exactly one of `train_op_fn` and `optimizer` must be set in
		    TRAIN mode. None is allowed in other modes. If you want to optimize loss
		    yourself you can pass `lambda _: tf.no_op()` and then use
		    EstimatorSpec.loss to compute and apply gradients.
		  regularization_losses: A list of additional scalar losses to be added to
		    the training loss, such as regularization losses.
		
		Returns:
		  `EstimatorSpec`.
	**/
	public function create_estimator_spec(features:Dynamic, mode:Dynamic, logits:Dynamic, ?labels:Dynamic, ?optimizer:Dynamic, ?train_op_fn:Dynamic, ?regularization_losses:Dynamic):Dynamic;
	/**
		See `Head`.
	**/
	public function create_loss(features:Dynamic, mode:Dynamic, logits:Dynamic, labels:Dynamic):Dynamic;
	/**
		Size of the last dimension of the logits `Tensor`.
		
		Typically, logits is of shape `[batch_size, logits_dimension]`.
		
		Returns:
		  The expected size of the `logits` tensor.
	**/
	public var logits_dimension : Dynamic;
	/**
		The name of this head.
		
		Returns:
		  A string.
	**/
	public var name : Dynamic;
}