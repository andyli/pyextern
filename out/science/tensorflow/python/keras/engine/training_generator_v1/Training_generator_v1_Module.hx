/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_generator_v1;
@:pythonImport("tensorflow.python.keras.engine.training_generator_v1") extern class Training_generator_v1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Retrieves the next batch of input data.
	**/
	static public function _get_next_batch(generator:Dynamic):Dynamic;
	/**
		Returns number of samples or steps, and whether to use steps count mode.
	**/
	static public function _get_num_samples_or_steps(data:Dynamic, steps_per_epoch:Dynamic):Dynamic;
	/**
		Create a buffered queue of next elements of the generator.
	**/
	static public function _make_enqueued_generator(generator:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?max_queue_size:Dynamic, ?shuffle:Dynamic):Dynamic;
	/**
		Makes function to run one step of model execution.
	**/
	static public function _make_execution_function(model:Dynamic, mode:Dynamic, ?class_weight:Dynamic):Dynamic;
	/**
		Raises errors if arguments are invalid.
		
		Args:
		  is_sequence: Boolean, whether data is a `keras.utils.data_utils.Sequence`
		    instance.
		  is_dataset: Boolean, whether data is a dataset instance.
		  use_multiprocessing: Boolean. If `True`, use process-based threading. If
		    unspecified, `use_multiprocessing` will default to `False`. Note that
		    because this implementation relies on multiprocessing, you should not pass
		    non-picklable arguments to the generator as they can't be passed easily to
		    children processes.
		  workers: Integer. Maximum number of processes to spin up when using
		    process-based threading. If unspecified, `workers` will default to 1. If
		    0, will execute the generator on the main thread.
		  steps_per_epoch: Total number of steps (batches of samples) before declaring
		    one epoch finished and starting the next epoch. Ignored with the default
		    value of `None`.
		  validation_data: Either a tuple of NumPy/Tensor inputs (i.e. `(x,)` or `(x,
		    y)` or `(x, y, sample_weights)`) or a generator or
		    `keras.utils.data_utils.Sequence` object or Eager Iterator or Dataset.
		  validation_steps: Total number of steps (batches of samples) before
		    declaring validation finished.
		  mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		  kwargs: Additional arguments for backwards compatibility.
		
		Raises:
		  ValueError: If `steps_per_epoch` or `validation_steps` are not passed
		    for data types that require them, or if unrecognized keyword
		    arguments are passed.
	**/
	static public function _validate_arguments(is_sequence:Dynamic, is_dataset:Dynamic, use_multiprocessing:Dynamic, workers:Dynamic, steps_per_epoch:Dynamic, validation_data:Dynamic, validation_steps:Dynamic, mode:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Make a generator out of NumPy or EagerTensor inputs.
		
		Args:
		  data: Either a generator or `keras.utils.data_utils.Sequence` object or
		    `Dataset`, `Iterator`, or a {1,2,3}-tuple of NumPy arrays or EagerTensors.
		    If a tuple, the elements represent `(x, y, sample_weights)` and may be
		    `None` or `[None]`.
		  batch_size: Used when creating a generator out of tuples of NumPy arrays or
		    EagerTensors.
		  steps_per_epoch: Steps of the generator to run each epoch. If `None` the
		    number of steps will be read from the data (for
		    `keras.utils.data_utils.Sequence` types).
		  epochs: Total number of epochs to run.
		  shuffle: Whether the data should be shuffled.
		
		Returns:
		  - Generator, `keras.utils.data_utils.Sequence`, or `Iterator`.
		
		Raises:
		  - ValueError: If `batch_size` is not provided for NumPy or EagerTensor
		    inputs.
	**/
	static public function convert_to_generator_like(data:Dynamic, ?batch_size:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?shuffle:Dynamic):Dynamic;
	static public function evaluate_generator(model:Dynamic, data:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?mode:Dynamic, ?batch_size:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fit_generator(model:Dynamic, data:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?mode:Dynamic, ?batch_size:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Loop function for arrays of data with modes TRAIN/TEST/PREDICT.
		
		Args:
		    model: Keras Model instance.
		    data: Either a tuple of NumPy/Tensor inputs (i.e. `(x,)` or `(x, y)` or
		      `(x, y, sample_weights)`) or a generator or
		      `keras.utils.data_utils.Sequence` object or Eager Iterator or Dataset.
		    steps_per_epoch: Total number of steps (batches of samples) before
		      declaring one epoch finished and starting the next epoch. Ignored with
		      the default value of `None`.
		    epochs: Number of times to iterate over the data.
		    verbose: 0, 1, or 2. Verbosity mode.
		      0 = silent, 1 = progress bar, 2 = one line per epoch.
		      Note that the progress bar is not particularly useful when
		      logged to a file, so verbose=2 is recommended when not running
		      interactively (eg, in a production environment).
		    callbacks: List of callbacks to be called during training.
		    validation_data: Either a tuple of NumPy/Tensor inputs (i.e. `(x,)` or
		      `(x, y)` or `(x, y, sample_weights)`) or a generator or
		      `keras.utils.data_utils.Sequence` object or Eager Iterator or Dataset.
		    validation_steps: Total number of steps (batches of samples) before
		      declaring validation finished.
		    validation_freq: Only relevant if validation data is provided. Integer or
		      `collections.abc.Container` instance (e.g. list, tuple, etc.). If an
		      integer, specifies how many training epochs to run before a new
		      validation run is performed, e.g. `validation_freq=2` runs
		      validation every 2 epochs. If a Container, specifies the epochs on
		      which to run validation, e.g. `validation_freq=[1, 2, 10]` runs
		      validation at the end of the 1st, 2nd, and 10th epochs.
		    class_weight: Dictionary mapping class indices to a weight for the class.
		    max_queue_size: Integer. Maximum size for the generator queue. If
		      unspecified, `max_queue_size` will default to 10.
		    workers: Integer. Maximum number of processes to spin up when using
		      process-based threading. If unspecified, `workers` will default to 1. If
		      0, will execute the generator on the main thread.
		    use_multiprocessing: Boolean. If `True`, use process-based threading. If
		      unspecified, `use_multiprocessing` will default to `False`. Note that
		      because this implementation relies on multiprocessing, you should not
		      pass non-picklable arguments to the generator as they can't be passed
		      easily to children processes.
		    shuffle: Boolean. Whether to shuffle the order of the batches at the
		      beginning of each epoch. Only used with instances of `Sequence`
		      (`keras.utils.Sequence`). Has no effect when `steps_per_epoch` is not
		      `None`.
		    initial_epoch: Epoch at which to start training (useful for resuming a
		      previous training run).
		    mode: One of ModeKeys.TRAIN/ModeKeys.TEST/ModeKeys.PREDICT.
		    batch_size: Integer batch size or None if unknown. Will only be used if
		      `data` is in NumPy/Tensor format.
		    steps_name: The string name of the steps argument, either `steps`,
		      `validation_steps`, or `steps_per_epoch`. Only used for error message
		      formatting.
		    **kwargs: Additional arguments for backwards compatibility. `steps` is
		      accepted as an alias for `steps_per_epoch`.
		
		Returns:
		    - In TRAIN mode: `History` object.
		    - In TEST mode: Evaluation metrics.
		    - In PREDICT mode: Outputs of the Model called on inputs.
		
		Raises:
		    ValueError: in case of invalid arguments.
	**/
	static public function model_iteration(model:Dynamic, data:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?mode:Dynamic, ?batch_size:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function predict_generator(model:Dynamic, data:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?validation_freq:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic, ?mode:Dynamic, ?batch_size:Dynamic, ?steps_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}