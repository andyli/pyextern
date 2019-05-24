/* This file is generated, do not edit! */
package numpy.random.setup;
@:pythonImport("numpy.random.setup") extern class Setup_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function configuration(?parent_package:Dynamic, ?top_path:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the version of MSVC that was used to build Python.
		
		For Python 2.3 and up, the version number is included in
		sys.version.  For earlier versions, assume the compiler is MSVC 6.
	**/
	static public function get_msvc_build_version():Dynamic;
	/**
		Join two or more pathname components, inserting '/' as needed.
		If any component is an absolute path, all previous path components
		will be discarded.  An empty last part will result in a path that
		ends with a separator.
	**/
	static public function join(a:Dynamic, ?p:python.VarArgs<Dynamic>):Dynamic;
	static public function needs_mingw_ftime_workaround():Dynamic;
	/**
		Return true if 'source' exists and is more recently modified than
		'target', or if 'source' exists and 'target' doesn't.  Return false if
		both exist and 'target' is the same age or younger than 'source'.
		Raise DistutilsFileError if 'source' does not exist.
	**/
	static public function newer(source:Dynamic, target:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}