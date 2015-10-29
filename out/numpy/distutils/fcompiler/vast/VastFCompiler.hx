/* This file is generated, do not edit! */
package numpy.distutils.fcompiler.vast;
@:pythonImport("numpy.distutils.fcompiler.vast", "VastFCompiler") extern class VastFCompiler {
	static public var EXECUTABLE : Dynamic;
	static public var SHARED_LIBRARY : Dynamic;
	static public var SHARED_OBJECT : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
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
	public function ___init__(args:Dynamic, kw:Dynamic):Dynamic;
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
		Return detected arch flags from CFLAGS 
	**/
	public function _c_arch_flags():Dynamic;
	/**
		Ensures that every element of 'definitions' is a valid macro
		definition, ie. either (name,value) 2-tuple or a (name,) tuple.  Do
		nothing if all definitions are OK, raise TypeError otherwise.
	**/
	public function _check_macro_definitions(definitions:Dynamic):Dynamic;
	public function _command_property():Dynamic;
	/**
		Compile 'src' to product 'obj'.
	**/
	public function _compile(obj:Dynamic, src:Dynamic, ext:Dynamic, cc_args:Dynamic, extra_postargs:Dynamic, pp_opts:Dynamic):Dynamic;
	public function _environment_hook(name:Dynamic, hook_name:Dynamic):Dynamic;
	static public var _exe_cache : Dynamic;
	static public var _executable_keys : Dynamic;
	public function _find_macro(name:Dynamic):Dynamic;
	/**
		Typecheck and fix-up some of the arguments to the 'compile()'
		method, and return fixed-up values.  Specifically: if 'output_dir'
		is None, replaces it with 'self.output_dir'; ensures that 'macros'
		is a list, and augments it with 'self.macros'; ensures that
		'include_dirs' is a list, and augments it with 'self.include_dirs'.
		Guarantees that the returned values are of the correct type,
		i.e. for 'output_dir' either string or None, and for 'macros' and
		'include_dirs' either list or None.
	**/
	public function _fix_compile_args(output_dir:Dynamic, macros:Dynamic, include_dirs:Dynamic):Dynamic;
	/**
		Typecheck and fix up some of the arguments supplied to the
		'link_*' methods.  Specifically: ensure that all arguments are
		lists, and augment them with their permanent versions
		(eg. 'self.libraries' augments 'libraries').  Return a tuple with
		fixed versions of all arguments.
	**/
	public function _fix_lib_args(libraries:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic):Dynamic;
	/**
		Typecheck and fix up some arguments supplied to various methods.
		Specifically: ensure that 'objects' is a list; if output_dir is
		None, replace with self.output_dir.  Return fixed versions of
		'objects' and 'output_dir'.
	**/
	public function _fix_object_args(objects:Dynamic, output_dir:Dynamic):Dynamic;
	public function _get_cc_args(pp_opts:Dynamic, debug:Dynamic, before:Dynamic):Dynamic;
	public function _get_command_flags(key:Dynamic):Dynamic;
	/**
		Return true if we need to relink the files listed in 'objects'
		to recreate 'output_file'.
	**/
	public function _need_link(objects:Dynamic, output_file:Dynamic):Dynamic;
	/**
		Decide which souce files must be recompiled.
		
		Determine the list of object files corresponding to 'sources',
		and figure out which ones really need to be recompiled.
		Return a list of all object files and a dictionary telling
		which source files can be skipped.
	**/
	public function _prep_compile(sources:Dynamic, output_dir:Dynamic, ?depends:Dynamic):Dynamic;
	/**
		Process arguments and decide which source files to compile.
	**/
	public function _setup_compile(outdir:Dynamic, macros:Dynamic, incdirs:Dynamic, sources:Dynamic, depends:Dynamic, extra:Dynamic):Dynamic;
	/**
		Add 'dir' to the list of directories that will be searched for
		header files.  The compiler is instructed to search directories in
		the order in which they are supplied by successive calls to
		'add_include_dir()'.
	**/
	public function add_include_dir(dir:Dynamic):Dynamic;
	/**
		Add 'libname' to the list of libraries that will be included in
		all links driven by this compiler object.  Note that 'libname'
		should *not* be the name of a file containing a library, but the
		name of the library itself: the actual filename will be inferred by
		the linker, the compiler, or the compiler class (depending on the
		platform).
		
		The linker will be instructed to link against libraries in the
		order they were supplied to 'add_library()' and/or
		'set_libraries()'.  It is perfectly valid to duplicate library
		names; the linker will be instructed to link against libraries as
		many times as they are mentioned.
	**/
	public function add_library(libname:Dynamic):Dynamic;
	/**
		Add 'dir' to the list of directories that will be searched for
		libraries specified to 'add_library()' and 'set_libraries()'.  The
		linker will be instructed to search for libraries in the order they
		are supplied to 'add_library_dir()' and/or 'set_library_dirs()'.
	**/
	public function add_library_dir(dir:Dynamic):Dynamic;
	/**
		Add 'object' to the list of object files (or analogues, such as
		explicitly named library files or the output of "resource
		compilers") to be included in every link driven by this compiler
		object.
	**/
	public function add_link_object(object:Dynamic):Dynamic;
	/**
		Add 'dir' to the list of directories that will be searched for
		shared libraries at runtime.
	**/
	public function add_runtime_library_dir(dir:Dynamic):Dynamic;
	public function announce(msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var archiver : Dynamic;
	static public var c_compiler : Dynamic;
	static public var command_vars : Dynamic;
	public function compile(args:Dynamic, kw:Dynamic):Dynamic;
	static public var compile_switch : Dynamic;
	static public var compiler_aliases : Dynamic;
	static public var compiler_f77 : Dynamic;
	static public var compiler_f90 : Dynamic;
	static public var compiler_fix : Dynamic;
	static public var compiler_type : Dynamic;
	public function copy():Dynamic;
	/**
		Link a bunch of stuff together to create a static library file.
		The "bunch of stuff" consists of the list of object files supplied
		as 'objects', the extra object files supplied to
		'add_link_object()' and/or 'set_link_objects()', the libraries
		supplied to 'add_library()' and/or 'set_libraries()', and the
		libraries supplied as 'libraries' (if any).
		
		'output_libname' should be a library name, not a filename; the
		filename will be inferred from the library name.  'output_dir' is
		the directory where the library file will be put.
		
		'debug' is a boolean; if true, debugging information will be
		included in the library (note that on most platforms, it is the
		compile step where this matters: the 'debug' flag is included here
		just for consistency).
		
		'target_lang' is the target language for which the given objects
		are being compiled. This allows specific linkage time treatment of
		certain languages.
		
		Raises LibError on failure.
	**/
	public function create_static_lib(objects:Dynamic, output_libname:Dynamic, ?output_dir:Dynamic, ?debug:Dynamic, ?target_lang:Dynamic):Dynamic;
	/**
		Customize Fortran compiler.
		
		This method gets Fortran compiler specific information from
		(i) class definition, (ii) environment, (iii) distutils config
		files, and (iv) command line (later overrides earlier).
		
		This method should be always called after constructing a
		compiler instance. But not in __init__ because Distribution
		instance is needed for (iii) and (iv).
	**/
	public function customize(?dist:Dynamic):Dynamic;
	public function customize_cmd(args:Dynamic, kw:Dynamic):Dynamic;
	public function cxx_compiler(args:Dynamic, kw:Dynamic):Dynamic;
	public function debug_print(msg:Dynamic):Dynamic;
	/**
		Define a preprocessor macro for all compilations driven by this
		compiler object.  The optional parameter 'value' should be a
		string; if it is not supplied, then the macro will be defined
		without an explicit value and the exact outcome depends on the
		compiler used (XXX true? does ANSI say anything about this?)
	**/
	public function define_macro(name:Dynamic, ?value:Dynamic):Dynamic;
	static public var description : Dynamic;
	/**
		Detect the language of a given file, or list of files. Uses
		language_map, and language_order to do the job.
	**/
	public function detect_language(sources:Dynamic):Dynamic;
	static public var distutils_vars : Dynamic;
	/**
		Print out the attributes of a compiler instance.
	**/
	public function dump_properties():Dynamic;
	static public var exe_extension : Dynamic;
	public function executable_filename(basename:Dynamic, ?strip_dir:Dynamic, ?output_dir:Dynamic):Dynamic;
	static public var executables : Dynamic;
	public function execute(func:Dynamic, args:Dynamic, ?msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var extra_f77_compile_args : Dynamic;
	static public var extra_f90_compile_args : Dynamic;
	/**
		Go through the self.executables dictionary, and attempt to
		find and assign appropiate executables.
		
		Executable names are looked for in the environment (environment
		variables, the distutils.cfg, and command line), the 0th-element of
		the command list, and the self.possible_executables list.
		
		Also, if the 0th element is "<F77>" or "<F90>", the Fortran 77
		or the Fortran 90 compiler executable is used, unless overridden
		by an environment setting.
		
		Subclasses should call this if overriden.
	**/
	public function find_executables():Dynamic;
	/**
		Search the specified list of directories for a static or shared
		library file 'lib' and return the full path to that file.  If
		'debug' true, look for a debugging version (if that makes sense on
		the current platform).  Return None if 'lib' wasn't found in any of
		the specified directories.
	**/
	public function find_library_file(dirs:Dynamic, lib:Dynamic, ?debug:Dynamic):Dynamic;
	static public var flag_vars : Dynamic;
	static public var g2c : Dynamic;
	/**
		List of flags common to all compiler types.
	**/
	public function get_flags():Dynamic;
	/**
		List of archiver flags. 
	**/
	public function get_flags_ar():Dynamic;
	/**
		List of architecture dependent compiler flags.
	**/
	public function get_flags_arch():Dynamic;
	/**
		List of architecture dependent compiler flags.
	**/
	public function get_flags_arch_f77():Dynamic;
	/**
		List of architecture dependent compiler flags.
	**/
	public function get_flags_arch_f90():Dynamic;
	/**
		List of compiler flags to compile with debugging information.
	**/
	public function get_flags_debug():Dynamic;
	/**
		List of compiler flags to compile with debugging information.
	**/
	public function get_flags_debug_f77():Dynamic;
	/**
		List of compiler flags to compile with debugging information.
	**/
	public function get_flags_debug_f90():Dynamic;
	/**
		List of Fortran 77 specific flags.
	**/
	public function get_flags_f77():Dynamic;
	/**
		List of Fortran 90 specific flags.
	**/
	public function get_flags_f90():Dynamic;
	/**
		List of Fortran 90 fixed format specific flags.
	**/
	public function get_flags_fix():Dynamic;
	/**
		List of Fortran 90 free format specific flags.
	**/
	public function get_flags_free():Dynamic;
	/**
		List of linker flags to build an executable.
	**/
	public function get_flags_linker_exe():Dynamic;
	/**
		List of linker flags to build a shared library.
	**/
	public function get_flags_linker_so():Dynamic;
	/**
		List of architecture independent compiler flags.
	**/
	public function get_flags_opt():Dynamic;
	/**
		List of architecture independent compiler flags.
	**/
	public function get_flags_opt_f77():Dynamic;
	/**
		List of architecture independent compiler flags.
	**/
	public function get_flags_opt_f90():Dynamic;
	public function get_libgcc_dir():Dynamic;
	/**
		List of compiler libraries.
	**/
	public function get_libraries():Dynamic;
	/**
		List of compiler library directories.
	**/
	public function get_library_dirs():Dynamic;
	public function get_version(?force:Dynamic, ?ok_status:Dynamic):Dynamic;
	public function get_version_cmd():Dynamic;
	/**
		Handle the different versions of GNU fortran compilers
	**/
	public function gnu_version_match(version_string:Dynamic):Dynamic;
	/**
		Return a boolean indicating whether funcname is supported on
		the current platform.  The optional arguments can be used to
		augment the compilation environment.
	**/
	public function has_function(funcname:Dynamic, ?includes:Dynamic, ?include_dirs:Dynamic, ?libraries:Dynamic, ?library_dirs:Dynamic):Dynamic;
	static public var language_map : Dynamic;
	static public var language_order : Dynamic;
	/**
		Return the compiler option to add 'dir' to the list of
		directories searched for libraries.
	**/
	public function library_dir_option(dir:Dynamic):Dynamic;
	public function library_filename(libname:Dynamic, ?lib_type:Dynamic, ?strip_dir:Dynamic, ?output_dir:Dynamic):Dynamic;
	/**
		Return the compiler option to add 'dir' to the list of libraries
		linked into the shared library or executable.
	**/
	public function library_option(lib:Dynamic):Dynamic;
	static public var library_switch : Dynamic;
	/**
		Link a bunch of stuff together to create an executable or
		shared library file.
		
		The "bunch of stuff" consists of the list of object files supplied
		as 'objects'.  'output_filename' should be a filename.  If
		'output_dir' is supplied, 'output_filename' is relative to it
		(i.e. 'output_filename' can provide directory components if
		needed).
		
		'libraries' is a list of libraries to link against.  These are
		library names, not filenames, since they're translated into
		filenames in a platform-specific way (eg. "foo" becomes "libfoo.a"
		on Unix and "foo.lib" on DOS/Windows).  However, they can include a
		directory component, which means the linker will look in that
		specific directory rather than searching all the normal locations.
		
		'library_dirs', if supplied, should be a list of directories to
		search for libraries that were specified as bare library names
		(ie. no directory component).  These are on top of the system
		default and those supplied to 'add_library_dir()' and/or
		'set_library_dirs()'.  'runtime_library_dirs' is a list of
		directories that will be embedded into the shared library and used
		to search for other shared libraries that *it* depends on at
		run-time.  (This may only be relevant on Unix.)
		
		'export_symbols' is a list of symbols that the shared library will
		export.  (This appears to be relevant only on Windows.)
		
		'debug' is as for 'compile()' and 'create_static_lib()', with the
		slight distinction that it actually matters on most platforms (as
		opposed to 'create_static_lib()', which includes a 'debug' flag
		mostly for form's sake).
		
		'extra_preargs' and 'extra_postargs' are as for 'compile()' (except
		of course that they supply command-line arguments for the
		particular linker being used).
		
		'target_lang' is the target language for which the given objects
		are being compiled. This allows specific linkage time treatment of
		certain languages.
		
		Raises LinkError on failure.
	**/
	public function link(target_desc:Dynamic, objects:Dynamic, output_filename:Dynamic, ?output_dir:Dynamic, ?libraries:Dynamic, ?library_dirs:Dynamic, ?runtime_library_dirs:Dynamic, ?export_symbols:Dynamic, ?debug:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic, ?build_temp:Dynamic, ?target_lang:Dynamic):Dynamic;
	public function link_executable(objects:Dynamic, output_progname:Dynamic, ?output_dir:Dynamic, ?libraries:Dynamic, ?library_dirs:Dynamic, ?runtime_library_dirs:Dynamic, ?debug:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic, ?target_lang:Dynamic):Dynamic;
	public function link_shared_lib(objects:Dynamic, output_libname:Dynamic, ?output_dir:Dynamic, ?libraries:Dynamic, ?library_dirs:Dynamic, ?runtime_library_dirs:Dynamic, ?export_symbols:Dynamic, ?debug:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic, ?build_temp:Dynamic, ?target_lang:Dynamic):Dynamic;
	public function link_shared_object(objects:Dynamic, output_filename:Dynamic, ?output_dir:Dynamic, ?libraries:Dynamic, ?library_dirs:Dynamic, ?runtime_library_dirs:Dynamic, ?export_symbols:Dynamic, ?debug:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic, ?build_temp:Dynamic, ?target_lang:Dynamic):Dynamic;
	static public var linker_exe : Dynamic;
	static public var linker_so : Dynamic;
	public function mkpath(name:Dynamic, ?mode:Dynamic):Dynamic;
	static public var module_dir_switch : Dynamic;
	static public var module_include_switch : Dynamic;
	public function module_options(module_dirs:Dynamic, module_build_dir:Dynamic):Dynamic;
	public function move_file(src:Dynamic, dst:Dynamic):Dynamic;
	static public var obj_extension : Dynamic;
	public function object_filenames(args:Dynamic, kw:Dynamic):Dynamic;
	static public var object_switch : Dynamic;
	static public var pic_flags : Dynamic;
	static public var possible_executables : Dynamic;
	/**
		Preprocess a single C/C++ source file, named in 'source'.
		Output will be written to file named 'output_file', or stdout if
		'output_file' not supplied.  'macros' is a list of macro
		definitions as for 'compile()', which will augment the macros set
		with 'define_macro()' and 'undefine_macro()'.  'include_dirs' is a
		list of directory names that will be added to the default list.
		
		Raises PreprocessError on failure.
	**/
	public function preprocess(source:Dynamic, ?output_file:Dynamic, ?macros:Dynamic, ?include_dirs:Dynamic, ?extra_preargs:Dynamic, ?extra_postargs:Dynamic):Dynamic;
	static public var ranlib : Dynamic;
	/**
		Return the compiler option to add 'dir' to the list of
		directories searched for runtime libraries.
	**/
	public function runtime_library_dir_option(dir:Dynamic):Dynamic;
	public function set_command(key:Dynamic, value:Dynamic):Dynamic;
	public function set_commands(kw:Dynamic):Dynamic;
	public function set_executable(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Define the executables (and options for them) that will be run
		to perform the various stages of compilation.  The exact set of
		executables that may be specified here depends on the compiler
		class (via the 'executables' class attribute), but most will have:
		  compiler      the C/C++ compiler
		  linker_so     linker used to create shared objects and libraries
		  linker_exe    linker used to create binary executables
		  archiver      static library creator
		
		On platforms with a command-line (Unix, DOS/Windows), each of these
		is a string that will be split into executable name and (optional)
		list of arguments.  (Splitting the string is done similarly to how
		Unix shells operate: words are delimited by spaces, but quotes and
		backslashes can override this.  See
		'distutils.util.split_quoted()'.)
	**/
	public function set_executables(kwargs:Dynamic):Dynamic;
	/**
		Set the list of directories that will be searched to 'dirs' (a
		list of strings).  Overrides any preceding calls to
		'add_include_dir()'; subsequence calls to 'add_include_dir()' add
		to the list passed to 'set_include_dirs()'.  This does not affect
		any list of standard include directories that the compiler may
		search by default.
	**/
	public function set_include_dirs(dirs:Dynamic):Dynamic;
	/**
		Set the list of libraries to be included in all links driven by
		this compiler object to 'libnames' (a list of strings).  This does
		not affect any standard system libraries that the linker may
		include by default.
	**/
	public function set_libraries(libnames:Dynamic):Dynamic;
	/**
		Set the list of library search directories to 'dirs' (a list of
		strings).  This does not affect any standard library search path
		that the linker may search by default.
	**/
	public function set_library_dirs(dirs:Dynamic):Dynamic;
	/**
		Set the list of object files (or analogues) to be included in
		every link to 'objects'.  This does not affect any standard object
		files that the linker may include by default (such as system
		libraries).
	**/
	public function set_link_objects(objects:Dynamic):Dynamic;
	/**
		Set the list of directories to search for shared libraries at
		runtime to 'dirs' (a list of strings).  This does not affect any
		standard search path that the runtime linker may search by
		default.
	**/
	public function set_runtime_library_dirs(dirs:Dynamic):Dynamic;
	static public var shared_lib_extension : Dynamic;
	static public var shared_lib_format : Dynamic;
	public function shared_object_filename(basename:Dynamic, ?strip_dir:Dynamic, ?output_dir:Dynamic):Dynamic;
	public function show_customization(args:Dynamic, kw:Dynamic):Dynamic;
	public function spawn(args:Dynamic, kw:Dynamic):Dynamic;
	static public var src_extensions : Dynamic;
	static public var static_lib_extension : Dynamic;
	static public var static_lib_format : Dynamic;
	static public var suggested_f90_compiler : Dynamic;
	/**
		Undefine a preprocessor macro for all compilations driven by
		this compiler object.  If the same macro is defined by
		'define_macro()' and undefined by 'undefine_macro()' the last call
		takes precedence (including multiple redefinitions or
		undefinitions).  If the macro is redefined/undefined on a
		per-compilation basis (ie. in the call to 'compile()'), then that
		takes precedence.
	**/
	public function undefine_macro(name:Dynamic):Dynamic;
	/**
		Called at the beginning of customisation. Subclasses should
		override this if they need to set up the executables dictionary.
		
		Note that self.find_executables() is run afterwards, so the
		self.executables dictionary values can contain <F77> or <F90> as
		the command, which will be replaced by the found F77 or F90
		compiler.
	**/
	public function update_executables():Dynamic;
	static public var version_cmd : Dynamic;
	public function version_match(version_string:Dynamic):Dynamic;
	static public var version_pattern : Dynamic;
	public function warn(msg:Dynamic):Dynamic;
}