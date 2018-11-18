/* This file is generated, do not edit! */
package keras.engine.training_utils;
@:pythonImport("keras.engine.training_utils") extern class Training_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Shuffles an array in a batch-wise fashion.
		
		Useful for shuffling HDF5 arrays
		(where one cannot access arbitrary indices).
		
		# Arguments
		    index_array: array of indices to be shuffled.
		    batch_size: integer.
		
		# Returns
		    The `index_array` array, shuffled in a batch-wise fashion.
	**/
	static public function batch_shuffle(index_array:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Checks if batch axes are the same for numpy arrays.
		
		# Arguments
		    inputs: list of Numpy arrays of inputs.
		    targets: list of Numpy arrays of targets.
		    weights: list of Numpy arrays of sample weights.
		
		# Raises
		    ValueError: in case of incorrectly formatted data.
	**/
	static public function check_array_length_consistency(inputs:Dynamic, targets:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Does validation on the compatibility of targets and loss functions.
		
		This helps prevent users from using loss functions incorrectly.
		
		# Arguments
		    targets: list of Numpy arrays of targets.
		    loss_fns: list of loss functions.
		    output_shapes: list of shapes of model outputs.
		
		# Raises
		    ValueError: if a loss function or target array
		        is incompatible with an output.
	**/
	static public function check_loss_and_target_compatibility(targets:Dynamic, loss_fns:Dynamic, output_shapes:Dynamic):Dynamic;
	/**
		Checks the number of samples provided for training and evaluation.
		
		The number of samples is not defined when running with `steps`,
		in which case the number of samples is set to `None`.
		
		# Arguments
		    ins: List of tensors to be fed to the Keras function.
		    batch_size: Integer batch size or `None` if not defined.
		    steps: Total number of steps (batches of samples)
		        before declaring `predict_loop` finished.
		        Ignored with the default value of `None`.
		    steps_name: The public API's parameter name for `steps`.
		
		# Raises
		    ValueError: when `steps` is `None` and the attribute `ins.shape`
		    does not exist. Also raises ValueError when `steps` is not `None`
		    and `batch_size` is not `None` because they are mutually
		    exclusive.
		
		# Returns
		    When steps is `None`, returns the number of samples to be
		    processed based on the size of the first dimension of the
		    first input numpy array. When steps is not `None` and
		    `batch_size` is `None`, returns `None`.
		
		# Raises
		    ValueError: In case of invalid arguments.
	**/
	static public function check_num_samples(ins:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?steps_name:Dynamic):Dynamic;
	/**
		Maps metric functions to model outputs.
		
		# Arguments
		    metrics: a list or dict of metric functions.
		    output_names: a list of the names (strings) of model outputs.
		
		# Returns
		    A list (one entry per model output) of lists of metric functions.
		    For instance, if the model has 2 outputs, and for the first output
		    we want to compute "binary_accuracy" and "binary_crossentropy",
		    and just "binary_accuracy" for the second output,
		    the list would look like:
		        `[[binary_accuracy, binary_crossentropy], [binary_accuracy]]`
		
		# Raises
		    TypeError: if an incorrect type is passed for the `metrics` argument.
	**/
	static public function collect_metrics(metrics:Dynamic, output_names:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Iterate indefinitely over a Sequence.
		
		# Arguments
		    seq: Sequence object
		
		# Returns
		    Generator yielding batches.
	**/
	static public function iter_sequence_infinite(seq:Dynamic):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		# Arguments
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		# Returns
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function standardize_class_weights(class_weight:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Normalizes inputs and targets provided by users.
		
		Users may pass data as a list of arrays, dictionary of arrays,
		or as a single array. We normalize this to an ordered list of
		arrays (same order as `names`), while checking that the provided
		arrays have shapes that match the network's expectations.
		
		# Arguments
		    data: User-provided input data (polymorphic).
		    names: List of expected array names.
		    shapes: Optional list of expected array shapes.
		    check_batch_axis: Boolean; whether to check that
		        the batch axis of the arrays matches the expected
		        value found in `shapes`.
		    exception_prefix: String prefix used for exception formatting.
		
		# Returns
		    List of standardized input arrays (one array per model input).
		
		# Raises
		    ValueError: in case of improperly formatted user-provided data.
	**/
	static public function standardize_input_data(data:Dynamic, names:Dynamic, ?shapes:Dynamic, ?check_batch_axis:Dynamic, ?exception_prefix:Dynamic):Dynamic;
	/**
		Maps `sample_weight` or `class_weight` to model outputs.
		
		# Arguments
		    x_weight: User-provided `sample_weight` or `class_weight` argument.
		    output_names: List of output names (strings) in the model.
		    weight_type: A string used purely for exception printing.
		
		# Returns
		    A list of `sample_weight` or `class_weight` where there are exactly
		        one element per model output.
		
		# Raises
		    ValueError: In case of invalid user-provided argument.
	**/
	static public function standardize_sample_or_class_weights(x_weight:Dynamic, output_names:Dynamic, weight_type:Dynamic):Dynamic;
	static public function standardize_sample_weights(sample_weight:Dynamic, output_names:Dynamic):Dynamic;
	static public function standardize_single_array(x:Dynamic):Dynamic;
	/**
		Performs sample weight validation and standardization.
		
		Everything gets normalized to a single sample-wise (or timestep-wise)
		weight array.
		
		# Arguments
		    y: Numpy array of model targets to be weighted.
		    sample_weight: User-provided `sample_weight` argument.
		    class_weight: User-provided `class_weight` argument.
		    sample_weight_mode: One of `None` or `"temporal"`.
		        `"temporal"` indicated that we expect 2D weight data
		        that will be applied to the last 2 dimensions of
		        the targets (i.e. we are weighting timesteps, not samples).
		
		# Returns
		    A numpy array of target weights, one entry per sample to weight.
		
		# Raises
		    ValueError: In case of invalid user-provided arguments.
	**/
	static public function standardize_weights(y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		# Arguments
		    x: target object to be normalized.
		    allow_tuple: If False and x is a tuple,
		        it will be converted into a list
		        with a single element (the tuple).
		        Else converts the tuple to a list.
		
		# Returns
		    A list.
	**/
	static public function to_list(x:Dynamic, ?allow_tuple:Dynamic):Dynamic;
	/**
		Adds support for masking and sample-weighting to an objective function.
		
		It transforms an objective function `fn(y_true, y_pred)`
		into a sample-weighted, cost-masked objective function
		`fn(y_true, y_pred, weights, mask)`.
		
		# Arguments
		    fn: The objective function to wrap,
		        with signature `fn(y_true, y_pred)`.
		
		# Returns
		    A function with signature `fn(y_true, y_pred, weights, mask)`.
	**/
	static public function weighted_masked_objective(fn:Dynamic):Dynamic;
}