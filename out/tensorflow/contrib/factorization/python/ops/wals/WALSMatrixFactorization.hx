/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.wals;
@:pythonImport("tensorflow.contrib.factorization.python.ops.wals", "WALSMatrixFactorization") extern class WALSMatrixFactorization {
	static public var INPUT_COLS : Dynamic;
	static public var INPUT_ROWS : Dynamic;
	static public var PROJECTION_RESULT : Dynamic;
	static public var PROJECTION_WEIGHTS : Dynamic;
	static public var PROJECT_ROW : Dynamic;
	/**
		This class specifies the configurations for an `Estimator` run.
		
		This class is the implementation of ${tf.estimator.RunConfig} interface.
		
		If you're a Google-internal user using command line flags with
		`learn_runner.py` (for instance, to do distributed training or to use
		parameter servers), you probably want to use `learn_runner.EstimatorConfig`
		instead.
	**/
	static public function _Config(?master:Dynamic, ?num_cores:Dynamic, ?log_device_placement:Dynamic, ?gpu_memory_fraction:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?save_checkpoints_steps:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?evaluation_master:Dynamic, ?model_dir:Dynamic, ?session_config:Dynamic):Dynamic;
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
		Creates a model for matrix factorization using the WALS method.
		
		Args:
		  num_rows: Total number of rows for input matrix.
		  num_cols: Total number of cols for input matrix.
		  embedding_dimension: Dimension to use for the factors.
		  unobserved_weight: Weight of the unobserved entries of matrix.
		  regularization_coeff: Weight of the L2 regularization term. Defaults to
		    None, in which case the problem is not regularized.
		  row_init: Initializer for row factor. Must be either:
		    - A tensor: The row factor matrix is initialized to this tensor,
		    - A numpy constant,
		    - "random": The rows are initialized using a normal distribution.
		  col_init: Initializer for column factor. See row_init.
		  num_row_shards: Number of shards to use for the row factors.
		  num_col_shards: Number of shards to use for the column factors.
		  row_weights: Must be in one of the following three formats:
		    - None: In this case, the weight of every entry is the unobserved_weight
		      and the problem simplifies to ALS. Note that, in this case,
		      col_weights must also be set to "None".
		    - List of lists of non-negative scalars, of the form
		      [[w_0, w_1, ...], [w_k, ... ], [...]],
		      where the number of inner lists equal to the number of row factor
		      shards and the elements in each inner list are the weights for the
		      rows of that shard. In this case,
		      w_ij = unonbserved_weight + row_weights[i] * col_weights[j].
		    - A non-negative scalar: This value is used for all row weights.
		      Note that it is allowed to have row_weights as a list and col_weights
		      as a scalar, or vice-versa.
		  col_weights: See row_weights.
		  use_factors_weights_cache_for_training: Boolean, whether the factors and
		    weights will be cached on the workers before the updates start, during
		    training. Defaults to True.
		    Note that caching is disabled during prediction.
		  use_gramian_cache_for_training: Boolean, whether the Gramians will be
		    cached on the workers before the updates start, during training.
		    Defaults to True. Note that caching is disabled during prediction.
		  model_dir: The directory to save the model results and log files.
		  config: A Configuration object. See Estimator.
		
		Raises:
		  ValueError: If config.num_worker_replicas is strictly greater than one.
		    The current implementation only supports running on a single worker.
	**/
	@:native("__init__")
	public function ___init__(num_rows:Dynamic, num_cols:Dynamic, embedding_dimension:Dynamic, ?unobserved_weight:Dynamic, ?regularization_coeff:Dynamic, ?row_init:Dynamic, ?col_init:Dynamic, ?num_row_shards:Dynamic, ?num_col_shards:Dynamic, ?row_weights:Dynamic, ?col_weights:Dynamic, ?use_factors_weights_cache_for_training:Dynamic, ?use_gramian_cache_for_training:Dynamic, ?model_dir:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Creates a model for matrix factorization using the WALS method.
		
		Args:
		  num_rows: Total number of rows for input matrix.
		  num_cols: Total number of cols for input matrix.
		  embedding_dimension: Dimension to use for the factors.
		  unobserved_weight: Weight of the unobserved entries of matrix.
		  regularization_coeff: Weight of the L2 regularization term. Defaults to
		    None, in which case the problem is not regularized.
		  row_init: Initializer for row factor. Must be either:
		    - A tensor: The row factor matrix is initialized to this tensor,
		    - A numpy constant,
		    - "random": The rows are initialized using a normal distribution.
		  col_init: Initializer for column factor. See row_init.
		  num_row_shards: Number of shards to use for the row factors.
		  num_col_shards: Number of shards to use for the column factors.
		  row_weights: Must be in one of the following three formats:
		    - None: In this case, the weight of every entry is the unobserved_weight
		      and the problem simplifies to ALS. Note that, in this case,
		      col_weights must also be set to "None".
		    - List of lists of non-negative scalars, of the form
		      [[w_0, w_1, ...], [w_k, ... ], [...]],
		      where the number of inner lists equal to the number of row factor
		      shards and the elements in each inner list are the weights for the
		      rows of that shard. In this case,
		      w_ij = unonbserved_weight + row_weights[i] * col_weights[j].
		    - A non-negative scalar: This value is used for all row weights.
		      Note that it is allowed to have row_weights as a list and col_weights
		      as a scalar, or vice-versa.
		  col_weights: See row_weights.
		  use_factors_weights_cache_for_training: Boolean, whether the factors and
		    weights will be cached on the workers before the updates start, during
		    training. Defaults to True.
		    Note that caching is disabled during prediction.
		  use_gramian_cache_for_training: Boolean, whether the Gramians will be
		    cached on the workers before the updates start, during training.
		    Defaults to True. Note that caching is disabled during prediction.
		  model_dir: The directory to save the model results and log files.
		  config: A Configuration object. See Estimator.
		
		Raises:
		  ValueError: If config.num_worker_replicas is strictly greater than one.
		    The current implementation only supports running on a single worker.
	**/
	public function new(num_rows:Dynamic, num_cols:Dynamic, embedding_dimension:Dynamic, ?unobserved_weight:Dynamic, ?regularization_coeff:Dynamic, ?row_init:Dynamic, ?col_init:Dynamic, ?num_row_shards:Dynamic, ?num_col_shards:Dynamic, ?row_weights:Dynamic, ?col_weights:Dynamic, ?use_factors_weights_cache_for_training:Dynamic, ?use_gramian_cache_for_training:Dynamic, ?model_dir:Dynamic, ?config:Dynamic):Void;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Calls model function with support of 2, 3 or 4 arguments.
		
		Args:
		  features: features dict.
		  labels: labels dict.
		  mode: ModeKeys
		
		Returns:
		  A `ModelFnOps` object. If model_fn returns a tuple, wraps them up in a
		  `ModelFnOps` object.
		
		Raises:
		  ValueError: if model_fn returns invalid objects.
	**/
	public function _call_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic):Dynamic;
	public function _check_inputs(features:Dynamic, labels:Dynamic):Dynamic;
	public function _evaluate_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic, ?log_progress:Dynamic):Dynamic;
	/**
		Separate update operations from metric value operations.
	**/
	public function _extract_metric_update_ops(eval_dict:Dynamic):Dynamic;
	public function _filter_predictions(predictions:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns evaluation ops.
		
		Expected to be overriden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: `Tensor` or `dict` of `Tensor` objects.
		  metrics: Dict of metrics to run. If None, the default metric functions
		    are used; if {}, no metrics are used. Otherwise, `metrics` should map
		    friendly names for the metric to a `MetricSpec` object defining which
		    model outputs to evaluate against which labels with which metric
		    function. Metric ops should support streaming, e.g., returning
		    update_op and value tensors. See more details in
		    `../../../../metrics/python/metrics/ops/streaming_metrics.py` and
		    `../metric_spec.py`.
		
		Returns:
		  `ModelFnOps` object.
		
		Raises:
		  ValueError: if `metrics` don't match `labels`.
	**/
	public function _get_eval_ops(features:Dynamic, labels:Dynamic, metrics:Dynamic):Dynamic;
	/**
		Returns feature parser for given example batch using features info. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-23.
		Instructions for updating:
		The signature of the input_fn accepted by export is changing to be consistent with what's used by tf.Learn Estimator's train/evaluate, which makes this function useless. This will be removed after the deprecation date.
		
		This function requires `fit()` has been called.
		
		Args:
		  examples_batch: batch of tf.Example
		
		Returns:
		  features: `Tensor` or `dict` of `Tensor` objects.
		
		Raises:
		  ValueError: If `_features_info` attribute is not available (usually
		  because `fit()` has not been called).
	**/
	public function _get_feature_ops_from_example(examples_batch:Dynamic):Dynamic;
	public function _get_features_from_input_fn(input_fn:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns prediction ops.
		
		Expected to be overriden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  `ModelFnOps` object.
	**/
	public function _get_predict_ops(features:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns trainer ops.
		
		Expected to be overriden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  `ModelFnOps` object.
	**/
	public function _get_train_ops(features:Dynamic, labels:Dynamic):Dynamic;
	public function _infer_model(input_fn:Dynamic, ?feed_fn:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic, ?iterate_batches:Dynamic):Dynamic;
	public function _is_input_constant(feed_fn:Dynamic, graph:Dynamic):Dynamic;
	public function _predict_generator(mon_sess:Dynamic, predictions:Dynamic, feed_fn:Dynamic, iterate_batches:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, hooks:Dynamic):Dynamic;
	public var config : Dynamic;
	/**
		See `Evaluable`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Raises:
		  ValueError: If at least one of `x` or `y` is provided, and at least one of
		      `input_fn` or `feed_fn` is provided.
		      Or if `metrics` is not `None` or `dict`.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?feed_fn:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic, ?log_progress:Dynamic):Dynamic;
	/**
		Exports inference graph into given dir. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
		
		Args:
		  export_dir: A string containing a directory to write the exported graph
		    and checkpoints.
		  input_fn: If `use_deprecated_input_fn` is true, then a function that given
		    `Tensor` of `Example` strings, parses it into features that are then
		    passed to the model. Otherwise, a function that takes no argument and
		    returns a tuple of (features, labels), where features is a dict of
		    string key to `Tensor` and labels is a `Tensor` that's currently not
		    used (and so can be `None`).
		  input_feature_key: Only used if `use_deprecated_input_fn` is false. String
		    key into the features dict returned by `input_fn` that corresponds to a
		    the raw `Example` strings `Tensor` that the exported model will take as
		    input. Can only be `None` if you're using a custom `signature_fn` that
		    does not use the first arg (examples).
		  use_deprecated_input_fn: Determines the signature format of `input_fn`.
		  signature_fn: Function that returns a default signature and a named
		    signature map, given `Tensor` of `Example` strings, `dict` of `Tensor`s
		    for features and `Tensor` or `dict` of `Tensor`s for predictions.
		  prediction_key: The key for a tensor in the `predictions` dict (output
		    from the `model_fn`) to use as the `predictions` input to the
		    `signature_fn`. Optional. If `None`, predictions will pass to
		    `signature_fn` without filtering.
		  default_batch_size: Default batch size of the `Example` placeholder.
		  exports_to_keep: Number of exports to keep.
		  checkpoint_path: the checkpoint path of the model to be exported. If it is
		      `None` (which is default), will use the latest checkpoint in
		      export_dir.
		
		Returns:
		  The string path to the exported directory. NB: this functionality was
		  added ca. 2016/09/25; clients that depend on the return value may need
		  to handle the case where this function returns None because subclasses
		  are not returning a value.
	**/
	public function export(export_dir:Dynamic, ?input_fn:Dynamic, ?input_feature_key:Dynamic, ?use_deprecated_input_fn:Dynamic, ?signature_fn:Dynamic, ?prediction_key:Dynamic, ?default_batch_size:Dynamic, ?exports_to_keep:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Exports inference graph as a SavedModel into given dir.
		
		Args:
		  export_dir_base: A string containing a directory to write the exported
		    graph and checkpoints.
		  serving_input_fn: A function that takes no argument and
		    returns an `InputFnOps`.
		  default_output_alternative_key: the name of the head to serve when none is
		    specified.  Not needed for single-headed models.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel.  Each key should give the destination
		    path (including the filename) relative to the assets.extra directory.
		    The corresponding value gives the full path of the source file to be
		    copied.  For example, the simple case of copying a single file without
		    renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If None (the default),
		    the most recent checkpoint found within the model directory is chosen.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if an unrecognized export_type is requested.
	**/
	public function export_savedmodel(export_dir_base:Dynamic, serving_input_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		See `Trainable`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Raises:
		  ValueError: If `x` or `y` are not `None` while `input_fn` is not `None`.
		  ValueError: If both `steps` and `max_steps` are not `None`.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?batch_size:Dynamic, ?monitors:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		Returns the column factors of the model, loading them from checkpoint.
		
		Should only be run after training.
		
		Returns:
		  A list of the column factors of the model.
	**/
	public function get_col_factors():Dynamic;
	/**
		Get parameters for this estimator.
		
		Args:
		  deep: boolean, optional
		
		    If `True`, will return the parameters for this estimator and
		    contained subobjects that are estimators.
		
		Returns:
		  params : mapping of string to any
		  Parameter names mapped to their values.
	**/
	public function get_params(?deep:Dynamic):Dynamic;
	/**
		Computes the projections of the rows or columns given in input_fn.
		
		Runs predict() with the given input_fn, and returns the results. Should only
		be run after training.
		
		Args:
		  input_fn: Input function which specifies the rows or columns to project.
		Returns:
		  A generator of the projected factors.
	**/
	public function get_projections(input_fn:Dynamic):Dynamic;
	/**
		Returns the row factors of the model, loading them from checkpoint.
		
		Should only be run after training.
		
		Returns:
		  A list of the row factors of the model.
	**/
	public function get_row_factors():Dynamic;
	/**
		Returns list of all variable names in this model.
		
		Returns:
		  List of names.
	**/
	public function get_variable_names():Dynamic;
	/**
		Returns value of the variable given by name.
		
		Args:
		  name: string, name of the tensor.
		
		Returns:
		  Numpy array - value of the tensor.
	**/
	public function get_variable_value(name:Dynamic):Dynamic;
	/**
		Returns a path in which the eval process will look for checkpoints.
	**/
	public var model_dir : Dynamic;
	/**
		Incremental fit on a batch of samples. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		This method is expected to be called several times consecutively
		on different or the same chunks of the dataset. This either can
		implement iterative training or out-of-core/online training.
		
		This is especially useful when the whole dataset is too big to
		fit in memory at the same time. Or when model is taking long time
		to converge, and you want to split up training into subparts.
		
		Args:
		  x: Matrix of shape [n_samples, n_features...]. Can be iterator that
		     returns arrays of features. The training input samples for fitting the
		     model. If set, `input_fn` must be `None`.
		  y: Vector or matrix [n_samples] or [n_samples, n_outputs]. Can be
		     iterator that returns array of labels. The training label values
		     (class labels in classification, real numbers in regression). If set,
		     `input_fn` must be `None`.
		  input_fn: Input function. If set, `x`, `y`, and `batch_size` must be
		    `None`.
		  steps: Number of steps for which to train model. If `None`, train forever.
		  batch_size: minibatch size to use on the input, defaults to first
		    dimension of `x`. Must be `None` if `input_fn` is provided.
		  monitors: List of `BaseMonitor` subclass instances. Used for callbacks
		    inside the training loop.
		
		Returns:
		  `self`, for chaining.
		
		Raises:
		  ValueError: If at least one of `x` and `y` is provided, and `input_fn` is
		      provided.
	**/
	public function partial_fit(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?batch_size:Dynamic, ?monitors:Dynamic):Dynamic;
	/**
		Returns predictions for given features. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Args:
		  x: Matrix of shape [n_samples, n_features...]. Can be iterator that
		     returns arrays of features. The training input samples for fitting the
		     model. If set, `input_fn` must be `None`.
		  input_fn: Input function. If set, `x` and 'batch_size' must be `None`.
		  batch_size: Override default batch size. If set, 'input_fn' must be
		    'None'.
		  outputs: list of `str`, name of the output to predict.
		    If `None`, returns all.
		  as_iterable: If True, return an iterable which keeps yielding predictions
		    for each example until inputs are exhausted. Note: The inputs must
		    terminate if you want the iterable to terminate (e.g. be sure to pass
		    num_epochs=1 if you are using something like read_batch_features).
		
		Returns:
		  A numpy array of predicted classes or regression values if the
		  constructor's `model_fn` returns a `Tensor` for `predictions` or a `dict`
		  of numpy arrays if `model_fn` returns a `dict`. Returns an iterable of
		  predictions if as_iterable is True.
		
		Raises:
		  ValueError: If x and input_fn are both provided or both `None`.
	**/
	public function predict(?x:Dynamic, ?input_fn:Dynamic, ?batch_size:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic):Dynamic;
	/**
		Set the parameters of this estimator.
		
		The method works on simple estimators as well as on nested objects
		(such as pipelines). The former have parameters of the form
		``<component>__<parameter>`` so that it's possible to update each
		component of a nested object.
		
		Args:
		  **params: Parameters.
		
		Returns:
		  self
		
		Raises:
		  ValueError: If params contain invalid names.
	**/
	public function set_params(?params:python.KwArgs<Dynamic>):Dynamic;
}