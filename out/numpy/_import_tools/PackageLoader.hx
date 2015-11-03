/* This file is generated, do not edit! */
package numpy._import_tools;
@:pythonImport("numpy._import_tools", "PackageLoader") extern class PackageLoader {
	/**
		Load one or more packages into parent package top-level namespace.
		
		This function is intended to shorten the need to import many
		subpackages, say of scipy, constantly with statements such as
		
		  import scipy.linalg, scipy.fftpack, scipy.etc...
		
		Instead, you can say:
		
		  import scipy
		  scipy.pkgload('linalg','fftpack',...)
		
		or
		
		  scipy.pkgload()
		
		to load all of them in one call.
		
		If a name which doesn't exist in scipy's namespace is
		given, a warning is shown.
		
		Parameters
		----------
		 *packages : arg-tuple
		      the names (one or more strings) of all the modules one
		      wishes to load into the top-level namespace.
		 verbose= : integer
		      verbosity level [default: -1].
		      verbose=-1 will suspend also warnings.
		 force= : bool
		      when True, force reloading loaded packages [default: False].
		 postpone= : bool
		      when True, don't load packages [default: False]
		
		 
	**/
	public function __call__(?packages:python.VarArgs<Dynamic>, ?options:python.KwArgs<Dynamic>):Dynamic;
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
		Manages loading packages.
		        
	**/
	@:native("__init__")
	public function ___init__(?verbose:Dynamic, ?infunc:Dynamic):Dynamic;
	/**
		Manages loading packages.
		        
	**/
	public function new(?verbose:Dynamic, ?infunc:Dynamic):Void;
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
		Execute command in parent_frame.
	**/
	public function _execcmd(cmdstr:Dynamic):Dynamic;
	public function _format_titles(titles:Dynamic, ?colsep:Dynamic):Dynamic;
	/**
		Get the title from a package info.py file.
		        
	**/
	public function _get_doc_title(info_module:Dynamic):Dynamic;
	/**
		Return list of (package name,info.py file) from parent_path subdirectories.
		        
	**/
	public function _get_info_files(package_dir:Dynamic, parent_path:Dynamic, ?parent_package:Dynamic):Dynamic;
	/**
		Return package names sorted in the order as they should be
		imported due to dependence relations between packages.
	**/
	public function _get_sorted_names():Dynamic;
	/**
		Initialize info_modules = {<package_name>: <package info.py module>}.
		        
	**/
	public function _init_info_modules(?packages:Dynamic):Dynamic;
	/**
		Return repr(obj) with
	**/
	public function _obj2repr(obj:Dynamic):Dynamic;
	public function error(mess:Dynamic):Dynamic;
	/**
		Return documentation summary of subpackages.
		        
	**/
	public function get_pkgdocs():Dynamic;
	public function log(mess:Dynamic):Dynamic;
	public function warn(mess:Dynamic):Dynamic;
}