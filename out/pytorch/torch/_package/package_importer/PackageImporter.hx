/* This file is generated, do not edit! */
package torch._package.package_importer;
@:pythonImport("torch.package.package_importer", "PackageImporter") extern class PackageImporter {
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __import__(name:Dynamic, ?globals:Dynamic, ?locals:Dynamic, ?fromlist:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Open ``file_or_buffer`` for importing. This checks that the imported package only requires modules
		allowed by ``module_allowed``
		
		Args:
		    file_or_buffer: a file-like object (has to implement :meth:`read`, :meth:`readline`, :meth:`tell`, and :meth:`seek`),
		        a string, or an ``os.PathLike`` object containing a filename.
		    module_allowed (Callable[[str], bool], optional): A method to determine if a externally provided module
		        should be allowed. Can be used to ensure packages loaded do not depend on modules that the server
		        does not support. Defaults to allowing anything.
		
		Raises:
		    ImportError: If the package will use a disallowed module.
	**/
	@:native("__init__")
	public function ___init__(file_or_buffer:Dynamic, ?module_allowed:Dynamic):Dynamic;
	/**
		Open ``file_or_buffer`` for importing. This checks that the imported package only requires modules
		allowed by ``module_allowed``
		
		Args:
		    file_or_buffer: a file-like object (has to implement :meth:`read`, :meth:`readline`, :meth:`tell`, and :meth:`seek`),
		        a string, or an ``os.PathLike`` object containing a filename.
		    module_allowed (Callable[[str], bool], optional): A method to determine if a externally provided module
		        should be allowed. Can be used to ensure packages loaded do not depend on modules that the server
		        does not support. Defaults to allowing anything.
		
		Raises:
		    ImportError: If the package will use a disallowed module.
	**/
	public function new(file_or_buffer:Dynamic, ?module_allowed:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	public function _add_extern(extern_name:Dynamic):Dynamic;
	/**
		Assembles a Python module out of the given file. Will ignore files in the .data directory.
		
		Args:
		    filename (str): the name of the file inside of the package archive to be added
	**/
	public function _add_file(filename:Dynamic):Dynamic;
	public function _compile_source(fullpath:Dynamic, mangled_filename:Dynamic):Dynamic;
	public function _do_find_and_load(name:Dynamic):Dynamic;
	public function _find_and_load(name:Dynamic):Dynamic;
	/**
		Import and return the module based on its name, the package the call is
		being made from, and the level adjustment.
		
		This function represents the greatest common denominator of functionality
		between import_module and __import__. This includes setting __package__ if
		the loader did not.
	**/
	public function _gcd_import(name:Dynamic, ?_package:Dynamic, ?level:Dynamic):Dynamic;
	public function _get_or_create_package(atoms:Dynamic):Dynamic;
	/**
		Take a package name or module object and return the module.
		
		If a name, the module is imported.  If the passed or imported module
		object is not a package, raise an exception.
	**/
	public function _get_package(_package:Dynamic):Dynamic;
	/**
		Figure out what __import__ should return.
		
		The import_ parameter is a callable which takes the name of module to
		import. It is required to decouple the function from assuming importlib's
		import implementation is desired.
	**/
	public function _handle_fromlist(module:Dynamic, fromlist:Dynamic, ?recursive:Dynamic):Dynamic;
	public function _install_on_parent(parent:Dynamic, name:Dynamic, module:Dynamic):Dynamic;
	public function _load_module(name:Dynamic, parent:Dynamic):Dynamic;
	public function _make_module(name:Dynamic, filename:Dynamic, is_package:Dynamic, parent:Dynamic):Dynamic;
	public function _read_extern():Dynamic;
	public function _zipfile_path(_package:Dynamic, ?resource:Dynamic):Dynamic;
	/**
		Returns a file structure representation of package's zipfile.
		
		Args:
		    include (Union[List[str], str]): An optional string e.g. ``"my_package.my_subpackage"``, or optional list of strings
		        for the names of the files to be inluded in the zipfile representation. This can also be
		        a glob-style pattern, as described in :meth:`PackageExporter.mock`
		
		    exclude (Union[List[str], str]): An optional pattern that excludes files whose name match the pattern.
		
		Returns:
		    :class:`Directory`
	**/
	public function file_structure(?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Given an object, return a name that can be used to retrieve the
		object from this environment.
		
		Args:
		    obj: An object to get the the module-environment-relative name for.
		    name: If set, use this name instead of looking up __name__ or __qualname__ on `obj`.
		        This is only here to match how Pickler handles __reduce__ functions that return a string,
		        don't use otherwise.
		Returns:
		    A tuple (parent_module_name, attr_name) that can be used to retrieve `obj` from this environment.
		    Use it like:
		        mod = importer.import_module(parent_module_name)
		        obj = getattr(mod, attr_name)
		
		Raises:
		    ObjNotFoundError: we couldn't retrieve `obj by name.
		    ObjMisMatchError: we found a different object with the same name as `obj`.
	**/
	public function get_name(obj:Dynamic, ?name:Dynamic):Dynamic;
	public function get_resource_reader(fullname:Dynamic):Dynamic;
	public function get_source(module_name:Dynamic):Dynamic;
	/**
		Returns internal identifier that torch.package uses to distinguish :class:`PackageImporter` instances.
		Looks like::
		
		    <torch_package_0>
	**/
	public function id():Dynamic;
	/**
		Load a module from the package if it hasn't already been loaded, and then return
		the module. Modules are loaded locally
		to the importer and will appear in ``self.modules`` rather than ``sys.modules``.
		
		Args:
		    name (str): Fully qualified name of the module to load.
		    package ([type], optional): Unused, but present to match the signature of importlib.import_module. Defaults to ``None``.
		
		Returns:
		    types.ModuleType: The (possibly already) loaded module.
	**/
	public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Load raw bytes.
		
		Args:
		    package (str): The name of module package (e.g. ``"my_package.my_subpackage"``).
		    resource (str): The unique name for the resource.
		
		Returns:
		    bytes: The loaded data.
	**/
	public function load_binary(_package:Dynamic, resource:Dynamic):Dynamic;
	/**
		Unpickles the resource from the package, loading any modules that are needed to construct the objects
		using :meth:`import_module`.
		
		Args:
		    package (str): The name of module package (e.g. ``"my_package.my_subpackage"``).
		    resource (str): The unique name for the resource.
		    map_location: Passed to `torch.load` to determine how tensors are mapped to devices. Defaults to ``None``.
		
		Returns:
		    Any: The unpickled object.
	**/
	public function load_pickle(_package:Dynamic, resource:Dynamic, ?map_location:Dynamic):Dynamic;
	/**
		Load a string.
		
		Args:
		    package (str): The name of module package (e.g. ``"my_package.my_subpackage"``).
		    resource (str): The unique name for the resource.
		    encoding (str, optional): Passed to ``decode``. Defaults to ``'utf-8'``.
		    errors (str, optional): Passed to ``decode``. Defaults to ``'strict'``.
		
		Returns:
		    str: The loaded text.
	**/
	public function load_text(_package:Dynamic, resource:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Find the module name an object belongs to.
		
		This should be considered internal for end-users, but developers of
		an importer can override it to customize the behavior.
		
		Taken from pickle.py, but modified to exclude the search into sys.modules
	**/
	public function whichmodule(obj:Dynamic, name:Dynamic):Dynamic;
}