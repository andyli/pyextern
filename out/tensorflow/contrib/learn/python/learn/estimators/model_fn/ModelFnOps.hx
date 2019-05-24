/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.model_fn;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.model_fn", "ModelFnOps") extern class ModelFnOps {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Creates a validated `ModelFnOps` instance. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		When switching to tf.estimator.Estimator, use tf.estimator.EstimatorSpec. You can use the `estimator_spec` method to create an equivalent one.
		
		For a multi-headed model, the predictions dict here will contain the outputs
		of all of the heads.  However: at serving time, requests will be made
		specifically for one or more heads, and the RPCs used for these requests may
		differ by problem type (i.e., regression, classification, other).  The
		purpose of the output_alternatives dict is to aid in exporting a SavedModel
		from which such head-specific queries can be served.  These
		output_alternatives will be combined with input_alternatives (see
		`saved_model_export_utils`) to produce a set of `SignatureDef`s specifying
		the valid requests that can be served from this model.
		
		For a single-headed model, it is still adviseable to provide
		output_alternatives with a single entry, because this is how the problem
		type is communicated for export and serving.  If output_alternatives is not
		given, the resulting SavedModel will support only one head of unspecified
		type.
		
		Args:
		  mode: One of `ModeKeys`. Specifies if this training, evaluation or
		    prediction.
		  predictions: Predictions `Tensor` or dict of `Tensor`.
		  loss: Training loss `Tensor`.
		  train_op: Op for the training step.
		  eval_metric_ops: Dict of metric results keyed by name. The values of the
		    dict are the results of calling a metric function, such as `Tensor`.
		  output_alternatives: a dict of
		    `{submodel_name: (problem_type, {tensor_name: Tensor})}`, where
		    `submodel_name` is a submodel identifier that should be consistent
		    across the pipeline (here likely taken from the name of each `Head`,
		    for models that use them), `problem_type` is a `ProblemType`,
		    `tensor_name` is a symbolic name for an output Tensor possibly but not
		    necessarily taken from `PredictionKey`, and `Tensor` is the
		    corresponding output Tensor itself.
		  training_chief_hooks: A list of `SessionRunHook` objects that will be
		    run on the chief worker during training.
		  training_hooks: A list of `SessionRunHook` objects that will be run on
		    all workers during training.
		  scaffold: A `tf.train.Scaffold` object that can be used to set
		    initialization, saver, and more to be used in training.
		
		Returns:
		  A validated `ModelFnOps` object.
		
		Raises:
		  ValueError: If validation fails.
	**/
	static public function __new__(cls:Dynamic, mode:Dynamic, ?predictions:Dynamic, ?loss:Dynamic, ?train_op:Dynamic, ?eval_metric_ops:Dynamic, ?output_alternatives:Dynamic, ?training_chief_hooks:Dynamic, ?training_hooks:Dynamic, ?scaffold:Dynamic):Dynamic;
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
		Return value*self.
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new ModelFnOps object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new ModelFnOps object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an equivalent `EstimatorSpec`.
		
		Args:
		  default_serving_output_alternative_key: Required for multiple heads. If
		    you have multiple entries in `output_alternatives` dict (comparable to
		    multiple heads), `EstimatorSpec` requires a default head that will be
		    used if a Servo request does not explicitly mention which head to infer
		    on. Pass the key of the output alternative here that you want to
		    designate as default. A separate ExportOutpout for this default head
		    wil be added to the export_outputs dict with the special key
		    signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY, unless there is
		    already an enry in output_alternatives with this special key.
		
		Returns:
		  Instance of `EstimatorSpec` that is equivalent to this `ModelFnOps`
		
		Raises:
		  ValueError: If problem type is unknown.
	**/
	public function estimator_spec(?default_serving_output_alternative_key:Dynamic):Dynamic;
	/**
		Alias for field number 3
	**/
	public var eval_metric_ops : Dynamic;
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
		Alias for field number 8
	**/
	public var mode : Dynamic;
	/**
		Alias for field number 4
	**/
	public var output_alternatives : Dynamic;
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