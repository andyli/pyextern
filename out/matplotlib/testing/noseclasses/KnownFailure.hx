/* This file is generated, do not edit! */
package matplotlib.testing.noseclasses;
@:pythonImport("matplotlib.testing.noseclasses", "KnownFailure") extern class KnownFailure {
	/**
		Metaclass for ErrorClassPlugins that allows error classes to be
		set up in a declarative manner.
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, attr:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
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
	public function addError(test:Dynamic, err:Dynamic, zero_nine_capt_args:Dynamic):Dynamic;
	/**
		Add command-line options for this plugin.
		
		The base plugin class adds --with-$name by default, used to enable the
		plugin.
		
		.. warning :: Don't implement addOptions unless you want to override
		              all default option handling behavior, including
		              warnings for conflicting options. Implement
		              :meth:`options
		              <nose.plugins.base.IPluginInterface.options>`
		              instead.
	**/
	public function addOptions(parser:Dynamic, ?env:Dynamic):Dynamic;
	/**
		Non-camel-case version of func name for backwards compatibility.
		
		.. warning ::
		
		   DEPRECATED: Do not use this method,
		   use :meth:`options <nose.plugins.base.IPluginInterface.options>`
		   instead.
	**/
	public function add_options(parser:Dynamic, ?env:Dynamic):Dynamic;
	static public var can_configure : Dynamic;
	/**
		Configure the plugin and system, based on selected options.
		
		The base plugin class sets the plugin to enabled if the enable option
		for the plugin (self.enableOpt) is true.
	**/
	public function configure(options:Dynamic, conf:Dynamic):Dynamic;
	static public var enableOpt : Dynamic;
	static public var enabled : Dynamic;
	static public var errorClasses : Dynamic;
	/**
		Return help for this plugin. This will be output as the help
		section of the --with-$name option that enables the plugin.
	**/
	public function help():Dynamic;
	static public var knownfail : Dynamic;
	static public var name : Dynamic;
	/**
		Register commandline options.
		
		Implement this method for normal options behavior with protection from
		OptionConflictErrors. If you override this method and want the default
		--with-$name option to be registered, be sure to call super().
	**/
	public function options(parser:Dynamic, ?env:Dynamic):Dynamic;
	public function patchResult(result:Dynamic):Dynamic;
	public function prepareTestResult(result:Dynamic):Dynamic;
	static public var score : Dynamic;
	public function tolist(val:Dynamic):Dynamic;
}