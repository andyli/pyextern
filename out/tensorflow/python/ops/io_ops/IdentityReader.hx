/* This file is generated, do not edit! */
package tensorflow.python.ops.io_ops;
@:pythonImport("tensorflow.python.ops.io_ops", "IdentityReader") extern class IdentityReader {
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
		Create a IdentityReader. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.map(...)`.
		
		Args:
		  name: A name for the operation (optional).
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic):Dynamic;
	/**
		Create a IdentityReader. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.map(...)`.
		
		Args:
		  name: A name for the operation (optional).
	**/
	public function new(?name:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
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
		Returns the next record (key, value) pair produced by a reader.
		
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
		Returns up to num_records (key, value) pairs produced by a reader.
		
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