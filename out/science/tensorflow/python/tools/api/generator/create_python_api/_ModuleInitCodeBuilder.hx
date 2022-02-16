/* This file is generated, do not edit! */
package tensorflow.python.tools.api.generator.create_python_api;
@:pythonImport("tensorflow.python.tools.api.generator.create_python_api", "_ModuleInitCodeBuilder") extern class _ModuleInitCodeBuilder {
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
	public function ___init__(output_package:Dynamic, api_version:Dynamic, ?lazy_loading:Dynamic, ?use_relative_imports:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(output_package:Dynamic, api_version:Dynamic, ?lazy_loading:Dynamic, ?use_relative_imports:Dynamic):Void;
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
	public function _check_already_imported(symbol_id:Dynamic, api_name:Dynamic):Dynamic;
	/**
		Add imports for all destination modules in self._module_imports.
	**/
	public function _import_submodules():Dynamic;
	/**
		Adds this import to module_imports.
		
		Args:
		  symbol: TensorFlow Python symbol.
		  source_module_name: (string) Module to import from.
		  source_name: (string) Name of the symbol to import.
		  dest_module_name: (string) Module name to add import to.
		  dest_name: (string) Import the symbol using this name.
		
		Raises:
		  SymbolExposedTwiceError: Raised when an import with the same
		    dest_name has already been added to dest_module_name.
	**/
	public function add_import(symbol:Dynamic, source_module_name:Dynamic, source_name:Dynamic, dest_module_name:Dynamic, dest_name:Dynamic):Dynamic;
	/**
		Get a map from destination module to __init__.py code for that module.
		
		Returns:
		  A dictionary where
		    key: (string) destination module (for e.g. tf or tf.consts).
		    value: (string) text that should be in __init__.py files for
		      corresponding modules.
	**/
	public function build():Dynamic;
	public function copy_imports(from_dest_module:Dynamic, to_dest_module:Dynamic):Dynamic;
	/**
		Formats import statement.
		
		Args:
		  source_module_name: (string) Source module to import from.
		  source_name: (string) Source symbol name to import.
		  dest_name: (string) Destination alias name.
		
		Returns:
		  An import statement string.
	**/
	public function format_import(source_module_name:Dynamic, source_name:Dynamic, dest_name:Dynamic):Dynamic;
	public function get_destination_modules():Dynamic;
}