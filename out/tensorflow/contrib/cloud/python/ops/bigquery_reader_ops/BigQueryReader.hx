/* This file is generated, do not edit! */
package tensorflow.contrib.cloud.python.ops.bigquery_reader_ops;
@:pythonImport("tensorflow.contrib.cloud.python.ops.bigquery_reader_ops", "BigQueryReader") extern class BigQueryReader {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a BigQueryReader.
		
		Args:
		  project_id: GCP project ID.
		  dataset_id: BigQuery dataset ID.
		  table_id: BigQuery table ID.
		  timestamp_millis: timestamp to snapshot the table in milliseconds since
		    the epoch. Relative (negative or zero) snapshot times are not allowed.
		    For more details, see 'Table Decorators' in BigQuery docs.
		  num_partitions: Number of non-overlapping partitions to read from.
		  features: parse_example compatible dict from keys to `VarLenFeature` and
		    `FixedLenFeature` objects.  Keys are read as columns from the db.
		  columns: list of columns to read, can be set iff features is None.
		  test_end_point: Used only for testing purposes (optional).
		  name: a name for the operation (optional).
		
		Raises:
		  TypeError: - If features is neither None nor a dict or
		             - If columns is is neither None nor a list or
		             - If both features and columns are None or set.
	**/
	@:native("__init__")
	public function ___init__(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, timestamp_millis:Dynamic, num_partitions:Dynamic, ?features:Dynamic, ?columns:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a BigQueryReader.
		
		Args:
		  project_id: GCP project ID.
		  dataset_id: BigQuery dataset ID.
		  table_id: BigQuery table ID.
		  timestamp_millis: timestamp to snapshot the table in milliseconds since
		    the epoch. Relative (negative or zero) snapshot times are not allowed.
		    For more details, see 'Table Decorators' in BigQuery docs.
		  num_partitions: Number of non-overlapping partitions to read from.
		  features: parse_example compatible dict from keys to `VarLenFeature` and
		    `FixedLenFeature` objects.  Keys are read as columns from the db.
		  columns: list of columns to read, can be set iff features is None.
		  test_end_point: Used only for testing purposes (optional).
		  name: a name for the operation (optional).
		
		Raises:
		  TypeError: - If features is neither None nor a dict or
		             - If columns is is neither None nor a list or
		             - If both features and columns are None or set.
	**/
	public function new(project_id:Dynamic, dataset_id:Dynamic, table_id:Dynamic, timestamp_millis:Dynamic, num_partitions:Dynamic, ?features:Dynamic, ?columns:Dynamic, ?test_end_point:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the number of records this reader has produced.
		
		This is the same as the number of Read executions that have
		succeeded.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  An int64 Tensor.
	**/
	public function num_records_produced(?name:Dynamic):Dynamic;
	/**
		Returns the number of work units this reader has finished processing.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  An int64 Tensor.
	**/
	public function num_work_units_completed(?name:Dynamic):Dynamic;
	/**
		Returns serialized BigQueryTablePartition messages.
		
		These messages represent a non-overlapping division of a table for a
		bulk read.
		
		Args:
		  name: a name for the operation (optional).
		
		Returns:
		  `1-D` string `Tensor` of serialized `BigQueryTablePartition` messages.
	**/
	public function partitions(?name:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by a reader.
		
		Will dequeue a work unit from queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has
		finished with the previous file).
		
		Args:
		  queue: A Queue or a mutable string Tensor representing a handle
		    to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of Tensors (key, value).
		  key: A string scalar Tensor.
		  value: A string scalar Tensor.
	**/
	public function read(queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns up to num_records (key, value pairs) produced by a reader.
		
		Will dequeue a work unit from queue if necessary (e.g., when the
		Reader needs to start reading from a new file since it has
		finished with the previous file).
		It may return less than num_records even before the last batch.
		
		Args:
		  queue: A Queue or a mutable string Tensor representing a handle
		    to a Queue, with string work items.
		  num_records: Number of records to read.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of Tensors (keys, values).
		  keys: A 1-D string Tensor.
		  values: A 1-D string Tensor.
	**/
	public function read_up_to(queue:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Op that implements the reader.
	**/
	public var reader_ref : Dynamic;
	/**
		Restore a reader to its initial clean state.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	public function reset(?name:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  state: A string Tensor.
		    Result of a SerializeState of a Reader with matching type.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	public function restore_state(state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A string Tensor.
	**/
	public function serialize_state(?name:Dynamic):Dynamic;
	/**
		Whether the Reader implementation can serialize its state.
	**/
	public var supports_serialize : Dynamic;
}