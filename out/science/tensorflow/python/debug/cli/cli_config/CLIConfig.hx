/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.cli_config;
@:pythonImport("tensorflow.python.debug.cli.cli_config", "CLIConfig") extern class CLIConfig {
	static public var _CONFIG_FILE_NAME : Dynamic;
	static public var _DEFAULT_CONFIG : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(?config_file_path:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?config_file_path:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function _default_config_file_path():Dynamic;
	public function _load_from_file():Dynamic;
	public function _save_to_file():Dynamic;
	public function get(property_name:Dynamic):Dynamic;
	/**
		Set the value of a property.
		
		Supports limitd property value types: `bool`, `int` and `str`.
		
		Args:
		  property_name: Name of the property.
		  property_val: Value of the property. If the property has `bool` type and
		    this argument has `str` type, the `str` value will be parsed as a `bool`
		
		Raises:
		  ValueError: if a `str` property_value fails to be parsed as a `bool`.
		  KeyError: if `property_name` is an invalid property name.
	**/
	public function set(property_name:Dynamic, property_val:Dynamic):Dynamic;
	/**
		Set a set-callback for given property.
		
		Args:
		  property_name: Name of the property.
		  callback: The callback as a `callable` of signature:
		      def cbk(config):
		    where config is the config after it is set to the new value.
		    The callback is invoked each time the set() method is called with the
		    matching property_name.
		
		Raises:
		  KeyError: If property_name does not exist.
		  TypeError: If `callback` is not callable.
	**/
	public function set_callback(property_name:Dynamic, callback:Dynamic):Dynamic;
	/**
		Get a text summary of the config.
		
		Args:
		  highlight: A property name to highlight in the output.
		
		Returns:
		  A `RichTextLines` output.
	**/
	public function summarize(?highlight:Dynamic):Dynamic;
}