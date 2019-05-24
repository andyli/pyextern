/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.experiment;
@:pythonImport("tensorflow.contrib.learn.python.learn.experiment", "Experiment") extern class Experiment {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Constructor for `Experiment`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.estimator.train_and_evaluate. You will also have to convert to a tf.estimator.Estimator.
		
		Creates an Experiment instance. None of the functions passed to this
		constructor are executed at construction time. They are stored and used
		when a method is executed which requires it.
		
		Args:
		  estimator: Object implementing Estimator interface, which could be a
		    combination of `tf.contrib.learn.Trainable` and
		    `tf.contrib.learn.Evaluable` (deprecated), or
		    `tf.estimator.Estimator`.
		  train_input_fn: function, returns features and labels for training.
		  eval_input_fn: function, returns features and labels for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used. This should be `None` if the `estimator` is
		    `tf.estimator.Estimator`. If metrics are provided they will be
		    *appended* to the default set.
		  train_steps: Perform this many steps of training. `None`, the default,
		    means train forever.
		  eval_steps: `evaluate` runs until input is exhausted (or another exception
		    is raised), or for `eval_steps` steps, if specified.
		  train_monitors: A list of monitors to pass to the `Estimator`'s `fit`
		    function.
		  eval_hooks: A list of `SessionRunHook` hooks to pass to the
		    `Estimator`'s `evaluate` function.
		  local_eval_frequency: (applies only to local_run) Frequency of running
		    eval in steps. If `None`, runs evaluation only at the end of training.
		  eval_delay_secs: Start evaluating after waiting for this many seconds.
		  continuous_eval_throttle_secs: Do not re-evaluate unless the last
		    evaluation was started at least this many seconds ago for
		    continuous_eval().
		  min_eval_frequency: (applies only to train_and_evaluate). the minimum
		    number of steps between evaluations. Of course, evaluation does not
		    occur if no new snapshot is available, hence, this is the minimum.
		    If 0, the evaluation will only happen after training.
		    If None, defaults to 1. To avoid checking for new checkpoints too
		    frequent, the interval is further limited to be at least
		    check_interval_secs between checks.
		  delay_workers_by_global_step: if `True` delays training workers
		    based on global step instead of time.
		  export_strategies: Iterable of `ExportStrategy`s, or a single one, or
		    `None`.
		  train_steps_per_iteration: (applies only to continuous_train_and_eval).
		    Perform this many (integer) number of train steps for each
		    training-evaluation iteration. With a small value, the model will be
		    evaluated more frequently with more checkpoints saved. If `None`, will
		    use a default value (which is smaller than `train_steps` if provided).
		  checkpoint_and_export: (applies only to train_and_evaluate). If `True`,
		    performs intermediate model checkpoints and exports during the training
		    process, rather than only once model training is complete. This
		    parameter is experimental and may be changed or removed in the future.
		    Setting this parameter leads to the following: the value of
		    `min_eval_frequency` will be ignored, and the number of steps between
		    evaluations and exports will instead be determined by the Estimator
		    configuration parameters `save_checkpoints_secs` and
		    `save_checkpoints_steps`. Also, this parameter leads to the creation of
		    a default `CheckpointSaverHook` instead of a `ValidationMonitor`, so the
		    provided `train_monitors` will need to be adjusted accordingly.
		  saving_listeners: list of `CheckpointSaverListener` objects. Used by
		    tf.estimator.Estimator for callbacks that run immediately before or
		    after checkpoint savings.
		  check_interval_secs:
		    Minimum time between subsequent checks for a new checkpoint. This
		    mostly applies if both min_eval_frequency and the time spent per
		    training step is low.
		Raises:
		  ValueError: if `estimator` does not implement Estimator interface,
		    or if export_strategies has the wrong type.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?eval_hooks:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic, ?min_eval_frequency:Dynamic, ?delay_workers_by_global_step:Dynamic, ?export_strategies:Dynamic, ?train_steps_per_iteration:Dynamic, ?checkpoint_and_export:Dynamic, ?saving_listeners:Dynamic, ?check_interval_secs:Dynamic):Dynamic;
	/**
		Constructor for `Experiment`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.estimator.train_and_evaluate. You will also have to convert to a tf.estimator.Estimator.
		
		Creates an Experiment instance. None of the functions passed to this
		constructor are executed at construction time. They are stored and used
		when a method is executed which requires it.
		
		Args:
		  estimator: Object implementing Estimator interface, which could be a
		    combination of `tf.contrib.learn.Trainable` and
		    `tf.contrib.learn.Evaluable` (deprecated), or
		    `tf.estimator.Estimator`.
		  train_input_fn: function, returns features and labels for training.
		  eval_input_fn: function, returns features and labels for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used. This should be `None` if the `estimator` is
		    `tf.estimator.Estimator`. If metrics are provided they will be
		    *appended* to the default set.
		  train_steps: Perform this many steps of training. `None`, the default,
		    means train forever.
		  eval_steps: `evaluate` runs until input is exhausted (or another exception
		    is raised), or for `eval_steps` steps, if specified.
		  train_monitors: A list of monitors to pass to the `Estimator`'s `fit`
		    function.
		  eval_hooks: A list of `SessionRunHook` hooks to pass to the
		    `Estimator`'s `evaluate` function.
		  local_eval_frequency: (applies only to local_run) Frequency of running
		    eval in steps. If `None`, runs evaluation only at the end of training.
		  eval_delay_secs: Start evaluating after waiting for this many seconds.
		  continuous_eval_throttle_secs: Do not re-evaluate unless the last
		    evaluation was started at least this many seconds ago for
		    continuous_eval().
		  min_eval_frequency: (applies only to train_and_evaluate). the minimum
		    number of steps between evaluations. Of course, evaluation does not
		    occur if no new snapshot is available, hence, this is the minimum.
		    If 0, the evaluation will only happen after training.
		    If None, defaults to 1. To avoid checking for new checkpoints too
		    frequent, the interval is further limited to be at least
		    check_interval_secs between checks.
		  delay_workers_by_global_step: if `True` delays training workers
		    based on global step instead of time.
		  export_strategies: Iterable of `ExportStrategy`s, or a single one, or
		    `None`.
		  train_steps_per_iteration: (applies only to continuous_train_and_eval).
		    Perform this many (integer) number of train steps for each
		    training-evaluation iteration. With a small value, the model will be
		    evaluated more frequently with more checkpoints saved. If `None`, will
		    use a default value (which is smaller than `train_steps` if provided).
		  checkpoint_and_export: (applies only to train_and_evaluate). If `True`,
		    performs intermediate model checkpoints and exports during the training
		    process, rather than only once model training is complete. This
		    parameter is experimental and may be changed or removed in the future.
		    Setting this parameter leads to the following: the value of
		    `min_eval_frequency` will be ignored, and the number of steps between
		    evaluations and exports will instead be determined by the Estimator
		    configuration parameters `save_checkpoints_secs` and
		    `save_checkpoints_steps`. Also, this parameter leads to the creation of
		    a default `CheckpointSaverHook` instead of a `ValidationMonitor`, so the
		    provided `train_monitors` will need to be adjusted accordingly.
		  saving_listeners: list of `CheckpointSaverListener` objects. Used by
		    tf.estimator.Estimator for callbacks that run immediately before or
		    after checkpoint savings.
		  check_interval_secs:
		    Minimum time between subsequent checks for a new checkpoint. This
		    mostly applies if both min_eval_frequency and the time spent per
		    training step is low.
		Raises:
		  ValueError: if `estimator` does not implement Estimator interface,
		    or if export_strategies has the wrong type.
	**/
	public function new(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?eval_hooks:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic, ?min_eval_frequency:Dynamic, ?delay_workers_by_global_step:Dynamic, ?export_strategies:Dynamic, ?train_steps_per_iteration:Dynamic, ?checkpoint_and_export:Dynamic, ?saving_listeners:Dynamic, ?check_interval_secs:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _call_evaluate(?_sentinel:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic):Dynamic;
	public function _call_train(?_sentinel:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?max_steps:Dynamic, ?saving_listeners:Dynamic):Dynamic;
	/**
		Run continuous eval.
		
		Runs infinite eval on the evaluation data set. This function starts
		evaluating after `delay_secs` seconds and then runs no more than one
		evaluation (with `self._eval_steps` steps each time) per
		`throttle_delay_secs`. If `train_steps` is not None, will return after
		global_step reaches `train_steps`.
		
		Args:
		  input_fn: The input to use for this eval.
		  name: A string appended to the folder name of evaluation results.
		  delay_secs: Start evaluating after this many seconds. If None, defaults to
		    self._eval_delay_secs.
		  throttle_delay_secs: Do not re-evaluate unless the last evaluation was
		    started at least this many seconds ago. If None, defaults to
		    self._continuous_eval_throttle_secs.
		  evaluate_checkpoint_only_once: Whether to skip evaluation of checkpoints
		    that have already been evaluated. Default is `True`.
		  continuous_eval_predicate_fn: A predicate function determining whether to
		    continue eval after each iteration. A `predicate_fn` has one of the
		    following signatures:
		      * (eval_results) -> boolean
		      * (eval_results, checkpoint_path) -> boolean
		    Where `eval_results` is the dictionary of metric evaluations and
		    checkpoint_path is the path to the checkpoint containing the parameters
		    on which that evaluation was based.
		    At the beginning of evaluation, the passed `eval_results` will be None
		    so it's expected that the predicate function handles that gracefully.
		    Continuous eval behavior under different conditions:
		      * When `predicate_fn` is specified:
		        + if `train_steps` is None, run until `predicate_fn` returns False.
		        + if `train_steps` is specified, run until either global step
		          reaches `train_steps` or `predicate_fn` returns False.
		      * When `predicate_fn` is not specified:
		        + if `train_steps` is None, run in an infinite loop.
		        + if `train_steps` is specified, run until global step reaches
		          `train_steps`.
		  export: Whether to export from this step. Default is 'True'.
		
		Raises:
		  ValueError: if `continuous_eval_predicate_fn` is neither None nor
		    callable.
	**/
	public function _continuous_eval(input_fn:Dynamic, name:Dynamic, delay_secs:Dynamic, throttle_delay_secs:Dynamic, ?evaluate_checkpoint_only_once:Dynamic, ?continuous_eval_predicate_fn:Dynamic, ?export:Dynamic):Dynamic;
	/**
		Determines whether the training has stopped.
	**/
	public function _has_training_stopped(eval_result:Dynamic):Dynamic;
	/**
		Export the Estimator using export_fn, if defined.
	**/
	public function _maybe_export(eval_result:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	public function _set_export_strategies(values:Dynamic):Dynamic;
	/**
		Creates, starts, and returns a server_lib.Server.
	**/
	public function _start_server():Dynamic;
	public function continuous_eval(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic, ?evaluate_checkpoint_only_once:Dynamic, ?continuous_eval_predicate_fn:Dynamic, ?name:Dynamic):Dynamic;
	public function continuous_eval_on_train_data(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic, ?continuous_eval_predicate_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleaves training and evaluation. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		The frequency of evaluation is controlled by the `train_steps_per_iteration`
		(via constructor). The model will be first trained for
		`train_steps_per_iteration`, and then be evaluated in turns.
		
		This method is intended for single machine usage.
		
		This differs from `train_and_evaluate` as follows:
		
		  1. The procedure will have train and evaluation in turns. The model
		  will be trained for a number of steps (usually smaller than `train_steps`
		  if provided) and then be evaluated.  `train_and_evaluate` will train the
		  model for `train_steps` (no small training iterations).
		
		  2. Due to the different approach this schedule takes, it leads to two
		  differences in resource control. First, the resources (e.g., memory) used
		  by training will be released before evaluation (`train_and_evaluate` takes
		  double resources). Second, more checkpoints will be saved as a checkpoint
		  is generated at the end of each training iteration.
		
		  3. As the estimator.train starts from scratch (new graph, new states for
		  input, etc) at each iteration, it is recommended to have the
		  `train_steps_per_iteration` larger. It is also recommended to shuffle your
		  input.
		
		Args:
		  continuous_eval_predicate_fn: A predicate function determining whether to
		    continue eval after each iteration. A `predicate_fn` has one of the
		    following signatures:
		      * (eval_results) -> boolean
		      * (eval_results, checkpoint_path) -> boolean
		    Where `eval_results` is the dictionary of metric evaluations and
		    checkpoint_path is the path to the checkpoint containing the parameters
		    on which that evaluation was based.
		    At the beginning of evaluation, the passed `eval_results` and
		    `checkpoint_path` will be None so it's expected that the predicate
		    function handles that gracefully.
		    When `predicate_fn` is not specified, continuous eval will run in an
		    infinite loop (if `train_steps` is None). or exit once global step
		    reaches `train_steps`.
		
		Returns:
		  A tuple of the result of the `evaluate` call to the `Estimator` and the
		  export results using the specified `ExportStrategy`.
		
		Raises:
		  ValueError: if `continuous_eval_predicate_fn` is neither None nor
		    callable.
	**/
	public function continuous_train_and_eval(?continuous_eval_predicate_fn:Dynamic):Dynamic;
	public var estimator : Dynamic;
	public var eval_metrics : Dynamic;
	public var eval_steps : Dynamic;
	/**
		Evaluate on the evaluation data.
		
		Runs evaluation on the evaluation data and returns the result. Runs for
		`self._eval_steps` steps, or if it's `None`, then run until input is
		exhausted or another exception is raised. Start the evaluation after
		`delay_secs` seconds, or if it's `None`, defaults to using
		`self._eval_delay_secs` seconds.
		
		Args:
		  delay_secs: Start evaluating after this many seconds. If `None`, defaults
		    to using `self._eval_delays_secs`.
		  name: Gives the name to the evauation for the case multiple evaluation is
		    run for the same experiment.
		
		Returns:
		  The result of the `evaluate` call to the `Estimator`.
	**/
	public function evaluate(?delay_secs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extends the hooks for training.
	**/
	public function extend_train_hooks(additional_hooks:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-10-23.
		Instructions for updating:
		local_run will be renamed to train_and_evaluate and the new default behavior will be to run evaluation every time there is a new checkpoint.
	**/
	public function local_run():Dynamic;
	/**
		Resets the export strategies with the `new_export_strategies`.
		
		Args:
		  new_export_strategies: A new list of `ExportStrategy`s, or a single one,
		    or None.
		
		Returns:
		  The old export strategies.
	**/
	public function reset_export_strategies(?new_export_strategies:Dynamic):Dynamic;
	/**
		Starts a TensorFlow server and joins the serving thread.
		
		Typically used for parameter servers.
		
		Raises:
		  ValueError: if not enough information is available in the estimator's
		    config to create a server.
	**/
	public function run_std_server():Dynamic;
	/**
		Tests training, evaluating and exporting the estimator for a single step.
		
		Returns:
		  The result of the `evaluate` call to the `Estimator`.
	**/
	public function test():Dynamic;
	/**
		Fit the estimator using the training data.
		
		Train the estimator for `self._train_steps` steps, after waiting for
		`delay_secs` seconds. If `self._train_steps` is `None`, train forever.
		
		Args:
		  delay_secs: Start training after this many seconds.
		
		Returns:
		  The trained estimator.
	**/
	public function train(?delay_secs:Dynamic):Dynamic;
	/**
		Interleaves training and evaluation.
		
		The frequency of evaluation is controlled by the constructor arg
		`min_eval_frequency`. When this parameter is 0, evaluation happens
		only after training has completed. Note that evaluation cannot happen
		more frequently than checkpoints are taken. If no new snapshots are
		available when evaluation is supposed to occur, then evaluation doesn't
		happen for another `min_eval_frequency` steps (assuming a checkpoint is
		available at that point). Thus, settings `min_eval_frequency` to 1 means
		that the model will be evaluated everytime there is a new checkpoint.
		
		This is particular useful for a "Master" task in the cloud, whose
		responsibility it is to take checkpoints, evaluate those checkpoints,
		and write out summaries. Participating in training as the supervisor
		allows such a task to accomplish the first and last items, while
		performing evaluation allows for the second.
		
		Returns:
		  The result of the `evaluate` call to the `Estimator` as well as the
		  export results using the specified `ExportStrategy`.
	**/
	public function train_and_evaluate():Dynamic;
	public var train_steps : Dynamic;
}