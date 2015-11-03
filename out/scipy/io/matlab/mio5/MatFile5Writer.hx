/* This file is generated, do not edit! */
package scipy.io.matlab.mio5;
@:pythonImport("scipy.io.matlab.mio5", "MatFile5Writer") extern class MatFile5Writer {
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
		Initialize writer for matlab 5 format files
		
		Parameters
		----------
		do_compression : bool, optional
		   Whether to compress matrices on write. Default is False.
		unicode_strings : bool, optional
		   If True, write strings as Unicode, else MATLAB usual encoding.
		global_vars : None or sequence of strings, optional
		    Names of variables to be marked as global for matlab
		long_field_names : bool, optional
		   * False - maximum field name length in a structure is 31 characters
		     which is the documented maximum length. This is the default.
		   * True - maximum field name length in a structure is 63 characters
		     which works for MATLAB 7.6
		oned_as : {'row', 'column'}, optional
		   If 'column', write 1-D numpy arrays as column vectors.
		   If 'row', write 1D numpy arrays as row vectors.
	**/
	@:native("__init__")
	public function ___init__(file_stream:Dynamic, ?do_compression:Dynamic, ?unicode_strings:Dynamic, ?global_vars:Dynamic, ?long_field_names:Dynamic, ?oned_as:Dynamic):Dynamic;
	/**
		Initialize writer for matlab 5 format files
		
		Parameters
		----------
		do_compression : bool, optional
		   Whether to compress matrices on write. Default is False.
		unicode_strings : bool, optional
		   If True, write strings as Unicode, else MATLAB usual encoding.
		global_vars : None or sequence of strings, optional
		    Names of variables to be marked as global for matlab
		long_field_names : bool, optional
		   * False - maximum field name length in a structure is 31 characters
		     which is the documented maximum length. This is the default.
		   * True - maximum field name length in a structure is 63 characters
		     which works for MATLAB 7.6
		oned_as : {'row', 'column'}, optional
		   If 'column', write 1-D numpy arrays as column vectors.
		   If 'row', write 1D numpy arrays as row vectors.
	**/
	public function new(file_stream:Dynamic, ?do_compression:Dynamic, ?unicode_strings:Dynamic, ?global_vars:Dynamic, ?long_field_names:Dynamic, ?oned_as:Dynamic):Void;
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
		Write variables in `mdict` to stream
		
		Parameters
		----------
		mdict : mapping
		   mapping with method ``items`` returns name, contents pairs where
		   ``name`` which will appear in the matlab workspace in file load, and
		   ``contents`` is something writeable to a matlab file, such as a numpy
		   array.
		write_header : {None, True, False}, optional
		   If True, then write the matlab file header before writing the
		   variables.  If None (the default) then write the file header
		   if we are at position 0 in the stream.  By setting False
		   here, and setting the stream position to the end of the file,
		   you can append variables to a matlab file
	**/
	public function put_variables(mdict:Dynamic, ?write_header:Dynamic):Dynamic;
	public function write_file_header():Dynamic;
}