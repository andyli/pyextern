/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.misc_util") extern class Misc_util {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _fix_paths(paths:Dynamic, local_path:Dynamic, include_non_existing:Dynamic):Dynamic;
	static public function _get_directories(list_of_sources:Dynamic):Dynamic;
	/**
		Return a list of Fortran f90 module names that
		given source file defines.
	**/
	static public function _get_f90_modules(source:Dynamic):Dynamic;
	static public function _get_headers(directory_list:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return True if all items in lst are string objects. 
	**/
	static public function all_strings(lst:Dynamic):Dynamic;
	/**
		Convert a /-separated pathname to one using the OS's path separator.
	**/
	static public function allpath(name:Dynamic):Dynamic;
	static public function appendpath(prefix:Dynamic, path:Dynamic):Dynamic;
	static public function as_list(seq:Dynamic):Dynamic;
	static public function blue_text(s:Dynamic):Dynamic;
	static public function clean_up_temporary_directory():Dynamic;
	static public function colour_text(s:Dynamic, ?fg:Dynamic, ?bg:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function cxx_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public function cyan_text(s:Dynamic):Dynamic;
	static public function cyg2win32(path:Dynamic):Dynamic;
	/**
		Return a configuration dictionary for usage in
		configuration() function defined in file setup_<name>.py.
	**/
	static public function default_config_dict(?name:Dynamic, ?parent_name:Dynamic, ?local_path:Dynamic):Dynamic;
	static public function default_text(s:Dynamic):Dynamic;
	static public function dict_append(d:Dynamic, kws:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dot_join(args:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function f90_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function f90_module_name_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Return four lists of filenames containing
		C, C++, Fortran, and Fortran 90 module sources,
		respectively.
	**/
	static public function filter_sources(sources:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function fortran_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Return a directory name relative to top_path and
		files contained.
	**/
	static public function general_source_directories_files(top_path:Dynamic):Dynamic;
	static public function general_source_files(top_path:Dynamic):Dynamic;
	/**
		Generate config.py file containing system_info information
		used during building the package.
		
		Usage:
		    config['py_modules'].append((packagename, '__config__',generate_config_py))
	**/
	static public function generate_config_py(target:Dynamic):Dynamic;
	static public function get_build_architecture():Dynamic;
	static public function get_cmd(cmdname:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function get_data_files(data:Dynamic):Dynamic;
	static public function get_dependencies(sources:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
	static public function get_ext_source_files(ext:Dynamic):Dynamic;
	/**
		Return frame object from call stack with given level.
		    
	**/
	static public function get_frame(?level:Dynamic):Dynamic;
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
	static public function get_info(pkgname:Dynamic, ?dirs:Dynamic):Dynamic;
	/**
		Determine language value (c,f77,f90) from sources 
	**/
	static public function get_language(sources:Dynamic):Dynamic;
	static public function get_lib_source_files(lib:Dynamic):Dynamic;
	/**
		Return the MATHLIB line from numpyconfig.h
		    
	**/
	static public function get_mathlibs(?path:Dynamic):Dynamic;
	/**
		Return the path where to find the npy-pkg-config directory.
	**/
	static public function get_npy_pkg_dir():Dynamic;
	/**
		Get number of parallel build jobs set by the --parallel command line
		argument of setup.py
		If the command did not receive a setting the environment variable
		NPY_NUM_BUILD_JOBS checked and if that is unset it returns 1.
		
		Returns
		-------
		out : int
		    number of parallel jobs that can be run
	**/
	static public function get_num_build_jobs():Dynamic;
	static public function get_numpy_include_dirs():Dynamic;
	/**
		Return path of the module given a frame object from the call stack.
		
		Returned path is relative to parent_path when given,
		otherwise it is absolute path.
	**/
	static public function get_path_from_frame(frame:Dynamic, ?parent_path:Dynamic):Dynamic;
	/**
		Return library info for the given package.
		
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
		pkginfo : class instance
		    The `LibraryInfo` instance containing the build information.
		
		Raises
		------
		PkgNotFound
		    If the package is not found.
		
		See Also
		--------
		Configuration.add_npy_pkg_config, Configuration.add_installed_library,
		get_info
	**/
	static public function get_pkg_info(pkgname:Dynamic, ?dirs:Dynamic):Dynamic;
	static public function get_script_files(scripts:Dynamic):Dynamic;
	/**
		Return the correct file extension for shared libraries.
		
		Parameters
		----------
		is_python_ext : bool, optional
		    Whether the shared library is a Python extension.  Default is False.
		
		Returns
		-------
		so_ext : str
		    The shared library extension.
		
		Notes
		-----
		For Python shared libs, `so_ext` will typically be '.so' on Linux and OS X,
		and '.pyd' on Windows.  For Python >= 3.2 `so_ext` has a tag prepended on
		POSIX systems according to PEP 3149.  For Python 3.2 this is implemented on
		Linux, but not on OS X.
	**/
	static public function get_shared_lib_extension(?is_python_ext:Dynamic):Dynamic;
	/**
		Apply glob to paths and prepend local_path if needed.
		    
	**/
	static public function gpaths(paths:Dynamic, ?local_path:Dynamic, ?include_non_existing:Dynamic):Dynamic;
	static public function green_text(s:Dynamic):Dynamic;
	/**
		Return True if sources contains C++ files 
	**/
	static public function has_cxx_sources(sources:Dynamic):Dynamic;
	/**
		Return True if sources contains Fortran files 
	**/
	static public function has_f_sources(sources:Dynamic):Dynamic;
	static public function is_bootstrapping():Dynamic;
	static public function is_glob_pattern(s:Dynamic):Dynamic;
	/**
		Return true if directory is local directory.
		    
	**/
	static public function is_local_src_dir(directory:Dynamic):Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	static public function make_temp_file(?suffix:Dynamic, ?prefix:Dynamic, ?text:Dynamic):Dynamic;
	/**
		Return true when using mingw32 environment.
		    
	**/
	static public function mingw32():Dynamic;
	/**
		Resolve `..` and '.' from path.
		    
	**/
	static public function minrelpath(path:Dynamic):Dynamic;
	/**
		Return name of MSVC runtime library if Python was built with MSVC >= 7
	**/
	static public function msvc_runtime_library():Dynamic;
	/**
		Return version major and minor of compiler instance if it is
		MSVC, raise an exception otherwise.
	**/
	static public function msvc_version(compiler:Dynamic):Dynamic;
	/**
		Join two or more pathname components +
		- convert a /-separated pathname to one using the OS's path separator.
		- resolve `..` and `.` from path.
		
		Either passing n arguments as in njoin('a','b'), or a sequence
		of n names as in njoin(['a','b']) is handled, or a mixture of such arguments.
	**/
	static public function njoin(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function quote_args(args:Dynamic):Dynamic;
	static public function red_text(s:Dynamic):Dynamic;
	/**
		Return path relative to parent_path.
		    
	**/
	static public function rel_path(path:Dynamic, parent_path:Dynamic):Dynamic;
	static public function terminal_has_colors():Dynamic;
	static public function yellow_text(s:Dynamic):Dynamic;
}