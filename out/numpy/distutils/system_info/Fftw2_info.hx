/* This file is generated, do not edit! */
package numpy.distutils.system_info;
@:pythonImport("numpy.distutils.system_info", "fftw2_info") extern class Fftw2_info {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?default_lib_dirs:Dynamic, ?default_include_dirs:Dynamic, ?verbosity:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Find mandatory and optional libs in expected paths.
		
		Missing optional libraries are silently forgotten.
	**/
	public function _check_libs(lib_dirs:Dynamic, libs:Dynamic, opt_libs:Dynamic, exts:Dynamic):Dynamic;
	public function _lib_list(lib_dir:Dynamic, libs:Dynamic, exts:Dynamic):Dynamic;
	/**
		Updates the information in the current information with
		respect to these flags:
		  extra_compile_args
		  extra_link_args
	**/
	public function calc_extra_info():Dynamic;
	public function calc_info():Dynamic;
	public function calc_libraries_info():Dynamic;
	/**
		Returns True on successful version detection, else False
	**/
	public function calc_ver_info(ver_param:Dynamic):Dynamic;
	/**
		If static or shared libraries are available then return
		their info dictionary.
		
		Checks for all libraries as shared libraries first, then
		static (or vice versa if self.search_static_first is True).
	**/
	public function check_libs(lib_dirs:Dynamic, libs:Dynamic, ?opt_libs:Dynamic):Dynamic;
	/**
		If static or shared libraries are available then return
		their info dictionary.
		
		Checks each library for shared or static.
	**/
	public function check_libs2(lib_dirs:Dynamic, libs:Dynamic, ?opt_libs:Dynamic):Dynamic;
	/**
		Return a list of existing paths composed by all combinations
		of items from the arguments.
	**/
	public function combine_paths(args:Dynamic):Dynamic;
	static public var dir_env_var : Dynamic;
	public function get_include_dirs(?key:Dynamic):Dynamic;
	/**
		Return a dictonary with items that are compatible
		with numpy.distutils.setup keyword arguments.
	**/
	public function get_info(?notfound_action:Dynamic):Dynamic;
	public function get_lib_dirs(?key:Dynamic):Dynamic;
	public function get_libraries(?key:Dynamic):Dynamic;
	public function get_libs(key:Dynamic, _default:Dynamic):Dynamic;
	public function get_paths(section:Dynamic, key:Dynamic):Dynamic;
	public function get_runtime_lib_dirs(?key:Dynamic):Dynamic;
	public function get_src_dirs(?key:Dynamic):Dynamic;
	public function has_info():Dynamic;
	public function library_extensions():Dynamic;
	/**
		FFTW (http://www.fftw.org/) libraries not found.
		Directories to search for the libraries can be specified in the
		numpy/distutils/site.cfg file (section [fftw]) or by setting
		the FFTW environment variable.
	**/
	static public function notfounderror(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parse_config_files():Dynamic;
	static public var saved_results : Dynamic;
	static public var search_static_first : Dynamic;
	static public var section : Dynamic;
	public function set_info(info:Dynamic):Dynamic;
	static public var ver_info : Dynamic;
	static public var verbosity : Dynamic;
}