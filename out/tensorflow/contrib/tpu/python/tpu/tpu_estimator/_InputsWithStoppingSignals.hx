/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_estimator;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_estimator", "_InputsWithStoppingSignals") extern class _InputsWithStoppingSignals {
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
	public function ___init__(dataset:Dynamic, batch_size:Dynamic, ?add_padding:Dynamic, ?num_invocations_per_step:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dataset:Dynamic, batch_size:Dynamic, ?add_padding:Dynamic, ?num_invocations_per_step:Dynamic):Void;
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
	static public function _parse_inputs(return_values:Dynamic):Dynamic;
	public var dataset : Dynamic;
	/**
		Returns the dataset's initializer.
		
		The initializer must be run before calling `features_and_labels`.
	**/
	public function dataset_initializer():Dynamic;
	/**
		Gets `features` and `labels`.
	**/
	public function features_and_labels():Dynamic;
	/**
		Returns an `_Inputs` instance according to `input_fn` return value.
	**/
	static public function from_input_fn(return_values:Dynamic):Dynamic;
	/**
		Inserts stopping_signal into dataset via _map_fn.
		
		Here we change the data structure in the dataset, such that the return value
		is a dictionary now and `features`, `labels`, and `signals` are three
		distinguished keys in that dict. This provides a better structure, which
		eases the process to decompose the inputs (see `features_and_labels`).
		
		Args:
		  stop: bool, state of current stopping signals.
		  batch_size: int, batch size.
		  add_padding: bool, whether to pad the tensor to full batch size.
		
		Returns:
		  A map_fn passed to dataset.map API.
	**/
	static public function insert_stopping_signal(stop:Dynamic, batch_size:Dynamic, ?add_padding:Dynamic):Dynamic;
	/**
		Returns True if the return value from input_fn is Dataset.
	**/
	public var is_dataset : Dynamic;
	/**
		Returns the `Signals` from `_Inputs`.
	**/
	public function signals():Dynamic;
}