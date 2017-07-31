/* This file is generated, do not edit! */
package tensorflow.python.estimator.estimator;
@:pythonImport("tensorflow.python.estimator.estimator", "Estimator") extern class Estimator {
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
		Constructs an `Estimator` instance.
		
		Args:
		  model_fn: Model function. Follows the signature:
		
		    * Args:
		
		      * `features`: This is the first item returned from the `input_fn`
		             passed to `train`, 'evaluate`, and `predict`. This should be a
		             single `Tensor` or `dict` of same.
		      * `labels`: This is the second item returned from the `input_fn`
		             passed to `train`, 'evaluate`, and `predict`. This should be a
		             single `Tensor` or `dict` of same (for multi-head models). If
		             mode is `ModeKeys.PREDICT`, `labels=None` will be passed. If
		             the `model_fn`'s signature does not accept `mode`, the
		             `model_fn` must still be able to handle `labels=None`.
		      * `mode`: Optional. Specifies if this training, evaluation or
		             prediction. See `ModeKeys`.
		      * `params`: Optional `dict` of hyperparameters.  Will receive what
		             is passed to Estimator in `params` parameter. This allows
		             to configure Estimators from hyper parameter tuning.
		      * `config`: Optional configuration object. Will receive what is passed
		             to Estimator in `config` parameter, or the default `config`.
		             Allows updating things in your model_fn based on configuration
		             such as `num_ps_replicas`, or `model_dir`.
		
		    * Returns:
		      `EstimatorSpec`
		
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model. If `None`, the model_dir in
		    `config` will be used if set. If both are set, they must be same. If
		    both are `None`, a temporary directory will be used.
		  config: Configuration object.
		  params: `dict` of hyper parameters that will be passed into `model_fn`.
		          Keys are names of parameters, values are basic python types.
		
		Raises:
		  ValueError: parameters of `model_fn` don't match `params`.
		  ValueError: if this is called via a subclass and if that class overrides
		    a member of `Estimator`.
	**/
	@:native("__init__")
	public function ___init__(model_fn:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Constructs an `Estimator` instance.
		
		Args:
		  model_fn: Model function. Follows the signature:
		
		    * Args:
		
		      * `features`: This is the first item returned from the `input_fn`
		             passed to `train`, 'evaluate`, and `predict`. This should be a
		             single `Tensor` or `dict` of same.
		      * `labels`: This is the second item returned from the `input_fn`
		             passed to `train`, 'evaluate`, and `predict`. This should be a
		             single `Tensor` or `dict` of same (for multi-head models). If
		             mode is `ModeKeys.PREDICT`, `labels=None` will be passed. If
		             the `model_fn`'s signature does not accept `mode`, the
		             `model_fn` must still be able to handle `labels=None`.
		      * `mode`: Optional. Specifies if this training, evaluation or
		             prediction. See `ModeKeys`.
		      * `params`: Optional `dict` of hyperparameters.  Will receive what
		             is passed to Estimator in `params` parameter. This allows
		             to configure Estimators from hyper parameter tuning.
		      * `config`: Optional configuration object. Will receive what is passed
		             to Estimator in `config` parameter, or the default `config`.
		             Allows updating things in your model_fn based on configuration
		             such as `num_ps_replicas`, or `model_dir`.
		
		    * Returns:
		      `EstimatorSpec`
		
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model. If `None`, the model_dir in
		    `config` will be used if set. If both are set, they must be same. If
		    both are `None`, a temporary directory will be used.
		  config: Configuration object.
		  params: `dict` of hyper parameters that will be passed into `model_fn`.
		          Keys are names of parameters, values are basic python types.
		
		Raises:
		  ValueError: parameters of `model_fn` don't match `params`.
		  ValueError: if this is called via a subclass and if that class overrides
		    a member of `Estimator`.
	**/
	public function new(model_fn:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?params:Dynamic):Void;
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
	public function _assert_members_are_not_overridden():Dynamic;
	/**
		Calls model function.
		
		Args:
		  features: features dict.
		  labels: labels dict.
		  mode: ModeKeys
		
		Returns:
		  An `EstimatorSpec` object.
		
		Raises:
		  ValueError: if model_fn returns invalid objects.
	**/
	public function _call_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic):Dynamic;
	/**
		Evaluates the model using the training.evaluation library.
	**/
	public function _evaluate_model(input_fn:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extracts batch length of predictions.
	**/
	public function _extract_batch_length(preds_evaluated:Dynamic):Dynamic;
	/**
		Extracts `predict_keys` from `predictions`.
	**/
	public function _extract_keys(predictions:Dynamic, predict_keys:Dynamic):Dynamic;
	public function _get_features_from_input_fn(input_fn:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, hooks:Dynamic):Dynamic;
	public var config : Dynamic;
	/**
		Evaluates the model given evaluation data input_fn.
		
		For each step, calls `input_fn`, which returns one batch of data.
		Evaluates until:
		- `steps` batches are processed, or
		- `input_fn` raises an end-of-input exception (`OutOfRangeError` or
		`StopIteration`).
		
		Args:
		  input_fn: Input function returning a tuple of:
		      features - Dictionary of string feature name to `Tensor` or
		        `SparseTensor`.
		      labels - `Tensor` or dictionary of `Tensor` with labels.
		  steps: Number of steps for which to evaluate model. If `None`, evaluates
		    until `input_fn` raises an end-of-input exception.
		  hooks: List of `SessionRunHook` subclass instances. Used for callbacks
		    inside the evaluation call.
		  checkpoint_path: Path of a specific checkpoint to evaluate. If `None`, the
		    latest checkpoint in `model_dir` is used.
		  name: Name of the evaluation if user needs to run multiple evaluations on
		    different data sets, such as on training data vs test data. Metrics for
		    different evaluations are saved in separate folders, and appear
		    separately in tensorboard.
		
		Returns:
		  A dict containing the evaluation metrics specified in `model_fn` keyed by
		  name, as well as an entry `global_step` which contains the value of the
		  global step for which this evaluation was performed.
		
		Raises:
		  ValueError: If `steps <= 0`.
		  ValueError: If no model has been trained, namely `model_dir`, or the
		    given `checkpoint_path` is empty.
	**/
	public function evaluate(input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exports inference graph as a SavedModel into given dir.
		
		This method builds a new graph by first calling the
		serving_input_receiver_fn to obtain feature `Tensor`s, and then calling
		this `Estimator`'s model_fn to generate the model graph based on those
		features. It restores the given checkpoint (or, lacking that, the most
		recent checkpoint) into this graph in a fresh session.  Finally it creates
		a timestamped export directory below the given export_dir_base, and writes
		a `SavedModel` into it containing a single `MetaGraphDef` saved from this
		session.
		
		The exported `MetaGraphDef` will provide one `SignatureDef` for each
		element of the export_outputs dict returned from the model_fn, named using
		the same keys.  One of these keys is always
		signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY, indicating which
		signature will be served when a serving request does not specify one.
		For each signature, the outputs are provided by the corresponding
		`ExportOutput`s, and the inputs are always the input receivers provided by
		the serving_input_receiver_fn.
		
		Extra assets may be written into the SavedModel via the extra_assets
		argument.  This should be a dict, where each key gives a destination path
		(including the filename) relative to the assets.extra directory.  The
		corresponding value gives the full path of the source file to be copied.
		For example, the simple case of copying a single file without renaming it
		is specified as `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		
		Args:
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported SavedModels.
		  serving_input_receiver_fn: A function that takes no argument and
		    returns a `ServingInputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel, or `None` if no extra assets are needed.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if no serving_input_receiver_fn is provided, no export_outputs
		      are provided, or no checkpoint can be found.
	**/
	public function export_savedmodel(export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	public var model_dir : Dynamic;
	public var params : Dynamic;
	/**
		Returns predictions for given features.
		
		Args:
		  input_fn: Input function returning features which is a dictionary of
		    string feature name to `Tensor` or `SparseTensor`. If it returns a
		    tuple, first item is extracted as features. Prediction continues until
		    `input_fn` raises an end-of-input exception (`OutOfRangeError` or
		    `StopIteration`).
		  predict_keys: list of `str`, name of the keys to predict. It is used if
		    the `EstimatorSpec.predictions` is a `dict`. If `predict_keys` is used
		    then rest of the predictions will be filtered from the dictionary. If
		    `None`, returns all.
		  hooks: List of `SessionRunHook` subclass instances. Used for callbacks
		    inside the prediction call.
		  checkpoint_path: Path of a specific checkpoint to predict. If `None`, the
		    latest checkpoint in `model_dir` is used.
		
		Yields:
		  Evaluated values of `predictions` tensors.
		
		Raises:
		  ValueError: Could not find a trained model in model_dir.
		  ValueError: if batch length of predictions are not same.
		  ValueError: If there is a conflict between `predict_keys` and
		    `predictions`. For example if `predict_keys` is not `None` but
		    `EstimatorSpec.predictions` is not a `dict`.
	**/
	public function predict(input_fn:Dynamic, ?predict_keys:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Trains a model given training data input_fn.
		
		Args:
		  input_fn: Input function returning a tuple of:
		      features - `Tensor` or dictionary of string feature name to `Tensor`.
		      labels - `Tensor` or dictionary of `Tensor` with labels.
		  hooks: List of `SessionRunHook` subclass instances. Used for callbacks
		    inside the training loop.
		  steps: Number of steps for which to train model. If `None`, train forever
		    or train until input_fn generates the `OutOfRange` or `StopIteration`
		    error. 'steps' works incrementally. If you call two times
		    train(steps=10) then training occurs in total 20 steps. If `OutOfRange`
		    or `StopIteration` error occurs in the middle, training stops before 20
		    steps. If you don't want to have incremental behaviour please set
		    `max_steps` instead. If set, `max_steps` must be `None`.
		  max_steps: Number of total steps for which to train model. If `None`,
		    train forever or train until input_fn generates the `OutOfRange` or
		    `StopIteration` error. If set, `steps` must be `None`. If `OutOfRange`
		    or `StopIteration` error occurs in the middle, training stops before
		    `max_steps` steps.
		
		    Two calls to `train(steps=100)` means 200 training
		    iterations. On the other hand, two calls to `train(max_steps=100)` means
		    that the second call will not do any iteration since first call did
		    all 100 steps.
		
		Returns:
		  `self`, for chaining.
		
		Raises:
		  ValueError: If both `steps` and `max_steps` are not `None`.
		  ValueError: If either `steps` or `max_steps` is <= 0.
	**/
	public function train(input_fn:Dynamic, ?hooks:Dynamic, ?steps:Dynamic, ?max_steps:Dynamic):Dynamic;
}