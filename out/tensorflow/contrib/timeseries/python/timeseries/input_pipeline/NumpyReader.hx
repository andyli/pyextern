/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline", "NumpyReader") extern class NumpyReader {
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
		Numpy array input for a `TimeSeriesInputFn`.
		
		Args:
		  data: A dictionary mapping feature names to Numpy arrays, with two
		    possible shapes (requires keys `TrainEvalFeatures.TIMES` and
		    `TrainEvalFeatures.VALUES`):
		      Univariate; `TIMES` and `VALUES` are both vectors of shape [series
		        length]
		      Multivariate; `TIMES` is a vector of shape [series length], `VALUES`
		        has shape [series length x number of features].
		    In any case, `VALUES` and any exogenous features must have their shapes
		    prefixed by the shape of the value corresponding to the `TIMES` key.
		  read_num_records_hint: The maximum number of samples to read at one time,
		    for efficiency.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?read_num_records_hint:Dynamic):Dynamic;
	/**
		Numpy array input for a `TimeSeriesInputFn`.
		
		Args:
		  data: A dictionary mapping feature names to Numpy arrays, with two
		    possible shapes (requires keys `TrainEvalFeatures.TIMES` and
		    `TrainEvalFeatures.VALUES`):
		      Univariate; `TIMES` and `VALUES` are both vectors of shape [series
		        length]
		      Multivariate; `TIMES` is a vector of shape [series length], `VALUES`
		        has shape [series length x number of features].
		    In any case, `VALUES` and any exogenous features must have their shapes
		    prefixed by the shape of the value corresponding to the `TIMES` key.
		  read_num_records_hint: The maximum number of samples to read at one time,
		    for efficiency.
	**/
	public function new(data:Dynamic, ?read_num_records_hint:Dynamic):Void;
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
		Raise an error if the dataset is too small.
	**/
	public function check_dataset_size(minimum_dataset_size:Dynamic):Dynamic;
	/**
		Returns a large chunk of the Numpy arrays for later re-chunking.
	**/
	public function read():Dynamic;
	/**
		Returns `Tensor` versions of the full Numpy arrays.
	**/
	public function read_full():Dynamic;
}