/* This file is generated, do not edit! */
package numpy.distutils.numpy_distribution;
@:pythonImport("numpy.distutils.numpy_distribution", "NumpyDistribution") extern class NumpyDistribution {
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
		Construct a new Distribution instance: initialize all the
		attributes of a Distribution, and then use 'attrs' (a dictionary
		mapping attribute names to values) to assign some of those
		attributes their "real" values.  (Any attributes not mentioned in
		'attrs' will be assigned to some null value: 0, None, an empty list
		or dictionary, etc.)  Most importantly, initialize the
		'command_obj' attribute to the empty dictionary; this will be
		filled in with real command objects by 'parse_command_line()'.
	**/
	@:native("__init__")
	public function ___init__(?attrs:Dynamic):Dynamic;
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
		Handle 'exclude()' for list/tuple attrs without a special handler
	**/
	public function _exclude_misc(name:Dynamic, value:Dynamic):Dynamic;
	public function _exclude_packages(packages:Dynamic):Dynamic;
	/**
		Convert feature name to corresponding option attribute name
	**/
	public function _feature_attrname(name:Dynamic):Dynamic;
	/**
		Add/remove features and resolve dependencies between them
	**/
	public function _finalize_features():Dynamic;
	/**
		Return the non-display options recognized at the top level.
		
		This includes options that are recognized *only* at the top
		level as well as options recognized for commands.
	**/
	public function _get_toplevel_options():Dynamic;
	/**
		Handle 'include()' for list/tuple attrs without a special handler
	**/
	public function _include_misc(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Parse the command-line options for a single command.
		'parser' must be a FancyGetopt instance; 'args' must be the list
		of arguments, starting with the current command (whose options
		we are about to parse).  Returns a new version of 'args' with
		the next command at the front of the list; will be the empty
		list if there are no more commands on the command line.  Returns
		None if the user asked for help on this command.
	**/
	public function _parse_command_opts(parser:Dynamic, args:Dynamic):Dynamic;
	static public var _patched_dist : Dynamic;
	/**
		Set the options for 'command_obj' from 'option_dict'.  Basically
		this means copying elements of a dictionary ('option_dict') to
		attributes of an instance ('command').
		
		'command_obj' must be a Command instance.  If 'option_dict' is not
		supplied, uses the standard option dictionary for this command
		(from 'self.command_options').
	**/
	public function _set_command_options(command_obj:Dynamic, ?option_dict:Dynamic):Dynamic;
	/**
		Set feature's inclusion status
	**/
	public function _set_feature(name:Dynamic, status:Dynamic):Dynamic;
	/**
		Add --with-X/--without-X options based on optional features
	**/
	public function _set_global_opts_from_features():Dynamic;
	/**
		Show help for the setup script command-line in the form of
		several lists of command-line options.  'parser' should be a
		FancyGetopt instance; do not expect it to be returned in the
		same state, as its option table will be reset to make it
		generate the correct help text.
		
		If 'global_options' is true, lists the global options:
		--verbose, --dry-run, etc.  If 'display_options' is true, lists
		the "display-only" options: --name, --version, etc.  Finally,
		lists per-command help for every command name or command class
		in 'commands'.
	**/
	public function _show_help(parser:Dynamic, ?global_options:Dynamic, ?display_options:Dynamic, ?commands:Dynamic):Dynamic;
	public function announce(msg:Dynamic, ?level:Dynamic):Dynamic;
	static public var common_usage : Dynamic;
	static public var display_option_names : Dynamic;
	static public var display_options : Dynamic;
	public function dump_option_dicts(?header:Dynamic, ?commands:Dynamic, ?indent:Dynamic):Dynamic;
	/**
		Remove items from distribution that are named in keyword arguments
		
		For example, 'dist.exclude(py_modules=["x"])' would remove 'x' from
		the distribution's 'py_modules' attribute.  Excluding packages uses
		the 'exclude_package()' method, so all of the package's contained
		packages, modules, and extensions are also excluded.
		
		Currently, this method only supports exclusion from attributes that are
		lists or tuples.  If you need to add support for excluding from other
		attributes in this or a subclass, you can add an '_exclude_X' method,
		where 'X' is the name of the attribute.  The method will be called with
		the value passed to 'exclude()'.  So, 'dist.exclude(foo={"bar":"baz"})'
		will try to call 'dist._exclude_foo({"bar":"baz"})', which can then
		handle whatever special exclusion logic is needed.
	**/
	public function exclude(attrs:Dynamic):Dynamic;
	/**
		Remove packages, modules, and extensions in named package
	**/
	public function exclude_package(_package:Dynamic):Dynamic;
	/**
		Return 1 if feature is included, 0 if excluded, 'None' if unknown
	**/
	public function feature_is_included(name:Dynamic):Dynamic;
	/**
		Fetch an egg needed for building
	**/
	public function fetch_build_egg(req:Dynamic):Dynamic;
	/**
		Resolve pre-setup requirements
	**/
	public function fetch_build_eggs(requires:Dynamic):Dynamic;
	/**
		Set final values for all the options on the Distribution
		instance, analogous to the .finalize_options() method of Command
		objects.
	**/
	public function finalize_options():Dynamic;
	/**
		Find as many configuration files as should be processed for this
		platform, and return a list of filenames in the order in which they
		should be parsed.  The filenames returned are guaranteed to exist
		(modulo nasty race conditions).
		
		There are three possible config files: distutils.cfg in the
		Distutils installation directory (ie. where the top-level
		Distutils __inst__.py file lives), a file in the user's home
		directory named .pydistutils.cfg on Unix and pydistutils.cfg
		on Windows/Mac; and setup.cfg in the current directory.
		
		The file in the user's home directory can be disabled with the
		--no-user-cfg option.
	**/
	public function find_config_files():Dynamic;
	/**
		Return a '{cmd: {opt:val}}' map of all command-line options
		
		Option names are all long, but do not include the leading '--', and
		contain dashes rather than underscores.  If the option doesn't take
		an argument (e.g. '--quiet'), the 'val' is 'None'.
		
		Note that options provided by config files are intentionally excluded.
	**/
	public function get_cmdline_options():Dynamic;
	/**
		Pluggable version of get_command_class()
	**/
	public function get_command_class(command:Dynamic):Dynamic;
	/**
		Get a list of (command, description) tuples.
		The list is divided into "standard commands" (listed in
		distutils.command.__all__) and "extra commands" (mentioned in
		self.cmdclass, but not a standard command).  The descriptions come
		from the command class attribute 'description'.
	**/
	public function get_command_list():Dynamic;
	/**
		Return the command object for 'command'.  Normally this object
		is cached on a previous call to 'get_command_obj()'; if no command
		object for 'command' is in the cache, then we either create and
		return it (if 'create' is true) or return None.
	**/
	public function get_command_obj(command:Dynamic, ?create:Dynamic):Dynamic;
	/**
		Return a list of packages from which commands are loaded.
	**/
	public function get_command_packages():Dynamic;
	public function get_egg_cache_dir():Dynamic;
	/**
		Get the option dictionary for a given command.  If that
		command's option dictionary hasn't been created yet, then create it
		and return the new dictionary; otherwise, return the existing
		option dictionary.
	**/
	public function get_option_dict(command:Dynamic):Dynamic;
	static public var global_options : Dynamic;
	/**
		If there were any non-global "display-only" options
		(--help-commands or the metadata display options) on the command
		line, display the requested info and return true; else return
		false.
	**/
	public function handle_display_options(option_order:Dynamic):Dynamic;
	public function has_c_libraries():Dynamic;
	/**
		Return true if 'exclude_package(package)' would do something
	**/
	public function has_contents_for(_package:Dynamic):Dynamic;
	public function has_data_files():Dynamic;
	public function has_ext_modules():Dynamic;
	public function has_headers():Dynamic;
	public function has_modules():Dynamic;
	public function has_pure_modules():Dynamic;
	public function has_scons_scripts():Dynamic;
	public function has_scripts():Dynamic;
	/**
		Add items to distribution that are named in keyword arguments
		
		For example, 'dist.exclude(py_modules=["x"])' would add 'x' to
		the distribution's 'py_modules' attribute, if it was not already
		there.
		
		Currently, this method only supports inclusion for attributes that are
		lists or tuples.  If you need to add support for adding to other
		attributes in this or a subclass, you can add an '_include_X' method,
		where 'X' is the name of the attribute.  The method will be called with
		the value passed to 'include()'.  So, 'dist.include(foo={"bar":"baz"})'
		will try to call 'dist._include_foo({"bar":"baz"})', which can then
		handle whatever special inclusion logic is needed.
	**/
	public function include(attrs:Dynamic):Dynamic;
	/**
		Request inclusion of feature named 'name'
	**/
	public function include_feature(name:Dynamic):Dynamic;
	public function is_pure():Dynamic;
	/**
		Yield all packages, modules, and extension names in distribution
	**/
	public function iter_distribution_names():Dynamic;
	static public var negative_opt : Dynamic;
	/**
		Process features after parsing command line options
	**/
	public function parse_command_line():Dynamic;
	public function parse_config_files(?filenames:Dynamic):Dynamic;
	public function patch_missing_pkg_info(attrs:Dynamic):Dynamic;
	/**
		Print a subset of the list of all commands -- used by
		'print_commands()'.
	**/
	public function print_command_list(commands:Dynamic, header:Dynamic, max_length:Dynamic):Dynamic;
	/**
		Print out a help message listing all available commands with a
		description of each.  The list is divided into "standard commands"
		(listed in distutils.command.__all__) and "extra commands"
		(mentioned in self.cmdclass, but not a standard command).  The
		descriptions come from the command class attribute
		'description'.
	**/
	public function print_commands():Dynamic;
	/**
		Reinitializes a command to the state it was in when first
		returned by 'get_command_obj()': ie., initialized but not yet
		finalized.  This provides the opportunity to sneak option
		values in programmatically, overriding or supplementing
		user-supplied values from the config files and command line.
		You'll have to re-finalize the command object (by calling
		'finalize_options()' or 'ensure_finalized()') before using it for
		real.
		
		'command' should be a command name (string) or command object.  If
		'reinit_subcommands' is true, also reinitializes the command's
		sub-commands, as declared by the 'sub_commands' class attribute (if
		it has one).  See the "install" command for an example.  Only
		reinitializes the sub-commands that actually matter, ie. those
		whose test predicates return true.
		
		Returns the reinitialized command object.
	**/
	public function reinitialize_command(command:Dynamic, ?reinit_subcommands:Dynamic):Dynamic;
	/**
		Do whatever it takes to run a command (including nothing at all,
		if the command has already been run).  Specifically: if we have
		already created and run the command named by 'command', return
		silently without doing anything.  If the command named by 'command'
		doesn't even have a command object yet, create one.  Then invoke
		'run()' on that command object (or an existing one).
	**/
	public function run_command(command:Dynamic):Dynamic;
	/**
		Run each command that was seen on the setup script command line.
		Uses the list of commands found and cache of command objects
		created by 'get_command_obj()'.
	**/
	public function run_commands():Dynamic;
}