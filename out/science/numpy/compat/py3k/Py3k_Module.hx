/* This file is generated, do not edit! */
package numpy.compat.py3k;
@:pythonImport("numpy.compat.py3k") extern class Py3k_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	static public function asbytes_nested(x:Dynamic):Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	static public function asunicode(s:Dynamic):Dynamic;
	static public function asunicode_nested(x:Dynamic):Dynamic;
	static public function getexception():Dynamic;
	static public var integer_types : Dynamic;
	/**
		Check whether obj is a `pathlib.Path` object.
		
		Prefer using ``isinstance(obj, os.PathLike)`` instead of this function.
	**/
	static public function is_pathlib_path(obj:Dynamic):Dynamic;
	static public function isfileobj(f:Dynamic):Dynamic;
	/**
		Load a module. Uses ``load_module`` which will be deprecated in python
		3.12. An alternative that uses ``exec_module`` is in
		numpy.distutils.misc_util.exec_mod_from_location
		
		.. versionadded:: 1.11.2
		
		Parameters
		----------
		name : str
		    Full module name.
		fn : str
		    Path to module file.
		info : tuple, optional
		    Only here for backward compatibility with Python 2.*.
		
		Returns
		-------
		mod : module
	**/
	static public function npy_load_module(name:Dynamic, fn:Dynamic, ?info:Dynamic):Dynamic;
	static public function open_latin1(filename:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Return the file system path representation of the object.
		
		If the object is str or bytes, then allow it to pass through as-is. If the
		object defines __fspath__(), then return the result of that method. All other
		types raise a TypeError.
	**/
	static public function os_fspath(path:Dynamic):Dynamic;
	static public function sixu(s:Dynamic):Dynamic;
	static public var strchar : Dynamic;
}