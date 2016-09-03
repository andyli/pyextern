/* This file is generated, do not edit! */
package docutils.frontend;
@:pythonImport("docutils.frontend", "OptionParser") extern class OptionParser {
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
		`components` is a list of Docutils components each containing a
		``.settings_spec`` attribute.  `defaults` is a mapping of setting
		default overrides.
	**/
	@:native("__init__")
	public function ___init__(?components:Dynamic, ?defaults:Dynamic, ?read_config_files:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		`components` is a list of Docutils components each containing a
		``.settings_spec`` attribute.  `defaults` is a mapping of setting
		default overrides.
	**/
	public function new(?components:Dynamic, ?defaults:Dynamic, ?read_config_files:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_help_option():Dynamic;
	public function _add_version_option():Dynamic;
	public function _check_conflict(option:Dynamic):Dynamic;
	public function _create_option_list():Dynamic;
	public function _create_option_mappings():Dynamic;
	public function _get_all_options():Dynamic;
	public function _get_args(args:Dynamic):Dynamic;
	public function _init_parsing_state():Dynamic;
	/**
		_match_long_opt(opt : string) -> string
		
		Determine which long option string 'opt' matches, ie. which one
		it is an unambiguous abbreviation for.  Raises BadOptionError if
		'opt' doesn't unambiguously match any long option string.
	**/
	public function _match_long_opt(opt:Dynamic):Dynamic;
	public function _populate_option_list(option_list:Dynamic, ?add_help:Dynamic):Dynamic;
	/**
		_process_args(largs : [string],
		                 rargs : [string],
		                 values : Values)
		
		Process command-line arguments and populate 'values', consuming
		options and arguments from 'rargs'.  If 'allow_interspersed_args' is
		false, stop at the first non-option argument.  If true, accumulate any
		interspersed non-option arguments in 'largs'.
	**/
	public function _process_args(largs:Dynamic, rargs:Dynamic, values:Dynamic):Dynamic;
	public function _process_long_opt(rargs:Dynamic, values:Dynamic):Dynamic;
	public function _process_short_opts(rargs:Dynamic, values:Dynamic):Dynamic;
	public function _share_option_mappings(parser:Dynamic):Dynamic;
	/**
		add_option(Option)
		add_option(opt_str, ..., kwarg=val, ...)
	**/
	public function add_option(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function add_option_group(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function add_options(option_list:Dynamic):Dynamic;
	static public var booleans : Dynamic;
	public function check_args(args:Dynamic):Dynamic;
	/**
		Store positional arguments as runtime settings.
	**/
	public function check_values(values:Dynamic, args:Dynamic):Dynamic;
	static public var config_section : Dynamic;
	static public var config_section_dependencies : Dynamic;
	static public var default_error_encoding : Dynamic;
	static public var default_error_encoding_error_handler : Dynamic;
	/**
		Declare that you are done with this OptionParser.  This cleans up
		reference cycles so the OptionParser (and all objects referenced by
		it) can be garbage-collected promptly.  After calling destroy(), the
		OptionParser is unusable.
	**/
	public function destroy():Dynamic;
	/**
		Set parsing to stop on the first non-option. Use this if
		you have a command processor which runs another command that
		has options of its own and you want to make sure these options
		don't get confused.
	**/
	public function disable_interspersed_args():Dynamic;
	/**
		Set parsing to not stop on the first non-option, allowing
		interspersing switches with command arguments. This is the
		default behavior. See also disable_interspersed_args() and the
		class documentation description of the attribute
		allow_interspersed_args.
	**/
	public function enable_interspersed_args():Dynamic;
	/**
		error(msg : string)
		
		Print a usage message incorporating 'msg' to stderr and exit.
		If you override this in a subclass, it should not return -- it
		should either exit or raise an exception.
	**/
	public function error(msg:Dynamic):Dynamic;
	public function exit(?status:Dynamic, ?msg:Dynamic):Dynamic;
	public function expand_prog_name(s:Dynamic):Dynamic;
	public function format_description(formatter:Dynamic):Dynamic;
	public function format_epilog(formatter:Dynamic):Dynamic;
	public function format_help(?formatter:Dynamic):Dynamic;
	public function format_option_help(?formatter:Dynamic):Dynamic;
	/**
		Returns a dictionary containing appropriate config file settings.
	**/
	public function get_config_file_settings(config_file:Dynamic):Dynamic;
	/**
		Needed to get custom `Values` instances.
	**/
	public function get_default_values():Dynamic;
	public function get_description():Dynamic;
	public function get_option(opt_str:Dynamic):Dynamic;
	/**
		Get an option by its dest.
		
		If you're supplying a dest which is shared by several options,
		it is undefined which option of those is returned.
		
		A KeyError is raised if there is no option with the supplied
		dest.
	**/
	public function get_option_by_dest(dest:Dynamic):Dynamic;
	public function get_option_group(opt_str:Dynamic):Dynamic;
	public function get_prog_name():Dynamic;
	/**
		Return list of config files, from environment or standard.
	**/
	public function get_standard_config_files():Dynamic;
	public function get_standard_config_settings():Dynamic;
	public function get_usage():Dynamic;
	public function get_version():Dynamic;
	public function has_option(opt_str:Dynamic):Dynamic;
	/**
		parse_args(args : [string] = sys.argv[1:],
		           values : Values = None)
		-> (values : Values, args : [string])
		
		Parse the command-line options found in 'args' (default:
		sys.argv[1:]).  Any errors result in a call to 'error()', which
		by default prints the usage message to stderr and calls
		sys.exit() with an error message.  On success returns a pair
		(values, args) where 'values' is a Values instance (with all
		your option values) and 'args' is the list of arguments left
		over after parsing options.
	**/
	public function parse_args(?args:Dynamic, ?values:Dynamic):Dynamic;
	/**
		For each component, first populate from the `SettingsSpec.settings_spec`
		structure, then from the `SettingsSpec.settings_defaults` dictionary.
		After all components have been processed, check for and populate from
		each component's `SettingsSpec.settings_default_overrides` dictionary.
	**/
	public function populate_from_components(components:Dynamic):Dynamic;
	/**
		print_help(file : file = stdout)
		
		Print an extended help message, listing all options and any
		help text provided with them, to 'file' (default stdout).
	**/
	public function print_help(?file:Dynamic):Dynamic;
	/**
		print_usage(file : file = stdout)
		
		Print the usage message for the current program (self.usage) to
		'file' (default stdout).  Any occurrence of the string "%prog" in
		self.usage is replaced with the name of the current program
		(basename of sys.argv[0]).  Does nothing if self.usage is empty
		or not defined.
	**/
	public function print_usage(?file:Dynamic):Dynamic;
	/**
		print_version(file : file = stdout)
		
		Print the version message for this program (self.version) to
		'file' (default stdout).  As with print_usage(), any occurrence
		of "%prog" in self.version is replaced by the current program's
		name.  Does nothing if self.version is empty or undefined.
	**/
	public function print_version(?file:Dynamic):Dynamic;
	static public var relative_path_settings : Dynamic;
	public function remove_option(opt_str:Dynamic):Dynamic;
	public function set_conflict_handler(handler:Dynamic):Dynamic;
	public function set_default(dest:Dynamic, value:Dynamic):Dynamic;
	public function set_defaults(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_defaults_from_dict(defaults:Dynamic):Dynamic;
	public function set_description(description:Dynamic):Dynamic;
	public function set_process_default_values(process:Dynamic):Dynamic;
	public function set_usage(usage:Dynamic):Dynamic;
	static public var settings_default_overrides : Dynamic;
	static public var settings_defaults : Dynamic;
	static public var settings_spec : Dynamic;
	static public var standard_config_files : Dynamic;
	static public var standard_option_list : Dynamic;
	static public var threshold_choices : Dynamic;
	static public var thresholds : Dynamic;
	static public var version_template : Dynamic;
}