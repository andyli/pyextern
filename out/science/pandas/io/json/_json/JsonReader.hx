/* This file is generated, do not edit! */
package pandas.io.json._json;
@:pythonImport("pandas.io.json._json", "JsonReader") extern class JsonReader {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(filepath_or_buffer:Dynamic, orient:Dynamic, typ:Dynamic, dtype:Dynamic, convert_axes:Dynamic, convert_dates:Dynamic, keep_default_dates:Dynamic, numpy:Dynamic, precise_float:Dynamic, date_unit:Dynamic, encoding:Dynamic, lines:Dynamic, chunksize:Dynamic, compression:Dynamic, nrows:Dynamic, ?storage_options:Dynamic, ?encoding_errors:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filepath_or_buffer:Dynamic, orient:Dynamic, typ:Dynamic, dtype:Dynamic, convert_axes:Dynamic, convert_dates:Dynamic, keep_default_dates:Dynamic, numpy:Dynamic, precise_float:Dynamic, date_unit:Dynamic, encoding:Dynamic, lines:Dynamic, chunksize:Dynamic, compression:Dynamic, nrows:Dynamic, ?storage_options:Dynamic, ?encoding_errors:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
		Return the next item from the iterator. When exhausted, raise StopIteration
	**/
	public function __next__():Dynamic;
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
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Combines a list of JSON objects into one JSON object.
	**/
	public function _combine_lines(lines:Dynamic):Dynamic;
	/**
		The function read_json accepts three input types:
		    1. filepath (string-like)
		    2. file-like object (e.g. open file object, StringIO)
		    3. JSON string
		
		This method turns (1) into (2) to simplify the rest of the processing.
		It returns input types (2) and (3) unchanged.
	**/
	public function _get_data_from_filepath(filepath_or_buffer:Dynamic):Dynamic;
	/**
		Parses a json document into a pandas object.
	**/
	public function _get_object_parser(json:Dynamic):Dynamic;
	/**
		At this point, the data either has a `read` attribute (e.g. a file
		object or a StringIO) or is a string that is a JSON document.
		
		If self.chunksize, we prepare the data for the `__next__` method.
		Otherwise, we read it into memory for the `read` method.
	**/
	public function _preprocess_data(data:Dynamic):Dynamic;
	/**
		If we opened a stream earlier, in _get_data_from_filepath, we should
		close it.
		
		If an open stream or file was passed, we leave it open.
	**/
	public function close():Dynamic;
	/**
		Read the whole JSON input into a pandas object.
	**/
	public function read():Dynamic;
}