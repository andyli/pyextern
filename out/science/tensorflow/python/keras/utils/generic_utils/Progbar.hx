/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.generic_utils;
@:pythonImport("tensorflow.python.keras.utils.generic_utils", "Progbar") extern class Progbar {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(target:Dynamic, ?width:Dynamic, ?verbose:Dynamic, ?interval:Dynamic, ?stateful_metrics:Dynamic, ?unit_name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(target:Dynamic, ?width:Dynamic, ?verbose:Dynamic, ?interval:Dynamic, ?stateful_metrics:Dynamic, ?unit_name:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Estimate the duration of a single step.
		
		Given the step number `current` and the corresponding time `now`
		this function returns an estimate for how long a single step
		takes. If this is called before one step has been completed
		(i.e. `current == 0`) then zero is given as an estimate. The duration
		estimate ignores the duration of the (assumed to be non-representative)
		first step for estimates when more steps are available (i.e. `current>1`).
		Args:
		  current: Index of current step.
		  now: The current time.
		Returns: Estimate of the duration of a single step.
	**/
	public function _estimate_step_duration(current:Dynamic, now:Dynamic):Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	public function _update_stateful_metrics(stateful_metrics:Dynamic):Dynamic;
	public function add(n:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Updates the progress bar.
		
		Args:
		    current: Index of current step.
		    values: List of tuples: `(name, value_for_last_step)`. If `name` is in
		      `stateful_metrics`, `value_for_last_step` will be displayed as-is.
		      Else, an average of the metric over time will be displayed.
		    finalize: Whether this is the last update for the progress bar. If
		      `None`, defaults to `current >= self.target`.
	**/
	public function update(current:Dynamic, ?values:Dynamic, ?finalize:Dynamic):Dynamic;
}