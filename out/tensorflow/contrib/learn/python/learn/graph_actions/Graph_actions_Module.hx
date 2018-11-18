/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.graph_actions;
@:pythonImport("tensorflow.contrib.learn.python.learn.graph_actions") extern class Graph_actions_Module {
	static public var _SUMMARY_WRITERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _eval_results_to_str(eval_results:Dynamic):Dynamic;
	static public function _get_first_op_from_collection(collection_name:Dynamic):Dynamic;
	/**
		Returns the local init ops to initialize tables and local variables.
	**/
	static public function _get_local_init_op():Dynamic;
	static public function _get_ready_op():Dynamic;
	/**
		Lazy init and return saver.
	**/
	static public function _get_saver():Dynamic;
	/**
		Deprecation wrapper.
	**/
	static public function _graph_action_deprecation(func:Dynamic):Dynamic;
	static public function _make_saver(graph:Dynamic, ?keep_checkpoint_max:Dynamic):Dynamic;
	static public function _restore_from_checkpoint(session:Dynamic, graph:Dynamic, checkpoint_path:Dynamic, ?saver:Dynamic):Dynamic;
	/**
		Runs session for given tensors with monitor callbacks.
	**/
	static public function _run_with_monitors(session:Dynamic, step:Dynamic, tensors:Dynamic, feed_dict:Dynamic, monitors:Dynamic):Dynamic;
	static public var _summary_writer_lock : Dynamic;
	/**
		See train.
	**/
	static public function _train_internal(graph:Dynamic, output_dir:Dynamic, train_op:Dynamic, loss_op:Dynamic, global_step_tensor:Dynamic, init_op:Dynamic, init_feed_dict:Dynamic, init_fn:Dynamic, log_every_steps:Dynamic, supervisor_is_chief:Dynamic, supervisor_master:Dynamic, supervisor_save_model_secs:Dynamic, keep_checkpoint_max:Dynamic, supervisor_save_summaries_steps:Dynamic, feed_fn:Dynamic, steps:Dynamic, fail_on_nan_loss:Dynamic, monitors:Dynamic, max_steps:Dynamic):Dynamic;
	/**
		Writes eval results into summary file in given dir.
	**/
	static public function _write_summary_results(output_dir:Dynamic, eval_results:Dynamic, current_global_step:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clear cached summary writers. Currently only used for unit tests. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
	**/
	static public function clear_summary_writers():Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Evaluate a model loaded from a checkpoint. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
		
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
		    end-of-input exception when the inputs are exhausted.
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
		Returns single SummaryWriter per logdir in current run. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `SummaryWriterCache.get` directly.
		
		Args:
		  logdir: str, folder to write summaries.
		
		Returns:
		  Existing `SummaryWriter` object or new one if never wrote to given
		  directory.
	**/
	static public function get_summary_writer(logdir:Dynamic):Dynamic;
	/**
		Restore graph from `restore_checkpoint_path` and run `output_dict` tensors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
		
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
		Returns a Tensor with the contents of the given variable in the checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  name: Name of the tensor to return.
		
		Returns:
		  `Tensor` object.
	**/
	static public function load_variable(checkpoint_dir:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reraise an exception.
	**/
	static public function reraise(tp:Dynamic, value:Dynamic, ?tb:Dynamic):Dynamic;
	/**
		See run_feeds_iter(). Returns a `list` instead of an iterator. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
	**/
	static public function run_feeds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run `output_dict` tensors with each input in `feed_dicts`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
		
		If `restore_checkpoint_path` is supplied, restore from checkpoint. Otherwise,
		init all variables.
		
		Args:
		  output_dict: A `dict` mapping string names to `Tensor` objects to run.
		    Tensors must all be from the same graph.
		  feed_dicts: Iterable of `dict` objects of input values to feed.
		  restore_checkpoint_path: A string containing the path to a checkpoint to
		    restore.
		
		Yields:
		  A sequence of dicts of values read from `output_dict` tensors, one item
		  yielded for each item in `feed_dicts`. Keys are the same as `output_dict`,
		  values are the results read from the corresponding `Tensor` in
		  `output_dict`.
		
		Raises:
		  ValueError: if `output_dict` or `feed_dicts` is None or empty.
	**/
	static public function run_feeds_iter(output_dict:Dynamic, feed_dicts:Dynamic, ?restore_checkpoint_path:Dynamic):Dynamic;
	/**
		Run `output_dict` tensors `n` times, with the same `feed_dict` each run. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
		
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
		Train a model. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-02-15.
		Instructions for updating:
		graph_actions.py will be deleted. Use tf.train.* utilities instead. You can use learn/estimators/estimator.py as an example.
		
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
		    arg to tf.train.Saver constructor.
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