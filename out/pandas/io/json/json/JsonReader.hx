/* This file is generated, do not edit! */
package pandas.io.json.json;
@:pythonImport("pandas.io.json.json", "JsonReader") extern class JsonReader {
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
	public function ___init__(filepath_or_buffer:Dynamic, orient:Dynamic, typ:Dynamic, dtype:Dynamic, convert_axes:Dynamic, convert_dates:Dynamic, keep_default_dates:Dynamic, numpy:Dynamic, precise_float:Dynamic, date_unit:Dynamic, encoding:Dynamic, lines:Dynamic, chunksize:Dynamic, compression:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filepath_or_buffer:Dynamic, orient:Dynamic, typ:Dynamic, dtype:Dynamic, convert_axes:Dynamic, convert_dates:Dynamic, keep_default_dates:Dynamic, numpy:Dynamic, precise_float:Dynamic, date_unit:Dynamic, encoding:Dynamic, lines:Dynamic, chunksize:Dynamic, compression:Dynamic):Void;
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
	public function __next__():Dynamic;
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