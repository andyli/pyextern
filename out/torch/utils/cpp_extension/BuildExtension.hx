/* This file is generated, do not edit! */
package torch.utils.cpp_extension;
@:pythonImport("torch.utils.cpp_extension", "BuildExtension") extern class BuildExtension {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __getattr__(attr:Dynamic):Dynamic;
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
		Construct the command for dist, updating
		vars(self) with any keyword parameters.
	**/
	@:native("__init__")
	public function ___init__(dist:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct the command for dist, updating
		vars(self) with any keyword parameters.
	**/
	public function new(dist:Dynamic, ?kw:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_gnu_abi_flag_if_binary(extension:Dynamic):Dynamic;
	public function _build_ext__get_output_extensions():Dynamic;
	public function _build_ext__get_stubs_outputs():Dynamic;
	public function _build_extensions_parallel():Dynamic;
	public function _build_extensions_serial():Dynamic;
	public function _check_abi():Dynamic;
	public function _define_torch_extension_name(extension:Dynamic):Dynamic;
	public function _ensure_stringlike(option:Dynamic, what:Dynamic, ?_default:Dynamic):Dynamic;
	public function _ensure_tested_string(option:Dynamic, tester:Dynamic, what:Dynamic, error_fmt:Dynamic, ?_default:Dynamic):Dynamic;
	public function _filter_build_errors(ext:Dynamic):Dynamic;
	/**
		If the current verbosity level is of greater than or equal to
		'level' print 'msg' to stdout.
	**/
	public function announce(msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var boolean_options : Dynamic;
	public function build_extension(ext:Dynamic):Dynamic;
	public function build_extensions():Dynamic;
	/**
		Ensure that the list of extensions (presumably provided as a
		command option 'extensions') is valid, i.e. it is a list of
		Extension objects.  We also support the old-style list of 2-tuples,
		where the tuples are (ext_name, build_info), which are converted to
		Extension instances here.
		
		Raise DistutilsSetupError if the structure is invalid anywhere;
		just returns otherwise.
	**/
	public function check_extensions_list(extensions:Dynamic):Dynamic;
	static public var command_consumes_arguments : Dynamic;
	public function copy_extensions_to_source():Dynamic;
	/**
		Copy a file respecting verbose, dry-run and force flags.  (The
		former two default to whatever is in the Distribution object, and
		the latter defaults to false for commands that don't define it.)
	**/
	public function copy_file(infile:Dynamic, outfile:Dynamic, ?preserve_mode:Dynamic, ?preserve_times:Dynamic, ?link:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Copy an entire directory tree respecting verbose, dry-run,
		and force flags.
	**/
	public function copy_tree(infile:Dynamic, outfile:Dynamic, ?preserve_mode:Dynamic, ?preserve_times:Dynamic, ?preserve_symlinks:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Print 'msg' to stdout if the global DEBUG (taken from the
		DISTUTILS_DEBUG environment variable) flag is true.
	**/
	public function debug_print(msg:Dynamic):Dynamic;
	static public var description : Dynamic;
	public function dump_options(?header:Dynamic, ?indent:Dynamic):Dynamic;
	public function ensure_dirname(option:Dynamic):Dynamic;
	/**
		Ensure that 'option' is the name of an existing file.
	**/
	public function ensure_filename(option:Dynamic):Dynamic;
	public function ensure_finalized():Dynamic;
	/**
		Ensure that 'option' is a string; if not defined, set it to
		'default'.
	**/
	public function ensure_string(option:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Ensure that 'option' is a list of strings.  If 'option' is
		currently a string, we split it either on /,\s* / or /\s+/, so
		"foo bar baz", "foo,bar,baz", and "foo,   bar baz" all become
		["foo", "bar", "baz"].
	**/
	public function ensure_string_list(option:Dynamic):Dynamic;
	public function execute(func:Dynamic, args:Dynamic, ?msg:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Set final values for all the options that this command supports.
		This is always called as late as possible, ie.  after any option
		assignments from the command-line or from other commands have been
		done.  Thus, this is the place to code option dependencies: if
		'foo' depends on 'bar', then it is safe to set 'foo' from 'bar' as
		long as 'foo' still has the same value it was assigned in
		'initialize_options()'.
		
		This method must be implemented by all command classes.
	**/
	public function finalize_options():Dynamic;
	/**
		Return the name of the SWIG executable.  On Unix, this is
		just "swig" -- it should be in the PATH.  Tries a bit harder on
		Windows.
	**/
	public function find_swig():Dynamic;
	public function get_command_name():Dynamic;
	/**
		Return the list of symbols that a shared extension has to
		export.  This either uses 'ext.export_symbols' or, if it's not
		provided, "PyInit_" + module_name.  Only relevant on Windows, where
		the .pyd file (DLL) must export the module "PyInit_" function.
	**/
	public function get_export_symbols(ext:Dynamic):Dynamic;
	/**
		Convert the name of an extension (eg. "foo.bar") into the name
		of the file from which it will be loaded (eg. "foo/bar.so", or
		"foo\bar.pyd").
	**/
	public function get_ext_filename(fullname:Dynamic):Dynamic;
	/**
		Returns the fullname of a given extension name.
		
		Adds the `package.` prefix
	**/
	public function get_ext_fullname(ext_name:Dynamic):Dynamic;
	/**
		Returns the path of the filename for a given extension.
		
		The file is located in `build_lib` or directly in the package
		(inplace option).
	**/
	public function get_ext_fullpath(ext_name:Dynamic):Dynamic;
	/**
		Wrapper around Distribution's 'get_command_obj()' method: find
		(create if necessary and 'create' is true) the command object for
		'command', call its 'ensure_finalized()' method, and return the
		finalized command object.
	**/
	public function get_finalized_command(command:Dynamic, ?create:Dynamic):Dynamic;
	/**
		Return the list of libraries to link against when building a
		shared extension.  On most platforms, this is just 'ext.libraries';
		on Windows, we add the Python library (eg. python20.dll).
	**/
	public function get_libraries(ext:Dynamic):Dynamic;
	public function get_outputs():Dynamic;
	public function get_source_files():Dynamic;
	/**
		Determine the sub-commands that are relevant in the current
		distribution (ie., that need to be run).  This is based on the
		'sub_commands' class attribute: each tuple in that list may include
		a method that we call to determine if the subcommand needs to be
		run for the current distribution.  Return a list of command names.
	**/
	public function get_sub_commands():Dynamic;
	static public var help_options : Dynamic;
	/**
		Set default values for all the options that this command
		supports.  Note that these defaults may be overridden by other
		commands, by the setup script, by config files, or by the
		command-line.  Thus, this is not the place to code dependencies
		between options; generally, 'initialize_options()' implementations
		are just a bunch of "self.foo = None" assignments.
		
		This method must be implemented by all command classes.
	**/
	public function initialize_options():Dynamic;
	/**
		Return true if 'ext' links to a dynamic lib in the same package
	**/
	public function links_to_dynamic(ext:Dynamic):Dynamic;
	public function make_archive(base_name:Dynamic, format:Dynamic, ?root_dir:Dynamic, ?base_dir:Dynamic, ?owner:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Special case of 'execute()' for operations that process one or
		more input files and generate one output file.  Works just like
		'execute()', except the operation is skipped and a different
		message printed if 'outfile' already exists and is newer than all
		files listed in 'infiles'.  If the command defined 'self.force',
		and it is true, then the command is unconditionally run -- does no
		timestamp checks.
	**/
	public function make_file(infiles:Dynamic, outfile:Dynamic, func:Dynamic, args:Dynamic, ?exec_msg:Dynamic, ?skip_msg:Dynamic, ?level:Dynamic):Dynamic;
	public function mkpath(name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Move a file respecting dry-run flag.
	**/
	public function move_file(src:Dynamic, dst:Dynamic, ?level:Dynamic):Dynamic;
	public function reinitialize_command(command:Dynamic, ?reinit_subcommands:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Build extensions in build directory, then copy if --inplace
	**/
	public function run():Dynamic;
	/**
		Run some other command: uses the 'run_command()' method of
		Distribution, which creates and finalizes the command object if
		necessary and then invokes its 'run()' method.
	**/
	public function run_command(command:Dynamic):Dynamic;
	static public var sep_by : Dynamic;
	/**
		Set the values of any "undefined" options from corresponding
		option values in some other command object.  "Undefined" here means
		"is None", which is the convention used to indicate that an option
		has not been changed between 'initialize_options()' and
		'finalize_options()'.  Usually called from 'finalize_options()' for
		options that depend on some other command rather than another
		option of the same command.  'src_cmd' is the other command from
		which option values will be taken (a command object will be created
		for it if necessary); the remaining arguments are
		'(src_option,dst_option)' tuples which mean "take the value of
		'src_option' in the 'src_cmd' command object, and copy it to
		'dst_option' in the current command object".
	**/
	public function set_undefined_options(src_cmd:Dynamic, ?option_pairs:python.VarArgs<Dynamic>):Dynamic;
	public function setup_shlib_compiler():Dynamic;
	/**
		Spawn an external command respecting dry-run flag.
	**/
	public function spawn(cmd:Dynamic, ?search_path:Dynamic, ?level:Dynamic):Dynamic;
	static public var sub_commands : Dynamic;
	/**
		Walk the list of source files in 'sources', looking for SWIG
		interface (.i) files.  Run SWIG on all that are found, and
		return a modified 'sources' list with SWIG source files replaced
		by the generated C (or C++) files.
	**/
	public function swig_sources(sources:Dynamic, extension:Dynamic):Dynamic;
	static public var user_options : Dynamic;
	public function warn(msg:Dynamic):Dynamic;
	public function write_stub(output_dir:Dynamic, ext:Dynamic, ?compile:Dynamic):Dynamic;
}