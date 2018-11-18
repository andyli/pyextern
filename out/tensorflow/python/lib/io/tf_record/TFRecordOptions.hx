/* This file is generated, do not edit! */
package tensorflow.python.lib.io.tf_record;
@:pythonImport("tensorflow.python.lib.io.tf_record", "TFRecordOptions") extern class TFRecordOptions {
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
		Creates a `TFRecordOptions` instance.
		
		Options only effect TFRecordWriter when compression_type is not `None`.
		Documentation, details, and defaults can be found in
		[`zlib_compression_options.h`](https://www.tensorflow.org/code/tensorflow/core/lib/io/zlib_compression_options.h)
		and in the [zlib manual](http://www.zlib.net/manual.html).
		Leaving an option as `None` allows C++ to set a reasonable default.
		
		Args:
		  compression_type: `TFRecordCompressionType` or `None`.
		  flush_mode: flush mode or `None`, Default: Z_NO_FLUSH.
		  input_buffer_size: int or `None`.
		  output_buffer_size: int or `None`.
		  window_bits: int or `None`.
		  compression_level: 0 to 9, or `None`.
		  compression_method: compression method or `None`.
		  mem_level: 1 to 9, or `None`.
		  compression_strategy: strategy or `None`. Default: Z_DEFAULT_STRATEGY.
		
		Returns:
		  A `TFRecordOptions` object.
		
		Raises:
		  ValueError: If compression_type is invalid.
	**/
	@:native("__init__")
	public function ___init__(?compression_type:Dynamic, ?flush_mode:Dynamic, ?input_buffer_size:Dynamic, ?output_buffer_size:Dynamic, ?window_bits:Dynamic, ?compression_level:Dynamic, ?compression_method:Dynamic, ?mem_level:Dynamic, ?compression_strategy:Dynamic):Dynamic;
	/**
		Creates a `TFRecordOptions` instance.
		
		Options only effect TFRecordWriter when compression_type is not `None`.
		Documentation, details, and defaults can be found in
		[`zlib_compression_options.h`](https://www.tensorflow.org/code/tensorflow/core/lib/io/zlib_compression_options.h)
		and in the [zlib manual](http://www.zlib.net/manual.html).
		Leaving an option as `None` allows C++ to set a reasonable default.
		
		Args:
		  compression_type: `TFRecordCompressionType` or `None`.
		  flush_mode: flush mode or `None`, Default: Z_NO_FLUSH.
		  input_buffer_size: int or `None`.
		  output_buffer_size: int or `None`.
		  window_bits: int or `None`.
		  compression_level: 0 to 9, or `None`.
		  compression_method: compression method or `None`.
		  mem_level: 1 to 9, or `None`.
		  compression_strategy: strategy or `None`. Default: Z_DEFAULT_STRATEGY.
		
		Returns:
		  A `TFRecordOptions` object.
		
		Raises:
		  ValueError: If compression_type is invalid.
	**/
	public function new(?compression_type:Dynamic, ?flush_mode:Dynamic, ?input_buffer_size:Dynamic, ?output_buffer_size:Dynamic, ?window_bits:Dynamic, ?compression_level:Dynamic, ?compression_method:Dynamic, ?mem_level:Dynamic, ?compression_strategy:Dynamic):Void;
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
		Convert to RecordWriterOptions for use with PyRecordWriter.
	**/
	public function _as_record_writer_options():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public var _tf_deprecated_api_names : Dynamic;
	static public var compression_type_map : Dynamic;
	/**
		Convert various option types to a unified string.
		
		Args:
		  options: `TFRecordOption`, `TFRecordCompressionType`, or string.
		
		Returns:
		  Compression type as string (e.g. `'ZLIB'`, `'GZIP'`, or `''`).
		
		Raises:
		  ValueError: If compression_type is invalid.
	**/
	static public function get_compression_type_string(options:Dynamic):Dynamic;
}