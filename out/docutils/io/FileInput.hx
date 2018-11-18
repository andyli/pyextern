/* This file is generated, do not edit! */
package docutils.io;
@:pythonImport("docutils.io", "FileInput") extern class FileInput {
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
		:Parameters:
		    - `source`: either a file-like object (which is read directly), or
		      `None` (which implies `sys.stdin` if no `source_path` given).
		    - `source_path`: a path to a file, which is opened and then read.
		    - `encoding`: the expected text encoding of the input file.
		    - `error_handler`: the encoding error handler to use.
		    - `autoclose`: close automatically after read (except when
		      `sys.stdin` is the source).
		    - `mode`: how the file is to be opened (see standard function
		      `open`). The default 'rU' provides universal newline support
		      for text files.
	**/
	@:native("__init__")
	public function ___init__(?source:Dynamic, ?source_path:Dynamic, ?encoding:Dynamic, ?error_handler:Dynamic, ?autoclose:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		:Parameters:
		    - `source`: either a file-like object (which is read directly), or
		      `None` (which implies `sys.stdin` if no `source_path` given).
		    - `source_path`: a path to a file, which is opened and then read.
		    - `encoding`: the expected text encoding of the input file.
		    - `error_handler`: the encoding error handler to use.
		    - `autoclose`: close automatically after read (except when
		      `sys.stdin` is the source).
		    - `mode`: how the file is to be opened (see standard function
		      `open`). The default 'rU' provides universal newline support
		      for text files.
	**/
	public function new(?source:Dynamic, ?source_path:Dynamic, ?encoding:Dynamic, ?error_handler:Dynamic, ?autoclose:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var byte_order_marks : Dynamic;
	public function close():Dynamic;
	static public var coding_slug : Dynamic;
	static public var component_type : Dynamic;
	/**
		Decode a string, `data`, heuristically.
		Raise UnicodeError if unsuccessful.
		
		The client application should call ``locale.setlocale`` at the
		beginning of processing::
		
		    locale.setlocale(locale.LC_ALL, '')
	**/
	public function decode(data:Dynamic):Dynamic;
	static public var default_source_path : Dynamic;
	static public var default_transforms : Dynamic;
	/**
		Try to determine the encoding of `data` by looking *in* `data`.
		Check for a byte order mark (BOM) or an encoding declaration.
	**/
	public function determine_encoding_from_data(data:Dynamic):Dynamic;
	/**
		Transforms required by this class.  Override in subclasses.
	**/
	public function get_transforms():Dynamic;
	/**
		Read and decode a single file and return the data (Unicode string).
	**/
	public function read():Dynamic;
	/**
		Return lines of a single file as list of Unicode strings.
	**/
	public function readlines():Dynamic;
	static public var unknown_reference_resolvers : Dynamic;
}