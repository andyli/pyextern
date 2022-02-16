/* This file is generated, do not edit! */
package torch._package.package_exporter;
@:pythonImport("torch.package.package_exporter", "PackageExporter") extern class PackageExporter {
	static public var __annotations__ : Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Create an exporter.
		
		Args:
		    f: The location to export to. Can be a  ``string``/``Path`` object containing a filename
		        or a binary I/O object.
		    importer: If a single Importer is passed, use that to search for modules.
		        If a sequence of importers are passsed, an ``OrderedImporter`` will be constructed out of them.
	**/
	@:native("__init__")
	public function ___init__(f:Dynamic, ?importer:Dynamic):Dynamic;
	/**
		Create an exporter.
		
		Args:
		    f: The location to export to. Can be a  ``string``/``Path`` object containing a filename
		        or a binary I/O object.
		    importer: If a single Importer is passed, use that to search for modules.
		        If a sequence of importers are passsed, an ``OrderedImporter`` will be constructed out of them.
	**/
	public function new(f:Dynamic, ?importer:Dynamic):Void;
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
	public function _can_implicitly_extern(module_name:Dynamic):Dynamic;
	/**
		Takes a finalized dependency graph describing how to package all
		modules and executes it, writing to the ZIP archive.
	**/
	public function _execute_dependency_graph():Dynamic;
	public function _filename(_package:Dynamic, resource:Dynamic):Dynamic;
	/**
		Called at the very end of packaging to leave the zipfile in a closed but valid state.
	**/
	public function _finalize_zip():Dynamic;
	/**
		Return all modules that this source code depends on.
		
		Dependencies are found by scanning the source code for import-like statements.
		
		Arguments:
		    src: The Python source code to analyze for dependencies.
		    module_name: The name of the module that ``src`` corresponds to.
		    is_package: Whether this module should be treated as a package.
		        See :py:meth:`save_source_string` for more info.
		
		Returns:
		    A list containing modules detected as direct dependencies in
		    ``src``.  The items in the list are guaranteed to be unique.
	**/
	public function _get_dependencies(src:Dynamic, module_name:Dynamic, is_package:Dynamic):Dynamic;
	public function _get_source_of_module(module:Dynamic):Dynamic;
	public function _import_module(module_name:Dynamic):Dynamic;
	/**
		Adds the module to the dependency graph as an interned module,
		along with any metadata needed to write it out to the zipfile at serialization time.
	**/
	public function _intern_module(module_name:Dynamic, dependencies:Dynamic):Dynamic;
	public function _module_exists(module_name:Dynamic):Dynamic;
	public function _nodes_with_action_type(action:Dynamic):Dynamic;
	public function _persistent_id(obj:Dynamic):Dynamic;
	public function _validate_dependency_graph():Dynamic;
	public function _write(filename:Dynamic, str_or_bytes:Dynamic):Dynamic;
	public function _write_mock_file():Dynamic;
	/**
		Write ``src`` as the source code for ``module_name`` in the zip archive.
		
		Arguments are otherwise the same as for :meth:`save_source_string`.
	**/
	public function _write_source_string(module_name:Dynamic, src:Dynamic, ?is_package:Dynamic):Dynamic;
	/**
		Given a module, add it to the dependency graph according to patterns
		specified by the user.
	**/
	public function add_dependency(module_name:Dynamic, ?dependencies:Dynamic):Dynamic;
	/**
		Write the package to the filesystem. Any calls after :meth:`close` are now invalid.
		It is preferable to use resource guard syntax instead::
		
		    with PackageExporter("file.zip") as e:
		        ...
	**/
	public function close():Dynamic;
	/**
		Return all modules that are currently denied.
		
		Returns:
		    A list containing the names of modules which will be
		    denied in this package.
	**/
	public function denied_modules():Dynamic;
	/**
		Blocklist modules who names match the given glob patterns from the list of modules the package can import.
		If a dependency on any matching packages is found, a :class:`PackagingError` is raised.
		
		Args:
		    include (Union[List[str], str]): A string e.g. ``"my_package.my_subpackage"``, or list of strings
		        for the names of the modules to be externed. This can also be a glob-style pattern, as described in :meth:`mock`.
		
		    exclude (Union[List[str], str]): An optional pattern that excludes some patterns that match the include string.
	**/
	public function deny(include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Returns digraph string representation of dependencies in package.
		
		Returns:
		    A string representation of dependencies in package.
	**/
	public function dependency_graph_string():Dynamic;
	/**
		Include ``module`` in the list of external modules the package can import.
		This will prevent dependency discovery from saving
		it in the package. The importer will load an external module directly from the standard import system.
		Code for extern modules must also exist in the process loading the package.
		
		Args:
		    include (Union[List[str], str]): A string e.g. ``"my_package.my_subpackage"``, or list of strings
		        for the names of the modules to be externed. This can also be a glob-style pattern, as
		        described in :meth:`mock`.
		
		    exclude (Union[List[str], str]): An optional pattern that excludes some patterns that match the
		        include string.
		
		    allow_empty (bool): An optional flag that specifies whether the extern modules specified by this call
		        to the ``extern`` method must be matched to some module during packaging. If an extern module glob
		        pattern is added with ``allow_empty=False``, and :meth:`close` is called (either explicitly or via
		        ``__exit__``) before any modules match that pattern, an exception is thrown. If ``allow_empty=True``,
		        no such exception is thrown.
	**/
	@:native("extern")
	public function _extern(include:Dynamic, ?exclude:Dynamic, ?allow_empty:Dynamic):Dynamic;
	/**
		Return all modules that are currently externed.
		
		Returns:
		    A list containing the names of modules which will be
		    externed in this package.
	**/
	public function externed_modules():Dynamic;
	/**
		Return a list of all modules which depend on the module ``module_name``.
		
		Returns:
		    A list containing the names of modules which depend on ``module_name``.
	**/
	public function get_rdeps(module_name:Dynamic):Dynamic;
	/**
		Get an id. This id is guaranteed to only be handed out once for this package.
	**/
	public function get_unique_id():Dynamic;
	/**
		Specify modules that should be packaged. A module must match some ``intern`` pattern in order to be
		included in the package and have its dependencies processed recursively.
		
		Args:
		    include (Union[List[str], str]): A string e.g. "my_package.my_subpackage", or list of strings
		        for the names of the modules to be externed. This can also be a glob-style pattern, as described in :meth:`mock`.
		
		    exclude (Union[List[str], str]): An optional pattern that excludes some patterns that match the include string.
		
		    allow_empty (bool): An optional flag that specifies whether the intern modules specified by this call
		        to the ``intern`` method must be matched to some module during packaging. If an ``intern`` module glob
		        pattern is added with ``allow_empty=False``, and :meth:`close` is called (either explicitly or via ``__exit__``)
		        before any modules match that pattern, an exception is thrown. If ``allow_empty=True``, no such exception is thrown.
	**/
	public function intern(include:Dynamic, ?exclude:Dynamic, ?allow_empty:Dynamic):Dynamic;
	/**
		Return all modules that are currently interned.
		
		Returns:
		    A list containing the names of modules which will be
		    interned in this package.
	**/
	public function interned_modules():Dynamic;
	/**
		Replace some required modules with a mock implementation.  Mocked modules will return a fake
		object for any attribute accessed from it. Because we copy file-by-file, the dependency resolution will sometimes
		find files that are imported by model files but whose functionality is never used
		(e.g. custom serialization code or training helpers).
		Use this function to mock this functionality out without having to modify the original code.
		
		Args:
		    include (Union[List[str], str]): A string e.g. ``"my_package.my_subpackage"``, or list of strings
		        for the names of the modules to be mocked out. Strings can also be a glob-style pattern
		        string that may match multiple modules. Any required dependencies that match this pattern
		        string will be mocked out automatically.
		
		        Examples :
		            ``'torch.**'`` -- matches ``torch`` and all submodules of torch, e.g. ``'torch.nn'``
		            and ``'torch.nn.functional'``
		
		            ``'torch.*'`` -- matches ``'torch.nn'`` or ``'torch.functional'``, but not
		            ``'torch.nn.functional'``
		
		    exclude (Union[List[str], str]): An optional pattern that excludes some patterns that match the include string.
		        e.g. ``include='torch.**', exclude='torch.foo'`` will mock all torch packages except ``'torch.foo'``,
		        Default: is ``[]``.
		
		    allow_empty (bool): An optional flag that specifies whether the mock implementation(s) specified by this call
		        to the :meth:`mock` method must be matched to some module during packaging. If a mock is added with
		        ``allow_empty=False``, and :meth:`close` is called (either explicitly or via ``__exit__``) and the mock has
		        not been matched to a module used by the package being exported, an exception is thrown.
		        If ``allow_empty=True``, no such exception is thrown.
	**/
	public function mock(include:Dynamic, ?exclude:Dynamic, ?allow_empty:Dynamic):Dynamic;
	/**
		Return all modules that are currently mocked.
		
		Returns:
		    A list containing the names of modules which will be
		    mocked in this package.
	**/
	public function mocked_modules():Dynamic;
	/**
		Registers an extern hook on the exporter.
		
		The hook will be called each time a module matches against an :meth:`extern` pattern.
		It should have the following signature::
		
		    hook(exporter: PackageExporter, module_name: str) -> None
		
		Hooks will be called in order of registration.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        A handle that can be used to remove the added hook by calling
		        ``handle.remove()``.
	**/
	public function register_extern_hook(hook:Dynamic):Dynamic;
	/**
		Registers an intern hook on the exporter.
		
		The hook will be called each time a module matches against an :meth:`intern` pattern.
		It should have the following signature::
		
		    hook(exporter: PackageExporter, module_name: str) -> None
		
		Hooks will be called in order of registration.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        A handle that can be used to remove the added hook by calling
		        ``handle.remove()``.
	**/
	public function register_intern_hook(hook:Dynamic):Dynamic;
	/**
		Registers a mock hook on the exporter.
		
		The hook will be called each time a module matches against a :meth:`mock` pattern.
		It should have the following signature::
		
		    hook(exporter: PackageExporter, module_name: str) -> None
		
		Hooks will be called in order of registration.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        A handle that can be used to remove the added hook by calling
		        ``handle.remove()``.
	**/
	public function register_mock_hook(hook:Dynamic):Dynamic;
	/**
		Save raw bytes to the package.
		
		Args:
		    package (str): The name of module package this resource should go it (e.g. ``"my_package.my_subpackage"``).
		    resource (str): A unique name for the resource, used to identify it to load.
		    binary (str): The data to save.
	**/
	public function save_binary(_package:Dynamic, resource:Dynamic, binary:Dynamic):Dynamic;
	/**
		Save the code for ``module`` into the package. Code for the module is resolved using the ``importers`` path to find the
		module object, and then using its ``__file__`` attribute to find the source code.
		
		Args:
		    module_name (str): e.g. ``my_package.my_subpackage``, code will be saved to provide code
		        for this package.
		    dependencies (bool, optional): If ``True``, we scan the source for dependencies.
	**/
	public function save_module(module_name:Dynamic, ?dependencies:Dynamic):Dynamic;
	/**
		Save a python object to the archive using pickle. Equivalent to :func:`torch.save` but saving into
		the archive rather than a stand-alone file. Stanard pickle does not save the code, only the objects.
		If ``dependencies`` is true, this method will also scan the pickled objects for which modules are required
		to reconstruct them and save the relevant code.
		
		To be able to save an object where ``type(obj).__name__`` is ``my_module.MyObject``,
		``my_module.MyObject`` must resolve to the class of the object according to the ``importer`` order. When saving objects that
		have previously been packaged, the importer's ``import_module`` method will need to be present in the ``importer`` list
		for this to work.
		
		Args:
		    package (str): The name of module package this resource should go in (e.g. ``"my_package.my_subpackage"``).
		    resource (str): A unique name for the resource, used to identify it to load.
		    obj (Any): The object to save, must be picklable.
		    dependencies (bool, optional): If ``True``, we scan the source for dependencies.
	**/
	public function save_pickle(_package:Dynamic, resource:Dynamic, obj:Dynamic, ?dependencies:Dynamic):Dynamic;
	/**
		Adds the local file system ``file_or_directory`` to the source package to provide the code
		for ``module_name``.
		
		Args:
		    module_name (str): e.g. ``"my_package.my_subpackage"``, code will be saved to provide code for this package.
		    file_or_directory (str): the path to a file or directory of code. When a directory, all python files in the directory
		        are recursively copied using :meth:`save_source_file`. If a file is named ``"/__init__.py"`` the code is treated
		        as a package.
		    dependencies (bool, optional): If ``True``, we scan the source for dependencies.
	**/
	public function save_source_file(module_name:Dynamic, file_or_directory:Dynamic, ?dependencies:Dynamic):Dynamic;
	/**
		Adds ``src`` as the source code for ``module_name`` in the exported package.
		
		Args:
		    module_name (str): e.g. ``my_package.my_subpackage``, code will be saved to provide code for this package.
		    src (str): The Python source code to save for this package.
		    is_package (bool, optional): If ``True``, this module is treated as a package. Packages are allowed to have submodules
		        (e.g. ``my_package.my_subpackage.my_subsubpackage``), and resources can be saved inside them. Defaults to ``False``.
		    dependencies (bool, optional): If ``True``, we scan the source for dependencies.
	**/
	public function save_source_string(module_name:Dynamic, src:Dynamic, ?is_package:Dynamic, ?dependencies:Dynamic):Dynamic;
	/**
		Save text data to the package.
		
		Args:
		    package (str): The name of module package this resource should go it (e.g. ``"my_package.my_subpackage"``).
		    resource (str): A unique name for the resource, used to identify it to load.
		    text (str): The contents to save.
	**/
	public function save_text(_package:Dynamic, resource:Dynamic, text:Dynamic):Dynamic;
}