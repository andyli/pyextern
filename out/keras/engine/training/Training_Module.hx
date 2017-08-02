/* This file is generated, do not edit! */
package keras.engine.training;
@:pythonImport("keras.engine.training") extern class Training_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function _batch_shuffle(index_array:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Does user input validation for numpy arrays.
		
		# Arguments
		    inputs: list of Numpy arrays of inputs.
		    targets: list of Numpy arrays of targets.
		    weights: list of Numpy arrays of sample weights.
		
		# Raises
		    ValueError: in case of incorrectly formatted data.
	**/
	static public function _check_array_lengths(inputs:Dynamic, targets:Dynamic, ?weights:Dynamic):Dynamic;
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
	static public function _check_loss_and_target_compatibility(targets:Dynamic, loss_fns:Dynamic, output_shapes:Dynamic):Dynamic;
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
	static public function _collect_metrics(metrics:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		# Arguments
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		# Returns
		    A list of tuples of array indices.
	**/
	static public function _make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Adds support for masking to an objective function.
		
		It transforms an objective function `fn(y_true, y_pred)`
		into a cost-masked objective function
		`fn(y_true, y_pred, mask)`.
		
		# Arguments
		    fn: The objective function to wrap,
		        with signature `fn(y_true, y_pred)`.
		
		# Returns
		    A function with signature `fn(y_true, y_pred, mask)`.
	**/
	static public function _masked_objective(fn:Dynamic):Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `_slice_arrays(x, indices)`
		
		# Arguments
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		# Returns
		    A slice of the array(s).
	**/
	static public function _slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	static public function _standardize_class_weights(class_weight:Dynamic, output_names:Dynamic):Dynamic;
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
	static public function _standardize_input_data(data:Dynamic, names:Dynamic, ?shapes:Dynamic, ?check_batch_axis:Dynamic, ?exception_prefix:Dynamic):Dynamic;
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
	static public function _standardize_sample_or_class_weights(x_weight:Dynamic, output_names:Dynamic, weight_type:Dynamic):Dynamic;
	static public function _standardize_sample_weights(sample_weight:Dynamic, output_names:Dynamic):Dynamic;
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
	static public function _standardize_weights(y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
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
	static public function _weighted_masked_objective(fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var print_function : Dynamic;
}