/* This file is generated, do not edit! */
package theano.configparser;
@:pythonImport("theano.configparser") extern class Configparser_Module {
	/**
		Add a new variable to theano.config
		
		:type name: string for form "[section0.[section1.[etc]]].option"
		:param name: the full name for this configuration variable.
		
		:type doc: string
		:param doc: What does this variable specify?
		
		:type configparam: ConfigParam instance
		:param configparam: an object for getting and setting this configuration
		    parameter
		
		:type root: object
		:param root: used for recursive calls -- do not provide an argument for
		    this parameter.
		
		:type in_c_key: boolean
		:param in_c_key: If True, then whenever this config option changes, the
		key associated to compiled C modules also changes, i.e. it may trigger a
		compilation of these modules (this compilation will only be partial if it
		turns out that the generated C code is unchanged). Set this option to False
		only if you are confident this option should not affect C code compilation.
		
		:returns: None
	**/
	static public function AddConfigVar(name:Dynamic, doc:Dynamic, configparam:Dynamic, ?root:Dynamic, ?in_c_key:Dynamic):Dynamic;
	static public function BoolParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public function FloatParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public function IntParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public var PY3 : Dynamic;
	static public function StrParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public var THEANO_FLAGS : Dynamic;
	static public var THEANO_FLAGS_DICT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _config_print(thing:Dynamic, buf:Dynamic, ?print_doc:Dynamic):Dynamic;
	static public var _config_var_list : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var config_files : Dynamic;
	static public function config_files_from_theanorc():Dynamic;
	static public var division : Dynamic;
	/**
		Return the overriding config value for a key.
		A successful search returns a string value.
		An unsuccessful search raises a KeyError
		
		The (decreasing) priority order is:
		- THEANO_FLAGS
		- ~./theanorc
	**/
	static public function fetch_val_for_key(key:Dynamic, ?delete_key:Dynamic):Dynamic;
	/**
		Return a string sha256 of the current config options. In the past,
		it was md5.
		
		The string should be such that we can safely assume that two different
		config setups will lead to two different strings.
		
		We only take into account config options for which `in_c_key` is True.
	**/
	static public function get_config_hash():Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parses a config string (comma-separated key=value components) into a dict.
	**/
	static public function parse_config_string(config_string:Dynamic, ?issue_warnings:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
	static public var theano_cfg : Dynamic;
	static public var theano_raw_cfg : Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}