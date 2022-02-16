/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat") extern class Compat_Module {
	static public var F : Dynamic;
	static public var IS64 : Dynamic;
	static public var PY310 : Dynamic;
	static public var PY39 : Dynamic;
	static public var PYPY : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Importing the `LZMAFile` class from the `lzma` module.
		
		Returns
		-------
		class
		    The `LZMAFile` class from the `lzma` module.
		
		Raises
		------
		RuntimeError
		    If the `lzma` module was not imported correctly, or didn't exist.
	**/
	static public function get_lzma_file():Dynamic;
	/**
		Checking if running in a continuous integration environment by checking
		the PANDAS_CI environment variable.
		
		Returns
		-------
		bool
		    True if the running in a continuous integration environment.
	**/
	static public function is_ci_environment():Dynamic;
	static public var is_numpy_dev : Dynamic;
	/**
		Checking if the running platform use ARM architecture.
		
		Returns
		-------
		bool
		    True if the running platform uses ARM architecture.
	**/
	static public function is_platform_arm():Dynamic;
	/**
		Checking if the running platform is linux.
		
		Returns
		-------
		bool
		    True if the running platform is linux.
	**/
	static public function is_platform_linux():Dynamic;
	/**
		Checking if the running platform is little endian.
		
		Returns
		-------
		bool
		    True if the running platform is little endian.
	**/
	static public function is_platform_little_endian():Dynamic;
	/**
		Checking if the running platform is mac.
		
		Returns
		-------
		bool
		    True if the running platform is mac.
	**/
	static public function is_platform_mac():Dynamic;
	/**
		Checking if the running platform is windows.
		
		Returns
		-------
		bool
		    True if the running platform is windows.
	**/
	static public function is_platform_windows():Dynamic;
	static public var np_version_under1p19 : Dynamic;
	static public var np_version_under1p20 : Dynamic;
	static public var pa_version_under1p01 : Dynamic;
	static public var pa_version_under2p0 : Dynamic;
	static public var pa_version_under3p0 : Dynamic;
	static public var pa_version_under4p0 : Dynamic;
	/**
		Bind the name/qualname attributes of the function.
	**/
	static public function set_function_name(f:Dynamic, name:Dynamic, cls:Dynamic):Dynamic;
}