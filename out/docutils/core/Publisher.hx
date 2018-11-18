/* This file is generated, do not edit! */
package docutils.core;
@:pythonImport("docutils.core", "Publisher") extern class Publisher {
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
		Initial setup.  If any of `reader`, `parser`, or `writer` are not
		specified, the corresponding ``set_...`` method should be called with
		a component name (`set_reader` sets the parser as well).
	**/
	@:native("__init__")
	public function ___init__(?reader:Dynamic, ?parser:Dynamic, ?writer:Dynamic, ?source:Dynamic, ?source_class:Dynamic, ?destination:Dynamic, ?destination_class:Dynamic, ?settings:Dynamic):Dynamic;
	/**
		Initial setup.  If any of `reader`, `parser`, or `writer` are not
		specified, the corresponding ``set_...`` method should be called with
		a component name (`set_reader` sets the parser as well).
	**/
	public function new(?reader:Dynamic, ?parser:Dynamic, ?writer:Dynamic, ?source:Dynamic, ?source_class:Dynamic, ?destination:Dynamic, ?destination_class:Dynamic, ?settings:Dynamic):Void;
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
	public function apply_transforms():Dynamic;
	public function debugging_dumps():Dynamic;
	/**
		Set and return default settings (overrides in `defaults` dict).
		
		Set components first (`self.set_reader` & `self.set_writer`).
		Explicitly setting `self.settings` disables command line option
		processing from `self.publish()`.
	**/
	public function get_settings(?usage:Dynamic, ?description:Dynamic, ?settings_spec:Dynamic, ?config_section:Dynamic, ?defaults:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pass an empty list to `argv` to avoid reading `sys.argv` (the
		default).
		
		Set components first (`self.set_reader` & `self.set_writer`).
	**/
	public function process_command_line(?argv:Dynamic, ?usage:Dynamic, ?description:Dynamic, ?settings_spec:Dynamic, ?config_section:Dynamic, ?defaults:python.KwArgs<Dynamic>):Dynamic;
	public function process_programmatic_settings(settings_spec:Dynamic, settings_overrides:Dynamic, config_section:Dynamic):Dynamic;
	/**
		Process command line options and arguments (if `self.settings` not
		already set), run `self.reader` and then `self.writer`.  Return
		`self.writer`'s output.
	**/
	public function publish(?argv:Dynamic, ?usage:Dynamic, ?description:Dynamic, ?settings_spec:Dynamic, ?settings_overrides:Dynamic, ?config_section:Dynamic, ?enable_exit_status:Dynamic):Dynamic;
	public function report_Exception(error:Dynamic):Dynamic;
	public function report_SystemMessage(error:Dynamic):Dynamic;
	public function report_UnicodeError(error:Dynamic):Dynamic;
	public function set_components(reader_name:Dynamic, parser_name:Dynamic, writer_name:Dynamic):Dynamic;
	public function set_destination(?destination:Dynamic, ?destination_path:Dynamic):Dynamic;
	public function set_io(?source_path:Dynamic, ?destination_path:Dynamic):Dynamic;
	/**
		Set `self.reader` by name.
	**/
	public function set_reader(reader_name:Dynamic, parser:Dynamic, parser_name:Dynamic):Dynamic;
	public function set_source(?source:Dynamic, ?source_path:Dynamic):Dynamic;
	/**
		Set `self.writer` by name.
	**/
	public function set_writer(writer_name:Dynamic):Dynamic;
	public function setup_option_parser(?usage:Dynamic, ?description:Dynamic, ?settings_spec:Dynamic, ?config_section:Dynamic, ?defaults:python.KwArgs<Dynamic>):Dynamic;
}