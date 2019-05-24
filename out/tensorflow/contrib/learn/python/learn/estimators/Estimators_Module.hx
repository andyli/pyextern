/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators") extern class Estimators_Module {
	/**
		Builds a logistic regression Estimator for binary classification.
		
		THIS CLASS IS DEPRECATED. See
		[contrib/learn/README.md](https://www.tensorflow.org/code/tensorflow/contrib/learn/README.md)
		for general migration instructions.
		
		This method provides a basic Estimator with some additional metrics for custom
		binary classification models, including AUC, precision/recall and accuracy.
		
		Example:
		
		```python
		  # See tf.contrib.learn.Estimator(...) for details on model_fn structure
		  def my_model_fn(...):
		    pass
		
		  estimator = LogisticRegressor(model_fn=my_model_fn)
		
		  # Input builders
		  def input_fn_train:
		    pass
		
		  estimator.fit(input_fn=input_fn_train)
		  estimator.predict(x=x)
		```
		
		Args:
		  model_fn: Model function with the signature:
		    `(features, labels, mode) -> (predictions, loss, train_op)`.
		    Expects the returned predictions to be probabilities in [0.0, 1.0].
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics. If `None`, defaults to `[0.5]`.
		  model_dir: Directory to save model parameters, graphs, etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  config: A RunConfig configuration object.
		  feature_engineering_fn: Feature engineering function. Takes features and
		                    labels which are the output of `input_fn` and
		                    returns features and labels which will be fed
		                    into the model.
		
		Returns:
		  An `Estimator` instance.
	**/
	static public function LogisticRegressor(model_fn:Dynamic, ?thresholds:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?feature_engineering_fn:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a `Head` for binary classification with SVMs. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The head uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		
		Returns:
		  An instance of `Head` for binary classification with SVM.
	**/
	static public function binary_svm_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by input `x`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please specify feature columns explicitly.
		
		This interprets all inputs as dense, fixed-length float values.
		
		Args:
		  x: Real-valued matrix of shape [n_samples, n_features...]. Can be
		     iterator that returns arrays of features.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input(x:Dynamic):Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by `input_fn`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please specify feature columns explicitly.
		
		This interprets all inputs as dense, fixed-length float values. This creates
		a local graph in which it calls `input_fn` to build the tensors, then discards
		it.
		
		Args:
		  input_fn: Input function returning a tuple of:
		      features - Dictionary of string feature name to `Tensor` or `Tensor`.
		      labels - `Tensor` of label values.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input_fn(input_fn:Dynamic):Dynamic;
	/**
		Creates a Head that contains only loss terms. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Loss only head holds additional loss terms to be added to other heads and
		usually represents additional regularization terms in the objective function.
		
		Args:
		  loss_fn: a function that takes no argument and returns a list of
		      scalar tensors.
		  head_name: a name for the head.
		
		Returns:
		  An instance of `Head` to hold the additional losses.
	**/
	static public function loss_only_head(loss_fn:Dynamic, ?head_name:Dynamic):Dynamic;
	/**
		Creates a `Head` for multi class single label classification. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		The Head uses softmax cross entropy loss.
		
		This head expects to be fed integer labels specifying the class index. But
		if `label_keys` is specified, then labels must be strings from this
		vocabulary, and the predicted classes will be strings from the same
		vocabulary.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`. Invalid if
		    `n_classes` is 2.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		  label_keys: Optional list of strings with size `[n_classes]` defining the
		    label vocabulary. Only supported for `n_classes` > 2.
		
		Returns:
		  An instance of `Head` for multi class classification.
		
		Raises:
		  ValueError: if `n_classes` is < 2.
		  ValueError: If `metric_class_ids` is provided when `n_classes` is 2.
		  ValueError: If `len(label_keys) != n_classes`.
	**/
	static public function multi_class_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic, ?label_keys:Dynamic):Dynamic;
	/**
		Creates a MultiHead stemming from same logits/hidden layer. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  heads: list of Head objects.
		  loss_weights: optional list of weights to be used to merge losses from
		      each head. All losses are weighted equally if not provided.
		
		Returns:
		  A instance of `Head` that merges multiple heads.
		
		Raises:
		  ValueError: if heads and loss_weights have different size.
	**/
	static public function multi_head(heads:Dynamic, ?loss_weights:Dynamic):Dynamic;
	/**
		Creates a Head for multi label classification. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Multi-label classification handles the case where each example may have zero
		or more associated labels, from a discrete set.  This is distinct from
		`multi_class_head` which has exactly one label from a discrete set.
		
		This head by default uses sigmoid cross entropy loss, which expects as input
		a multi-hot tensor of shape `(batch_size, num_classes)`.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  thresholds: thresholds for eval metrics, defaults to [.5]
		  metric_class_ids: List of class IDs for which we should report per-class
		    metrics. Must all be in the range `[0, n_classes)`.
		  loss_fn: Optional function that takes (`labels`, `logits`, `weights`) as
		    parameter and returns a weighted scalar loss. `weights` should be
		    optional. See `tf.losses`
		
		Returns:
		  An instance of `Head` for multi label classification.
		
		Raises:
		  ValueError: If n_classes is < 2
		  ValueError: If loss_fn does not have expected signature.
	**/
	static public function multi_label_head(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?thresholds:Dynamic, ?metric_class_ids:Dynamic, ?loss_fn:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use 'lambda _: tf.no_op()'.
	**/
	static public function no_op_train_fn(loss:Dynamic):Dynamic;
	/**
		Creates a `Head` for poisson regression. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		
		Returns:
		  An instance of `Head` for poisson regression.
	**/
	static public function poisson_regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a `Head` for linear regression. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.contrib.estimator.*_head.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  enable_centered_bias: A bool. If True, estimator will learn a centered
		    bias variable for each class. Rest of the model structure learns the
		    residual after centered bias.
		  head_name: name of the head. If provided, predictions, summary and metrics
		    keys will be suffixed by `"/" + head_name` and the default variable scope
		    will be `head_name`.
		  link_fn: link function to convert logits to predictions. If provided,
		    this link function will be used instead of identity.
		
		Returns:
		  An instance of `Head` for linear regression.
	**/
	static public function regression_head(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic, ?link_fn:Dynamic):Dynamic;
}