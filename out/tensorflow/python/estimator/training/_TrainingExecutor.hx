/* This file is generated, do not edit! */
package tensorflow.python.estimator.training;
@:pythonImport("tensorflow.python.estimator.training", "_TrainingExecutor") extern class _TrainingExecutor {
	/**
		A helper class to call `Estimator.evaluate` and export model.
	**/
	static public function _Evaluator(estimator:Dynamic, eval_spec:Dynamic, max_training_steps:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, train_spec:Dynamic, eval_spec:Dynamic, ?train_hooks:Dynamic, ?continuous_eval_listener:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(estimator:Dynamic, train_spec:Dynamic, eval_spec:Dynamic, ?train_hooks:Dynamic, ?continuous_eval_listener:Dynamic):Void;
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
	/**
		Executes the `evaluator`.
	**/
	public function _execute_evaluator_once(evaluator:Dynamic, continuous_eval_listener:Dynamic, throttle_secs:Dynamic):Dynamic;
	/**
		Repeatedly calls `Estimator` evaluate and export until training ends.
	**/
	public function _start_continuous_evaluation():Dynamic;
	/**
		Calls `Estimator` train in a distributed setting.
	**/
	public function _start_distributed_training(?saving_listeners:Dynamic):Dynamic;
	/**
		Creates, starts, and returns a server_lib.Server.
	**/
	public function _start_std_server(config:Dynamic):Dynamic;
	public var estimator : Dynamic;
	/**
		Executes the run_foo for task type `foo`.
		
		`_TrainingExecutor` predefines the procedure for task type 'chief',
		'worker', 'ps', and 'evaluator'. For task type `foo`, the corresponding
		procedure is `run_foo'. This `run` method invoke the procedure base on the
		`RunConfig.task_type`.
		
		Returns:
		  A tuple of the result of the `evaluate` call to the `Estimator` and the
		  export results using the specified `ExportStrategy`.
		  Currently undefined for distributed training mode.
		
		Raises:
		  ValueError: if the estimator.config is mis-configured.
	**/
	public function run():Dynamic;
	/**
		Runs task chief.
	**/
	public function run_chief():Dynamic;
	/**
		Runs task evaluator.
	**/
	public function run_evaluator():Dynamic;
	/**
		Runs training and evaluation locally (non-distributed).
	**/
	public function run_local():Dynamic;
	/**
		Runs task master.
	**/
	public function run_master():Dynamic;
	/**
		Runs task parameter server (in training cluster spec).
	**/
	public function run_ps():Dynamic;
	/**
		Runs task (training) worker.
	**/
	public function run_worker():Dynamic;
}