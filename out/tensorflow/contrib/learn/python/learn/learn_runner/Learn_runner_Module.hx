/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_runner;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_runner") extern class Learn_runner_Module {
	static public var FLAGS : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Make and run an experiment.
		
		It creates an Experiment by calling experiment_fn. It reads a flag `schedule`.
		  Then it calls the function named as `schedule` of the Experiment.
		
		Example:
		```
		  def _create_my_experiment(output_dir):
		      return tf.contrib.learn.Experiment(
		        estimator=my_estimator(model_dir=output_dir),
		        train_input_fn=my_train_input,
		        eval_input_fn=my_eval_input)
		
		  learn_runner.run(experiment_fn=_create_my_experiment)
		```
		Args:
		  experiment_fn: A function that creates an `Experiment`. It should accept an
		    argument `output_dir` which should be used to create the Estimator (passed
		    as `model_dir` to its constructor). It must return an Experiment.
		
		Returns:
		  The return value of function `schedule`.
		
		Raises:
		  RuntimeError: If flags `output_dir` or `schedule` is not specified.
		  ValueError: `schedule` doesn't references a member of `Experiment`.
		  TypeError: `schedule` references non-callable member.
	**/
	static public function run(experiment_fn:Dynamic):Dynamic;
}