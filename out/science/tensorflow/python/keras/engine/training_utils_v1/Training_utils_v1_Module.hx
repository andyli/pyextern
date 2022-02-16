/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_utils_v1;
@:pythonImport("tensorflow.python.keras.engine.training_utils_v1") extern class Training_utils_v1_Module {
	static public var _COPY_POOL : Dynamic;
	static public var _COPY_THREADS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function to append composite tensors to each other in the 0 axis.
		
		In order to support batching within a fit/evaluate/predict call, we need
		to be able to aggregate within a CompositeTensor. Unfortunately, the CT
		API currently does not make this easy - especially in V1 mode, where we're
		working with CompositeTensor Value objects that have no connection with the
		CompositeTensors that created them.
		
		Args:
		  target: CompositeTensor or CompositeTensor value object that will be
		    appended to.
		  to_append: CompositeTensor or CompositeTensor value object to append to.
		    'target'.
		
		Returns:
		  A CompositeTensor or CompositeTensor value object.
		
		Raises:
		  RuntimeError: if concatenation is not possible.
	**/
	static public function _append_composite_tensor(target:Dynamic, to_append:Dynamic):Dynamic;
	/**
		Append ragged tensor value objects.
	**/
	static public function _append_ragged_tensor_value(target:Dynamic, to_append:Dynamic):Dynamic;
	/**
		Append sparse tensor value objects.
	**/
	static public function _append_sparse_tensor_value(target:Dynamic, to_append:Dynamic):Dynamic;
	/**
		Shuffles an array in a batch-wise fashion.
		
		Useful for shuffling HDF5 arrays
		(where one cannot access arbitrary indices).
		
		Args:
		    index_array: array of indices to be shuffled.
		    batch_size: integer.
		
		Returns:
		    The `index_array` array, shuffled in a batch-wise fashion.
	**/
	static public function batch_shuffle(index_array:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Invokes metric function and returns the metric result tensor.
	**/
	static public function call_metric_function(metric_fn:Dynamic, y_true:Dynamic, ?y_pred:Dynamic, ?weights:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Casts the given data tensors to the default floating point type.
		
		Casts only if the input is already a floating point type.
		Args:
		  x: tensor or list/tuple of tensors.
		  dtype: The dtype to which Tensors should be cast.
		
		Returns:
		  Converted input.
	**/
	static public function cast_if_floating_dtype(x:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns target data tensors using correct datatype.
		
		Checks that each target and output pair are the same datatype. If not, casts
		the target to the output's datatype.
		
		Args:
		  targets: tensor or list of targets.
		  outputs: tensor or list of outputs.
		
		Returns:
		  Targets in appropriate datatype.
	**/
	static public function cast_if_floating_dtype_and_mismatch(targets:Dynamic, outputs:Dynamic):Dynamic;
	static public function cast_single_tensor(x:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Casts the given data tensors to the dtypes of the model inputs.
		
		Args:
		  x: tensor or list/tuple of tensors.
		  model: The model.
		
		Returns:
		  Converted input. Each tensor is casted to the corresponding input in
		  `model.inputs`.
	**/
	static public function cast_to_model_input_dtypes(x:Dynamic, model:Dynamic):Dynamic;
	/**
		Does user input validation for numpy arrays.
		
		Args:
		    inputs: list of Numpy arrays of inputs.
		    targets: list of Numpy arrays of targets.
		    weights: list of Numpy arrays of sample weights.
		
		Raises:
		    ValueError: in case of incorrectly formatted data.
	**/
	static public function check_array_lengths(inputs:Dynamic, targets:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Validates arguments passed when using a generator.
	**/
	static public function check_generator_arguments(?y:Dynamic, ?sample_weight:Dynamic, ?validation_split:Dynamic):Dynamic;
	/**
		Does validation on the compatibility of targets and loss functions.
		
		This helps prevent users from using loss functions incorrectly. This check
		is purely for UX purposes.
		
		Args:
		    targets: list of Numpy arrays of targets.
		    loss_fns: list of loss functions.
		    output_shapes: list of shapes of model outputs.
		
		Raises:
		    ValueError: if a loss function or target array
		        is incompatible with an output.
	**/
	static public function check_loss_and_target_compatibility(targets:Dynamic, loss_fns:Dynamic, output_shapes:Dynamic):Dynamic;
	/**
		Determine the number of samples provided for training and evaluation.
		
		The number of samples is not defined when running with `steps`,
		in which case the number of samples is set to `None`.
		
		Args:
		    ins: List of tensors to be fed to the Keras function.
		    batch_size: Integer batch size or `None` if not defined.
		    steps: Total number of steps (batches of samples) before declaring
		      `_predict_loop` finished. Ignored with the default value of `None`.
		    steps_name: The public API's parameter name for `steps`.
		
		Raises:
		    ValueError: when `steps` is `None` and the attribute `ins.shape`
		    does not exist. Also raises ValueError when `steps` is not `None`
		    and `batch_size` is not `None` because they are mutually
		    exclusive.
		
		Returns:
		    When steps is `None`, returns the number of samples to be
		    processed based on the size of the first dimension of the
		    first input numpy array. When steps is not `None` and
		    `batch_size` is `None`, returns `None`.
	**/
	static public function check_num_samples(ins:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?steps_name:Dynamic):Dynamic;
	/**
		Validates `steps` argument based on input data's type.
		
		The cases when `steps` value must be provided are when
		  1. input data passed is an iterator.
		  2. model was built on top of symbolic tensors, input data is not
		     required and is `None`.
		  3. input data passed is a symbolic tensor.
		
		Args:
		    input_data: Input data. Can be Numpy array(s) or TensorFlow tensor(s) or
		      tf.data.Dataset iterator or `None`.
		    steps: Integer or `None`. Total number of steps (batches of samples) to
		      execute.
		    steps_name: The public API's parameter name for `steps`.
		
		Returns:
		  boolean, True if `steps` argument is required, else False.
		
		Raises:
		    ValueError: if `steps` argument is required for given input data type
		      but not provided.
	**/
	static public function check_steps_argument(input_data:Dynamic, steps:Dynamic, steps_name:Dynamic):Dynamic;
	/**
		Maps metric names and functions to model outputs.
		
		Args:
		    metrics: a list or a list of lists or a dict of metric functions.
		    output_names: a list of the names (strings) of model outputs.
		    output_shapes: a list of the shapes (strings) of model outputs.
		    loss_fns: a list of the loss functions corresponding to the model outputs.
		    from_serialized: whether the model the metrics are being sourced from is
		      being initialized from a serialized format.
		    is_weighted: Boolean indicating whether the given metrics are weighted.
		
		Returns:
		    A list (one entry per model output) of dicts.
		    For instance, if the model has 2 outputs, and for the first output
		    we want to compute "binary_accuracy" and "binary_crossentropy",
		    and just "binary_accuracy" for the second output,
		    the list would look like: `[{
		        'acc': binary_accuracy(),
		        'ce': binary_crossentropy(),
		      }, {
		        'acc': binary_accuracy(),
		      }]`
		
		Raises:
		    TypeError: if an incorrect type is passed for the `metrics` argument.
	**/
	static public function collect_per_output_metric_info(metrics:Dynamic, output_names:Dynamic, output_shapes:Dynamic, loss_fns:Dynamic, ?from_serialized:Dynamic, ?is_weighted:Dynamic):Dynamic;
	/**
		Extract a tuple of tensors `inputs, targets, sample_weight` from a dataset.
		
		Args:
		  dataset: Dataset instance.
		
		Returns:
		  Tuple of tensors `x, y, weights`. `y` and `weights` entry may be None.
	**/
	static public function extract_tensors_from_dataset(dataset:Dynamic):Dynamic;
	static public function generic_output_names(outputs_list:Dynamic):Dynamic;
	/**
		Returns the shape of the passed composite tensor.
	**/
	static public function get_composite_shape(tensor:Dynamic):Dynamic;
	/**
		Shared threadpool for copying arrays.
		
		Pool instantiation takes ~ 2ms, so a singleton pool is used rather than
		creating a pool per SliceAggregator.
		
		Returns:
		  The global copy threadpool.
	**/
	static public function get_copy_pool():Dynamic;
	static public function get_dataset_graph_def(dataset:Dynamic):Dynamic;
	/**
		Create and initialize an iterator from a dataset.
	**/
	static public function get_iterator(dataset:Dynamic):Dynamic;
	/**
		Returns the loss corresponding to the loss input in `compile` API.
	**/
	static public function get_loss_function(loss:Dynamic):Dynamic;
	/**
		Returns the metric function corresponding to the given metric input.
		
		Args:
		    metric: Metric function name or reference.
		    output_shape: The shape of the output that this metric will be calculated
		      for.
		    loss_fn: The loss function used.
		
		Returns:
		    The metric function.
	**/
	static public function get_metric_function(metric:Dynamic, ?output_shape:Dynamic, ?loss_fn:Dynamic):Dynamic;
	/**
		Returns the name corresponding to the given metric input.
		
		Args:
		  metric: Metric function name or reference.
		  weighted: Boolean indicating if the given metric is weighted.
		
		Returns:
		    The metric name.
	**/
	static public function get_metric_name(metric:Dynamic, ?weighted:Dynamic):Dynamic;
	/**
		Get Progbar.
	**/
	static public function get_progbar(model:Dynamic, count_mode:Dynamic, ?include_metrics:Dynamic):Dynamic;
	static public function has_symbolic_tensors(ls:Dynamic):Dynamic;
	/**
		Returns true if `ls` contains tensors.
	**/
	static public function has_tensors(ls:Dynamic):Dynamic;
	/**
		Infers steps_per_epoch needed to loop through a dataset.
		
		Args:
		    model: Keras model instance.
		    dataset: Input data of type tf.data.Dataset.
		    steps: Number of steps to draw from the dataset (may be None if unknown).
		    epochs: Number of times to iterate over the dataset.
		    steps_name: The string name of the steps argument, either `steps`,
		      `validation_steps`, or `steps_per_epoch`. Only used for error message
		      formatting.
		
		Returns:
		  Integer or `None`. Inferred number of steps to loop through the dataset.
		  `None` is returned if 1) the size of the dataset is unknown and `steps` was
		  not specified, or 2) this is multi-worker training and auto sharding is
		  enabled.
		
		Raises:
		  ValueError: In case of invalid argument values.
	**/
	static public function infer_steps_for_dataset(model:Dynamic, dataset:Dynamic, steps:Dynamic, ?epochs:Dynamic, ?steps_name:Dynamic):Dynamic;
	static public function initialize_iterator(iterator:Dynamic):Dynamic;
	/**
		Returns true if 'tensor' is a CompositeTensor or a CT Value object.
	**/
	static public function is_composite_or_composite_value(tensor:Dynamic):Dynamic;
	static public function is_dataset_or_iterator(data:Dynamic):Dynamic;
	static public function is_eager_dataset_or_iterator(data:Dynamic):Dynamic;
	/**
		Returns whether `layer` is a FeatureLayer or not.
	**/
	static public function is_feature_layer(layer:Dynamic):Dynamic;
	/**
		Converts loss to a list of loss functions.
		
		Args:
		    loss: String (name of objective function), objective function or
		      `tf.losses.Loss` instance. See `tf.losses`. If the model has multiple
		      outputs, you can use a different loss on each output by passing a
		      dictionary or a list of losses. The loss value that will be minimized by
		      the model will then be the sum of all individual losses.
		    output_names: List of model output names.
		
		Returns:
		    A list of loss objective functions.
		
		Raises:
		    ValueError: If loss is a dict with keys not in model output names,
		        or if loss is a list with len not equal to model outputs.
	**/
	static public function prepare_loss_functions(loss:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Converts loss weights to a list of loss weights.
		
		The result loss weights will be populated on the training endpoint.
		
		Args:
		    training_endpoints: List of model training endpoints.
		    loss_weights: Optional list or dictionary specifying scalar coefficients
		      (Python floats) to weight the loss contributions of different model
		      outputs. The loss value that will be minimized by the model will then be
		      the *weighted sum* of all individual losses, weighted by the
		        `loss_weights` coefficients. If a list, it is expected to have a 1:1
		          mapping to the model's outputs. If a dict, it is expected to map
		          output names (strings) to scalar coefficients.
		
		Raises:
		    ValueError: If loss weight is a dict with key not in model output names,
		        or if loss is a list with len not equal to model outputs.
	**/
	static public function prepare_loss_weights(training_endpoints:Dynamic, ?loss_weights:Dynamic):Dynamic;
	/**
		Prepares sample weight modes for the model.
		
		Args:
		  training_endpoints: List of model _TrainingEndpoints.
		  sample_weight_mode: sample weight mode user input passed from compile API.
		
		Raises:
		  ValueError: In case of invalid `sample_weight_mode` input.
	**/
	static public function prepare_sample_weight_modes(training_endpoints:Dynamic, sample_weight_mode:Dynamic):Dynamic;
	/**
		Checks if validation should be run this epoch.
		
		Args:
		  validation_freq: Integer or list. If an integer, specifies how many training
		    epochs to run before a new validation run is performed. If a list,
		    specifies the epochs on which to run validation.
		  epoch: Integer, the number of the training epoch just completed.
		
		Returns:
		  Bool, True if validation should be run.
		
		Raises:
		  ValueError: if `validation_freq` is an Integer and less than 1, or if
		  it is neither an Integer nor a Sequence.
	**/
	static public function should_run_validation(validation_freq:Dynamic, epoch:Dynamic):Dynamic;
	/**
		Split input data into train/eval section based on validation_split.
	**/
	static public function split_training_and_validation_data(x:Dynamic, y:Dynamic, sample_weights:Dynamic, validation_split:Dynamic):Dynamic;
	static public function standardize_class_weights(class_weight:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Normalizes inputs and targets provided by users.
		
		Users may pass data as a list of arrays, dictionary of arrays,
		or as a single array. We normalize this to an ordered list of
		arrays (same order as `names`), while checking that the provided
		arrays have shapes that match the network's expectations.
		
		Args:
		    data: User-provided input data (polymorphic).
		    names: List of expected array names.
		    shapes: Optional list of expected array shapes.
		    check_batch_axis: Boolean; whether to check that the batch axis of the
		      arrays matches the expected value found in `shapes`.
		    exception_prefix: String prefix used for exception formatting.
		
		Returns:
		    List of standardized input arrays (one array per model input).
		
		Raises:
		    ValueError: in case of improperly formatted user-provided data.
	**/
	static public function standardize_input_data(data:Dynamic, names:Dynamic, ?shapes:Dynamic, ?check_batch_axis:Dynamic, ?exception_prefix:Dynamic):Dynamic;
	/**
		Maps `sample_weight` or `class_weight` to model outputs.
		
		Args:
		    x_weight: User-provided `sample_weight` or `class_weight` argument.
		    output_names: List of output names (strings) in the model.
		    weight_type: A string used purely for exception printing.
		
		Returns:
		    A list of `sample_weight` or `class_weight` where there are exactly
		        one element per model output.
		
		Raises:
		    ValueError: In case of invalid user-provided argument.
	**/
	static public function standardize_sample_or_class_weights(x_weight:Dynamic, output_names:Dynamic, weight_type:Dynamic):Dynamic;
	static public function standardize_sample_weights(sample_weight:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Expand data of shape (x,) to (x, 1), unless len(expected_shape)==1.
	**/
	static public function standardize_single_array(x:Dynamic, ?expected_shape:Dynamic):Dynamic;
	/**
		Performs sample weight validation and standardization.
		
		Everything gets normalized to a single sample-wise (or timestep-wise)
		weight array. If both `sample_weight` and `class_weight` are provided,
		the weights are multiplied.
		
		Args:
		    y: Numpy array or Tensor of model targets to be weighted.
		    sample_weight: User-provided `sample_weight` argument.
		    class_weight: User-provided `class_weight` argument.
		    sample_weight_mode: One of `None` or `"temporal"`. `"temporal"` indicated
		      that we expect 2D weight data that will be applied to the last 2
		      dimensions of the targets (i.e. we are weighting timesteps, not
		      samples).
		
		Returns:
		    A numpy array of target weights, one entry per sample to weight.
		
		Raises:
		    ValueError: In case of invalid user-provided arguments.
	**/
	static public function standardize_weights(y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
	/**
		Convert a dataset iterator to a tuple of tensors `x, y, sample_weights`.
		
		Args:
		  iterator: Instance of a dataset iterator.
		
		Returns:
		  Tuple of tensors `x, y, weights`. `y` and `weights` entry may be None.
	**/
	static public function unpack_iterator_input(iterator:Dynamic):Dynamic;
	/**
		Unpack validation data based input type.
		
		The validation data is not touched if its dataset or dataset iterator.
		For other type of input (Numpy or tensor), it will be unpacked into tuple of
		3 which is x, y and sample weights.
		
		Args:
		  validation_data: dataset, dataset iterator, or numpy, tensor tuple.
		  raise_if_ambiguous: boolean on whether to fail if validation_data cannot be
		    parsed. Otherwise simply return validation_data, None, None and defer the
		    decision to the caller.
		
		Returns:
		  tuple of 3, (x, y, sample_weights) for numpy and tensor input.
	**/
	static public function unpack_validation_data(validation_data:Dynamic, ?raise_if_ambiguous:Dynamic):Dynamic;
	/**
		Validates user input arguments when a dataset iterator is passed.
		
		Args:
		  x: Input data. A `tf.data` dataset or iterator.
		  y: Target data. It could be either Numpy array(s) or TensorFlow tensor(s).
		    Expected to be `None` when `x` is a dataset iterator.
		  sample_weight: An optional sample-weight array passed by the user to weight
		    the importance of each sample in `x`. Expected to be `None` when `x` is a
		    dataset iterator
		  validation_split: Float between 0 and 1. Fraction of the training data to be
		    used as validation data. Expected to be `None` when `x` is a dataset
		    iterator.
		
		Raises:
		  ValueError: if argument `y` or `sample_weight` or `validation_split` are
		      provided by user.
	**/
	static public function validate_dataset_input(x:Dynamic, y:Dynamic, sample_weight:Dynamic, ?validation_split:Dynamic):Dynamic;
	/**
		Helper function to validate either inputs or targets.
	**/
	static public function validate_input_types(inp:Dynamic, orig_inp:Dynamic, ?allow_dict:Dynamic, ?field_name:Dynamic):Dynamic;
	/**
		Verifies that the dataset is shuffled.
		
		Args:
		  x: Dataset passed as an input to the model.
		
		Returns:
		  boolean, whether the input dataset is shuffled or not.
	**/
	static public function verify_dataset_shuffled(x:Dynamic):Dynamic;
}