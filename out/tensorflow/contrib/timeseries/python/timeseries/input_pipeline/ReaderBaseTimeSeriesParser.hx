/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline", "ReaderBaseTimeSeriesParser") extern class ReaderBaseTimeSeriesParser {
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
		Configure the time series reader.
		
		Args:
		  filenames: A string or list of strings indicating files to read records
		    from.
		  read_num_records_hint: When not reading a full dataset, indicates the
		    number of records to transfer in a single chunk (for efficiency). The
		    actual number transferred at one time may vary.
	**/
	@:native("__init__")
	public function ___init__(filenames:Dynamic, ?read_num_records_hint:Dynamic):Dynamic;
	/**
		Configure the time series reader.
		
		Args:
		  filenames: A string or list of strings indicating files to read records
		    from.
		  read_num_records_hint: When not reading a full dataset, indicates the
		    number of records to transfer in a single chunk (for efficiency). The
		    actual number transferred at one time may vary.
	**/
	public function new(filenames:Dynamic, ?read_num_records_hint:Dynamic):Void;
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
		Constructs a filename queue with an epoch limit.
		
		`epoch_limit` is intended as an error checking fallback to prevent a reader
		from infinitely looping in its requests for more work items if none are
		available in any file. It should be set high enough that it is never reached
		assuming at least one record exists in some file.
		
		Args:
		  epoch_limit: The maximum number of times to read through the complete list
		    of files before throwing an OutOfRangeError.
		Returns:
		  A tuple of (filename_queue, epoch_limiter):
		    filename_queue: A FIFOQueue with filename work items.
		    epoch_limiter: The local variable used for epoch limitation. This should
		      be set to zero before a reader is passed `filename_queue` in order to
		      reset the epoch limiter's state.
	**/
	public function _get_filename_queue(epoch_limit:Dynamic):Dynamic;
	/**
		Get an instance of the tf.ReaderBase associated with this class.
	**/
	public function _get_reader():Dynamic;
	/**
		Given string items, return a processed dictionary of Tensors.
		
		Args:
		  lines: A 1-dimensional string Tensor, each representing a record to parse
		    (source dependent, e.g. a line of a file, or a serialized protocol
		    buffer).
		
		Returns:
		  A dictionary mapping feature names to their values. The batch dimensions
		  should match the length of `lines`.
	**/
	public function _process_records(lines:Dynamic):Dynamic;
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
		Reads a chunk of data from the `tf.ReaderBase` for later re-chunking.
	**/
	public function read():Dynamic;
	/**
		Reads a full epoch of data into memory.
	**/
	public function read_full():Dynamic;
}