/* This file is generated, do not edit! */
package docutils.frontend;
@:pythonImport("docutils.frontend") extern class Frontend_Module {
	static public var SUPPRESS_HELP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a copy of `settings_spec` excluding/replacing some settings.
		
		`settings_spec` is a tuple of configuration settings with a structure
		described for docutils.SettingsSpec.settings_spec.
		
		Optional positional arguments are names of to-be-excluded settings.
		Keyword arguments are option specification replacements.
		(See the html4strict writer for an example.)
	**/
	static public function filter_settings_spec(settings_spec:Dynamic, ?exclude:python.VarArgs<Dynamic>, ?replace:python.KwArgs<Dynamic>):Dynamic;
	static public var locale_encoding : Dynamic;
	static public function make_one_path_absolute(base_path:Dynamic, path:Dynamic):Dynamic;
	/**
		Interpret filesystem path settings relative to the `base_path` given.
		
		Paths are values in `pathdict` whose keys are in `keys`.  Get `keys` from
		`OptionParser.relative_path_settings`.
	**/
	static public function make_paths_absolute(pathdict:Dynamic, keys:Dynamic, ?base_path:Dynamic):Dynamic;
	/**
		Read a configuration file during option processing.  (Option callback.)
	**/
	static public function read_config_file(option:Dynamic, opt:Dynamic, value:Dynamic, parser:Dynamic):Dynamic;
	/**
		Store multiple values in `parser.values`.  (Option callback.)
		
		Store `None` for each attribute named in `args`, and store the value for
		each key (attribute name) in `kwargs`.
	**/
	static public function store_multiple(option:Dynamic, opt:Dynamic, value:Dynamic, parser:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check/normalize boolean settings:
		True:  '1', 'on', 'yes', 'true'
		False: '0', 'off', 'no','false', ''
	**/
	static public function validate_boolean(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_colon_separated_string_list(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	/**
		Check/normalize list arguments (split at "," and strip whitespace).
		    
	**/
	static public function validate_comma_separated_list(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_dependency_file(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_encoding(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	/**
		Side-effect: if an error handler is included in the value, it is inserted
		into the appropriate place as if it was a separate setting/option.
	**/
	static public function validate_encoding_and_error_handler(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_encoding_error_handler(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_nonnegative_int(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	/**
		Check/normalize a comma separated list of smart quote definitions.
		
		Return a list of (language-tag, quotes) string tuples.
	**/
	static public function validate_smartquotes_locales(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_strip_class(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	/**
		Check/normalize three-value settings:
		True:  '1', 'on', 'yes', 'true'
		False: '0', 'off', 'no','false', ''
		any other value: returned as-is.
	**/
	static public function validate_ternary(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_threshold(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
	static public function validate_url_trailing_slash(setting:Dynamic, value:Dynamic, option_parser:Dynamic, ?config_parser:Dynamic, ?config_section:Dynamic):Dynamic;
}