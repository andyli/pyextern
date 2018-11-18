/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_utils;
@:pythonImport("tensorflow.python.keras.engine.training_utils") extern class Training_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts all lists to tuples, since Datasets expect tuples.
	**/
	static public function _convert_lists_to_tuples(data:Dynamic):Dynamic;
	/**
		Returns batch axis shape for nested data.
	**/
	static public function _get_batch_axis_size(data:Dynamic):Dynamic;
	/**
		Maps each nested element using func.
	**/
	static public function _map_nested(data:Dynamic, func:Dynamic):Dynamic;
	/**
		Checks if all elements in a nested structure satisfy cond_func.
	**/
	static public function _nested_all(data:Dynamic, cond_func:Dynamic):Dynamic;
	/**
		Checks if any nested_elements in a nested structure satisfy cond_func.
	**/
	static public function _nested_any(data:Dynamic, cond_func:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Shuffles an array in a batch-wise fashion.
		
		Useful for shuffling HDF5 arrays
		(where one cannot access arbitrary indices).
		
		Arguments:
		    index_array: array of indices to be shuffled.
		    batch_size: integer.
		
		Returns:
		    The `index_array` array, shuffled in a batch-wise fashion.
	**/
	static public function batch_shuffle(index_array:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Casts the given data tensors to the default floating point type.
		
		Casts only if the input is already a floating point type.
		Args:
		  x: tensor or list/tuple of tensors.
		
		Returns:
		  Converted input.
		
		Raises:
		  RuntimeError: if data isn't tensors.
	**/
	static public function cast_if_floating_dtype(x:Dynamic):Dynamic;
	static public function cast_single_tensor(x:Dynamic):Dynamic;
	/**
		Does user input validation for numpy arrays.
		
		Arguments:
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
	static public function check_generator_arguments(?y:Dynamic, ?sample_weight:Dynamic):Dynamic;
	/**
		Does validation on the compatibility of targets and loss functions.
		
		This helps prevent users from using loss functions incorrectly. This check
		is purely for UX purposes.
		
		Arguments:
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
		
		Arguments:
		    ins: List of tensors to be fed to the Keras function.
		    batch_size: Integer batch size or `None` if not defined.
		    steps: Total number of steps (batches of samples)
		        before declaring `_predict_loop` finished.
		        Ignored with the default value of `None`.
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
		
		Raises:
		    ValueError: In case of invalid arguments.
	**/
	static public function check_num_samples(ins:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?steps_name:Dynamic):Dynamic;
	/**
		Validates `steps` argument based on input data's type.
		
		The cases when `steps` value must be provided are when
		  1. input data passed is an iterator.
		  2. model was built on top of symbolic tensors, input data is not
		     required and is `None`.
		  3. input data passed is a symbolic tensor.
		
		Arguments:
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
		
		Arguments:
		    metrics: a list or dict of metric functions.
		    output_names: a list of the names (strings) of model outputs.
		    output_shapes: a list of the shapes (strings) of model outputs.
		    loss_fns: a list of the loss functions corresponding to the model outputs.
		    sample_weights: a list of weights to be applied on the model outputs.
		
		Returns:
		    A list (one entry per model output) of dicts.
		    For instance, if the model has 2 outputs, and for the first output
		    we want to compute "binary_accuracy" and "binary_crossentropy",
		    and just "binary_accuracy" for the second output,
		    the list would look like: `[[('acc', binary_accuracy()),
		    ('ce', binary_crossentropy())], [('acc', binary_accuracy())]]`
		
		Raises:
		    TypeError: if an incorrect type is passed for the `metrics` argument.
	**/
	static public function collect_per_output_metric_info(metrics:Dynamic, output_names:Dynamic, output_shapes:Dynamic, loss_fns:Dynamic, ?sample_weights:Dynamic):Dynamic;
	/**
		Converts NumPy arrays or EagerTensors to an EagerIterator.
		
		Combines all provided data into a single EagerIterator.
		
		Arguments:
		    x: NumPy array or EagerTensor,  or list of Numpy arrays or EagerTensors
		      representing inputs to a model.
		    y: Optional. NumPy array or EagerTensor, or list of Numpy arrays or
		      EagerTensors representing targets of a model.
		    sample_weights: Optional NumPy array or EagerTensor representing sample
		      weights.
		    batch_size: Used to batch data and calculate how many steps EagerIterator
		      should take per epoch.
		    steps_per_epoch: If provided, how many steps EagerIterator should take per
		      epoch.
		    epochs: Epochs to repeat iterator for.
		    shuffle: Whether to shuffle data after each epoch.
		
		Raises:
		    ValueError: if steps_per_epoch cannot be calculated from the data
		    provided.
		
		Returns:
		    (Iterator, steps_per_epoch).
	**/
	static public function convert_to_iterator(?x:Dynamic, ?y:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?shuffle:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the metric function corresponding to the given metric input.
		
		Arguments:
		    metric: Metric function name or reference.
		    output_shape: The shape of the output that this metric
		        will be calculated for.
		    loss_fn: The loss function used.
		
		Returns:
		    The metric function.
	**/
	static public function get_metric_function(metric:Dynamic, ?output_shape:Dynamic, ?loss_fn:Dynamic):Dynamic;
	/**
		Returns the name corresponding to the given metric input.
		
		Arguments:
		  metric: Metric function name or reference.
		  weighted: Boolean indicating if the given metric is weighted.
		
		Returns:
		    The metric name.
	**/
	static public function get_metric_name(metric:Dynamic, ?weighted:Dynamic):Dynamic;
	/**
		Returns the sample weight and weight mode for a single output.
	**/
	static public function get_output_sample_weight_and_mode(skip_target_weighing_indices:Dynamic, sample_weight_mode:Dynamic, output_name:Dynamic, output_index:Dynamic):Dynamic;
	static public function has_symbolic_tensors(ls:Dynamic):Dynamic;
	static public function has_tensors(ls:Dynamic):Dynamic;
	/**
		Returns whether `layer` is a FeatureLayer or not.
	**/
	static public function is_feature_layer(layer:Dynamic):Dynamic;
	/**
		Prepares sample weights for the model.
		
		Args:
		  output_names: List of model output names.
		  sample_weight_mode: sample weight mode user input passed from compile API.
		  skip_target_weighing_indices: Indices of output for which sample weights
		    should be skipped.
		
		Returns:
		  A pair of list of sample weights and sample weight modes
		    (one for each output).
		
		Raises:
		  ValueError: In case of invalid `sample_weight_mode` input.
	**/
	static public function prepare_sample_weights(output_names:Dynamic, sample_weight_mode:Dynamic, skip_target_weighing_indices:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function standardize_class_weights(class_weight:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Normalizes inputs and targets provided by users.
		
		Users may pass data as a list of arrays, dictionary of arrays,
		or as a single array. We normalize this to an ordered list of
		arrays (same order as `names`), while checking that the provided
		arrays have shapes that match the network's expectations.
		
		Arguments:
		    data: User-provided input data (polymorphic).
		    names: List of expected array names.
		    shapes: Optional list of expected array shapes.
		    check_batch_axis: Boolean; whether to check that
		        the batch axis of the arrays matches the expected
		        value found in `shapes`.
		    exception_prefix: String prefix used for exception formatting.
		
		Returns:
		    List of standardized input arrays (one array per model input).
		
		Raises:
		    ValueError: in case of improperly formatted user-provided data.
	**/
	static public function standardize_input_data(data:Dynamic, names:Dynamic, ?shapes:Dynamic, ?check_batch_axis:Dynamic, ?exception_prefix:Dynamic):Dynamic;
	/**
		Maps `sample_weight` or `class_weight` to model outputs.
		
		Arguments:
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
	static public function standardize_single_array(x:Dynamic):Dynamic;
	/**
		Performs sample weight validation and standardization.
		
		Everything gets normalized to a single sample-wise (or timestep-wise)
		weight array.
		
		Arguments:
		    y: Numpy array of model targets to be weighted.
		    sample_weight: User-provided `sample_weight` argument.
		    class_weight: User-provided `class_weight` argument.
		    sample_weight_mode: One of `None` or `"temporal"`.
		        `"temporal"` indicated that we expect 2D weight data
		        that will be applied to the last 2 dimensions of
		        the targets (i.e. we are weighting timesteps, not samples).
		
		Returns:
		    A numpy array of target weights, one entry per sample to weight.
		
		Raises:
		    ValueError: In case of invalid user-provided arguments.
	**/
	static public function standardize_weights(y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
	/**
		Validates user input arguments when a dataset iterator is passed.
		
		Arguments:
		  x: Input data. A `tf.data` dataset iterator.
		  y: Target data. It could be either Numpy array(s) or TensorFlow tensor(s).
		      Expected to be `None` when `x` is a dataset iterator.
		  sample_weight: An optional sample-weight array passed by the user to
		      weight the importance of each sample in `x`. Expected to be `None` when
		      `x` is a dataset iterator
		  validation_split: Float between 0 and 1. Fraction of the training data to
		      be used as validation data. Expected to be `None` when `x` is a dataset
		      iterator.
		
		Raises:
		  ValueError: if argument `y` or `sample_weight` or `validation_split` are
		      provided by user.
	**/
	static public function validate_iterator_input(x:Dynamic, y:Dynamic, sample_weight:Dynamic, ?validation_split:Dynamic):Dynamic;
	/**
		Adds support for masking and sample-weighting to an objective function.
		
		It transforms an objective function `fn(y_true, y_pred)`
		into a sample-weighted, cost-masked objective function
		`fn(y_true, y_pred, weights, mask)`.
		
		Arguments:
		    fn: The objective function to wrap,
		        with signature `fn(y_true, y_pred)`.
		
		Returns:
		    A function with signature `fn(y_true, y_pred, weights, mask)`.
	**/
	static public function weighted_masked_objective(fn:Dynamic):Dynamic;
}