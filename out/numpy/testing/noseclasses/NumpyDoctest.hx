/* This file is generated, do not edit! */
package numpy.testing.noseclasses;
@:pythonImport("numpy.testing.noseclasses", "NumpyDoctest") extern class NumpyDoctest {
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
	public function afterContext():Dynamic;
	static public var can_configure : Dynamic;
	/**
		Configure plugin.
		        
	**/
	public function configure(options:Dynamic, config:Dynamic):Dynamic;
	/**
		Overrides DocTestCase to
		provide an address() method that returns the correct address for
		the doctest case. To provide hints for address(), an obj may also
		be passed -- this will be used as the test object for purposes of
		determining the test address, if it is provided.
	**/
	static public function doctest_case_class(test:Dynamic, ?optionflags:Dynamic, ?setUp:Dynamic, ?tearDown:Dynamic, ?checker:Dynamic, ?obj:Dynamic, ?result_var:Dynamic):Dynamic;
	static public var doctest_ignore : Dynamic;
	static public var doctest_optflags : Dynamic;
	static public var enableOpt : Dynamic;
	static public var enabled : Dynamic;
	static public var extension : Dynamic;
	/**
		Return help for this plugin. This will be output as the help
		section of the --with-$name option that enables the plugin.
	**/
	public function help():Dynamic;
	/**
		Load doctests from the file.
		
		Tests are loaded only if filename's extension matches
		configured doctest extension.
	**/
	public function loadTestsFromFile(filename:Dynamic):Dynamic;
	/**
		Load doctests from the module.
		        
	**/
	public function loadTestsFromModule(module:Dynamic):Dynamic;
	/**
		Look for doctests in the given object, which will be a
		function, method or class.
	**/
	public function makeTest(obj:Dynamic, parent:Dynamic):Dynamic;
	public function matches(name:Dynamic):Dynamic;
	static public var name : Dynamic;
	/**
		Register commmandline options.
		        
	**/
	public function options(parser:Dynamic, ?env:Dynamic):Dynamic;
	/**
		A class used to check the whether the actual output from a doctest
		example matches the expected output.  `OutputChecker` defines two
		methods: `check_output`, which compares a given pair of outputs,
		and returns true if they match; and `output_difference`, which
		returns a string describing the differences between two outputs.
	**/
	static public function out_check_class():Dynamic;
	/**
		Capture loader's suiteClass.
		
		This is used to create test suites from doctest files.
	**/
	public function prepareTestLoader(loader:Dynamic):Dynamic;
	static public var score : Dynamic;
	/**
		Configure `test` object to set test context
		
		We set the numpy / scipy standard doctest namespace
		
		Parameters
		----------
		test : test object
		    with ``globs`` dictionary defining namespace
		
		Returns
		-------
		None
		
		Notes
		-----
		`test` object modified in place
	**/
	public function set_test_context(test:Dynamic):Dynamic;
	/**
		Doctest suites are parallelizable at the module or file level only,
		since they may be attached to objects that are not individually
		addressable (like properties). This suite subclass is used when
		loading doctests from a module to ensure that behavior.
		
		This class is used only if the plugin is not fully prepared;
		in normal use, the loader's suiteClass is used.
	**/
	static public function suiteClass(?tests:Dynamic, ?context:Dynamic, ?can_split:Dynamic):Dynamic;
	/**
		A class used to extract the DocTests that are relevant to a given
		object, from its docstring and the docstrings of its contained
		objects.  Doctests can currently be extracted from the following
		object types: modules, functions, classes, methods, staticmethods,
		classmethods, and properties.
	**/
	static public function test_finder_class(?verbose:Dynamic, ?parser:Dynamic, ?recurse:Dynamic, ?exclude_empty:Dynamic):Dynamic;
	public function tolist(val:Dynamic):Dynamic;
	/**
		Override to select all modules and any file ending with
		configured doctest extension.
	**/
	public function wantFile(file:Dynamic):Dynamic;
}