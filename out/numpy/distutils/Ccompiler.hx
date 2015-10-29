/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.ccompiler") extern class Ccompiler {
	/**
		Compile one or more source files.
		
		Please refer to the Python distutils API reference for more details.
		
		Parameters
		----------
		sources : list of str
		    A list of filenames
		output_dir : str, optional
		    Path to the output directory.
		macros : list of tuples
		    A list of macro definitions.
		include_dirs : list of str, optional
		    The directories to add to the default include file search path for
		    this compilation only.
		debug : bool, optional
		    Whether or not to output debug symbols in or alongside the object
		    file(s).
		extra_preargs, extra_postargs : ?
		    Extra pre- and post-arguments.
		depends : list of str, optional
		    A list of file names that all targets depend on.
		
		Returns
		-------
		objects : list of str
		    A list of object file names, one per source file `sources`.
		
		Raises
		------
		CompileError
		    If compilation fails.
	**/
	static public function CCompiler_compile(self:Dynamic, sources:Dynamic, ?output_dir:Dynamic, ?macros:Dynamic, ?include_dirs:Dynamic, ?debug:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic, ?depends:Dynamic):Dynamic;
	/**
		Do any platform-specific customization of a compiler instance.
		
		This method calls `distutils.sysconfig.customize_compiler` for
		platform-specific customization, as well as optionally remove a flag
		to suppress spurious warnings in case C++ code is being compiled.
		
		Parameters
		----------
		dist : object
		    This parameter is not used for anything.
		need_cxx : bool, optional
		    Whether or not C++ has to be compiled. If so (True), the
		    ``"-Wstrict-prototypes"`` option is removed to prevent spurious
		    warnings. Default is False.
		
		Returns
		-------
		None
		
		Notes
		-----
		All the default options used by distutils can be extracted with::
		
		  from distutils import sysconfig
		  sysconfig.get_config_vars('CC', 'CXX', 'OPT', 'BASECFLAGS',
		                            'CCSHARED', 'LDSHARED', 'SO')
	**/
	static public function CCompiler_customize(self:Dynamic, dist:Dynamic, ?need_cxx:Dynamic):Dynamic;
	/**
		Customize compiler using distutils command.
		
		Parameters
		----------
		cmd : class instance
		    An instance inheriting from `distutils.cmd.Command`.
		ignore : sequence of str, optional
		    List of `CCompiler` commands (without ``'set_'``) that should not be
		    altered. Strings that are checked for are:
		    ``('include_dirs', 'define', 'undef', 'libraries', 'library_dirs',
		    'rpath', 'link_objects')``.
		
		Returns
		-------
		None
	**/
	static public function CCompiler_customize_cmd(self:Dynamic, cmd:Dynamic, ?ignore:Dynamic):Dynamic;
	/**
		Return the C++ compiler.
		
		Parameters
		----------
		None
		
		Returns
		-------
		cxx : class instance
		    The C++ compiler, as a `CCompiler` instance.
	**/
	static public function CCompiler_cxx_compiler(self:Dynamic):Dynamic;
	/**
		Return compiler version, or None if compiler is not available.
		
		Parameters
		----------
		force : bool, optional
		    If True, force a new determination of the version, even if the
		    compiler already has a version attribute. Default is False.
		ok_status : list of int, optional
		    The list of status values returned by the version look-up process
		    for which a version string is returned. If the status value is not
		    in `ok_status`, None is returned. Default is ``[0]``.
		
		Returns
		-------
		version : str or None
		    Version string, in the format of `distutils.version.LooseVersion`.
	**/
	static public function CCompiler_get_version(self:Dynamic, ?force:Dynamic, ?ok_status:Dynamic):Dynamic;
	/**
		Return the name of the object files for the given source files.
		
		Parameters
		----------
		source_filenames : list of str
		    The list of paths to source files. Paths can be either relative or
		    absolute, this is handled transparently.
		strip_dir : bool, optional
		    Whether to strip the directory from the returned paths. If True,
		    the file name prepended by `output_dir` is returned. Default is False.
		output_dir : str, optional
		    If given, this path is prepended to the returned paths to the
		    object files.
		
		Returns
		-------
		obj_names : list of str
		    The list of paths to the object files corresponding to the source
		    files in `source_filenames`.
	**/
	static public function CCompiler_object_filenames(self:Dynamic, source_filenames:Dynamic, ?strip_dir:Dynamic, ?output_dir:Dynamic):Dynamic;
	/**
		Print the compiler customizations to stdout.
		
		Parameters
		----------
		None
		
		Returns
		-------
		None
		
		Notes
		-----
		Printing is only done if the distutils log threshold is < 2.
	**/
	static public function CCompiler_show_customization(self:Dynamic):Dynamic;
	/**
		Execute a command in a sub-process.
		
		Parameters
		----------
		cmd : str
		    The command to execute.
		display : str or sequence of str, optional
		    The text to add to the log file kept by `numpy.distutils`.
		    If not given, `display` is equal to `cmd`.
		
		Returns
		-------
		None
		
		Raises
		------
		DistutilsExecError
		    If the command failed, i.e. the exit status was not 0.
	**/
	static public function CCompiler_spawn(self:Dynamic, cmd:Dynamic, ?display:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cc : Dynamic;
	static public function _compiler_to_string(compiler:Dynamic):Dynamic;
	/**
		Generate linker options for searching library directories and
		linking with specific libraries.  'libraries' and 'library_dirs' are,
		respectively, lists of library names (not filenames!) and search
		directories.  Returns a list of command-line options suitable for use
		with some compiler (depending on the two format strings passed in).
	**/
	static public function _distutils_gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	/**
		Generate C pre-processor options (-D, -U, -I) as used by at least
		two types of compilers: the typical Unix compiler and Visual C++.
		'macros' is the usual thing, a list of 1- or 2-tuples, where (name,)
		means undefine (-U) macro 'name', and (name,value) means define (-D)
		macro 'name' to 'value'.  'include_dirs' is just a list of directory
		names to be added to the header file search path (-I).  Returns a list
		of command-line options suitable for either Unix compilers or Visual
		C++.
	**/
	static public function _distutils_gen_preprocess_options(macros:Dynamic, include_dirs:Dynamic):Dynamic;
	/**
		Generate an instance of some CCompiler subclass for the supplied
		platform/compiler combination.  'plat' defaults to 'os.name'
		(eg. 'posix', 'nt'), and 'compiler' defaults to the default compiler
		for that platform.  Currently only 'posix' and 'nt' are supported, and
		the default compilers are "traditional Unix interface" (UnixCCompiler
		class) and Visual C++ (MSVCCompiler class).  Note that it's perfectly
		possible to ask for a Unix compiler object under Windows, and a
		Microsoft compiler object under Unix -- if you supply a value for
		'compiler', 'plat' is ignored.
	**/
	static public function _distutils_new_compiler(?plat:Dynamic, ?compiler:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic, ?force:Dynamic):Dynamic;
	static public var _dquote_re : Dynamic;
	static public var _has_white_re : Dynamic;
	static public var _m : Dynamic;
	static public var _squote_re : Dynamic;
	static public var _wordchars_re : Dynamic;
	static public var absolute_import : Dynamic;
	static public var compiler_class : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	/**
		Do any platform-specific customization of a CCompiler instance.
		
		Mainly needed on Unix, so we can plug in the information that
		varies across Unices and is stored in Python's Makefile.
	**/
	static public function customize_compiler(compiler:Dynamic):Dynamic;
	static public function cyg2win32(path:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return (status,output) of executed command.
		
		Parameters
		----------
		command : str
		    A concatenated string of executable and arguments.
		execute_in : str
		    Before running command ``cd execute_in`` and after ``cd -``.
		use_shell : {bool, None}, optional
		    If True, execute ``sh -c command``. Default None (True)
		use_tee : {bool, None}, optional
		    If True use tee. Default None (True)
		
		
		Returns
		-------
		res : str
		    Both stdout and stderr messages.
		
		Notes
		-----
		On NT, DOS systems the returned status is correct for external commands.
		Wild cards will not work for non-posix systems or when use_shell=0.
	**/
	static public function exec_command(command:Dynamic, ?execute_in:Dynamic, ?use_shell:Dynamic, ?use_tee:Dynamic, ?_with_python:Dynamic, env:Dynamic):Dynamic;
	/**
		Perform some action that affects the outside world (eg.  by
		writing to the filesystem).  Such actions are special because they
		are disabled by the 'dry_run' flag.  This method takes care of all
		that bureaucracy for you; all you have to do is supply the
		function to call and an argument tuple for it (to embody the
		"external action" being performed), and an optional message to
		print.
	**/
	static public function execute(func:Dynamic, args:Dynamic, ?msg:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic):Dynamic;
	static public function gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	static public function gen_preprocess_options(macros:Dynamic, include_dirs:Dynamic):Dynamic;
	/**
		Determine the default compiler to use for the given platform.
		
		osname should be one of the standard Python OS names (i.e. the
		ones returned by os.name) and platform the common value
		returned by sys.platform for the platform in question.
		
		The default values are os.name and sys.platform in case the
		parameters are not given.
	**/
	static public function get_default_compiler(?osname:Dynamic, ?platform:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
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
	static public function is_sequence(seq:Dynamic):Dynamic;
	/**
		Return true when using mingw32 environment.
		    
	**/
	static public function mingw32():Dynamic;
	/**
		Create a directory and any missing ancestor directories.
		
		If the directory already exists (or if 'name' is the empty string, which
		means the current directory, which of course exists), then do nothing.
		Raise DistutilsFileError if unable to create some directory along the way
		(eg. some sub-path exists, but is a file rather than a directory).
		If 'verbose' is true, print a one-line summary of each mkdir to stdout.
		Return the list of directories actually created.
	**/
	static public function mkpath(name:Dynamic, ?mode:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic):Dynamic;
	/**
		Move a file 'src' to 'dst'.  If 'dst' is a directory, the file will
		be moved into it with the same name; otherwise, 'src' is just renamed
		to 'dst'.  Return the new full name of the file.
		
		Handles cross-device moves on Unix using 'copy_file()'.  What about
		other systems???
	**/
	static public function move_file(src:Dynamic, dst:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic):Dynamic;
	static public function new_compiler(?plat:Dynamic, ?compiler:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Return true if 'target' is out-of-date with respect to any file
		listed in 'sources'.  In other words, if 'target' exists and is newer
		than every file in 'sources', return false; otherwise return true.
		'missing' controls what we do when a source file is missing; the
		default ("error") is to blow up with an OSError from inside 'stat()';
		if it is "ignore", we silently drop any missing source files; if it is
		"newer", any missing source files make us assume that 'target' is
		out-of-date (this is handy in "dry-run" mode: it'll make you pretend to
		carry out commands that wouldn't work because inputs are missing, but
		that doesn't matter because you're not actually going to run the
		commands).
	**/
	static public function newer_group(sources:Dynamic, target:Dynamic, ?missing:Dynamic):Dynamic;
	/**
		Walk two filename lists in parallel, testing if each source is newer
		than its corresponding target.  Return a pair of lists (sources,
		targets) where source is newer than target, according to the semantics
		of 'newer()'.
	**/
	static public function newer_pairwise(sources:Dynamic, targets:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function quote_args(args:Dynamic):Dynamic;
	static public function replace_method(klass:Dynamic, method_name:Dynamic, func:Dynamic):Dynamic;
	/**
		Print list of available compilers (used by the "--help-compiler"
		options to "build", "build_ext", "build_clib").
	**/
	static public function show_compilers():Dynamic;
	/**
		Simple matching of version numbers, for use in CCompiler and FCompiler.
		
		Parameters
		----------
		pat : str, optional
		    A regular expression matching version numbers.
		    Default is ``r'[-.\d]+'``.
		ignore : str, optional
		    A regular expression matching patterns to skip.
		    Default is ``''``, in which case nothing is skipped.
		start : str, optional
		    A regular expression matching the start of where to start looking
		    for version numbers.
		    Default is ``''``, in which case searching is started at the
		    beginning of the version string given to `matcher`.
		
		Returns
		-------
		matcher : callable
		    A function that is appropriate to use as the ``.version_match``
		    attribute of a `CCompiler` class. `matcher` takes a single parameter,
		    a version string.
	**/
	static public function simple_version_match(?pat:Dynamic, ?ignore:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Run another program, specified as a command list 'cmd', in a new process.
		
		'cmd' is just the argument list for the new process, ie.
		cmd[0] is the program to run and cmd[1:] are the rest of its arguments.
		There is no way to run a program with a name different from that of its
		executable.
		
		If 'search_path' is true (the default), the system's executable
		search path will be used to find the program; otherwise, cmd[0]
		must be the exact path to the executable.  If 'dry_run' is true,
		the command will not actually be run.
		
		Raise DistutilsExecError if running the program fails in any way; just
		return on success.
	**/
	static public function spawn(cmd:Dynamic, ?search_path:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic):Dynamic;
	static public function split_quoted(s:Dynamic):Dynamic;
}