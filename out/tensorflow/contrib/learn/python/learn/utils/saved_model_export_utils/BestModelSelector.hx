/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.saved_model_export_utils", "BestModelSelector") extern class BestModelSelector {
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
		Constructor of this class. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  event_file_pattern: absolute event file name pattern.
		  compare_fn: a function that returns true if the candidate is better than
		    the current best model.
	**/
	@:native("__init__")
	public function ___init__(?event_file_pattern:Dynamic, ?compare_fn:Dynamic):Dynamic;
	/**
		Constructor of this class. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  event_file_pattern: absolute event file name pattern.
		  compare_fn: a function that returns true if the candidate is better than
		    the current best model.
	**/
	public function new(?event_file_pattern:Dynamic, ?compare_fn:Dynamic):Void;
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
		Get the best eval result from event files.
		
		Args:
		  event_files: Absolute pattern of event files.
		
		Returns:
		  The best eval result.
	**/
	public function _get_best_eval_result(event_files:Dynamic):Dynamic;
	/**
		Records a given checkpoint and exports if this is the best model.
		
		Args:
		  checkpoint_path: the checkpoint path to export.
		  eval_result: a dictionary which is usually generated in evaluation runs.
		    By default, eval_results contains 'loss' field.
		
		Returns:
		  A string representing the path to the checkpoint to be exported.
		  A dictionary of the same type of eval_result.
		
		Raises:
		  ValueError: if checkpoint path is empty.
		  ValueError: if eval_results is None object.
	**/
	public function update(checkpoint_path:Dynamic, eval_result:Dynamic):Dynamic;
}