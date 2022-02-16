/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.writers;
@:pythonImport("tensorflow.python.data.experimental.ops.writers", "TFRecordWriter") extern class TFRecordWriter {
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
		Initializes a `TFRecordWriter`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To write TFRecords to disk, use `tf.io.TFRecordWriter`. To save and load the contents of a dataset, use `tf.data.experimental.save` and `tf.data.experimental.load`
		
		Args:
		  filename: a string path indicating where to write the TFRecord data.
		  compression_type: (Optional.) a string indicating what type of compression
		    to use when writing the file. See `tf.io.TFRecordCompressionType` for
		    what types of compression are available. Defaults to `None`.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?compression_type:Dynamic):Dynamic;
	/**
		Initializes a `TFRecordWriter`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To write TFRecords to disk, use `tf.io.TFRecordWriter`. To save and load the contents of a dataset, use `tf.data.experimental.save` and `tf.data.experimental.load`
		
		Args:
		  filename: a string path indicating where to write the TFRecord data.
		  compression_type: (Optional.) a string indicating what type of compression
		    to use when writing the file. See `tf.io.TFRecordCompressionType` for
		    what types of compression are available. Defaults to `None`.
	**/
	public function new(filename:Dynamic, ?compression_type:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Writes a dataset to a TFRecord file.
		
		An operation that writes the content of the specified dataset to the file
		specified in the constructor.
		
		If the file exists, it will be overwritten.
		
		Args:
		  dataset: a `tf.data.Dataset` whose elements are to be written to a file
		
		Returns:
		  In graph mode, this returns an operation which when executed performs the
		  write. In eager mode, the write is performed by the method itself and
		  there is no return value.
		
		Raises
		  TypeError: if `dataset` is not a `tf.data.Dataset`.
		  TypeError: if the elements produced by the dataset are not scalar strings.
	**/
	public function write(dataset:Dynamic):Dynamic;
}