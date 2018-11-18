/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.head;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.head", "_RegressionHead") extern class _RegressionHead {
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
		
		Args:
		  label_dimension: Number of regression labels per example. This is the
		    size of the last dimension of the labels `Tensor` (typically, this has
		    shape `[batch_size, label_dimension]`).
		  loss_fn: Loss function, takes logits and labels and returns loss.
		  link_fn: Link function, takes a logits tensor and returns the output.
		  logits_dimension: Number of logits per example. This is the
		    size of the last dimension of the logits `Tensor` (typically, this has
		    shape `[batch_size, label_dimension]`).
		    Default value: `label_dimension`.
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. Predictions, summary and metrics keys are
		    suffixed by `"/" + head_name` and the default variable scope is
		    `head_name`.
	**/
	@:native("__init__")
	public function ___init__(label_dimension:Dynamic, loss_fn:Dynamic, link_fn:Dynamic, ?logits_dimension:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
	/**
		`Head` for regression.
		
		Args:
		  label_dimension: Number of regression labels per example. This is the
		    size of the last dimension of the labels `Tensor` (typically, this has
		    shape `[batch_size, label_dimension]`).
		  loss_fn: Loss function, takes logits and labels and returns loss.
		  link_fn: Link function, takes a logits tensor and returns the output.
		  logits_dimension: Number of logits per example. This is the
		    size of the last dimension of the logits `Tensor` (typically, this has
		    shape `[batch_size, label_dimension]`).
		    Default value: `label_dimension`.
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. Predictions, summary and metrics keys are
		    suffixed by `"/" + head_name` and the default variable scope is
		    `head_name`.
	**/
	public function new(label_dimension:Dynamic, loss_fn:Dynamic, link_fn:Dynamic, ?logits_dimension:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Void;
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
		Creates output alternative for the Head.
		
		Args:
		  predictions: a dict of {tensor_name: Tensor}, where 'tensor_name' is a
		    symbolic name for an output Tensor possibly but not necessarily taken
		    from `PredictionKey`, and 'Tensor' is the corresponding output Tensor
		    itself.
		
		Returns:
		  `dict` of {submodel_name: (problem_type, {tensor_name: Tensor})}, where
		  'submodel_name' is a submodel identifier that should be consistent across
		  the pipeline (here likely taken from the head_name),
		  'problem_type' is a `ProblemType`,
		  'tensor_name' is a symbolic name for an output Tensor possibly but not
		   necessarily taken from `PredictionKey`, and
		  'Tensor' is the corresponding output Tensor itself.
	**/
	public function _create_output_alternatives(predictions:Dynamic):Dynamic;
	/**
		Returns a dict of predictions.
		
		Args:
		  logits: logits `Tensor` after applying possible centered bias.
		
		Returns:
		  Dict of prediction `Tensor` keyed by `PredictionKey`.
	**/
	public function _logits_to_predictions(logits:Dynamic):Dynamic;
	/**
		Returns a dict of metrics keyed by name.
	**/
	public function _metrics(eval_loss:Dynamic, predictions:Dynamic, labels:Dynamic, weights:Dynamic):Dynamic;
	/**
		Applies transformations to labels tensor.
	**/
	public function _transform_labels(mode:Dynamic, labels:Dynamic):Dynamic;
	/**
		See `Head`.
	**/
	public function create_model_fn_ops(features:Dynamic, mode:Dynamic, ?labels:Dynamic, ?train_op_fn:Dynamic, ?logits:Dynamic, ?logits_input:Dynamic, ?scope:Dynamic):Dynamic;
	public var head_name : Dynamic;
	public var label_name : Dynamic;
	/**
		Size of the last dimension of the logits `Tensor`.
		
		Typically, logits is of shape `[batch_size, logits_dimension]`.
		
		Returns:
		  The expected size of the `logits` tensor.
	**/
	public var logits_dimension : Dynamic;
	public var weight_column_name : Dynamic;
}