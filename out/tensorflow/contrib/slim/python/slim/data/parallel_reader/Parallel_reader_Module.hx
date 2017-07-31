/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.parallel_reader;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.parallel_reader") extern class Parallel_reader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get data_files from data_sources.
		
		Args:
		  data_sources: a list/tuple of files or the location of the data, i.e.
		    /path/to/train@128, /path/to/train* or /tmp/.../train*
		
		Returns:
		  a list of data_files.
		
		Raises:
		  ValueError: if not data files are not found
	**/
	static public function get_data_files(data_sources:Dynamic):Dynamic;
	/**
		Reads multiple records in parallel from data_sources using n readers.
		
		It uses a ParallelReader to read from multiple files in  parallel using
		multiple readers created using `reader_class` with `reader_kwargs'.
		
		If shuffle is True the common_queue would be a RandomShuffleQueue otherwise
		it would be a FIFOQueue.
		
		Usage:
		    data_sources = ['path_to/train*']
		    key, value = parallel_read(data_sources, tf.CSVReader, num_readers=4)
		
		Args:
		  data_sources: a list/tuple of files or the location of the data, i.e.
		    /path/to/train@128, /path/to/train* or /tmp/.../train*
		  reader_class: one of the io_ops.ReaderBase subclasses ex: TFRecordReader
		  num_epochs: The number of times each data source is read. If left as None,
		      the data will be cycled through indefinitely.
		  num_readers: a integer, number of Readers to create.
		  reader_kwargs: an optional dict, of kwargs for the reader.
		  shuffle: boolean, wether should shuffle the files and the records by using
		    RandomShuffleQueue as common_queue.
		  dtypes:  A list of types.  The length of dtypes must equal the number
		      of elements in each record. If it is None it will default to
		      [tf.string, tf.string] for (key, value).
		  capacity: integer, capacity of the common_queue.
		  min_after_dequeue: integer, minimum number of records in the common_queue
		    after dequeue. Needed for a good shuffle.
		  seed: A seed for RandomShuffleQueue.
		  scope: Optional name scope for the ops.
		
		Returns:
		  key, value: a tuple of keys and values from the data_source.
	**/
	static public function parallel_read(data_sources:Dynamic, reader_class:Dynamic, ?num_epochs:Dynamic, ?num_readers:Dynamic, ?reader_kwargs:Dynamic, ?shuffle:Dynamic, ?dtypes:Dynamic, ?capacity:Dynamic, ?min_after_dequeue:Dynamic, ?seed:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads sequentially the data_sources using the reader, doing a single pass.
		
		Args:
		  data_sources: a list/tuple of files or the location of the data, i.e.
		    /path/to/train@128, /path/to/train* or /tmp/.../train*
		  reader_class: one of the io_ops.ReaderBase subclasses ex: TFRecordReader.
		  reader_kwargs: an optional dict, of kwargs for the reader.
		  scope: Optional name scope for the ops.
		
		Returns:
		  key, value: a tuple of keys and values from the data_source.
	**/
	static public function single_pass_read(data_sources:Dynamic, reader_class:Dynamic, ?reader_kwargs:Dynamic, ?scope:Dynamic):Dynamic;
}