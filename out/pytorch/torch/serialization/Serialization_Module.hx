/* This file is generated, do not edit! */
package torch.serialization;
@:pythonImport("torch.serialization") extern class Serialization_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_PROTOCOL : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var INT_SIZE : Dynamic;
	static public var LONG_SIZE : Dynamic;
	static public var MAGIC_NUMBER : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PROTOCOL_VERSION : Dynamic;
	static public var SHORT_SIZE : Dynamic;
	static public var STORAGE_KEY_SEPARATOR : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if using dill as the pickle module, and if so, checks if it is the correct version.
		If dill version is lower than 0.3.1, a ValueError is raised.
		
		Args:
		    pickle_module: module used for pickling metadata and objects
	**/
	static public function _check_dill_version(pickle_module:Dynamic):Dynamic;
	static public function _check_seekable(f:Dynamic):Dynamic;
	static public function _cpu_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cpu_tag(obj:Dynamic):Dynamic;
	static public function _cuda_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cuda_tag(obj:Dynamic):Dynamic;
	/**
		Get layout extension object from its string representation.
		    
	**/
	static public function _get_layout(name:Dynamic):Dynamic;
	static public function _get_restore_location(map_location:Dynamic):Dynamic;
	static public function _import_dotted_name(name:Dynamic):Dynamic;
	static public function _is_compressed_file(f:Dynamic):Dynamic;
	static public function _is_path(name_or_buffer:Dynamic):Dynamic;
	static public function _is_torchscript_zip(zip_file:Dynamic):Dynamic;
	static public function _is_zipfile(f:Dynamic):Dynamic;
	static public function _legacy_load(f:Dynamic, map_location:Dynamic, pickle_module:Dynamic, ?pickle_load_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _legacy_save(obj:Dynamic, f:Dynamic, pickle_module:Dynamic, pickle_protocol:Dynamic):Dynamic;
	static public function _load(zip_file:Dynamic, map_location:Dynamic, pickle_module:Dynamic, ?pickle_file:Dynamic, ?pickle_load_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _maybe_decode_ascii(bytes_str:Dynamic):Dynamic;
	static public function _open_file_like(name_or_buffer:Dynamic, mode:Dynamic):Dynamic;
	static public function _open_zipfile_writer(name_or_buffer:Dynamic):Dynamic;
	static public var _package_registry : Dynamic;
	static public function _save(obj:Dynamic, zip_file:Dynamic, pickle_module:Dynamic, pickle_protocol:Dynamic):Dynamic;
	/**
		Checks if f is a file that should be read directly. It should be read
		directly if it is backed by a real file (has a fileno) and is not a
		a compressed file (e.g. gzip)
	**/
	static public function _should_read_directly(f:Dynamic):Dynamic;
	static public var _string_classes : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Check if a module's version satisfies requirements
		
		Usually, a module's version string will be like 'x.y.z', which would be represented
		as a tuple (x, y, z), but sometimes it could be an unexpected format. If the version
		string does not match the given tuple's format up to the length of the tuple, then
		error and exit or emit a warning.
		
		Args:
		    module: the module to check the version of
		    req_version_tuple: tuple (usually of ints) representing the required version
		    error_if_malformed: whether we should exit if module version string is malformed
		
		Returns:
		    requirement_is_met: bool
	**/
	static public function check_module_version_greater_or_equal(module:Dynamic, req_version_tuple:Dynamic, ?error_if_malformed:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public function default_restore_location(storage:Dynamic, location:Dynamic):Dynamic;
	/**
		Wrapper around inspect.getsourcelines and inspect.getsourcefile.
		
		Returns: (sourcelines, file_lino, filename)
	**/
	static public function get_source_lines_and_file(obj:Dynamic, ?error_msg:Dynamic):Dynamic;
	/**
		load(f, map_location=None, pickle_module=pickle, **pickle_load_args)
		
		Loads an object saved with :func:`torch.save` from a file.
		
		:func:`torch.load` uses Python's unpickling facilities but treats storages,
		which underlie tensors, specially. They are first deserialized on the
		CPU and are then moved to the device they were saved from. If this fails
		(e.g. because the run time system doesn't have certain devices), an exception
		is raised. However, storages can be dynamically remapped to an alternative
		set of devices using the :attr:`map_location` argument.
		
		If :attr:`map_location` is a callable, it will be called once for each serialized
		storage with two arguments: storage and location. The storage argument
		will be the initial deserialization of the storage, residing on the CPU.
		Each serialized storage has a location tag associated with it which
		identifies the device it was saved from, and this tag is the second
		argument passed to :attr:`map_location`. The builtin location tags are ``'cpu'``
		for CPU tensors and ``'cuda:device_id'`` (e.g. ``'cuda:2'``) for CUDA tensors.
		:attr:`map_location` should return either ``None`` or a storage. If
		:attr:`map_location` returns a storage, it will be used as the final deserialized
		object, already moved to the right device. Otherwise, :func:`torch.load` will
		fall back to the default behavior, as if :attr:`map_location` wasn't specified.
		
		If :attr:`map_location` is a :class:`torch.device` object or a string containing
		a device tag, it indicates the location where all tensors should be loaded.
		
		Otherwise, if :attr:`map_location` is a dict, it will be used to remap location tags
		appearing in the file (keys), to ones that specify where to put the
		storages (values).
		
		User extensions can register their own location tags and tagging and
		deserialization methods using :func:`torch.serialization.register_package`.
		
		Args:
		    f: a file-like object (has to implement :meth:`read`, :meth:`readline`, :meth:`tell`, and :meth:`seek`),
		        or a string or os.PathLike object containing a file name
		    map_location: a function, :class:`torch.device`, string or a dict specifying how to remap storage
		        locations
		    pickle_module: module used for unpickling metadata and objects (has to
		        match the :attr:`pickle_module` used to serialize file)
		    pickle_load_args: (Python 3 only) optional keyword arguments passed over to
		        :func:`pickle_module.load` and :func:`pickle_module.Unpickler`, e.g.,
		        :attr:`errors=...`.
		
		.. warning::
		    :func:`torch.load()` uses ``pickle`` module implicitly, which is known to be insecure.
		    It is possible to construct malicious pickle data which will execute arbitrary code
		    during unpickling. Never load data that could have come from an untrusted
		    source, or that could have been tampered with. **Only load data you trust**.
		
		.. note::
		    When you call :func:`torch.load()` on a file which contains GPU tensors, those tensors
		    will be loaded to GPU by default. You can call ``torch.load(.., map_location='cpu')``
		    and then :meth:`load_state_dict` to avoid GPU RAM surge when loading a model checkpoint.
		
		.. note::
		    By default, we decode byte strings as ``utf-8``.  This is to avoid a common error
		    case ``UnicodeDecodeError: 'ascii' codec can't decode byte 0x...``
		    when loading files saved by Python 2 in Python 3.  If this default
		    is incorrect, you may use an extra :attr:`encoding` keyword argument to specify how
		    these objects should be loaded, e.g., :attr:`encoding='latin1'` decodes them
		    to strings using ``latin1`` encoding, and :attr:`encoding='bytes'` keeps them
		    as byte arrays which can be decoded later with ``byte_array.decode(...)``.
		
		Example:
		    >>> torch.load('tensors.pt')
		    # Load all tensors onto the CPU
		    >>> torch.load('tensors.pt', map_location=torch.device('cpu'))
		    # Load all tensors onto the CPU, using a function
		    >>> torch.load('tensors.pt', map_location=lambda storage, loc: storage)
		    # Load all tensors onto GPU 1
		    >>> torch.load('tensors.pt', map_location=lambda storage, loc: storage.cuda(1))
		    # Map tensors from GPU 1 to GPU 0
		    >>> torch.load('tensors.pt', map_location={'cuda:1':'cuda:0'})
		    # Load tensor from io.BytesIO object
		    >>> with open('tensor.pt', 'rb') as f:
		    ...     buffer = io.BytesIO(f.read())
		    >>> torch.load(buffer)
		    # Load a module with 'ascii' encoding for unpickling
		    >>> torch.load('module.pt', encoding='ascii')
	**/
	static public function load(f:Dynamic, ?map_location:Dynamic, ?pickle_module:Dynamic, ?pickle_load_args:python.KwArgs<Dynamic>):Dynamic;
	static public function location_tag(storage:Dynamic):Dynamic;
	static public function mkdtemp():Dynamic;
	static public function normalize_storage_type(storage_type:Dynamic):Dynamic;
	static public function register_package(priority:Dynamic, tagger:Dynamic, deserializer:Dynamic):Dynamic;
	/**
		save(obj, f, pickle_module=pickle, pickle_protocol=DEFAULT_PROTOCOL, _use_new_zipfile_serialization=True)
		
		Saves an object to a disk file.
		
		See also: :ref:`saving-loading-tensors`
		
		Args:
		    obj: saved object
		    f: a file-like object (has to implement write and flush) or a string or
		       os.PathLike object containing a file name
		    pickle_module: module used for pickling metadata and objects
		    pickle_protocol: can be specified to override the default protocol
		
		.. note::
		    A common PyTorch convention is to save tensors using .pt file extension.
		
		.. note::
		    PyTorch preserves storage sharing across serialization. See
		    :ref:`preserve-storage-sharing` for more details.
		
		.. note::
		    The 1.6 release of PyTorch switched ``torch.save`` to use a new
		    zipfile-based file format. ``torch.load`` still retains the ability to
		    load files in the old format. If for any reason you want ``torch.save``
		    to use the old format, pass the kwarg ``_use_new_zipfile_serialization=False``.
		
		Example:
		    >>> # Save to file
		    >>> x = torch.tensor([0, 1, 2, 3, 4])
		    >>> torch.save(x, 'tensor.pt')
		    >>> # Save to io.BytesIO buffer
		    >>> buffer = io.BytesIO()
		    >>> torch.save(x, buffer)
	**/
	static public function save(obj:Dynamic, f:Dynamic, ?pickle_module:Dynamic, ?pickle_protocol:Dynamic, ?_use_new_zipfile_serialization:Dynamic):Dynamic;
	static public function storage_to_tensor_type(storage:Dynamic):Dynamic;
	static public function validate_cuda_device(location:Dynamic):Dynamic;
}