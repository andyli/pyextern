/* This file is generated, do not edit! */
package numpy.distutils.command.develop;
@:pythonImport("numpy.distutils.command.develop", "develop") extern class Develop {
	static public var DEFAULT_SCHEME : Dynamic;
	static public var INSTALL_SCHEMES : Dynamic;
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
		Construct the command for dist, updating
		vars(self) with any keyword parameters.
	**/
	@:native("__init__")
	public function ___init__(dist:Dynamic, kw:Dynamic):Dynamic;
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
	public function _delete_path(path:Dynamic):Dynamic;
	static public var _easy_install__access_msg : Dynamic;
	static public var _easy_install__cant_write_msg : Dynamic;
	static public var _easy_install__editable_msg : Dynamic;
	static public var _easy_install__id_warning : Dynamic;
	static public var _easy_install__mv_warning : Dynamic;
	static public var _easy_install__no_default_msg : Dynamic;
	static public var _easy_install__not_exists_id : Dynamic;
	public function _ensure_stringlike(option:Dynamic, what:Dynamic, ?_default:Dynamic):Dynamic;
	public function _ensure_tested_string(option:Dynamic, tester:Dynamic, what:Dynamic, error_fmt:Dynamic, ?_default:Dynamic):Dynamic;
	public function _expand(attrs:Dynamic):Dynamic;
	public function _expand_attrs(attrs:Dynamic):Dynamic;
	/**
		Fix the install_dir if "--user" was used.
	**/
	public function _fix_install_dir_for_user_site():Dynamic;
	/**
		There are a couple of template scripts in the package. This
		function loads one of them and prepares it for use.
	**/
	static public function _load_template(dev_path:Dynamic):Dynamic;
	/**
		Render the Setuptools version and installation details, then exit.
	**/
	static public function _render_version():Dynamic;
	/**
		When easy_install is about to run bdist_egg on a source dist, that
		source dist might have 'setup_requires' directives, requiring
		additional fetching. Ensure the fetcher options given to easy_install
		are available to that command as well.
	**/
	public function _set_fetcher_options(base:Dynamic):Dynamic;
	public function add_output(path:Dynamic):Dynamic;
	/**
		If the current verbosity level is of greater than or equal to
		'level' print 'msg' to stdout.
	**/
	public function announce(msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var boolean_options : Dynamic;
	public function build_and_install(setup_script:Dynamic, setup_base:Dynamic):Dynamic;
	public function byte_compile(to_compile:Dynamic):Dynamic;
	public function cant_write_to_target():Dynamic;
	public function check_editable(spec:Dynamic):Dynamic;
	/**
		Empirically verify whether .pth files are supported in inst. dir
	**/
	public function check_pth_processing():Dynamic;
	/**
		Verify that self.install_dir is .pth-capable dir, if needed
	**/
	public function check_site_dir():Dynamic;
	static public var command_consumes_arguments : Dynamic;
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
		A distribution index that scans web pages for download URLs
	**/
	static public function create_index(?index_url:Dynamic, ?hosts:Dynamic, ?ca_bundle:Dynamic, ?verify_ssl:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
	/**
		Print 'msg' to stdout if the global DEBUG (taken from the
		DISTUTILS_DEBUG environment variable) flag is true.
	**/
	public function debug_print(msg:Dynamic):Dynamic;
	public function delete_blockers(blockers:Dynamic):Dynamic;
	static public var description : Dynamic;
	public function dump_options(?header:Dynamic, ?indent:Dynamic):Dynamic;
	public function easy_install(spec:Dynamic, ?deps:Dynamic):Dynamic;
	public function egg_distribution(egg_path:Dynamic):Dynamic;
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
	/**
		Extract a bdist_wininst to the directories an egg would use
	**/
	public function exe_to_egg(dist_filename:Dynamic, egg_tmp:Dynamic):Dynamic;
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
	public function get_command_name():Dynamic;
	/**
		Wrapper around Distribution's 'get_command_obj()' method: find
		(create if necessary and 'create' is true) the command object for
		'command', call its 'ensure_finalized()' method, and return the
		finalized command object.
	**/
	public function get_finalized_command(command:Dynamic, ?create:Dynamic):Dynamic;
	/**
		Determine the sub-commands that are relevant in the current
		distribution (ie., that need to be run).  This is based on the
		'sub_commands' class attribute: each tuple in that list may include
		a method that we call to determine if the subcommand needs to be
		run for the current distribution.  Return a list of command names.
	**/
	public function get_sub_commands():Dynamic;
	static public var help_msg : Dynamic;
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
	public function install_egg(egg_path:Dynamic, tmpdir:Dynamic):Dynamic;
	/**
		Write all the scripts for `dist`, unless scripts are excluded
	**/
	public function install_egg_scripts(dist:Dynamic):Dynamic;
	public function install_eggs(spec:Dynamic, dist_filename:Dynamic, tmpdir:Dynamic):Dynamic;
	public function install_exe(dist_filename:Dynamic, tmpdir:Dynamic):Dynamic;
	public function install_for_development():Dynamic;
	public function install_item(spec:Dynamic, download:Dynamic, tmpdir:Dynamic, deps:Dynamic, ?install_needed:Dynamic):Dynamic;
	/**
		Generate a legacy script wrapper and install it
	**/
	public function install_script(dist:Dynamic, script_name:Dynamic, script_text:Dynamic, ?dev_path:Dynamic):Dynamic;
	/**
		Make sure there's a site.py in the target dir, if needed
	**/
	public function install_site_py():Dynamic;
	public function install_wrapper_scripts(dist:Dynamic):Dynamic;
	/**
		Helpful installation message for display to package users
	**/
	public function installation_report(req:Dynamic, dist:Dynamic, ?what:Dynamic):Dynamic;
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
	public function maybe_move(spec:Dynamic, dist_filename:Dynamic, setup_base:Dynamic):Dynamic;
	public function mkpath(name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Move a file respecting dry-run flag.
	**/
	public function move_file(src:Dynamic, dst:Dynamic, ?level:Dynamic):Dynamic;
	static public var negative_opt : Dynamic;
	public function no_default_version_msg():Dynamic;
	public function not_editable(spec:Dynamic):Dynamic;
	public function process_distribution(requirement:Dynamic, dist:Dynamic, ?deps:Dynamic, info:Dynamic):Dynamic;
	/**
		Return a pseudo-tempname base in the install directory.
		This code is intentionally naive; if a malicious party can write to
		the target directory you're already in deep doodoo.
	**/
	public function pseudo_tempname():Dynamic;
	public function reinitialize_command(command:Dynamic, ?reinit_subcommands:Dynamic, kw:Dynamic):Dynamic;
	public function report_editable(spec:Dynamic, setup_script:Dynamic):Dynamic;
	/**
		A command's raison d'etre: carry out the action it exists to
		perform, controlled by the options initialized in
		'initialize_options()', customized by other commands, the setup
		script, the command-line, and config files, and finalized in
		'finalize_options()'.  All terminal output and filesystem
		interaction should be done by 'run()'.
		
		This method must be implemented by all command classes.
	**/
	public function run():Dynamic;
	/**
		Run some other command: uses the 'run_command()' method of
		Distribution, which creates and finalizes the command object if
		necessary and then invokes its 'run()' method.
	**/
	public function run_command(command:Dynamic):Dynamic;
	public function run_setup(setup_script:Dynamic, setup_base:Dynamic, args:Dynamic):Dynamic;
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
	public function should_unzip(dist:Dynamic):Dynamic;
	/**
		Spawn an external command respecting dry-run flag.
	**/
	public function spawn(cmd:Dynamic, ?search_path:Dynamic, ?level:Dynamic):Dynamic;
	static public var sub_commands : Dynamic;
	public function uninstall_link():Dynamic;
	public function unpack_and_compile(egg_path:Dynamic, destination:Dynamic):Dynamic;
	public function unpack_progress(src:Dynamic, dst:Dynamic):Dynamic;
	public function update_pth(dist:Dynamic):Dynamic;
	static public var user_options : Dynamic;
	public function warn(msg:Dynamic):Dynamic;
	public function warn_deprecated_options():Dynamic;
	/**
		Write an executable file to the scripts directory
	**/
	public function write_script(script_name:Dynamic, contents:Dynamic, ?mode:Dynamic, ?blockers:Dynamic):Dynamic;
}