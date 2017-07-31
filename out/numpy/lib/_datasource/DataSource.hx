/* This file is generated, do not edit! */
package numpy.lib._datasource;
@:pythonImport("numpy.lib._datasource", "DataSource") extern class DataSource {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Create a DataSource with a local path at destpath.
	**/
	@:native("__init__")
	public function ___init__(?destpath:Dynamic):Dynamic;
	/**
		Create a DataSource with a local path at destpath.
	**/
	public function new(?destpath:Dynamic):Void;
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
		Cache the file specified by path.
		
		Creates a copy of the file in the datasource cache.
	**/
	public function _cache(path:Dynamic):Dynamic;
	/**
		Searches for ``path`` and returns full path if found.
		
		If path is an URL, _findfile will cache a local copy and return the
		path to the cached file.  If path is a local file, _findfile will
		return a path to that local file.
		
		The search will include possible compressed versions of the file
		and return the first occurrence found.
	**/
	public function _findfile(path:Dynamic):Dynamic;
	/**
		Test if path is a net location.  Tests the scheme and netloc.
	**/
	public function _isurl(path:Dynamic):Dynamic;
	/**
		Test if the given mode will open a file for writing.
	**/
	public function _iswritemode(mode:Dynamic):Dynamic;
	/**
		Test if the filename is a zip file by looking at the file extension.
		
		        
	**/
	public function _iszip(filename:Dynamic):Dynamic;
	/**
		Return a tuple containing compressed filename variations.
	**/
	public function _possible_names(filename:Dynamic):Dynamic;
	/**
		Return a sanitised relative path for which
		os.path.abspath(os.path.join(base, path)).startswith(base)
	**/
	public function _sanitize_relative_path(path:Dynamic):Dynamic;
	/**
		Split zip extension from filename and return filename.
		
		*Returns*:
		    base, zip_ext : {tuple}
	**/
	public function _splitzipext(filename:Dynamic):Dynamic;
	/**
		Return absolute path of file in the DataSource directory.
		
		If `path` is an URL, then `abspath` will return either the location
		the file exists locally or the location it would exist when opened
		using the `open` method.
		
		Parameters
		----------
		path : str
		    Can be a local file or a remote URL.
		
		Returns
		-------
		out : str
		    Complete path, including the `DataSource` destination directory.
		
		Notes
		-----
		The functionality is based on `os.path.abspath`.
	**/
	public function abspath(path:Dynamic):String;
	/**
		Test if path exists.
		
		Test if `path` exists as (and in this order):
		
		- a local file.
		- a remote URL that has been downloaded and stored locally in the
		  `DataSource` directory.
		- a remote URL that has not been downloaded, but is valid and
		  accessible.
		
		Parameters
		----------
		path : str
		    Can be a local file or a remote URL.
		
		Returns
		-------
		out : bool
		    True if `path` exists.
		
		Notes
		-----
		When `path` is an URL, `exists` will return True if it's either
		stored locally in the `DataSource` directory, or is a valid remote
		URL.  `DataSource` does not discriminate between the two, the file
		is accessible if it exists in either location.
	**/
	public function exists(path:Dynamic):Bool;
	/**
		Open and return file-like object.
		
		If `path` is an URL, it will be downloaded, stored in the
		`DataSource` directory and opened from there.
		
		Parameters
		----------
		path : str
		    Local file path or URL to open.
		mode : {'r', 'w', 'a'}, optional
		    Mode to open `path`.  Mode 'r' for reading, 'w' for writing,
		    'a' to append. Available modes depend on the type of object
		    specified by `path`. Default is 'r'.
		
		Returns
		-------
		out : file object
		    File object.
	**/
	public function open(path:Dynamic, ?mode:Dynamic):Dynamic;
}