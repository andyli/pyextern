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
		Constructor for `Experiment`.
		
		Args:
		  estimator: Object implementing `Trainable` and `Evaluable`.
		  train_input_fn: function, returns features and targets for training.
		  eval_input_fn: function, returns features and targets for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used.
		  train_steps: Perform this many steps of training. `None`, the default,
		    means train forever.
		  eval_steps: `evaluate` runs until input is exhausted (or another exception
		    is raised), or for `eval_steps` steps, if specified.
		  train_monitors: A list of monitors to pass to the `Estimator`'s `fit`
		    function.
		  local_eval_frequency: Frequency of running eval in steps,
		    when running locally. If `None`, runs evaluation only at the end of
		    training.
		  eval_delay_secs: Start evaluating after waiting for this many seconds.
		  continuous_eval_throttle_secs: Do not re-evaluate unless the last
		    evaluation was started at least this many seconds ago for
		    continuous_eval().
		
		Raises:
		  ValueError: if `estimator` does not implement `Evaluable` and `Trainable`.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic):Dynamic;
	/**
		Constructor for `Experiment`.
		
		Args:
		  estimator: Object implementing `Trainable` and `Evaluable`.
		  train_input_fn: function, returns features and targets for training.
		  eval_input_fn: function, returns features and targets for evaluation. If
		    `eval_steps` is `None`, this should be configured only to produce for a
		    finite number of batches (generally, 1 epoch over the evaluation data).
		  eval_metrics: `dict` of string, metric function. If `None`, default set
		    is used.
		  train_steps: Perform this many steps of training. `None`, the default,
		    means train forever.
		  eval_steps: `evaluate` runs until input is exhausted (or another exception
		    is raised), or for `eval_steps` steps, if specified.
		  train_monitors: A list of monitors to pass to the `Estimator`'s `fit`
		    function.
		  local_eval_frequency: Frequency of running eval in steps,
		    when running locally. If `None`, runs evaluation only at the end of
		    training.
		  eval_delay_secs: Start evaluating after waiting for this many seconds.
		  continuous_eval_throttle_secs: Do not re-evaluate unless the last
		    evaluation was started at least this many seconds ago for
		    continuous_eval().
		
		Raises:
		  ValueError: if `estimator` does not implement `Evaluable` and `Trainable`.
	**/
	public function new(estimator:Dynamic, train_input_fn:Dynamic, eval_input_fn:Dynamic, ?eval_metrics:Dynamic, ?train_steps:Dynamic, ?eval_steps:Dynamic, ?train_monitors:Dynamic, ?local_eval_frequency:Dynamic, ?eval_delay_secs:Dynamic, ?continuous_eval_throttle_secs:Dynamic):Void;
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
	/**
		Run continuous eval.
		
		Runs infinite eval on the evaluation data set. This function starts
		evaluating after `delay_secs` seconds and then runs no more than one
		evaluation (with `self._eval_steps` steps each time) per
		`throttle_delay_secs`. It never returns.
		
		Args:
		  input_fn: The input to use for this eval.
		  name: A string appended to the folder name of evaluation results.
		  delay_secs: Start evaluating after this many seconds. If None, defaults to
		    self._eval_delay_secs.
		  throttle_delay_secs: Do not re-evaluate unless the last evaluation was
		    started at least this many seconds ago. If None, defaults to
		    self._continuous_eval_throttle_secs.
	**/
	public function _continuous_eval(input_fn:Dynamic, name:Dynamic, delay_secs:Dynamic, throttle_delay_secs:Dynamic):Dynamic;
	public function continuous_eval(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic):Dynamic;
	public function continuous_eval_on_train_data(?delay_secs:Dynamic, ?throttle_delay_secs:Dynamic):Dynamic;
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
		Run when called on local machine.
		
		Returns:
		  The result of the `evaluate` call to the `Estimator`.
	**/
	public function local_run():Dynamic;
	/**
		Tests training and evaluating the estimator both for a single step.
		
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
}