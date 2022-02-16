/* This file is generated, do not edit! */
package pandas.io.sas.sasreader;
@:pythonImport("pandas.io.sas.sasreader") extern class Sasreader_Module {
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Read SAS files stored as either XPORT or SAS7BDAT format files.
		
		Parameters
		----------
		filepath_or_buffer : str, path object, or file-like object
		    String, path object (implementing ``os.PathLike[str]``), or file-like
		    object implementing a binary ``read()`` function. The string could be a URL.
		    Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
		    expected. A local file could be:
		    ``file://localhost/path/to/table.sas``.
		format : str {'xport', 'sas7bdat'} or None
		    If None, file format is inferred from file extension. If 'xport' or
		    'sas7bdat', uses the corresponding format.
		index : identifier of index column, defaults to None
		    Identifier of column that should be used as index of the DataFrame.
		encoding : str, default is None
		    Encoding for text data.  If None, text data are stored as raw bytes.
		chunksize : int
		    Read file `chunksize` lines at a time, returns iterator.
		
		    .. versionchanged:: 1.2
		
		        ``TextFileReader`` is a context manager.
		iterator : bool, defaults to False
		    If True, returns an iterator for reading the file incrementally.
		
		    .. versionchanged:: 1.2
		
		        ``TextFileReader`` is a context manager.
		
		Returns
		-------
		DataFrame if iterator=False and chunksize=None, else SAS7BDATReader
		or XportReader
	**/
	static public function read_sas(filepath_or_buffer:Dynamic, ?format:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
	/**
		Attempt to convert a path-like object to a string.
		
		Parameters
		----------
		filepath_or_buffer : object to be converted
		
		Returns
		-------
		str_filepath_or_buffer : maybe a string version of the object
		
		Notes
		-----
		Objects supporting the fspath protocol (python 3.6+) are coerced
		according to its __fspath__ method.
		
		Any other object is passed through unchanged, which includes bytes,
		strings, buffers, or anything else that's not even path-like.
	**/
	static public function stringify_path(filepath_or_buffer:Dynamic, ?convert_file_like:Dynamic):Dynamic;
}