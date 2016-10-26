/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.dnn_linear_combined;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.dnn_linear_combined", "DNNLinearCombinedClassifier") extern class DNNLinearCombinedClassifier {
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
		Constructs a DNNLinearCombinedClassifier instance.
		
		Args:
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  n_classes: number of target classes. Default is binary classification.
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training.
		    It will be multiplied by the loss of the example.
		  linear_feature_columns: An iterable containing all the feature columns
		    used by linear part of the model. All items in the set must be
		    instances of classes derived from `FeatureColumn`.
		  linear_optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the linear part of the model. If `None`, will use a FTRL optimizer.
		  dnn_feature_columns: An iterable containing all the feature columns used
		    by deep part of the model. All items in the set must be instances of
		    classes derived from `FeatureColumn`.
		  dnn_optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the deep part of the model. If `None`, will use an Adagrad optimizer.
		  dnn_hidden_units: List of hidden units per layer. All layers are fully
		    connected.
		  dnn_activation_fn: Activation function applied to each layer. If `None`,
		    will use `tf.nn.relu`.
		  dnn_dropout: When not None, the probability we will drop out
		    a given coordinate.
		  gradient_clip_norm: A float > 0. If provided, gradients are clipped
		    to their global norm with this clipping ratio. See
		    tf.clip_by_global_norm for more details.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  config: RunConfig object to configure the runtime settings.
		
		Raises:
		  ValueError: If `n_classes` < 2.
		  ValueError: If both `linear_feature_columns` and `dnn_features_columns`
		    are empty at the same time.
	**/
	@:native("__init__")
	public function ___init__(?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column_name:Dynamic, ?linear_feature_columns:Dynamic, ?linear_optimizer:Dynamic, ?dnn_feature_columns:Dynamic, ?dnn_optimizer:Dynamic, ?dnn_hidden_units:Dynamic, ?dnn_activation_fn:Dynamic, ?dnn_dropout:Dynamic, ?gradient_clip_norm:Dynamic, ?enable_centered_bias:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Constructs a DNNLinearCombinedClassifier instance.
		
		Args:
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  n_classes: number of target classes. Default is binary classification.
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training.
		    It will be multiplied by the loss of the example.
		  linear_feature_columns: An iterable containing all the feature columns
		    used by linear part of the model. All items in the set must be
		    instances of classes derived from `FeatureColumn`.
		  linear_optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the linear part of the model. If `None`, will use a FTRL optimizer.
		  dnn_feature_columns: An iterable containing all the feature columns used
		    by deep part of the model. All items in the set must be instances of
		    classes derived from `FeatureColumn`.
		  dnn_optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the deep part of the model. If `None`, will use an Adagrad optimizer.
		  dnn_hidden_units: List of hidden units per layer. All layers are fully
		    connected.
		  dnn_activation_fn: Activation function applied to each layer. If `None`,
		    will use `tf.nn.relu`.
		  dnn_dropout: When not None, the probability we will drop out
		    a given coordinate.
		  gradient_clip_norm: A float > 0. If provided, gradients are clipped
		    to their global norm with this clipping ratio. See
		    tf.clip_by_global_norm for more details.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  config: RunConfig object to configure the runtime settings.
		
		Raises:
		  ValueError: If `n_classes` < 2.
		  ValueError: If both `linear_feature_columns` and `dnn_features_columns`
		    are empty at the same time.
	**/
	public function new(?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column_name:Dynamic, ?linear_feature_columns:Dynamic, ?linear_optimizer:Dynamic, ?dnn_feature_columns:Dynamic, ?dnn_optimizer:Dynamic, ?dnn_hidden_units:Dynamic, ?dnn_activation_fn:Dynamic, ?dnn_dropout:Dynamic, ?gradient_clip_norm:Dynamic, ?enable_centered_bias:Dynamic, ?config:Dynamic):Void;
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
	public function _centered_bias():Dynamic;
	public function _centered_bias_step(targets:Dynamic, features:Dynamic):Dynamic;
	public function _check_inputs(features:Dynamic, targets:Dynamic):Dynamic;
	public function _dnn_logits(features:Dynamic, is_training:Dynamic):Dynamic;
	public function _evaluate_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?metrics:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Separate update operations from metric value operations.
	**/
	public function _extract_metric_update_ops(eval_dict:Dynamic):Dynamic;
	public function _get_dnn_feature_columns():Dynamic;
	/**
		See base class.
	**/
	public function _get_eval_ops(features:Dynamic, targets:Dynamic, ?metrics:Dynamic):Dynamic;
	public function _get_feature_dict(features:Dynamic):Dynamic;
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
	public function _get_linear_feature_columns():Dynamic;
	/**
		See base class.
	**/
	public function _get_predict_ops(features:Dynamic):Dynamic;
	/**
		See base class.
	**/
	public function _get_train_ops(features:Dynamic, targets:Dynamic):Dynamic;
	public function _infer_model(input_fn:Dynamic, ?feed_fn:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic):Dynamic;
	public function _infer_model_as_iterable(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _infer_model_single(checkpoint_path:Dynamic, predictions:Dynamic, feed_fn:Dynamic, return_dict:Dynamic):Dynamic;
	public function _linear_logits(features:Dynamic, is_training:Dynamic):Dynamic;
	public function _logits(features:Dynamic, ?is_training:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?init_op:Dynamic, ?init_feed_fn:Dynamic, ?init_fn:Dynamic, ?device_fn:Dynamic, ?monitors:Dynamic, ?log_every_steps:Dynamic, ?fail_on_nan_loss:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		Returns bias of deep neural network part.
	**/
	public var dnn_bias_ : Dynamic;
	/**
		Returns weights of deep neural network part.
	**/
	public var dnn_weights_ : Dynamic;
	/**
		See `Evaluable`.
		
		Raises:
		  ValueError: If at least one of `x` or `y` is provided, and at least one of
		      `input_fn` or `feed_fn` is provided.
		      Or if `metrics` is not `None` or `dict`.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?feed_fn:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See `Trainable`.
		
		Raises:
		  ValueError: If `x` or `y` are not `None` while `input_fn` is not `None`.
		  ValueError: If both `steps` and `max_steps` are not `None`.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?batch_size:Dynamic, ?monitors:Dynamic, ?max_steps:Dynamic):Dynamic;
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
	/**
		Returns bias of the linear part.
	**/
	public var linear_bias_ : Dynamic;
	/**
		Returns weights per feature of the linear part.
	**/
	public var linear_weights_ : Dynamic;
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
		Returns predicted classes for given features.
		
		Args:
		  x: features.
		  input_fn: Input function. If set, x must be None.
		  batch_size: Override default batch size.
		  as_iterable: If True, return an iterable which keeps yielding predictions
		    for each example until inputs are exhausted. Note: The inputs must
		    terminate if you want the iterable to terminate (e.g. be sure to pass
		    num_epochs=1 if you are using something like read_batch_features).
		
		Returns:
		  Numpy array of predicted classes (or an iterable of predicted classes if
		  as_iterable is True).
	**/
	public function predict(?x:Dynamic, ?input_fn:Dynamic, ?batch_size:Dynamic, ?as_iterable:Dynamic):Dynamic;
	/**
		Returns prediction probabilities for given features.
		
		Args:
		  x: features.
		  input_fn: Input function. If set, x and y must be None.
		  batch_size: Override default batch size.
		  as_iterable: If True, return an iterable which keeps yielding predictions
		    for each example until inputs are exhausted. Note: The inputs must
		    terminate if you want the iterable to terminate (e.g. be sure to pass
		    num_epochs=1 if you are using something like read_batch_features).
		
		Returns:
		  Numpy array of predicted probabilities (or an iterable of predicted
		  probabilities if as_iterable is True).
	**/
	public function predict_proba(?x:Dynamic, ?input_fn:Dynamic, ?batch_size:Dynamic, ?as_iterable:Dynamic):Dynamic;
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