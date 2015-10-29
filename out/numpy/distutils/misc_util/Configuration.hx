/* This file is generated, do not edit! */
package numpy.distutils.misc_util;
@:pythonImport("numpy.distutils.misc_util", "Configuration") extern class Configuration {
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
		Construct configuration instance of a package.
		
		package_name -- name of the package
		                Ex.: 'distutils'
		parent_name  -- name of the parent package
		                Ex.: 'numpy'
		top_path     -- directory of the toplevel package
		                Ex.: the directory where the numpy package source sits
		package_path -- directory of package. Will be computed by magic from the
		                directory of the caller module if not specified
		                Ex.: the directory where numpy.distutils is
		caller_level -- frame level to caller namespace, internal parameter.
	**/
	@:native("__init__")
	public function ___init__(?package_name:Dynamic, ?parent_name:Dynamic, ?top_path:Dynamic, ?package_path:Dynamic, ?caller_level:Dynamic, ?setup_name:Dynamic, attrs:Dynamic):Dynamic;
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
		Common implementation for add_library and add_installed_library. Do
		not use directly
	**/
	public function _add_library(name:Dynamic, sources:Dynamic, install_dir:Dynamic, build_info:Dynamic):Dynamic;
	static public var _dict_keys : Dynamic;
	static public var _extra_keys : Dynamic;
	public function _fix_paths_dict(kw:Dynamic):Dynamic;
	public function _get_configuration_from_setup_py(setup_py:Dynamic, subpackage_name:Dynamic, subpackage_path:Dynamic, parent_name:Dynamic, ?caller_level:Dynamic):Dynamic;
	/**
		Return path's Mercurial revision number.
		        
	**/
	public function _get_hg_revision(path:Dynamic):Dynamic;
	/**
		Return path's SVN revision number.
		        
	**/
	public function _get_svn_revision(path:Dynamic):Dynamic;
	static public var _list_keys : Dynamic;
	public function _optimize_data_files():Dynamic;
	public function _wildcard_get_subpackage(subpackage_name:Dynamic, parent_name:Dynamic, ?caller_level:Dynamic):Dynamic;
	/**
		Recursively add files under data_path to data_files list.
		
		Recursively add files under data_path to the list of data_files to be
		installed (and distributed). The data_path can be either a relative
		path-name, or an absolute path-name, or a 2-tuple where the first
		argument shows where in the install directory the data directory
		should be installed to.
		
		Parameters
		----------
		data_path : seq or str
		    Argument can be either
		
		        * 2-sequence (<datadir suffix>, <path to data directory>)
		        * path to data directory where python datadir suffix defaults
		          to package dir.
		
		Notes
		-----
		Rules for installation paths:
		  foo/bar -> (foo/bar, foo/bar) -> parent/foo/bar
		  (gun, foo/bar) -> parent/gun
		  foo/* -> (foo/a, foo/a), (foo/b, foo/b) -> parent/foo/a, parent/foo/b
		  (gun, foo/*) -> (gun, foo/a), (gun, foo/b) -> gun
		  (gun/*, foo/*) -> parent/gun/a, parent/gun/b
		  /foo/bar -> (bar, /foo/bar) -> parent/bar
		  (gun, /foo/bar) -> parent/gun
		  (fun/* /gun/*, sun/foo/bar) -> parent/fun/foo/gun/bar
		
		Examples
		--------
		For example suppose the source directory contains fun/foo.dat and
		fun/bar/car.dat::
		
		    >>> self.add_data_dir('fun')                       #doctest: +SKIP
		    >>> self.add_data_dir(('sun', 'fun'))              #doctest: +SKIP
		    >>> self.add_data_dir(('gun', '/full/path/to/fun'))#doctest: +SKIP
		
		Will install data-files to the locations::
		
		    <package install directory>/
		      fun/
		        foo.dat
		        bar/
		          car.dat
		      sun/
		        foo.dat
		        bar/
		          car.dat
		      gun/
		        foo.dat
		        car.dat
	**/
	public function add_data_dir(data_path:Dynamic):Dynamic;
	/**
		Add data files to configuration data_files.
		
		Parameters
		----------
		files : sequence
		    Argument(s) can be either
		
		        * 2-sequence (<datadir prefix>,<path to data file(s)>)
		        * paths to data files where python datadir prefix defaults
		          to package dir.
		
		Notes
		-----
		The form of each element of the files sequence is very flexible
		allowing many combinations of where to get the files from the package
		and where they should ultimately be installed on the system. The most
		basic usage is for an element of the files argument sequence to be a
		simple filename. This will cause that file from the local path to be
		installed to the installation path of the self.name package (package
		path). The file argument can also be a relative path in which case the
		entire relative path will be installed into the package directory.
		Finally, the file can be an absolute path name in which case the file
		will be found at the absolute path name but installed to the package
		path.
		
		This basic behavior can be augmented by passing a 2-tuple in as the
		file argument. The first element of the tuple should specify the
		relative path (under the package install directory) where the
		remaining sequence of files should be installed to (it has nothing to
		do with the file-names in the source distribution). The second element
		of the tuple is the sequence of files that should be installed. The
		files in this sequence can be filenames, relative paths, or absolute
		paths. For absolute paths the file will be installed in the top-level
		package installation directory (regardless of the first argument).
		Filenames and relative path names will be installed in the package
		install directory under the path name given as the first element of
		the tuple.
		
		Rules for installation paths:
		
		  #. file.txt -> (., file.txt)-> parent/file.txt
		  #. foo/file.txt -> (foo, foo/file.txt) -> parent/foo/file.txt
		  #. /foo/bar/file.txt -> (., /foo/bar/file.txt) -> parent/file.txt
		  #. *.txt -> parent/a.txt, parent/b.txt
		  #. foo/*.txt -> parent/foo/a.txt, parent/foo/b.txt
		  #. * /*.txt -> (*, * /*.txt) -> parent/c/a.txt, parent/d/b.txt
		  #. (sun, file.txt) -> parent/sun/file.txt
		  #. (sun, bar/file.txt) -> parent/sun/file.txt
		  #. (sun, /foo/bar/file.txt) -> parent/sun/file.txt
		  #. (sun, *.txt) -> parent/sun/a.txt, parent/sun/b.txt
		  #. (sun, bar/*.txt) -> parent/sun/a.txt, parent/sun/b.txt
		  #. (sun/*, * /*.txt) -> parent/sun/c/a.txt, parent/d/b.txt
		
		An additional feature is that the path to a data-file can actually be
		a function that takes no arguments and returns the actual path(s) to
		the data-files. This is useful when the data files are generated while
		building the package.
		
		Examples
		--------
		Add files to the list of data_files to be included with the package.
		
		    >>> self.add_data_files('foo.dat',
		    ...     ('fun', ['gun.dat', 'nun/pun.dat', '/tmp/sun.dat']),
		    ...     'bar/cat.dat',
		    ...     '/full/path/to/can.dat')                   #doctest: +SKIP
		
		will install these data files to::
		
		    <package install directory>/
		     foo.dat
		     fun/
		       gun.dat
		       nun/
		         pun.dat
		     sun.dat
		     bar/
		       car.dat
		     can.dat
		
		where <package install directory> is the package (or sub-package)
		directory such as '/usr/lib/python2.4/site-packages/mypackage' ('C:
		\Python2.4 \Lib \site-packages \mypackage') or
		'/usr/lib/python2.4/site- packages/mypackage/mysubpackage' ('C:
		\Python2.4 \Lib \site-packages \mypackage \mysubpackage').
	**/
	public function add_data_files(files:Dynamic):Dynamic;
	/**
		Add define macros to configuration
		
		Add the given sequence of macro name and value duples to the beginning
		of the define_macros list This list will be visible to all extension
		modules of the current package.
	**/
	public function add_define_macros(macros:Dynamic):Dynamic;
	/**
		Add extension to configuration.
		
		Create and add an Extension instance to the ext_modules list. This
		method also takes the following optional keyword arguments that are
		passed on to the Extension constructor.
		
		Parameters
		----------
		name : str
		    name of the extension
		sources : seq
		    list of the sources. The list of sources may contain functions
		    (called source generators) which must take an extension instance
		    and a build directory as inputs and return a source file or list of
		    source files or None. If None is returned then no sources are
		    generated. If the Extension instance has no sources after
		    processing all source generators, then no extension module is
		    built.
		include_dirs :
		define_macros :
		undef_macros :
		library_dirs :
		libraries :
		runtime_library_dirs :
		extra_objects :
		extra_compile_args :
		extra_link_args :
		extra_f77_compile_args :
		extra_f90_compile_args :
		export_symbols :
		swig_opts :
		depends :
		    The depends list contains paths to files or directories that the
		    sources of the extension module depend on. If any path in the
		    depends list is newer than the extension module, then the module
		    will be rebuilt.
		language :
		f2py_options :
		module_dirs :
		extra_info : dict or list
		    dict or list of dict of keywords to be appended to keywords.
		
		Notes
		-----
		The self.paths(...) method is applied to all lists that may contain
		paths.
	**/
	public function add_extension(name:Dynamic, sources:Dynamic, kw:Dynamic):Dynamic;
	/**
		Add installable headers to configuration.
		
		Add the given sequence of files to the beginning of the headers list.
		By default, headers will be installed under <python-
		include>/<self.name.replace('.','/')>/ directory. If an item of files
		is a tuple, then its first argument specifies the actual installation
		location relative to the <python-include> path.
		
		Parameters
		----------
		files : str or seq
		    Argument(s) can be either:
		
		        * 2-sequence (<includedir suffix>,<path to header file(s)>)
		        * path(s) to header file(s) where python includedir suffix will
		          default to package name.
	**/
	public function add_headers(files:Dynamic):Dynamic;
	/**
		Add paths to configuration include directories.
		
		Add the given sequence of paths to the beginning of the include_dirs
		list. This list will be visible to all extension modules of the
		current package.
	**/
	public function add_include_dirs(paths:Dynamic):Dynamic;
	/**
		Similar to add_library, but the specified library is installed.
		
		Most C libraries used with `distutils` are only used to build python
		extensions, but libraries built through this method will be installed
		so that they can be reused by third-party packages.
		
		Parameters
		----------
		name : str
		    Name of the installed library.
		sources : sequence
		    List of the library's source files. See `add_library` for details.
		install_dir : str
		    Path to install the library, relative to the current sub-package.
		build_info : dict, optional
		    The following keys are allowed:
		
		        * depends
		        * macros
		        * include_dirs
		        * extra_compiler_args
		        * extra_f77_compiler_args
		        * extra_f90_compiler_args
		        * f2py_options
		        * language
		
		Returns
		-------
		None
		
		See Also
		--------
		add_library, add_npy_pkg_config, get_info
		
		Notes
		-----
		The best way to encode the options required to link against the specified
		C libraries is to use a "libname.ini" file, and use `get_info` to
		retrieve the required options (see `add_npy_pkg_config` for more
		information).
	**/
	public function add_installed_library(name:Dynamic, sources:Dynamic, install_dir:Dynamic, ?build_info:Dynamic):Dynamic;
	/**
		Add library to configuration.
		
		Parameters
		----------
		name : str
		    Name of the extension.
		sources : sequence
		    List of the sources. The list of sources may contain functions
		    (called source generators) which must take an extension instance
		    and a build directory as inputs and return a source file or list of
		    source files or None. If None is returned then no sources are
		    generated. If the Extension instance has no sources after
		    processing all source generators, then no extension module is
		    built.
		build_info : dict, optional
		    The following keys are allowed:
		
		        * depends
		        * macros
		        * include_dirs
		        * extra_compiler_args
		        * extra_f77_compiler_args
		        * extra_f90_compiler_args
		        * f2py_options
		        * language
	**/
	public function add_library(name:Dynamic, sources:Dynamic, build_info:Dynamic):Dynamic;
	/**
		Generate and install a npy-pkg config file from a template.
		
		The config file generated from `template` is installed in the
		given install directory, using `subst_dict` for variable substitution.
		
		Parameters
		----------
		template : str
		    The path of the template, relatively to the current package path.
		install_dir : str
		    Where to install the npy-pkg config file, relatively to the current
		    package path.
		subst_dict : dict, optional
		    If given, any string of the form ``@key@`` will be replaced by
		    ``subst_dict[key]`` in the template file when installed. The install
		    prefix is always available through the variable ``@prefix@``, since the
		    install prefix is not easy to get reliably from setup.py.
		
		See also
		--------
		add_installed_library, get_info
		
		Notes
		-----
		This works for both standard installs and in-place builds, i.e. the
		``@prefix@`` refer to the source directory for in-place builds.
		
		Examples
		--------
		::
		
		    config.add_npy_pkg_config('foo.ini.in', 'lib', {'foo': bar})
		
		Assuming the foo.ini.in file has the following content::
		
		    [meta]
		    Name=@foo@
		    Version=1.0
		    Description=dummy description
		
		    [default]
		    Cflags=-I@prefix@/include
		    Libs=
		
		The generated file will have the following content::
		
		    [meta]
		    Name=bar
		    Version=1.0
		    Description=dummy description
		
		    [default]
		    Cflags=-Iprefix_dir/include
		    Libs=
		
		and will be installed as foo.ini in the 'lib' subpath.
	**/
	public function add_npy_pkg_config(template:Dynamic, install_dir:Dynamic, ?subst_dict:Dynamic):Dynamic;
	/**
		Add scripts to configuration.
		
		Add the sequence of files to the beginning of the scripts list.
		Scripts will be installed under the <prefix>/bin/ directory.
	**/
	public function add_scripts(files:Dynamic):Dynamic;
	/**
		Add a sub-package to the current Configuration instance.
		
		This is useful in a setup.py script for adding sub-packages to a
		package.
		
		Parameters
		----------
		subpackage_name : str
		    name of the subpackage
		subpackage_path : str
		    if given, the subpackage path such as the subpackage is in
		    subpackage_path / subpackage_name. If None,the subpackage is
		    assumed to be located in the local path / subpackage_name.
		standalone : bool
	**/
	public function add_subpackage(subpackage_name:Dynamic, ?subpackage_path:Dynamic, ?standalone:Dynamic):Dynamic;
	/**
		Append libraries, include_dirs to extension or library item.
		        
	**/
	public function append_to(extlib:Dynamic):Dynamic;
	public function dict_append(dict:Dynamic):Dynamic;
	/**
		Return a path to a temporary directory where temporary files should be
		placed.
	**/
	public function get_build_temp_dir():Dynamic;
	/**
		Returns the numpy.distutils config command instance.
	**/
	public function get_config_cmd():Dynamic;
	/**
		Return the distutils distribution object for self.
	**/
	public function get_distribution():Dynamic;
	/**
		Get resources information.
		
		Return information (from system_info.get_info) for all of the names in
		the argument list in a single dictionary.
	**/
	public function get_info(names:Dynamic):Dynamic;
	/**
		Return list of subpackage configurations.
		
		Parameters
		----------
		subpackage_name : str or None
		    Name of the subpackage to get the configuration. '*' in
		    subpackage_name is handled as a wildcard.
		subpackage_path : str
		    If None, then the path is assumed to be the local path plus the
		    subpackage_name. If a setup.py file is not found in the
		    subpackage_path, then a default configuration is used.
		parent_name : str
		    Parent name.
	**/
	public function get_subpackage(subpackage_name:Dynamic, ?subpackage_path:Dynamic, ?parent_name:Dynamic, ?caller_level:Dynamic):Dynamic;
	/**
		Try to get version string of a package.
		
		Return a version string of the current package or None if the version
		information could not be detected.
		
		Notes
		-----
		This method scans files named
		__version__.py, <packagename>_version.py, version.py, and
		__svn_version__.py for string variables version, __version\__, and
		<packagename>_version, until a version number is found.
	**/
	public function get_version(?version_file:Dynamic, ?version_variable:Dynamic):Dynamic;
	/**
		Check for availability of Fortran 77 compiler.
		
		Use it inside source generating function to ensure that
		setup distribution instance has been initialized.
		
		Notes
		-----
		True if a Fortran 77 compiler is available (because a simple Fortran 77
		code was able to be compiled successfully).
	**/
	public function have_f77c():Dynamic;
	/**
		Check for availability of Fortran 90 compiler.
		
		Use it inside source generating function to ensure that
		setup distribution instance has been initialized.
		
		Notes
		-----
		True if a Fortran 90 compiler is available (because a simple Fortran
		90 code was able to be compiled successfully)
	**/
	public function have_f90c():Dynamic;
	public function info(message:Dynamic):Dynamic;
	/**
		Generate package __config__.py file containing system_info
		information used during building the package.
		
		This file is installed to the
		package installation directory.
	**/
	public function make_config_py(?name:Dynamic):Dynamic;
	/**
		Appends a data function to the data_files list that will generate
		__hg_version__.py file to the current package directory.
		
		Generate package __hg_version__.py file from Mercurial revision,
		it will be removed after python exits but will be available
		when sdist, etc commands are executed.
		
		Notes
		-----
		If __hg_version__.py existed before, nothing is done.
		
		This is intended for working with source directories that are
		in an Mercurial repository.
	**/
	public function make_hg_version_py(?delete:Dynamic):Dynamic;
	/**
		Appends a data function to the data_files list that will generate
		__svn_version__.py file to the current package directory.
		
		Generate package __svn_version__.py file from SVN revision number,
		it will be removed after python exits but will be available
		when sdist, etc commands are executed.
		
		Notes
		-----
		If __svn_version__.py existed before, nothing is done.
		
		This is
		intended for working with source directories that are in an SVN
		repository.
	**/
	public function make_svn_version_py(?delete:Dynamic):Dynamic;
	static public var numpy_include_dirs : Dynamic;
	/**
		Apply glob to paths and prepend local_path if needed.
		
		Applies glob.glob(...) to each path in the sequence (if needed) and
		pre-pends the local_path if needed. Because this is called on all
		source lists, this allows wildcard characters to be specified in lists
		of sources for extension modules and libraries and scripts and allows
		path-names be relative to the source directory.
	**/
	public function paths(paths:Dynamic, kws:Dynamic):Dynamic;
	/**
		Configure Configuration instance.
		
		The following options are available:
		 - ignore_setup_xxx_py
		 - assume_default_configuration
		 - delegate_options_to_subpackages
		 - quiet
	**/
	public function set_options(options:Dynamic):Dynamic;
	/**
		Return a dictionary compatible with the keyword arguments of distutils
		setup function.
		
		Examples
		--------
		>>> setup(**config.todict())                           #doctest: +SKIP
	**/
	public function todict():Dynamic;
	public function warn(message:Dynamic):Dynamic;
}