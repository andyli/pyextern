/* This file is generated, do not edit! */
package tensorflow.python.lib.io.python_io;
@:pythonImport("tensorflow.python.lib.io.python_io") extern class Python_io_Module {
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		An iterator that read the records from a TFRecords file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use eager execution and: 
		`tf.data.TFRecordDataset(path)`
		
		Args:
		  path: The path to the TFRecords file.
		  options: (optional) A TFRecordOptions object.
		
		Returns:
		  An iterator of serialized TFRecords.
		
		Raises:
		  IOError: If `path` cannot be opened for reading.
	**/
	static public function tf_record_iterator(path:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Creates a reader that allows random-access reads from a TFRecords file.
		
		The created reader object has the following method:
		
		  - `read(offset)`, which returns a tuple of `(record, ending_offset)`, where
		    `record` is the TFRecord read at the offset, and
		    `ending_offset` is the ending offset of the read record.
		
		    The method throws a `tf.errors.DataLossError` if data is corrupted at
		    the given offset. The method throws `IndexError` if the offset is out of
		    range for the TFRecords file.
		
		
		Usage example:
		```py
		reader = tf_record_random_reader(file_path)
		
		record_1, offset_1 = reader.read(0)  # 0 is the initial offset.
		# offset_1 is the ending offset of the 1st record and the starting offset of
		# the next.
		
		record_2, offset_2 = reader.read(offset_1)
		# offset_2 is the ending offset of the 2nd record and the starting offset of
		# the next.
		# We can jump back and read the first record again if so desired.
		reader.read(0)
		```
		
		Args:
		  path: The path to the TFRecords file.
		
		Returns:
		  An object that supports random-access reading of the serialized TFRecords.
		
		Raises:
		  IOError: If `path` cannot be opened for reading.
	**/
	static public function tf_record_random_reader(path:Dynamic):Dynamic;
}