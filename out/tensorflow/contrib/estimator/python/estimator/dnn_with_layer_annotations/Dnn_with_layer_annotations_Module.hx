/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.dnn_with_layer_annotations;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.dnn_with_layer_annotations") extern class Dnn_with_layer_annotations_Module {
	/**
		A classifier for TensorFlow DNN models with layer annotations.
		
		This classifier is fuctionally identical to estimator.DNNClassifier as far as
		training and evaluating models is concerned. The key difference is that this
		classifier adds additional layer annotations, which can be used for computing
		Integrated Gradients.
		
		Integrated Gradients is a method for attributing a classifier's predictions
		to its input features (https://arxiv.org/pdf/1703.01365.pdf). Given an input
		instance, the method assigns attribution scores to individual features in
		proportion to the feature's importance to the classifier's prediction.
		
		See estimator.DNNClassifer for example code for training and evaluating models
		using this classifier.
		
		This classifier is checkpoint-compatible with estimator.DNNClassifier and
		therefore the following should work seamlessly:
		
		# Instantiate ordinary estimator as usual.
		estimator = tf.estimator.DNNClassifier(
		  config, feature_columns, hidden_units, ...)
		
		# Train estimator, export checkpoint.
		tf.estimator.train_and_evaluate(estimator, ...)
		
		# Instantiate estimator with annotations with the same configuration as the
		# ordinary estimator.
		estimator_with_annotations = (
		  tf.contrib.estimator.DNNClassifierWithLayerAnnotations(
		    config, feature_columns, hidden_units, ...))
		
		# Call export_savedmodel with the same arguments as the ordinary estimator,
		# using the checkpoint produced for the ordinary estimator.
		estimator_with_annotations.export_saved_model(
		  export_dir_base, serving_input_receiver, ...
		  checkpoint_path='/path/to/ordinary/estimator/checkpoint/model.ckpt-1234')
		
		Args:
		  hidden_units: Iterable of number hidden units per layer. All layers are
		    fully connected. Ex. `[64, 32]` means first layer has 64 nodes and second
		    one has 32.
		  feature_columns: An iterable containing all the feature columns used by the
		    model. All items in the set should be instances of classes derived from
		    `_FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  n_classes: Number of label classes. Defaults to 2, namely binary
		    classification. Must be > 1.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		  label_vocabulary: A list of strings represents possible label values. If
		    given, labels must be string type and have any value in
		    `label_vocabulary`. If it is not given, that means labels are already
		    encoded as integer or float within [0, 1] for `n_classes=2` and encoded as
		    integer values in {0, 1,..., n_classes-1} for `n_classes`>2 . Also there
		    will be errors if vocabulary is not provided and labels are string.
		  optimizer: An instance of `tf.Optimizer` used to train the model. Defaults
		    to Adagrad optimizer.
		  activation_fn: Activation function applied to each layer. If `None`, will
		    use `tf.nn.relu`.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Optional. Partitioner for input layer. Defaults to
		    `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A string filepath to a checkpoint to warm-start from, or a
		    `WarmStartSettings` object to fully configure warm-starting.  If the
		    string filepath is provided instead of a `WarmStartSettings`, then all
		    weights are warm-started, and it is assumed that vocabularies and Tensor
		    names are unchanged.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		
		Returns:
		  DNNClassifier with layer annotations.
	**/
	static public function DNNClassifierWithLayerAnnotations(hidden_units:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?n_classes:Dynamic, ?weight_column:Dynamic, ?label_vocabulary:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	/**
		A regressor for TensorFlow DNN models with layer annotations.
		
		This regressor is fuctionally identical to estimator.DNNRegressor as far as
		training and evaluating models is concerned. The key difference is that this
		classifier adds additional layer annotations, which can be used for computing
		Integrated Gradients.
		
		Integrated Gradients is a method for attributing a classifier's predictions
		to its input features (https://arxiv.org/pdf/1703.01365.pdf). Given an input
		instance, the method assigns attribution scores to individual features in
		proportion to the feature's importance to the classifier's prediction.
		
		See estimator.DNNRegressor for example code for training and evaluating models
		using this regressor.
		
		This regressor is checkpoint-compatible with estimator.DNNRegressor and
		therefore the following should work seamlessly:
		
		# Instantiate ordinary estimator as usual.
		estimator = tf.estimator.DNNRegressor(
		  config, feature_columns, hidden_units, ...)
		
		# Train estimator, export checkpoint.
		tf.estimator.train_and_evaluate(estimator, ...)
		
		# Instantiate estimator with annotations with the same configuration as the
		# ordinary estimator.
		estimator_with_annotations = (
		  tf.contrib.estimator.DNNRegressorWithLayerAnnotations(
		    config, feature_columns, hidden_units, ...))
		
		# Call export_savedmodel with the same arguments as the ordinary estimator,
		# using the checkpoint produced for the ordinary estimator.
		estimator_with_annotations.export_saved_model(
		  export_dir_base, serving_input_receiver, ...
		  checkpoint_path='/path/to/ordinary/estimator/checkpoint/model.ckpt-1234')
		
		Args:
		  hidden_units: Iterable of number hidden units per layer. All layers are
		    fully connected. Ex. `[64, 32]` means first layer has 64 nodes and second
		    one has 32.
		  feature_columns: An iterable containing all the feature columns used by the
		    model. All items in the set should be instances of classes derived from
		    `_FeatureColumn`.
		  model_dir: Directory to save model parameters, graph and etc. This can also
		    be used to load checkpoints from the directory into a estimator to
		    continue training a previously saved model.
		  label_dimension: Number of regression targets per example. This is the size
		    of the last dimension of the labels and logits `Tensor` objects
		    (typically, these have shape `[batch_size, label_dimension]`).
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example. If it is a string, it is
		    used as a key to fetch weight tensor from the `features`. If it is a
		    `_NumericColumn`, raw tensor is fetched by key `weight_column.key`, then
		    weight_column.normalizer_fn is applied on it to get weight tensor.
		  optimizer: An instance of `tf.Optimizer` used to train the model. Defaults
		    to Adagrad optimizer.
		  activation_fn: Activation function applied to each layer. If `None`, will
		    use `tf.nn.relu`.
		  dropout: When not `None`, the probability we will drop out a given
		    coordinate.
		  input_layer_partitioner: Optional. Partitioner for input layer. Defaults to
		    `min_max_variable_partitioner` with `min_slice_size` 64 << 20.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A string filepath to a checkpoint to warm-start from, or a
		    `WarmStartSettings` object to fully configure warm-starting.  If the
		    string filepath is provided instead of a `WarmStartSettings`, then all
		    weights are warm-started, and it is assumed that vocabularies and Tensor
		    names are unchanged.
		  loss_reduction: One of `tf.losses.Reduction` except `NONE`. Describes how to
		    reduce training loss over batch. Defaults to `SUM`.
		
		Returns:
		  DNNRegressor with layer annotations.
	**/
	static public function DNNRegressorWithLayerAnnotations(hidden_units:Dynamic, feature_columns:Dynamic, ?model_dir:Dynamic, ?label_dimension:Dynamic, ?weight_column:Dynamic, ?optimizer:Dynamic, ?activation_fn:Dynamic, ?dropout:Dynamic, ?input_layer_partitioner:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?loss_reduction:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _monkey_patch(module:Dynamic, _function:Dynamic, replacement:Dynamic):Dynamic;
	/**
		Converts a `Tensor` to a `TensorInfo` wrapped in a proto `Any`.
	**/
	static public function _to_any_wrapped_tensor_info(tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Make an input_layer replacement function that adds layer annotations.
	**/
	static public function make_input_layer_with_layer_annotations(original_input_layer:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize_feature_column(feature_column:Dynamic):Dynamic;
}