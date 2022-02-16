/* This file is generated, do not edit! */
package scipy.stats.setup;
@:pythonImport("scipy.stats.setup") extern class Setup_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function configuration(?parent_package:Dynamic, ?top_path:Dynamic):Dynamic;
	/**
		Return an info dict for a given C library.
		
		The info dict contains the necessary options to use the C library.
		
		Parameters
		----------
		pkgname : str
		    Name of the package (should match the name of the .ini file, without
		    the extension, e.g. foo for the file foo.ini).
		dirs : sequence, optional
		    If given, should be a sequence of additional directories where to look
		    for npy-pkg-config files. Those directories are searched prior to the
		    NumPy directory.
		
		Returns
		-------
		info : dict
		    The dictionary with build information.
		
		Raises
		------
		PkgNotFound
		    If the package is not found.
		
		See Also
		--------
		Configuration.add_npy_pkg_config, Configuration.add_installed_library,
		get_pkg_info
		
		Examples
		--------
		To get the necessary information for the npymath library from NumPy:
		
		>>> npymath_info = np.distutils.misc_util.get_info('npymath')
		>>> npymath_info                                    #doctest: +SKIP
		{'define_macros': [], 'libraries': ['npymath'], 'library_dirs':
		['.../numpy/core/lib'], 'include_dirs': ['.../numpy/core/include']}
		
		This info dict can then be used as input to a `Configuration` instance::
		
		  config.add_extension('foo', sources=['foo.c'], extra_info=npymath_info)
	**/
	static public function get_info(pkgname:Dynamic, ?dirs:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Join two or more pathname components, inserting '/' as needed.
		If any component is an absolute path, all previous path components
		will be discarded.  An empty last part will result in a path that
		ends with a separator.
	**/
	static public function join(a:Dynamic, ?p:python.VarArgs<Dynamic>):Dynamic;
	static public function pre_build_hook(build_ext:Dynamic, ext:Dynamic):Dynamic;
}