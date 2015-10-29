/* This file is generated, do not edit! */
package numpy.distutils.command.install;
@:pythonImport("numpy.distutils.command.install", "install") extern class Install {
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
		Create and initialize a new Command object.  Most importantly,
		invokes the 'initialize_options()' method, which is the real
		initializer and depends on the actual command being
		instantiated.
	**/
	@:native("__init__")
	public function ___init__(dist:Dynamic):Dynamic;
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
		Attempt to detect whether run() was called from setup() or by another
		command.  If called by setup(), the parent caller will be the
		'run_command' method in 'distutils.dist', and *its* caller will be
		the 'run_commands' method.  If called any other way, the
		immediate caller *might* be 'run_command', but it won't have been
		called by 'run_commands'. Return True in that case or if a call stack
		is unavailable. Return False otherwise.
	**/
	static public function _called_from_setup(run_frame:Dynamic):Dynamic;
	public function _ensure_stringlike(option:Dynamic, what:Dynamic, ?_default:Dynamic):Dynamic;
	public function _ensure_tested_string(option:Dynamic, tester:Dynamic, what:Dynamic, error_fmt:Dynamic, ?_default:Dynamic):Dynamic;
	public function _expand_attrs(attrs:Dynamic):Dynamic;
	static public var _nc : Dynamic;
	/**
		If the current verbosity level is of greater than or equal to
		'level' print 'msg' to stdout.
	**/
	public function announce(msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var boolean_options : Dynamic;
	/**
		Change the install directories pointed by name using root.
	**/
	public function change_roots(names:Dynamic):Dynamic;
	/**
		Call `convert_path` over `names`.
	**/
	public function convert_paths(names:Dynamic):Dynamic;
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
		Create directories under ~.
	**/
	public function create_home_path():Dynamic;
	/**
		Creates the .pth file
	**/
	public function create_path_file():Dynamic;
	/**
		Print 'msg' to stdout if the global DEBUG (taken from the
		DISTUTILS_DEBUG environment variable) flag is true.
	**/
	public function debug_print(msg:Dynamic):Dynamic;
	static public var description : Dynamic;
	public function do_egg_install():Dynamic;
	/**
		Dumps the list of user options.
	**/
	public function dump_dirs(msg:Dynamic):Dynamic;
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
		Calls `os.path.expanduser` on install_base, install_platbase and
		root.
	**/
	public function expand_basedirs():Dynamic;
	/**
		Calls `os.path.expanduser` on install dirs.
	**/
	public function expand_dirs():Dynamic;
	/**
		Finalizes options.
	**/
	public function finalize_options():Dynamic;
	/**
		Finalizes options for non-posix platforms
	**/
	public function finalize_other():Dynamic;
	/**
		Finalizes options for posix platforms.
	**/
	public function finalize_unix():Dynamic;
	public function get_command_name():Dynamic;
	/**
		Wrapper around Distribution's 'get_command_obj()' method: find
		(create if necessary and 'create' is true) the command object for
		'command', call its 'ensure_finalized()' method, and return the
		finalized command object.
	**/
	public function get_finalized_command(command:Dynamic, ?create:Dynamic):Dynamic;
	/**
		Returns the inputs of all the sub-commands
	**/
	public function get_inputs():Dynamic;
	/**
		Assembles the outputs of all the sub-commands.
	**/
	public function get_outputs():Dynamic;
	/**
		Determine the sub-commands that are relevant in the current
		distribution (ie., that need to be run).  This is based on the
		'sub_commands' class attribute: each tuple in that list may include
		a method that we call to determine if the subcommand needs to be
		run for the current distribution.  Return a list of command names.
	**/
	public function get_sub_commands():Dynamic;
	/**
		Set `path_file` and `extra_dirs` using `extra_path`.
	**/
	public function handle_extra_path():Dynamic;
	/**
		Returns true if the current distribution has any data to.
		install.
	**/
	public function has_data():Dynamic;
	/**
		Returns true if the current distribution has any headers to
		install.
	**/
	public function has_headers():Dynamic;
	/**
		Returns true if the current distribution has any Python
		modules to install.
	**/
	public function has_lib():Dynamic;
	/**
		Returns true if the current distribution has any scripts to.
		install.
	**/
	public function has_scripts():Dynamic;
	/**
		Initializes options.
	**/
	public function initialize_options():Dynamic;
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
	static public var negative_opt : Dynamic;
	static public var new_commands : Dynamic;
	public function reinitialize_command(command:Dynamic, ?reinit_subcommands:Dynamic):Dynamic;
	/**
		Runs the command.
	**/
	public function run():Dynamic;
	/**
		Run some other command: uses the 'run_command()' method of
		Distribution, which creates and finalizes the command object if
		necessary and then invokes its 'run()' method.
	**/
	public function run_command(command:Dynamic):Dynamic;
	/**
		Sets the install directories by applying the install schemes.
	**/
	public function select_scheme(name:Dynamic):Dynamic;
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
	public function set_undefined_options(src_cmd:Dynamic, option_pairs:Dynamic):Dynamic;
	/**
		The setuptools version of the .run() method.
		
		We must pull in the entire code so we can override the level used in the
		_getframe() call since we wrap this call by one more level.
	**/
	public function setuptools_run():Dynamic;
	/**
		Spawn an external command respecting dry-run flag.
	**/
	public function spawn(cmd:Dynamic, ?search_path:Dynamic, ?level:Dynamic):Dynamic;
	static public var sub_commands : Dynamic;
	static public var user_options : Dynamic;
	public function warn(msg:Dynamic):Dynamic;
}