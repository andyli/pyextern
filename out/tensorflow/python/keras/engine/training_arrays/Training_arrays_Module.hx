/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_arrays;
@:pythonImport("tensorflow.python.keras.engine.training_arrays") extern class Training_arrays_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Abstract fit function for arrays of data.
		
		Arguments:
		    model: Keras Model instance.
		    inputs: Either a list of arrays or a dictionary.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    batch_size: Integer batch size or None if unknown.
		    epochs: Number of times to iterate over the data
		    verbose: Verbosity mode, 0, 1 or 2
		    callbacks: List of callbacks to be called during training
		    val_inputs: List of input arrays.
		    val_targets: List of target arrays.
		    val_sample_weights: Optional list of sample weight arrays.
		    shuffle: Whether to shuffle the data at the beginning of each epoch
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
		
		Returns:
		    `History` object.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function fit_loop(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic):Dynamic;
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
		
		Arguments:
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		Returns:
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		Arguments:
		    model: Keras Model instance.
		    inputs: list of tensors to be fed to `f`.
		    batch_size: integer batch size.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring `_predict_loop` finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	static public function predict_loop(model:Dynamic, inputs:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Arguments:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		Arguments:
		    model: Keras Model instance.
		    inputs: List of input arrays.
		    targets: List of target arrays.
		    sample_weights: Optional list of sample weight arrays.
		    batch_size: integer batch size or `None`.
		    verbose: verbosity mode.
		    steps: Total number of steps (batches of samples)
		        before declaring predictions finished.
		        Ignored with the default value of `None`.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	static public function test_loop(model:Dynamic, inputs:Dynamic, targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
}