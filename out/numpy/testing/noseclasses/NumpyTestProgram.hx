/* This file is generated, do not edit! */
package numpy.testing.noseclasses;
@:pythonImport("numpy.testing.noseclasses", "NumpyTestProgram") extern class NumpyTestProgram {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?module:Dynamic, ?defaultTest:Dynamic, ?argv:Dynamic, ?testRunner:Dynamic, ?testLoader:Dynamic, ?env:Dynamic, ?config:Dynamic, ?suite:Dynamic, ?exit:Dynamic, ?plugins:Dynamic, ?addplugins:Dynamic):Dynamic;
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
	static public var _discovery_parser : Dynamic;
	public function _do_discovery(argv:Dynamic, ?Loader:Dynamic):Dynamic;
	public function _getDiscoveryArgParser(parent:Dynamic):Dynamic;
	public function _getMainArgParser(parent:Dynamic):Dynamic;
	public function _getParentArgParser():Dynamic;
	public function _initArgParsers():Dynamic;
	public function _print_help(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var buffer : Dynamic;
	static public var catchbreak : Dynamic;
	/**
		Create the tests to run. If a self.suite
		is set, then that suite will be used. Otherwise, tests will be
		loaded from the given test names (self.testNames) using the
		test loader.
	**/
	public function createTests():Dynamic;
	static public var failfast : Dynamic;
	public function getAllConfigFiles(?env:Dynamic):Dynamic;
	/**
		Load a Config, pre-filled with user config files if any are
		found.
	**/
	public function makeConfig(env:Dynamic, ?plugins:Dynamic):Dynamic;
	static public var module : Dynamic;
	/**
		Parse argv and env and configure running environment.
		        
	**/
	public function parseArgs(argv:Dynamic):Dynamic;
	static public var progName : Dynamic;
	/**
		Run Tests. Returns true on success, false on failure, and
		sets self.success to the same value.
		
		Because nose currently discards the test result object, but we need
		to return it to the user, override TestProgram.runTests to retain
		the result
	**/
	public function runTests():Dynamic;
	/**
		Print list of available plugins.
		        
	**/
	public function showPlugins():Dynamic;
	static public function usage():Dynamic;
	public function usageExit(?msg:Dynamic):Dynamic;
	static public var verbosity : Dynamic;
	static public var warnings : Dynamic;
}