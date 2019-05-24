/* This file is generated, do not edit! */
package torch.serialization;
@:pythonImport("torch.serialization") extern class Serialization_Module {
	static public var DEFAULT_PROTOCOL : Dynamic;
	static public var INT_SIZE : Dynamic;
	static public var LONG_SIZE : Dynamic;
	static public var MAGIC_NUMBER : Dynamic;
	static public var PROTOCOL_VERSION : Dynamic;
	static public var SHORT_SIZE : Dynamic;
	static public var STORAGE_KEY_SEPARATOR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_seekable(f:Dynamic):Dynamic;
	static public function _cpu_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cpu_tag(obj:Dynamic):Dynamic;
	static public function _cuda_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cuda_tag(obj:Dynamic):Dynamic;
	static public function _import_dotted_name(name:Dynamic):Dynamic;
	static public function _is_compressed_file(f:Dynamic):Dynamic;
	static public function _load(f:Dynamic, map_location:Dynamic, pickle_module:Dynamic):Dynamic;
	static public var _package_registry : Dynamic;
	static public function _save(obj:Dynamic, f:Dynamic, pickle_module:Dynamic, pickle_protocol:Dynamic):Dynamic;
	/**
		Checks if f is a file that should be read directly. It should be read
		directly if it is backed by a real file (has a fileno) and is not a
		a compressed file (e.g. gzip)
	**/
	static public function _should_read_directly(f:Dynamic):Dynamic;
	static public var _string_classes : Dynamic;
	/**
		Executes a body function with a file object for f, opening
		it in 'mode' if it is a string filename.
	**/
	static public function _with_file_like(f:Dynamic, mode:Dynamic, body:Dynamic):Dynamic;
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
		Loads an object saved with :func:`torch.save` from a file.
		
		:meth:`torch.load` uses Python's unpickling facilities but treats storages,
		which underlie tensors, specially. They are first deserialized on the
		CPU and are then moved to the device they were saved from. If this fails
		(e.g. because the run time system doesn't have certain devices), an exception
		is raised. However, storages can be dynamically remapped to an alternative
		set of devices using the `map_location` argument.
		
		If `map_location` is a callable, it will be called once for each serialized
		storage with two arguments: storage and location. The storage argument
		will be the initial deserialization of the storage, residing on the CPU.
		Each serialized storage has a location tag associated with it which
		identifies the device it was saved from, and this tag is the second
		argument passed to map_location. The builtin location tags are `'cpu'` for
		CPU tensors and `'cuda:device_id'` (e.g. `'cuda:2'`) for CUDA tensors.
		`map_location` should return either None or a storage. If `map_location` returns
		a storage, it will be used as the final deserialized object, already moved to
		the right device. Otherwise, :math:`torch.load` will fall back to the default
		behavior, as if `map_location` wasn't specified.
		
		If `map_location` is a string, it should be a device tag, where all tensors
		should be loaded.
		
		Otherwise, if `map_location` is a dict, it will be used to remap location tags
		appearing in the file (keys), to ones that specify where to put the
		storages (values).
		
		User extensions can register their own location tags and tagging and
		deserialization methods using `register_package`.
		
		Args:
		    f: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		    map_location: a function, torch.device, string or a dict specifying how to remap storage
		        locations
		    pickle_module: module used for unpickling metadata and objects (has to
		        match the pickle_module used to serialize file)
		
		.. note::
		    When you call :meth:`torch.load()` on a file which contains GPU tensors, those tensors
		    will be loaded to GPU by default. You can call `torch.load(.., map_location='cpu')`
		    and then :meth:`load_state_dict` to avoid GPU RAM surge when loading a model checkpoint.
		
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
		    >>> with open('tensor.pt') as f:
		            buffer = io.BytesIO(f.read())
		    >>> torch.load(buffer)
	**/
	static public function load(f:Dynamic, ?map_location:Dynamic, ?pickle_module:Dynamic):Dynamic;
	static public function location_tag(storage:Dynamic):Dynamic;
	static public function mkdtemp():Dynamic;
	static public function normalize_storage_type(storage_type:Dynamic):Dynamic;
	static public function register_package(priority:Dynamic, tagger:Dynamic, deserializer:Dynamic):Dynamic;
	/**
		Saves an object to a disk file.
		
		See also: :ref:`recommend-saving-models`
		
		Args:
		    obj: saved object
		    f: a file-like object (has to implement write and flush) or a string
		       containing a file name
		    pickle_module: module used for pickling metadata and objects
		    pickle_protocol: can be specified to override the default protocol
		
		.. warning::
		    If you are using Python 2, torch.save does NOT support StringIO.StringIO
		    as a valid file-like object. This is because the write method should return
		    the number of bytes written; StringIO.write() does not do this.
		
		    Please use something like io.BytesIO instead.
		
		Example:
		    >>> # Save to file
		    >>> x = torch.tensor([0, 1, 2, 3, 4])
		    >>> torch.save(x, 'tensor.pt')
		    >>> # Save to io.BytesIO buffer
		    >>> buffer = io.BytesIO()
		    >>> torch.save(x, buffer)
	**/
	static public function save(obj:Dynamic, f:Dynamic, ?pickle_module:Dynamic, ?pickle_protocol:Dynamic):Dynamic;
	static public function storage_to_tensor_type(storage:Dynamic):Dynamic;
	static public function validate_cuda_device(location:Dynamic):Dynamic;
}