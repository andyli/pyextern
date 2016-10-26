/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.monitors;
@:pythonImport("tensorflow.contrib.learn.python.learn.monitors", "LoggingTrainable") extern class LoggingTrainable {
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
		Initializes LoggingTrainable monitor.
		
		Args:
		  scope: An optional string to match variable names using re.match.
		  every_n: Print every N steps.
		  first_n: Print first N steps.
	**/
	@:native("__init__")
	public function ___init__(?scope:Dynamic, ?every_n:Dynamic, ?first_n:Dynamic):Dynamic;
	/**
		Initializes LoggingTrainable monitor.
		
		Args:
		  scope: An optional string to match variable names using re.match.
		  every_n: Print every N steps.
		  first_n: Print first N steps.
	**/
	public function new(?scope:Dynamic, ?every_n:Dynamic, ?first_n:Dynamic):Void;
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
		Called at the beginning of training.
		
		When called, the default graph is the one we are executing.
		
		Args:
		  max_steps: `int`, the maximum global step this training will run until.
		
		Raises:
		  ValueError: if we've already begun a run.
	**/
	public function begin(?max_steps:Dynamic):Dynamic;
	/**
		Callback at the end of training/evaluation.
		
		Args:
		  session: A `tf.Session` object that can be used to run ops.
		
		Raises:
		  ValueError: if we've not begun a run.
	**/
	public function end(?session:Dynamic):Dynamic;
	/**
		Begin epoch.
		
		Args:
		  epoch: `int`, the epoch number.
		
		Raises:
		  ValueError: if we've already begun an epoch, or `epoch` < 0.
	**/
	public function epoch_begin(epoch:Dynamic):Dynamic;
	/**
		End epoch.
		
		Args:
		  epoch: `int`, the epoch number.
		
		Raises:
		  ValueError: if we've not begun an epoch, or `epoch` number does not match.
	**/
	public function epoch_end(epoch:Dynamic):Dynamic;
	/**
		Callback after a step is finished or `end()` is called.
		
		Args:
		  step: `int`, the current value of the global step.
		  session: `Session` object.
	**/
	public function every_n_post_step(step:Dynamic, session:Dynamic):Dynamic;
	/**
		Callback before every n'th step begins.
		
		Args:
		  step: `int`, the current value of the global step.
		
		Returns:
		  A `list` of tensors that will be evaluated at this step.
	**/
	public function every_n_step_begin(step:Dynamic):Dynamic;
	/**
		Callback after every n'th step finished.
		
		This callback provides access to the tensors/ops evaluated at this step,
		including the additional tensors for which evaluation was requested in
		`step_begin`.
		
		In addition, the callback has the opportunity to stop training by returning
		`True`. This is useful for early stopping, for example.
		
		Args:
		  step: `int`, the current value of the global step.
		  outputs: `dict` mapping `string` values representing tensor names to
		    the value resulted from running these tensors. Values may be either
		    scalars, for scalar tensors, or Numpy `array`, for non-scalar tensors.
		
		Returns:
		  `bool`. True if training should stop.
	**/
	public function every_n_step_end(step:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Callback after the step is finished.
		
		Called after step_end and receives session to perform extra session.run
		calls. If failure occurred in the process, will be called as well.
		
		Args:
		  step: `int`, global step of the model.
		  session: `Session` object.
	**/
	public function post_step(step:Dynamic, session:Dynamic):Dynamic;
	public var run_on_all_workers : Dynamic;
	/**
		A setter called automatically by the target estimator.
		
		Args:
		  estimator: the estimator that this monitor monitors.
		
		Raises:
		  ValueError: if the estimator is None.
	**/
	public function set_estimator(estimator:Dynamic):Dynamic;
	/**
		Overrides `BaseMonitor.step_begin`.
		
		When overriding this method, you must call the super implementation.
		
		Args:
		  step: `int`, the current value of the global step.
		Returns:
		  A `list`, the result of every_n_step_begin, if that was called this step,
		  or an empty list otherwise.
		
		Raises:
		  ValueError: if called more than once during a step.
	**/
	public function step_begin(step:Dynamic):Dynamic;
	/**
		Overrides `BaseMonitor.step_end`.
		
		When overriding this method, you must call the super implementation.
		
		Args:
		  step: `int`, the current value of the global step.
		  output: `dict` mapping `string` values representing tensor names to
		    the value resulted from running these tensors. Values may be either
		    scalars, for scalar tensors, or Numpy `array`, for non-scalar tensors.
		Returns:
		  `bool`, the result of every_n_step_end, if that was called this step,
		  or `False` otherwise.
	**/
	public function step_end(step:Dynamic, output:Dynamic):Dynamic;
}