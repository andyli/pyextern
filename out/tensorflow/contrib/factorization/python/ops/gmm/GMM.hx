/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.gmm;
@:pythonImport("tensorflow.contrib.factorization.python.ops.gmm", "GMM") extern class GMM {
	static public var ALL_SCORES : Dynamic;
	static public var ASSIGNMENTS : Dynamic;
	static public var SCORES : Dynamic;
	/**
		This class specifies the specific configurations for the run.
	**/
	static public function _Config(?master:Dynamic, ?task:Dynamic, ?num_ps_replicas:Dynamic, ?num_cores:Dynamic, ?log_device_placement:Dynamic, ?gpu_memory_fraction:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic):Dynamic;
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
		Creates a model for running GMM training and inference.
		
		Args:
		  num_clusters: number of clusters to train.
		  model_dir: the directory to save the model results and log files.
		  random_seed: Python integer. Seed for PRNG used to initialize centers.
		  params: Controls which parameters are updated in the training process.
		    Can contain any combination of "w" for weights, "m" for means,
		    and "c" for covars.
		  initial_clusters: specifies how to initialize the clusters for training.
		    See gmm_ops.gmm for the possible values.
		  covariance_type: one of "full", "diag".
		  batch_size: See TensorFlowEstimator
		  steps: See TensorFlowEstimator
		  continue_training: See TensorFlowEstimator
		  config: See TensorFlowEstimator
		  verbose: See TensorFlowEstimator
	**/
	@:native("__init__")
	public function ___init__(num_clusters:Dynamic, ?model_dir:Dynamic, ?random_seed:Dynamic, ?params:Dynamic, ?initial_clusters:Dynamic, ?covariance_type:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?continue_training:Dynamic, ?config:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Creates a model for running GMM training and inference.
		
		Args:
		  num_clusters: number of clusters to train.
		  model_dir: the directory to save the model results and log files.
		  random_seed: Python integer. Seed for PRNG used to initialize centers.
		  params: Controls which parameters are updated in the training process.
		    Can contain any combination of "w" for weights, "m" for means,
		    and "c" for covars.
		  initial_clusters: specifies how to initialize the clusters for training.
		    See gmm_ops.gmm for the possible values.
		  covariance_type: one of "full", "diag".
		  batch_size: See TensorFlowEstimator
		  steps: See TensorFlowEstimator
		  continue_training: See TensorFlowEstimator
		  config: See TensorFlowEstimator
		  verbose: See TensorFlowEstimator
	**/
	public function new(num_clusters:Dynamic, ?model_dir:Dynamic, ?random_seed:Dynamic, ?params:Dynamic, ?initial_clusters:Dynamic, ?covariance_type:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?continue_training:Dynamic, ?config:Dynamic, ?verbose:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Calls model function with support of 2, 3 or 4 arguments.
	**/
	public function _call_model_fn(features:Dynamic, targets:Dynamic, mode:Dynamic):Dynamic;
	public function _check_inputs(features:Dynamic, targets:Dynamic):Dynamic;
	public function _evaluate_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?metrics:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Separate update operations from metric value operations.
	**/
	public function _extract_metric_update_ops(eval_dict:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns evaluation ops.
		
		Expected to be overriden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  targets: `Tensor` or `dict` of `Tensor` objects.
		  metrics: Dict of metric ops to run. If None, the default metric functions
		    are used; if {}, no metrics are used. If model has one output (i.e.,
		    returning single predction), keys are `str`, e.g. `'accuracy'` - just a
		    name of the metric that will show up in the logs / summaries.
		    Otherwise, keys are tuple of two `str`, e.g. `('accuracy', 'classes')`
		    - name of the metric and name of `Tensor` in the predictions to run
		    this metric on. Metric ops should support streaming, e.g., returning
		    update_op and value tensors. See more details in
		    ../../../../metrics/python/metrics/ops/streaming_metrics.py.
		
		Returns:
		  metrics: `dict` of `Tensor` objects.
		
		Raises:
		  ValueError: if `metrics` don't match `targets`.
	**/
	public function _get_eval_ops(features:Dynamic, _:Dynamic, unused_metrics:Dynamic):Dynamic;
	/**
		Returns feature parser for given example batch using features info.
		
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
		  predictions: `Tensor` or `dict` of `Tensor` objects.
	**/
	public function _get_predict_ops(features:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns trainer ops.
		
		Expected to be overriden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  targets: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  Tuple of train `Operation` and loss `Tensor`.
	**/
	public function _get_train_ops(features:Dynamic, _:Dynamic):Dynamic;
	public function _infer_model(input_fn:Dynamic, ?feed_fn:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic):Dynamic;
	public function _infer_model_as_iterable(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _infer_model_single(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?init_op:Dynamic, ?init_feed_fn:Dynamic, ?init_fn:Dynamic, ?device_fn:Dynamic, ?monitors:Dynamic, ?log_every_steps:Dynamic, ?fail_on_nan_loss:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		Returns cluster centers.
	**/
	public function clusters():Dynamic;
	/**
		Returns the covariances.
	**/
	public function covariances():Dynamic;
	/**
		See `Evaluable`.
		
		Raises:
		  ValueError: If at least one of `x` or `y` is provided, and at least one of
		      `input_fn` or `feed_fn` is provided.
		      Or if `metrics` is not `None` or `dict`.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?feed_fn:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Trains a GMM clustering on x.
		
		Note: See TensorFlowEstimator for logic for continuous training and graph
		  construction across multiple calls to fit.
		
		Args:
		  x: training input matrix of shape [n_samples, n_features].
		  y: labels. Should be None.
		  monitors: List of `Monitor` objects to print training progress and
		    invoke early stopping.
		  logdir: the directory to save the log file that can be used for optional
		    visualization.
		  steps: number of training steps. If not None, overrides the value passed
		    in constructor.
		
		Returns:
		  Returns self.
	**/
	public function fit(x:Dynamic, ?y:Dynamic, ?monitors:Dynamic, ?logdir:Dynamic, ?steps:Dynamic):Dynamic;
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
	public var model_dir : Dynamic;
	/**
		Incremental fit on a batch of samples.
		
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
		     iterator that returns array of targets. The training target values
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
		Predict cluster id for each element in x.
		
		Args:
		  x: 2-D matrix or iterator.
		  batch_size: size to use for batching up x for querying the model.
		
		Returns:
		  Array with same number of rows as x, containing cluster ids.
	**/
	public function predict(x:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Predict total sum of distances to nearest clusters.
		
		Args:
		  x: 2-D matrix or iterator.
		  batch_size: size to use for batching up x for querying the model.
		
		Returns:
		  Total score.
	**/
	public function score(x:Dynamic, ?batch_size:Dynamic):Dynamic;
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
	/**
		Transforms each element in x to distances to cluster centers.
		
		Args:
		  x: 2-D matrix or iterator.
		  batch_size: size to use for batching up x for querying the model.
		
		Returns:
		  Array with same number of rows as x, and num_clusters columns, containing
		  distances to the cluster centers.
	**/
	public function transform(x:Dynamic, ?batch_size:Dynamic):Dynamic;
}