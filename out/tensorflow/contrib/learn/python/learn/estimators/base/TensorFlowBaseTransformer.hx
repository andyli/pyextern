/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.base;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.base", "TensorFlowBaseTransformer") extern class TensorFlowBaseTransformer {
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
		Initializes a TensorFlowEstimator instance.
		
		Args:
		  model_fn: Model function, that takes input `x`, `y` tensors and outputs
		    prediction and loss tensors.
		  n_classes: Number of classes in the target.
		  batch_size: Mini batch size.
		  steps: Number of steps to run over data.
		  optimizer: Optimizer name (or class), for example "SGD", "Adam",
		    "Adagrad".
		  learning_rate: If this is constant float value, no decay function is used.
		    Instead, a customized decay function can be passed that accepts
		    global_step as parameter and returns a Tensor.
		    e.g. exponential decay function:
		
		    ````python
		    def exp_decay(global_step):
		        return tf.train.exponential_decay(
		            learning_rate=0.1, global_step,
		            decay_steps=2, decay_rate=0.001)
		    ````
		
		  clip_gradients: Clip norm of the gradients to this value to stop
		    gradient explosion.
		  class_weight: None or list of n_classes floats. Weight associated with
		    classes for loss computation. If not given, all classes are supposed to
		    have weight one.
		  continue_training: when continue_training is True, once initialized
		    model will be continuely trained on every call of fit.
		  config: RunConfig object that controls the configurations of the
		    session, e.g. num_cores, gpu_memory_fraction, etc.
		  verbose: Controls the verbosity, possible values:
		
		    * 0: the algorithm and debug information is muted.
		    * 1: trainer prints the progress.
		    * 2: log device placement is printed.
	**/
	@:native("__init__")
	public function ___init__(model_fn:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?optimizer:Dynamic, ?learning_rate:Dynamic, ?clip_gradients:Dynamic, ?class_weight:Dynamic, ?continue_training:Dynamic, ?config:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Initializes a TensorFlowEstimator instance.
		
		Args:
		  model_fn: Model function, that takes input `x`, `y` tensors and outputs
		    prediction and loss tensors.
		  n_classes: Number of classes in the target.
		  batch_size: Mini batch size.
		  steps: Number of steps to run over data.
		  optimizer: Optimizer name (or class), for example "SGD", "Adam",
		    "Adagrad".
		  learning_rate: If this is constant float value, no decay function is used.
		    Instead, a customized decay function can be passed that accepts
		    global_step as parameter and returns a Tensor.
		    e.g. exponential decay function:
		
		    ````python
		    def exp_decay(global_step):
		        return tf.train.exponential_decay(
		            learning_rate=0.1, global_step,
		            decay_steps=2, decay_rate=0.001)
		    ````
		
		  clip_gradients: Clip norm of the gradients to this value to stop
		    gradient explosion.
		  class_weight: None or list of n_classes floats. Weight associated with
		    classes for loss computation. If not given, all classes are supposed to
		    have weight one.
		  continue_training: when continue_training is True, once initialized
		    model will be continuely trained on every call of fit.
		  config: RunConfig object that controls the configurations of the
		    session, e.g. num_cores, gpu_memory_fraction, etc.
		  verbose: Controls the verbosity, possible values:
		
		    * 0: the algorithm and debug information is muted.
		    * 1: trainer prints the progress.
		    * 2: log device placement is printed.
	**/
	public function new(model_fn:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?optimizer:Dynamic, ?learning_rate:Dynamic, ?clip_gradients:Dynamic, ?class_weight:Dynamic, ?continue_training:Dynamic, ?config:Dynamic, ?verbose:Dynamic):Void;
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
	public function _get_eval_ops(features:Dynamic, targets:Dynamic, metrics:Dynamic):Dynamic;
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
		Backward compatibility way of adding class weight and IS_TRAINING.
		
		TODO(ipolosukhin): Remove this function after new layers are available.
		Specifically:
		 * dropout and batch norm should work via update ops.
		 * class weights should be retrieved from weights column or hparams.
		
		Args:
		  model_fn: Core model function.
		
		Returns:
		  Model function.
	**/
	public function _get_model_fn(model_fn:Dynamic):Dynamic;
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
	public function _get_train_ops(features:Dynamic, targets:Dynamic):Dynamic;
	public function _infer_model(input_fn:Dynamic, ?feed_fn:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic):Dynamic;
	public function _infer_model_as_iterable(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _infer_model_single(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _predict(x:Dynamic, ?axis:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Restores this estimator from given path.
		
		Note: will rebuild the graph and initialize all parameters,
		and will ignore provided model.
		
		Args:
		  path: Path to checkpoints and other information.
	**/
	public function _restore(path:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?init_op:Dynamic, ?init_feed_fn:Dynamic, ?init_fn:Dynamic, ?device_fn:Dynamic, ?monitors:Dynamic, ?log_every_steps:Dynamic, ?fail_on_nan_loss:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		See base class.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Fit a transformer.
	**/
	public function fit(x:Dynamic, ?y:Dynamic, ?monitor:Dynamic, ?logdir:Dynamic):Dynamic;
	/**
		Fit transformer and transform `x` using trained transformer.
	**/
	public function fit_transform(x:Dynamic, ?y:Dynamic, ?monitor:Dynamic, ?logdir:Dynamic):Dynamic;
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
		Returns tensor by name.
		
		Args:
		  name: string, name of the tensor.
		
		Returns:
		  Tensor.
	**/
	public function get_tensor(name:Dynamic):Dynamic;
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
		  x: matrix or tensor of shape [n_samples, n_features...]. Can be
		  iterator that returns arrays of features. The training input
		  samples for fitting the model.
		  y: vector or matrix [n_samples] or [n_samples, n_outputs]. Can be
		  iterator that returns array of targets. The training target values
		  (class label in classification, real numbers in regression).
		
		Returns:
		  Returns self.
	**/
	public function partial_fit(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Predict class or regression for `x`.
		
		For a classification model, the predicted class for each sample in `x` is
		returned. For a regression model, the predicted value based on `x` is
		returned.
		Args:
		  x: array-like matrix, [n_samples, n_features...] or iterator.
		  axis: Which axis to argmax for classification.
		    By default axis 1 (next after batch) is used.
		    Use 2 for sequence predictions.
		  batch_size: If test set is too big, use batch size to split
		    it into mini batches. By default the batch_size member
		    variable is used.
		
		Returns:
		  y: array of shape [n_samples]. The predicted classes or predicted
		  value.
	**/
	public function predict(x:Dynamic, ?axis:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Predict class probability of the input samples `x`.
		
		Args:
		  x: array-like matrix, [n_samples, n_features...] or iterator.
		  batch_size: If test set is too big, use batch size to split
		    it into mini batches. By default the batch_size member variable is used.
		
		Returns:
		  y: array of shape [n_samples, n_classes]. The predicted
		  probabilities for each class.
	**/
	public function predict_proba(x:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Restores model from give path.
		
		Args:
		  path: Path to the checkpoints and other model information.
		  config: RunConfig object that controls the configurations of the session,
		    e.g. num_cores, gpu_memory_fraction, etc. This is allowed to be
		      reconfigured.
		
		Returns:
		  Estimator, object of the subclass of TensorFlowEstimator.
		
		Raises:
		  ValueError: if `path` does not contain a model definition.
	**/
	static public function restore(path:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Saves checkpoints and graph to given path.
		
		Args:
		  path: Folder to save model to.
	**/
	public function save(path:Dynamic):Dynamic;
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
		Transform `x` using trained transformer.
	**/
	public function transform(x:Dynamic):Dynamic;
}