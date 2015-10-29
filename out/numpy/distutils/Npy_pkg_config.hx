/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.npy_pkg_config") extern class Npy_pkg_config {
	static public var _CACHE : Dynamic;
	static public var _VAR : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _escape_backslash(val:Dynamic):Dynamic;
	static public function _read_config_imp(filenames:Dynamic, ?dirs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function parse_config(filename:Dynamic, ?dirs:Dynamic):Dynamic;
	/**
		Parse a line from a config file containing compile flags.
		
		Parameters
		----------
		line : str
		    A single line containing one or more compile flags.
		
		Returns
		-------
		d : dict
		    Dictionary of parsed flags, split into relevant categories.
		    These categories are the keys of `d`:
		
		    * 'include_dirs'
		    * 'library_dirs'
		    * 'libraries'
		    * 'macros'
		    * 'ignored'
	**/
	static public function parse_flags(line:Dynamic):Dynamic;
	static public function parse_meta(config:Dynamic):Dynamic;
	static public function parse_sections(config:Dynamic):Dynamic;
	static public function parse_variables(config:Dynamic):Dynamic;
	static public function pkg_to_filename(pkg_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return library info for a package from its configuration file.
		
		Parameters
		----------
		pkgname : str
		    Name of the package (should match the name of the .ini file, without
		    the extension, e.g. foo for the file foo.ini).
		dirs : sequence, optional
		    If given, should be a sequence of directories - usually including
		    the NumPy base directory - where to look for npy-pkg-config files.
		
		Returns
		-------
		pkginfo : class instance
		    The `LibraryInfo` instance containing the build information.
		
		Raises
		------
		PkgNotFound
		    If the package is not found.
		
		See Also
		--------
		misc_util.get_info, misc_util.get_pkg_info
		
		Examples
		--------
		>>> npymath_info = np.distutils.npy_pkg_config.read_config('npymath')
		>>> type(npymath_info)
		<class 'numpy.distutils.npy_pkg_config.LibraryInfo'>
		>>> print npymath_info
		Name: npymath
		Description: Portable, core math library implementing C99 standard
		Requires:
		Version: 0.1  #random
	**/
	static public function read_config(pkgname:Dynamic, ?dirs:Dynamic):Dynamic;
}