/* This file is generated, do not edit! */
package docutils.frontend;
@:pythonImport("docutils.frontend", "ConfigParser") extern class ConfigParser {
	static public var BOOLEAN_STATES : Dynamic;
	static public var NONSPACECRE : Dynamic;
	static public var OPTCRE : Dynamic;
	static public var OPTCRE_NV : Dynamic;
	static public var SECTCRE : Dynamic;
	static public var _DEFAULT_INTERPOLATION : Dynamic;
	static public var _MutableMapping__marker : Dynamic;
	static public var _OPT_NV_TMPL : Dynamic;
	static public var _OPT_TMPL : Dynamic;
	static public var _SECT_TMPL : Dynamic;
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	public function __delitem__(key:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Return a boolean value translating from other types if necessary.
		        
	**/
	public function _convert_to_boolean(value:Dynamic):Dynamic;
	public function _get(section:Dynamic, conv:Dynamic, option:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _get_conv(section:Dynamic, option:Dynamic, conv:Dynamic, ?raw:Dynamic, ?vars:Dynamic, ?fallback:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _handle_error(exc:Dynamic, fpname:Dynamic, lineno:Dynamic, line:Dynamic):Dynamic;
	public function _join_multiline_values():Dynamic;
	/**
		Parse a sectioned configuration file.
		
		Each section in a configuration file contains a header, indicated by
		a name in square brackets (`[]'), plus key/value options, indicated by
		`name' and `value' delimited with a specific substring (`=' or `:' by
		default).
		
		Values can span multiple lines, as long as they are indented deeper
		than the first line of the value. Depending on the parser's mode, blank
		lines may be treated as parts of multiline values or ignored.
		
		Configuration files may include comments, prefixed by specific
		characters (`#' and `;' by default). Comments may appear on their own
		in an otherwise empty line or may be entered in lines holding values or
		section names.
	**/
	public function _read(fp:Dynamic, fpname:Dynamic):Dynamic;
	/**
		Create a sequence of lookups with 'vars' taking priority over
		the 'section' which takes priority over the DEFAULTSECT.
	**/
	public function _unify_values(section:Dynamic, vars:Dynamic):Dynamic;
	/**
		Raises a TypeError for non-string values.
		
		The only legal non-string value if we allow valueless
		options is None, so we need to check if the value is a
		string if:
		- we do not allow valueless options, or
		- we allow valueless options but the value is not None
		
		For compatibility reasons this method is not used in classic set()
		for RawConfigParsers. It is invoked in every case for mapping protocol
		access and in ConfigParser.set().
	**/
	public function _validate_value_types(?section:Dynamic, ?option:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Write a single section to the specified `fp'.
	**/
	public function _write_section(fp:Dynamic, section_name:Dynamic, section_items:Dynamic, delimiter:Dynamic):Dynamic;
	/**
		Create a new section in the configuration.
		
		Raise DuplicateSectionError if a section by the specified name
		already exists. Raise ValueError if name is DEFAULT.
	**/
	public function add_section(section:Dynamic):Dynamic;
	/**
		D.clear() -> None.  Remove all items from D.
	**/
	public function clear():Dynamic;
	public var converters : Dynamic;
	public function defaults():Dynamic;
	/**
		Get an option value for a given section.
		
		If `vars' is provided, it must be a dictionary. The option is looked up
		in `vars' (if provided), `section', and in `DEFAULTSECT' in that order.
		If the key is not found and `fallback' is provided, it is used as
		a fallback value. `None' can be provided as a `fallback' value.
		
		If interpolation is enabled and the optional argument `raw' is False,
		all interpolations are expanded in the return values.
		
		Arguments `raw', `vars', and `fallback' are keyword only.
		
		The section DEFAULT is special.
	**/
	public function get(section:Dynamic, option:Dynamic, ?raw:Dynamic, ?vars:Dynamic, ?fallback:Dynamic):Dynamic;
	/**
		Return a given section as a dictionary (empty if the section
		doesn't exist).
	**/
	public function get_section(section:Dynamic):Dynamic;
	public function getboolean(section:Dynamic, option:Dynamic, ?raw:Dynamic, ?vars:Dynamic, ?fallback:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getfloat(section:Dynamic, option:Dynamic, ?raw:Dynamic, ?vars:Dynamic, ?fallback:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function getint(section:Dynamic, option:Dynamic, ?raw:Dynamic, ?vars:Dynamic, ?fallback:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function handle_old_config(filename:Dynamic):Dynamic;
	/**
		Check for the existence of a given option in a given section.
		If the specified `section' is None or an empty string, DEFAULT is
		assumed. If the specified `section' does not exist, returns False.
	**/
	public function has_option(section:Dynamic, option:Dynamic):Dynamic;
	/**
		Indicate whether the named section is present in the configuration.
		
		The DEFAULT section is not acknowledged.
	**/
	public function has_section(section:Dynamic):Dynamic;
	/**
		Return a list of (name, value) tuples for each option in a section.
		
		All % interpolations are expanded in the return values, based on the
		defaults passed into the constructor, unless the optional argument
		`raw' is true.  Additional substitutions may be provided using the
		`vars' argument, which must be a dictionary whose contents overrides
		any pre-existing defaults.
		
		The section DEFAULT is special.
	**/
	public function items(?section:Dynamic, ?raw:Dynamic, ?vars:Dynamic):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys():Dynamic;
	static public var not_utf8_error : Dynamic;
	static public var old_settings : Dynamic;
	static public var old_warning : Dynamic;
	/**
		Return a list of option names for the given section name.
	**/
	public function options(section:Dynamic):Dynamic;
	/**
		Transform '-' to '_' so the cmdline form of option names can be used.
	**/
	public function optionxform(optionstr:Dynamic):Dynamic;
	/**
		D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
		If key is not found, d is returned if given, otherwise KeyError is raised.
	**/
	public function pop(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Remove a section from the parser and return it as
		a (section_name, section_proxy) tuple. If no section is present, raise
		KeyError.
		
		The section DEFAULT is never returned because it cannot be removed.
	**/
	public function popitem():Dynamic;
	/**
		Read and parse a filename or a list of filenames.
		
		Files that cannot be opened are silently ignored; this is
		designed so that you can specify a list of potential
		configuration file locations (e.g. current directory, user's
		home directory, systemwide directory), and all existing
		configuration files in the list will be read.  A single
		filename may also be given.
		
		Return list of successfully read files.
	**/
	public function read(filenames:Dynamic, option_parser:Dynamic):Dynamic;
	/**
		Read configuration from a dictionary.
		
		Keys are section names, values are dictionaries with keys and values
		that should be present in the section. If the used dictionary type
		preserves order, sections and their keys will be added in order.
		
		All types held in the dictionary are converted to strings during
		reading, including section names, option names and keys.
		
		Optional second argument is the `source' specifying the name of the
		dictionary being read.
	**/
	public function read_dict(dictionary:Dynamic, ?source:Dynamic):Dynamic;
	/**
		Like read() but the argument must be a file-like object.
		
		The `f' argument must be iterable, returning one line at a time.
		Optional second argument is the `source' specifying the name of the
		file being read. If not given, it is taken from f.name. If `f' has no
		`name' attribute, `<???>' is used.
	**/
	public function read_file(f:Dynamic, ?source:Dynamic):Dynamic;
	/**
		Read configuration from a given string.
	**/
	public function read_string(string:Dynamic, ?source:Dynamic):Dynamic;
	/**
		Deprecated, use read_file instead.
	**/
	public function readfp(fp:Dynamic, ?filename:Dynamic):Dynamic;
	/**
		Remove an option.
	**/
	public function remove_option(section:Dynamic, option:Dynamic):Dynamic;
	/**
		Remove a file section.
	**/
	public function remove_section(section:Dynamic):Dynamic;
	/**
		Return a list of section names, excluding [DEFAULT]
	**/
	public function sections():Dynamic;
	/**
		Set an option.
	**/
	public function set(section:Dynamic, option:Dynamic, ?value:Dynamic):Dynamic;
	/**
		D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D
	**/
	public function setdefault(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.update([E, ]**F) -> None.  Update D from mapping/iterable E and F.
		If E present and has a .keys() method, does:     for k in E: D[k] = E[k]
		If E present and lacks .keys() method, does:     for (k, v) in E: D[k] = v
		In either case, this is followed by: for k, v in F.items(): D[k] = v
	**/
	public function update(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call the validator function and implement overrides on all applicable
		settings.
	**/
	public function validate_settings(filename:Dynamic, option_parser:Dynamic):Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values():Dynamic;
	/**
		Write an .ini-format representation of the configuration state.
		
		If `space_around_delimiters' is True (the default), delimiters
		between keys and values are surrounded by spaces.
	**/
	public function write(fp:Dynamic, ?space_around_delimiters:Dynamic):Dynamic;
}