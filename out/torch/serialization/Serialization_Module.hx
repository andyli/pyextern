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
	static public function _cpu_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cpu_tag(obj:Dynamic):Dynamic;
	static public function _cuda_deserialize(obj:Dynamic, location:Dynamic):Dynamic;
	static public function _cuda_tag(obj:Dynamic):Dynamic;
	static public function _import_dotted_name(name:Dynamic):Dynamic;
	static public function _load(f:Dynamic, map_location:Dynamic, pickle_module:Dynamic):Dynamic;
	static public var _package_registry : Dynamic;
	static public function _save(obj:Dynamic, f:Dynamic, pickle_module:Dynamic, pickle_protocol:Dynamic):Dynamic;
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
		
		torch.load can dynamically remap storages to be loaded on a different device
		using the map_location argument. If it's a callable, it will be called with
		two arguments: storage and location tag. It's expected to either return a
		storage that's been moved to a different location, or None (and the location
		will be resolved using the default method). If this argument is a dict it's
		expected to be a mapping from location tags used in a file, to location
		tags of the current system.
		
		By default the location tags are 'cpu' for host tensors and 'cuda:device_id'
		(e.g. 'cuda:2') for cuda tensors. User extensions can register their own
		tagging and deserialization methods using register_package.
		
		Args:
		    f: a file-like object (has to implement fileno that returns a file descriptor,
		        and must implement seek), or a string containing a file name
		    map_location: a function or a dict specifying how to remap storage locations
		    pickle_module: module used for unpickling metadata and objects (has to match
		        the pickle_module used to serialize file)
		
		Example:
		    >>> torch.load('tensors.pt')
		    # Load all tensors onto the CPU
		    >>> torch.load('tensors.pt', map_location=lambda storage, loc: storage)
		    # Map tensors from GPU 1 to GPU 0
		    >>> torch.load('tensors.pt', map_location={'cuda:1':'cuda:0'})
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
		    f: a file-like object (has to implement fileno that returns a file descriptor)
		        or a string containing a file name
		    pickle_module: module used for pickling metadata and objects
		    pickle_protocol: can be specified to override the default protocol
	**/
	static public function save(obj:Dynamic, f:Dynamic, ?pickle_module:Dynamic, ?pickle_protocol:Dynamic):Dynamic;
	static public function storage_to_tensor_type(storage:Dynamic):Dynamic;
}