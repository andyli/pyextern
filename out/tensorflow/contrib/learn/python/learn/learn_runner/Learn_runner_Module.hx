/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_runner;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_runner") extern class Learn_runner_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Execute the method named `schedule` of `experiment`.
	**/
	static public function _execute_schedule(experiment:Dynamic, schedule:Dynamic):Dynamic;
	/**
		Returns the default schedule for the provided RunConfig.
	**/
	static public function _get_default_schedule(config:Dynamic):Dynamic;
	/**
		Returns true if this is a distributed job.
	**/
	static public function _is_distributed(config:Dynamic):Dynamic;
	/**
		Wraps the `RunConfig` uid check with `experiment_fn`.
		
		For `experiment_fn` which takes `run_config`, it is expected that the
		`run_config` is passed to the Estimator correctly. Toward that, the wrapped
		`experiment_fn` compares the `uid` of the `RunConfig` instance.
		
		Args:
		  experiment_fn: The original `experiment_fn` which takes `run_config` and
		    `hparams`.
		  require_hparams: If True, the `hparams` passed to `experiment_fn` cannot be
		    `None`.
		
		Returns:
		  A experiment_fn with same signature.
	**/
	static public function _wrapped_experiment_fn_with_uid_check(experiment_fn:Dynamic, ?require_hparams:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Make and run an experiment.
		
		It creates an Experiment by calling `experiment_fn`. Then it calls the
		function named as `schedule` of the Experiment.
		
		If schedule is not provided, then the default schedule for the current task
		type is used. The defaults are as follows:
		
		 * 'ps' maps to 'serve'
		 * 'worker' maps to 'train'
		 * 'master' maps to 'local_run'
		
		If the experiment's config does not include a task type, then an exception
		is raised.
		
		Example with `run_config` (Recommended):
		```
		  def _create_my_experiment(run_config, hparams):
		
		      # You can change a subset of the run_config properties as
		      #   run_config = run_config.replace(save_checkpoints_steps=500)
		
		      return tf.contrib.learn.Experiment(
		        estimator=my_estimator(config=run_config, hparams=hparams),
		        train_input_fn=my_train_input,
		        eval_input_fn=my_eval_input)
		
		  learn_runner.run(
		    experiment_fn=_create_my_experiment,
		    run_config=run_config_lib.RunConfig(model_dir="some/output/dir"),
		    schedule="train_and_evaluate",
		    hparams=_create_default_hparams())
		```
		or simply as
		```
		  learn_runner.run(
		    experiment_fn=_create_my_experiment,
		    run_config=run_config_lib.RunConfig(model_dir="some/output/dir"))
		```
		if `hparams` is not used by the `Estimator`. On a single machine, `schedule`
		defaults to `train_and_evaluate`.
		
		Example with `output_dir` (deprecated):
		```
		  def _create_my_experiment(output_dir):
		      return tf.contrib.learn.Experiment(
		        estimator=my_estimator(model_dir=output_dir),
		        train_input_fn=my_train_input,
		        eval_input_fn=my_eval_input)
		
		  learn_runner.run(
		    experiment_fn=_create_my_experiment,
		    output_dir="some/output/dir",
		    schedule="train")
		```
		Args:
		  experiment_fn: A function that creates an `Experiment`. It could be one of
		    the two following signatures:
		    1) [Deprecated] It accepts an argument `output_dir` which should be used
		    to create the `Estimator` (passed as `model_dir` to its constructor). It
		    must return an `Experiment`. For this case, `run_config` and `hparams`
		    must be None.
		    2) It accpets two arguments `run_config` and `hparams`, which should be
		    used to create the `Estimator` (`run_config` passed as `config` to its
		    constructor; `hparams` used as the hyper-paremeters of the model).
		    It must return an `Experiment`. For this case, `output_dir` must be None.
		  output_dir: Base output directory [Deprecated].
		  schedule: The name of the  method in the `Experiment` to run.
		  run_config: `RunConfig` instance. The `run_config.model_dir` must be
		    non-empty. If `run_config` is set, `output_dir` must be None.
		  hparams: `HParams` instance. The default hyper-parameters, which will be
		    passed to the `experiment_fn` if `run_config` is not None.
		
		Returns:
		  The return value of function `schedule`.
		
		Raises:
		  ValueError: If both `output_dir` and `run_config` are empty or set,
		    `schedule` is None but no task type is set in the built experiment's
		    config, the task type has no default, `run_config.model_dir` is empty or
		    `schedule` doesn't reference a member of `Experiment`.
		  TypeError: `schedule` references non-callable member.
	**/
	static public function run(experiment_fn:Dynamic, ?output_dir:Dynamic, ?schedule:Dynamic, ?run_config:Dynamic, ?hparams:Dynamic):Dynamic;
	/**
		Tune an experiment with hyper-parameters. (experimental)
		
		THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		
		It iterates trials by running the Experiment for each trial with the
		corresponding hyper-parameters. For each trial, it retrieves the
		hyper-parameters from `tuner`, creates an Experiment by calling experiment_fn,
		and then reports the measure back to `tuner`.
		
		Example:
		```
		  def _create_my_experiment(run_config, hparams):
		    hidden_units = [hparams.unit_per_layer] * hparams.num_hidden_layers
		
		    return tf.contrib.learn.Experiment(
		        estimator=DNNClassifier(config=run_config, hidden_units=hidden_units),
		        train_input_fn=my_train_input,
		        eval_input_fn=my_eval_input)
		
		  tuner = create_tuner(study_configuration, objective_key)
		
		  learn_runner.tune(experiment_fn=_create_my_experiment, tuner)
		```
		Args:
		  experiment_fn: A function that creates an `Experiment`. It should accept an
		    argument `run_config` which should be used to create the `Estimator` (
		    passed as `config` to its constructor), and an argument `hparams`, which
		    should be used for hyper-parameters tuning. It must return an
		    `Experiment`.
		  tuner: A `Tuner` instance.
	**/
	static public function tune(experiment_fn:Dynamic, tuner:Dynamic):Dynamic;
}