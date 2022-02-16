/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_arrays_v1;
@:pythonImport("tensorflow.python.keras.engine.training_arrays_v1") extern class Training_arrays_v1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_iterator(inputs:Dynamic, ?distribution_strategy:Dynamic):Dynamic;
	static public function _get_model_feed(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Returns total number of samples (when training in batch mode) or steps.
	**/
	static public function _get_num_samples_or_steps(ins:Dynamic, batch_size:Dynamic, steps_per_epoch:Dynamic):Dynamic;
	/**
		Makes function to run one step of model execution.
	**/
	static public function _make_execution_function(model:Dynamic, mode:Dynamic):Dynamic;
	/**
		Prepare feed values to the model execution function.
		
		Args:
		  model: Model to prepare feed values for.
		  inputs: List or dict of model inputs.
		  targets: Optional list of model targets.
		  sample_weights: Optional list of sample weight arrays.
		  mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		
		Returns:
		  Feed values for the model in the given mode.
	**/
	static public function _prepare_feed_values(model:Dynamic, inputs:Dynamic, targets:Dynamic, sample_weights:Dynamic, mode:Dynamic):Dynamic;
	static public function _print_train_info(num_samples_or_steps:Dynamic, val_samples_or_steps:Dynamic, is_dataset:Dynamic):Dynamic;
	static public function _reinitialize_iterator(iterator:Dynamic, ?distribution_strategy:Dynamic):Dynamic;
	/**
		Updates the sample_weight_mode of a given model.
	**/
	static public function _update_sample_weight_mode(model:Dynamic, mode:Dynamic, inputs:Dynamic):Dynamic;
	static public function fit_loop(model:Dynamic, inputs:Dynamic, ?targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?mode:Dynamic, ?validation_in_fit:Dynamic, ?prepared_feed_values_from_dataset:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		Args:
		    size: Integer, total size of the data to slice into batches.
		    batch_size: Integer, batch size.
		
		Returns:
		    A list of tuples of array indices.
	**/
	static public function make_batches(size:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Loop function for arrays of data with modes TRAIN/TEST/PREDICT.
		
		Args:
		    model: Keras Model instance.
		    inputs: Either a list or dictionary of arrays, or a dataset instance.
		    targets: List/dictionary of input arrays.
		    sample_weights: Optional list of sample weight arrays.
		    batch_size: Integer batch size or None if unknown.
		    epochs: Number of times to iterate over the data
		    verbose: 0, 1, or 2. Verbosity mode.
		      0 = silent, 1 = progress bar, 2 = one line per epoch.
		      Note that the progress bar is not particularly useful when
		      logged to a file, so verbose=2 is recommended when not running
		      interactively (eg, in a production environment).
		    callbacks: List of callbacks to be called during training
		    val_inputs: Either a list or dictionary of arrays, or a dataset instance.
		    val_targets: List/dictionary of target arrays.
		    val_sample_weights: Optional list of sample weight arrays.
		    shuffle: Whether to shuffle the data at the beginning of each epoch
		      concatenation of list the display names of the outputs of `f` and the
		      list of display names of the outputs of `f_val`.
		    initial_epoch: Epoch at which to start training (useful for resuming a
		      previous training run)
		    steps_per_epoch: Total number of steps (batches of samples) before
		      declaring one epoch finished and starting the next epoch. Ignored with
		      the default value of `None`.
		    validation_steps: Number of steps to run validation for (only if doing
		      validation from data tensors). Ignored with the default value of
		      `None`.
		    validation_freq: Only relevant if validation data is provided. Integer or
		      `collections.abc.Container` instance (e.g. list, tuple, etc.). If an
		      integer, specifies how many training epochs to run before a new
		      validation run is performed, e.g. `validation_freq=2` runs
		      validation every 2 epochs. If a Container, specifies the epochs on
		      which to run validation, e.g. `validation_freq=[1, 2, 10]` runs
		      validation at the end of the 1st, 2nd, and 10th epochs.
		    mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		    validation_in_fit: if true, then this method is invoked from within
		      training iteration (for validation). In the case where `val_inputs` is
		      a dataset, this flag indicates that its iterator and feed values are
		      already created so should properly reuse resources.
		    prepared_feed_values_from_dataset: if True, `inputs` is a list of feed
		      tensors returned from `_prepare_feed_values` call on the validation
		      dataset, so do not call it again on `inputs`. Should only be used for
		      inline validation (i.e., only if `validation_in_fit` is also True).
		    steps_name: The string name of the steps argument, either `steps`,
		      `validation_steps`, or `steps_per_epoch`. Only used for error message
		      formatting.
		    **kwargs: Additional arguments for backwards compatibility.
		
		Returns:
		    - In TRAIN mode: `History` object.
		    - In TEST mode: Evaluation metrics.
		    - In PREDICT mode: Outputs of the Model called on inputs.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function model_iteration(model:Dynamic, inputs:Dynamic, ?targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?mode:Dynamic, ?validation_in_fit:Dynamic, ?prepared_feed_values_from_dataset:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function predict_loop(model:Dynamic, inputs:Dynamic, ?targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?mode:Dynamic, ?validation_in_fit:Dynamic, ?prepared_feed_values_from_dataset:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Args:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index) or a list/array of indices
		    stop: integer (stop index); should be None if `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	static public function test_loop(model:Dynamic, inputs:Dynamic, ?targets:Dynamic, ?sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?mode:Dynamic, ?validation_in_fit:Dynamic, ?prepared_feed_values_from_dataset:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}