/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline", "TimeSeriesReader") extern class TimeSeriesReader {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		When possible, raises an error if the dataset is too small.
		
		This method allows TimeSeriesReaders to raise informative error messages if
		the user has selected a window size in their TimeSeriesInputFn which is
		larger than the dataset size. However, many TimeSeriesReaders will not have
		access to a dataset size, in which case they do not need to override this
		method.
		
		Args:
		  minimum_dataset_size: The minimum number of records which should be
		    contained in the dataset. Readers should attempt to raise an error when
		    possible if an epoch of data contains fewer records.
	**/
	public function check_dataset_size(minimum_dataset_size:Dynamic):Dynamic;
	/**
		Parses one or more records into a feature dictionary.
		
		This method is expected to be called by a `TimeSeriesInputFn` object, and is
		not for use with models directly.
		
		A `TimeSeriesReader` object reads multiple records at a single time for
		efficiency; the size of these batches is an implementation detail internal
		to the input pipeline. These records should generally be sequential,
		although some out-of-order records due to file wraparounds are expected and
		must be handled by callers.
		
		Returns:
		  A dictionary mapping feature names to `Tensor` values, each with an
		  arbitrary batch dimension (for efficiency) as their first dimension.
	**/
	public function read():Dynamic;
	/**
		Return the full dataset.
		
		Largely for interactive use/plotting (or evaluation on small
		datasets). Generally not very efficient. Not recommended for training.
		
		Returns:
		  Same return type as `read`, but with the full dataset rather than an
		  arbitrary chunk of it. A dictionary mapping feature names to `Tensor`
		  values, where the size of the first dimension of each `Tensor` is the
		  number of samples in the entire dataset. These `Tensor`s should be
		  constant across graph invocations, assuming that the underlying data
		  remains constant. Current implementations re-read data on each graph
		  invocation, although this may change in the future.
	**/
	public function read_full():Dynamic;
}