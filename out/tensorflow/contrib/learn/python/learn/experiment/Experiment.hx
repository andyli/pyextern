/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.experiment;
@:pythonImport("tensorflow.contrib.learn.python.learn.experiment", "Experiment") extern class Experiment {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor for `Experiment`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-10-23.
		Instructions for updating:
		local_eval_frequency is deprecated as local_run will be renamed to train_and_evaluate. Use min_eval_frequency and call train_and_evaluate instead. Note, however, that the default for min_eval_frequency is 1, meaning models will be evaluated every time a new checkpoint is available. In contrast, the default for local_eval_frequency is None, resulting in evaluation occurring only after training has completed. min_eval_frequency is ignored when calling the deprecated local_run.
		
		Creates an Experiment instance. None of the functions passed to this
		constructor are executed at construction time. They are stored and used
		when a method is executed which requires it.
		
		Args:
		  estimator: Object implementing Estimator interface, which could be a
		    combination of ${tf.contrib.learn.Trainable} and
		    ${tf.contrib.learn.Evaluable} (deprecated), or
		    ${tf.estimator.`Estimator}.
		  train_input_fn: function, returns features and labels for training.
		  eval_input_fn: function, returns features and labels for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used. This should be `None` if the `estimator` is
		    ${tf.estimator.Estimator}. If metrics are provided they will be
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
		    If None, defaults to 1, unless model_dir is on GCS, in which case the
		    default is 1000.
		  delay_workers_by_global_step: if `True` delays training workers
		    based on global step instead of time.
		  export_strategies: Iterable of `ExportStrategy`s, or a single one, or
		    `None`.
		  train_steps_per_iteration: (applies only to continuous_train_and_eval).
		    Perform this many (integer) number of train steps for each
		    training-evaluation iteration. With a small value, the model will be
		    evaluated more frequently with more checkpoints saved. If `None`, will
		    use a default value (which is smaller than `train_steps` if provided).
		
		Raises:
		  ValueError: if `estimator` does not implement Estimator interface,
		    or if export_strategies has the wrong type.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?eval_hooks:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic, ?min_eval_frequency:Dynamic, ?delay_workers_by_global_step:Dynamic, ?export_strategies:Dynamic, ?train_steps_per_iteration:Dynamic):Dynamic;
	/**
		Constructor for `Experiment`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-10-23.
		Instructions for updating:
		local_eval_frequency is deprecated as local_run will be renamed to train_and_evaluate. Use min_eval_frequency and call train_and_evaluate instead. Note, however, that the default for min_eval_frequency is 1, meaning models will be evaluated every time a new checkpoint is available. In contrast, the default for local_eval_frequency is None, resulting in evaluation occurring only after training has completed. min_eval_frequency is ignored when calling the deprecated local_run.
		
		Creates an Experiment instance. None of the functions passed to this
		constructor are executed at construction time. They are stored and used
		when a method is executed which requires it.
		
		Args:
		  estimator: Object implementing Estimator interface, which could be a
		    combination of ${tf.contrib.learn.Trainable} and
		    ${tf.contrib.learn.Evaluable} (deprecated), or
		    ${tf.estimator.`Estimator}.
		  train_input_fn: function, returns features and labels for training.
		  eval_input_fn: function, returns features and labels for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used. This should be `None` if the `estimator` is
		    ${tf.estimator.Estimator}. If metrics are provided they will be
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
		    If None, defaults to 1, unless model_dir is on GCS, in which case the
		    default is 1000.
		  delay_workers_by_global_step: if `True` delays training workers
		    based on global step instead of time.
		  export_strategies: Iterable of `ExportStrategy`s, or a single one, or
		    `None`.
		  train_steps_per_iteration: (applies only to continuous_train_and_eval).
		    Perform this many (integer) number of train steps for each
		    training-evaluation iteration. With a small value, the model will be
		    evaluated more frequently with more checkpoints saved. If `None`, will
		    use a default value (which is smaller than `train_steps` if provided).
		
		Raises:
		  ValueError: if `estimator` does not implement Estimator interface,
		    or if export_strategies has the wrong type.
	**/
	public function new(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?eval_hooks:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic, ?min_eval_frequency:Dynamic, ?delay_workers_by_global_step:Dynamic, ?export_strategies:Dynamic, ?train_steps_per_iteration:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _call_evaluate(?_sentinel:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic):Dynamic;
	public function _call_train(?_sentinel:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?max_steps:Dynamic):Dynamic;
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
		    continue eval after each iteration. `predicate_fn` takes the evaluation
		    results as arguments. At the beginning of evaluation, the passed eval
		    results will be None so it's expected that the predicate function
		    handles that gracefully. When `predicate_fn` is not specified,
		    continuous eval will run in an infinite loop (if `train_steps` is None)
		    or exit once global step reaches `train_steps`.
		
		Raises:
		  ValueError: if `continuous_eval_predicate_fn` is neither None nor
		    callable.
	**/
	public function _continuous_eval(input_fn:Dynamic, name:Dynamic, delay_secs:Dynamic, throttle_delay_secs:Dynamic, ?evaluate_checkpoint_only_once:Dynamic, ?continuous_eval_predicate_fn:Dynamic):Dynamic;
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
	public function continuous_eval(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic, ?evaluate_checkpoint_only_once:Dynamic, ?continuous_eval_predicate_fn:Dynamic):Dynamic;
	public function continuous_eval_on_train_data(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic, ?continuous_eval_predicate_fn:Dynamic):Dynamic;
	/**
		Interleaves training and evaluation. (experimental)
		
		THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		
		The frequency of evaluation is controlled by the `train_steps_per_iteration`
		(via constructor). The model will be first trained for
		`train_steps_per_iteration`, and then be evaluated in turns.
		
		This method is intended for single machine usage.
		
		This differs from `train_and_evaluate` as follows:
		  1. The procedure will have train and evaluation in turns. The model
		  will be trained for a number of steps (usuallly smaller than `train_steps`
		  if provided) and then be evaluated.  `train_and_evaluate` will train the
		  model for `train_steps` (no small training iteraions).
		
		  2. Due to the different approach this schedule takes, it leads to two
		  differences in resource control. First, the resources (e.g., memory) used
		  by training will be released before evaluation (`train_and_evaluate` takes
		  double resources). Second, more checkpoints will be saved as a checkpoint
		  is generated at the end of each small trainning iteration.
		
		Args:
		  continuous_eval_predicate_fn: A predicate function determining whether to
		    continue after each iteration. `predicate_fn` takes the evaluation
		    results as its arguments. At the beginning of evaluation, the passed
		    eval results will be None so it's expected that the predicate function
		    handles that gracefully. When `predicate_fn` is not specified, this will
		    run in an infinite loop or exit when global_step reaches `train_steps`.
		
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
		
		Returns:
		  The result of the `evaluate` call to the `Estimator`.
	**/
	public function evaluate(?delay_secs:Dynamic):Dynamic;
	/**
		Extends the hooks for training.
	**/
	public function extend_train_hooks(additional_hooks:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-10-23.
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
		
		The frequency of evaluation is controlled by the contructor arg
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