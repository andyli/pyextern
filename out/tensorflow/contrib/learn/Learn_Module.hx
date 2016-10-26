/* This file is generated, do not edit! */
package tensorflow.contrib.learn;
@:pythonImport("tensorflow.contrib.learn") extern class Learn_Module {
	static public var HAS_DASK : Dynamic;
	static public var HAS_PANDAS : Dynamic;
	static public var __all__ : Dynamic;
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
	static public var division : Dynamic;
	/**
		Evaluate a model loaded from a checkpoint.
		
		Given `graph`, a directory to write summaries to (`output_dir`), a checkpoint
		to restore variables from, and a `dict` of `Tensor`s to evaluate, run an eval
		loop for `max_steps` steps, or until an exception (generally, an
		end-of-input signal from a reader operation) is raised from running
		`eval_dict`.
		
		In each step of evaluation, all tensors in the `eval_dict` are evaluated, and
		every `log_every_steps` steps, they are logged. At the very end of evaluation,
		a summary is evaluated (finding the summary ops using `Supervisor`'s logic)
		and written to `output_dir`.
		
		Args:
		  graph: A `Graph` to train. It is expected that this graph is not in use
		    elsewhere.
		  output_dir: A string containing the directory to write a summary to.
		  checkpoint_path: A string containing the path to a checkpoint to restore.
		    Can be `None` if the graph doesn't require loading any variables.
		  eval_dict: A `dict` mapping string names to tensors to evaluate. It is
		    evaluated in every logging step. The result of the final evaluation is
		    returned. If `update_op` is None, then it's evaluated in every step. If
		    `max_steps` is `None`, this should depend on a reader that will raise an
		    end-of-inupt exception when the inputs are exhausted.
		  update_op: A `Tensor` which is run in every step.
		  global_step_tensor: A `Variable` containing the global step. If `None`,
		    one is extracted from the graph using the same logic as in `Supervisor`.
		    Used to place eval summaries on training curves.
		  supervisor_master: The master string to use when preparing the session.
		  log_every_steps: Integer. Output logs every `log_every_steps` evaluation
		    steps. The logs contain the `eval_dict` and timing information.
		  feed_fn: A function that is called every iteration to produce a `feed_dict`
		    passed to `session.run` calls. Optional.
		  max_steps: Integer. Evaluate `eval_dict` this many times.
		
		Returns:
		  A tuple `(eval_results, global_step)`:
		  eval_results: A `dict` mapping `string` to numeric values (`int`, `float`)
		    that are the result of running eval_dict in the last step. `None` if no
		    eval steps were run.
		  global_step: The global step this evaluation corresponds to.
		
		Raises:
		  ValueError: if `output_dir` is empty.
	**/
	static public function evaluate(graph:Dynamic, output_dir:Dynamic, checkpoint_path:Dynamic, eval_dict:Dynamic, ?update_op:Dynamic, ?global_step_tensor:Dynamic, ?supervisor_master:Dynamic, ?log_every_steps:Dynamic, ?feed_fn:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		Extract data from dask.Series or dask.DataFrame for predictors.
	**/
	static public function extract_dask_data(data:Dynamic):Dynamic;
	/**
		Extract data from dask.Series for labels.
	**/
	static public function extract_dask_labels(labels:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for predictors.
		
		Given a DataFrame, will extract the values and cast them to float. The
		DataFrame is expected to contain values of type int, float or bool.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values as floats.
		
		Raises:
		  ValueError: if data contains types other than int, float or bool.
	**/
	static public function extract_pandas_data(data:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for labels.
		
		Args:
		  labels: `pandas.DataFrame` or `pandas.Series` containing one column of
		    labels to be extracted.
		
		Returns:
		  A numpy `ndarray` of labels from the DataFrame.
		
		Raises:
		  ValueError: if more than one column is found or type is not int, float or
		    bool.
	**/
	static public function extract_pandas_labels(labels:Dynamic):Dynamic;
	/**
		Extracts numpy matrix from pandas DataFrame.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values.
	**/
	static public function extract_pandas_matrix(data:Dynamic):Dynamic;
	/**
		Restore graph from `restore_checkpoint_path` and run `output_dict` tensors.
		
		If `restore_checkpoint_path` is supplied, restore from checkpoint. Otherwise,
		init all variables.
		
		Args:
		  restore_checkpoint_path: A string containing the path to a checkpoint to
		    restore.
		  output_dict: A `dict` mapping string names to `Tensor` objects to run.
		    Tensors must all be from the same graph.
		  feed_dict: `dict` object mapping `Tensor` objects to input values to feed.
		
		Returns:
		  Dict of values read from `output_dict` tensors. Keys are the same as
		  `output_dict`, values are the results read from the corresponding `Tensor`
		  in `output_dict`.
		
		Raises:
		  ValueError: if `output_dict` or `feed_dicts` is None or empty.
	**/
	static public function infer(restore_checkpoint_path:Dynamic, output_dict:Dynamic, ?feed_dict:Dynamic):Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by input `x`.
		
		This interprets all inputs as dense, fixed-length float values.
		
		Args:
		  x: Real-valued matrix of shape [n_samples, n_features...]. Can be
		     iterator that returns arrays of features.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input(x:Dynamic):Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by `input_fn`.
		
		This interprets all inputs as dense, fixed-length float values. This creates
		a local graph in which it calls `input_fn` to build the tensors, then discards
		it.
		
		Args:
		  input_fn: Function returning a tuple of input and target `Tensor` objects.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input_fn(input_fn:Dynamic):Dynamic;
	/**
		Generate `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Tag functions annotated with `@parameter` for later retrieval.
		
		Note that all `@parameter`s are automatically `@property`s as well.
		
		Args:
		  func: the getter function to tag and wrap
		
		Returns:
		  A `@property` whose getter function is marked with is_parameter = True
	**/
	static public function parameter(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.initialize_all_variables()` as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		
		Returns:
		  String `Tensor` of batched `Example` proto. If `keep_keys` is True, then
		  returns tuple of string `Tensor`s, where first value is the key.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  parser_num_threads: The number of threads to parse examples.
		    records to read at once
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		  If `keep_keys` is `True`, returns tuple of string `Tensor` and above dict.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reads TFRecord, queues, batches and parses `Example` proto.
		
		See more detailed description in `read_examples`.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  parser_num_threads: The number of threads to parse examples.
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_batch_record_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size`.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Use `parse_fn` if you need to do parsing / processing on single examples.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If `None`, cycles through the dataset forever.
		    NOTE - If specified, creates a variable that must be initialized, so call
		    `tf.initialize_all_variables()` as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  num_threads: The number of threads enqueuing examples.
		  read_batch_size: An int or scalar `Tensor` specifying the number of
		    records to read at once
		  parse_fn: Parsing function, takes `Example` Tensor returns parsed
		    representation. If `None`, no parsing is done.
		  name: Name of resulting op.
		
		Returns:
		  String `Tensor` of batched `Example` proto. If `keep_keys` is True, then
		  returns tuple of string `Tensor`s, where first value is the key.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_examples(file_pattern:Dynamic, batch_size:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?read_batch_size:Dynamic, ?parse_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds operations to read, queue, batch and parse `Example` protos.
		
		Given file pattern (or list of files), will setup a queue for file names,
		read `Example` proto using provided `reader`, use batch queue to create
		batches of examples of size `batch_size` and parse example given `features`
		specification.
		
		All queue runners are added to the queue runners collection, and may be
		started via `start_queue_runners`.
		
		All ops are added to the default graph.
		
		Args:
		  file_pattern: List of files or pattern of file paths containing
		      `Example` records. See `tf.gfile.Glob` for pattern rules.
		  batch_size: An int or scalar `Tensor` specifying the batch size to use.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  reader: A function or class that returns an object with
		    `read` method, (filename tensor) -> (example tensor).
		  randomize_input: Whether the input should be randomized.
		  num_epochs: Integer specifying the number of times to read through the
		    dataset. If None, cycles through the dataset forever. NOTE - If specified,
		    creates a variable that must be initialized, so call
		    tf.initialize_local_variables() as shown in the tests.
		  queue_capacity: Capacity for input queue.
		  reader_num_threads: The number of threads to read examples.
		  feature_queue_capacity: Capacity of the parsed features queue.
		  num_queue_runners: Number of queue runners to start for the feature queue,
		    Adding multiple queue runners for the parsed example queue helps maintain
		    a full queue when the subsequent computations overall are cheaper than
		    parsing.
		  parser_num_threads: (Deprecated) The number of threads to parse examples.
		  name: Name of resulting op.
		
		Returns:
		  A dict of `Tensor` or `SparseTensor` objects for each in `features`.
		  If `keep_keys` is `True`, returns tuple of string `Tensor` and above dict.
		
		Raises:
		  ValueError: for invalid inputs.
	**/
	static public function read_keyed_batch_features(file_pattern:Dynamic, batch_size:Dynamic, features:Dynamic, reader:Dynamic, ?randomize_input:Dynamic, ?num_epochs:Dynamic, ?queue_capacity:Dynamic, ?reader_num_threads:Dynamic, ?feature_queue_capacity:Dynamic, ?num_queue_runners:Dynamic, ?parser_num_threads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		See run_feeds_iter(). Returns a `list` instead of an iterator.
	**/
	static public function run_feeds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run `output_dict` tensors `n` times, with the same `feed_dict` each run.
		
		Args:
		  output_dict: A `dict` mapping string names to tensors to run. Must all be
		    from the same graph.
		  feed_dict: `dict` of input values to feed each run.
		  restore_checkpoint_path: A string containing the path to a checkpoint to
		    restore.
		  n: Number of times to repeat.
		
		Returns:
		  A list of `n` `dict` objects, each containing values read from `output_dict`
		  tensors.
	**/
	static public function run_n(output_dict:Dynamic, ?feed_dict:Dynamic, ?restore_checkpoint_path:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Train a model.
		
		Given `graph`, a directory to write outputs to (`output_dir`), and some ops,
		run a training loop. The given `train_op` performs one step of training on the
		model. The `loss_op` represents the objective function of the training. It is
		expected to increment the `global_step_tensor`, a scalar integer tensor
		counting training steps. This function uses `Supervisor` to initialize the
		graph (from a checkpoint if one is available in `output_dir`), write summaries
		defined in the graph, and write regular checkpoints as defined by
		`supervisor_save_model_secs`.
		
		Training continues until `global_step_tensor` evaluates to `max_steps`, or, if
		`fail_on_nan_loss`, until `loss_op` evaluates to `NaN`. In that case the
		program is terminated with exit code 1.
		
		Args:
		  graph: A graph to train. It is expected that this graph is not in use
		    elsewhere.
		  output_dir: A directory to write outputs to.
		  train_op: An op that performs one training step when run.
		  loss_op: A scalar loss tensor.
		  global_step_tensor: A tensor representing the global step. If none is given,
		    one is extracted from the graph using the same logic as in `Supervisor`.
		  init_op: An op that initializes the graph. If `None`, use `Supervisor`'s
		    default.
		  init_feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    This feed dictionary will be used when `init_op` is evaluated.
		  init_fn: Optional callable passed to Supervisor to initialize the model.
		  log_every_steps: Output logs regularly. The logs contain timing data and the
		    current loss.
		  supervisor_is_chief: Whether the current process is the chief supervisor in
		    charge of restoring the model and running standard services.
		  supervisor_master: The master string to use when preparing the session.
		  supervisor_save_model_secs: Save a checkpoint every
		    `supervisor_save_model_secs` seconds when training.
		  keep_checkpoint_max: The maximum number of recent checkpoint files to
		    keep. As new files are created, older files are deleted. If None or 0,
		    all checkpoint files are kept. This is simply passed as the max_to_keep
		    arg to tf.Saver constructor.
		  supervisor_save_summaries_steps: Save summaries every
		    `supervisor_save_summaries_steps` seconds when training.
		  feed_fn: A function that is called every iteration to produce a `feed_dict`
		    passed to `session.run` calls. Optional.
		  steps: Trains for this many steps (e.g. current global step + `steps`).
		  fail_on_nan_loss: If true, raise `NanLossDuringTrainingError` if `loss_op`
		    evaluates to `NaN`. If false, continue training as if nothing happened.
		  monitors: List of `BaseMonitor` subclass instances. Used for callbacks
		    inside the training loop.
		  max_steps: Number of total steps for which to train model. If `None`,
		    train forever. Two calls fit(steps=100) means 200 training iterations.
		    On the other hand two calls of fit(max_steps=100) means, second call
		    will not do any iteration since first call did all 100 steps.
		
		Returns:
		  The final loss value.
		
		Raises:
		  ValueError: If `output_dir`, `train_op`, `loss_op`, or `global_step_tensor`
		    is not provided. See `tf.contrib.framework.get_global_step` for how we
		    look up the latter if not provided explicitly.
		  NanLossDuringTrainingError: If `fail_on_nan_loss` is `True`, and loss ever
		    evaluates to `NaN`.
		  ValueError: If both `steps` and `max_steps` are not `None`.
	**/
	static public function train(graph:Dynamic, output_dir:Dynamic, train_op:Dynamic, loss_op:Dynamic, ?global_step_tensor:Dynamic, ?init_op:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic, ?log_every_steps:Dynamic, ?supervisor_is_chief:Dynamic, ?supervisor_master:Dynamic, ?supervisor_save_model_secs:Dynamic, ?keep_checkpoint_max:Dynamic, ?supervisor_save_summaries_steps:Dynamic, ?feed_fn:Dynamic, ?steps:Dynamic, ?fail_on_nan_loss:Dynamic, ?monitors:Dynamic, ?max_steps:Dynamic):Dynamic;
}