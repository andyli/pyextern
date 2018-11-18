/* This file is generated, do not edit! */
package keras.engine.training_arrays;
@:pythonImport("keras.engine.training_arrays") extern class Training_arrays_Module {
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
	static public var division : Dynamic;
	/**
		Abstract fit function for `f(ins)`.
		
		Assumes that f returns a list, labeled by out_labels.
		
		# Arguments
		    model: Keras model instance.
		    f: Keras function returning a list of tensors
		    ins: List of tensors to be fed to `f`
		    out_labels: List of strings, display names of
		        the outputs of `f`
		    batch_size: Integer batch size or None if unknown.
		    epochs: Number of times to iterate over the data
		    verbose: Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    val_f: Keras function to call for validation
		    val_ins: List of tensors to be fed to `val_f`
		    shuffle: Whether to shuffle the data at the beginning of each epoch
		    callback_metrics: List of strings, the display names of the metrics
		        passed to the callbacks. They should be the
		        concatenation of list the display names of the outputs of
		         `f` and the list of display names of the outputs of `f_val`.
		    initial_epoch: Epoch at which to start training
		        (useful for resuming a previous training run)
		    steps_per_epoch: Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. Ignored with the default value of `None`.
		    validation_steps: Number of steps to run validation for
		        (only if doing validation from data tensors).
		        Ignored with the default value of `None`.
		
		# Returns
		    `History` object.
	**/
	static public function fit_loop(model:Dynamic, f:Dynamic, ins:Dynamic, ?out_labels:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_f:Dynamic, ?val_ins:Dynamic, ?shuffle:Dynamic, ?callback_metrics:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Returns a list of batch indices (tuples of indices).
		
		# Arguments
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		# Returns
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		# Arguments
		    model: Keras model instance.
		    f: Keras function returning a list of tensors.
		    ins: list of tensors to be fed to `f`.
		    batch_size: integer batch size.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring `predict_loop` finished.
		        Ignored with the default value of `None`.
		
		# Returns
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	static public function predict_loop(model:Dynamic, f:Dynamic, ins:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Slices an array or list of arrays.
		
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
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		# Arguments
		    model: Keras model instance.
		    f: Keras function returning a list of tensors.
		    ins: list of tensors to be fed to `f`.
		    batch_size: integer batch size or `None`.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		
		# Returns
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	static public function test_loop(model:Dynamic, f:Dynamic, ins:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
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
		Gets the first element if the iterable has only one value.
		
		Otherwise return the iterable.
		
		# Argument:
		    x: A list or tuple.
		
		# Returns:
		    The same iterable or the first element.
	**/
	static public function unpack_singleton(x:Dynamic):Dynamic;
}