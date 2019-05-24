/* This file is generated, do not edit! */
package numpy.core.memmap;
@:pythonImport("numpy.core.memmap") extern class Memmap_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Check whether obj is a pathlib.Path object.
		
		Prefer using `isinstance(obj, os_PathLike)` instead of this function.
	**/
	static public function is_pathlib_path(obj:Dynamic):Dynamic;
	static public var mode_equivalents : Dynamic;
	/**
		Return the file system path representation of the object.
		
		If the object is str or bytes, then allow it to pass through as-is. If the
		object defines __fspath__(), then return the result of that method. All other
		types raise a TypeError.
	**/
	static public function os_fspath(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	static public var valid_filemodes : Dynamic;
	static public var writeable_filemodes : Dynamic;
}