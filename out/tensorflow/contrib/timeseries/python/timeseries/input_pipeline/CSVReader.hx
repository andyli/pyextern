/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline", "CSVReader") extern class CSVReader {
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
		CSV-parsing reader for a `TimeSeriesInputFn`.
		
		Args:
		  filenames: A filename or list of filenames to read the time series
		      from. Each line must have columns corresponding to `column_names`.
		  column_names: A list indicating names for each
		      feature. `TrainEvalFeatures.TIMES` and `TrainEvalFeatures.VALUES` are
		      required; `VALUES` may be repeated to indicate a multivariate series.
		  column_dtypes: If provided, must be a list with the same length as
		      `column_names`, indicating dtypes for each column. Defaults to
		      `tf.int64` for `TrainEvalFeatures.TIMES` and `tf.float32` for
		      everything else.
		  skip_header_lines: Passed on to `tf.TextLineReader`; skips this number of
		      lines at the beginning of each file.
		  read_num_records_hint: When not reading a full dataset, indicates the
		      number of records to parse/transfer in a single chunk (for
		      efficiency). The actual number transferred at one time may be more or
		      less.
		Raises:
		  ValueError: If required column names are not specified, or if lengths do
		    not match.
	**/
	@:native("__init__")
	public function ___init__(filenames:Dynamic, ?column_names:Dynamic, ?column_dtypes:Dynamic, ?skip_header_lines:Dynamic, ?read_num_records_hint:Dynamic):Dynamic;
	/**
		CSV-parsing reader for a `TimeSeriesInputFn`.
		
		Args:
		  filenames: A filename or list of filenames to read the time series
		      from. Each line must have columns corresponding to `column_names`.
		  column_names: A list indicating names for each
		      feature. `TrainEvalFeatures.TIMES` and `TrainEvalFeatures.VALUES` are
		      required; `VALUES` may be repeated to indicate a multivariate series.
		  column_dtypes: If provided, must be a list with the same length as
		      `column_names`, indicating dtypes for each column. Defaults to
		      `tf.int64` for `TrainEvalFeatures.TIMES` and `tf.float32` for
		      everything else.
		  skip_header_lines: Passed on to `tf.TextLineReader`; skips this number of
		      lines at the beginning of each file.
		  read_num_records_hint: When not reading a full dataset, indicates the
		      number of records to parse/transfer in a single chunk (for
		      efficiency). The actual number transferred at one time may be more or
		      less.
		Raises:
		  ValueError: If required column names are not specified, or if lengths do
		    not match.
	**/
	public function new(filenames:Dynamic, ?column_names:Dynamic, ?column_dtypes:Dynamic, ?skip_header_lines:Dynamic, ?read_num_records_hint:Dynamic):Void;
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
		Parse `lines` as CSV records.
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