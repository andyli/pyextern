/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.experiment;
@:pythonImport("tensorflow.contrib.learn.python.learn.experiment", "_EvalAndExportListener") extern class _EvalAndExportListener {
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
		Initializes an `EvalAndExportListener`.
		
		Args:
		  eval_fn: function which evaluates the model with the following signature:
		    `(name, checkpoint_path) -> eval_result`
		  export_fn: function which exports the model according to a set of export
		    strategies. Has the following signature:
		    `(eval_result, checkpoint_path) -> export_results`
		  model_dir: directory which contains estimator parameters and checkpoints.
	**/
	@:native("__init__")
	public function ___init__(eval_fn:Dynamic, export_fn:Dynamic, model_dir:Dynamic):Dynamic;
	/**
		Initializes an `EvalAndExportListener`.
		
		Args:
		  eval_fn: function which evaluates the model with the following signature:
		    `(name, checkpoint_path) -> eval_result`
		  export_fn: function which exports the model according to a set of export
		    strategies. Has the following signature:
		    `(eval_result, checkpoint_path) -> export_results`
		  model_dir: directory which contains estimator parameters and checkpoints.
	**/
	public function new(eval_fn:Dynamic, export_fn:Dynamic, model_dir:Dynamic):Void;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Evaluates and exports the model after a checkpoint is created.
	**/
	public function after_save(session:Dynamic, global_step_value:Dynamic):Dynamic;
	public function before_save(session:Dynamic, global_step_value:Dynamic):Dynamic;
	public function begin():Dynamic;
	public function end(session:Dynamic, global_step_value:Dynamic):Dynamic;
	public var eval_result : Dynamic;
	public var export_results : Dynamic;
}