/* This file is generated, do not edit! */
package tensorflow.contrib.ignite.python.ops.ignite_dataset_ops;
@:pythonImport("tensorflow.contrib.ignite.python.ops.ignite_dataset_ops", "IgniteClient") extern class IgniteClient {
	static public var __abstractmethods__ : Dynamic;
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
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Connects to host and port specified in the constructor.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Disconnects the socket.
	**/
	public function __exit__(t:Dynamic, v:Dynamic, traceback:Dynamic):Dynamic;
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
		Constructs a new instance of IgniteClient.
		
		Args:
		  host: Apache Ignite Thin client host to be connected.
		  port: Apache Ignite Thin client port to be connected.
		  username: Apache Ignite Thin Client authentication username.
		  password: Apache Ignite Thin Client authentication password.
		  certfile: File in PEM format containing the certificate as well as any
		    number of CA certificates needed to establish the certificate's
		    authenticity.
		  keyfile: File containing the private key (otherwise the private key will
		    be taken from certfile as well).
		  cert_password: Password to be used if the private key is encrypted and a
		    password is necessary.
	**/
	@:native("__init__")
	public function ___init__(host:Dynamic, port:Dynamic, ?username:Dynamic, ?password:Dynamic, ?certfile:Dynamic, ?keyfile:Dynamic, ?cert_password:Dynamic):Dynamic;
	/**
		Constructs a new instance of IgniteClient.
		
		Args:
		  host: Apache Ignite Thin client host to be connected.
		  port: Apache Ignite Thin client port to be connected.
		  username: Apache Ignite Thin Client authentication username.
		  password: Apache Ignite Thin Client authentication password.
		  certfile: File in PEM format containing the certificate as well as any
		    number of CA certificates needed to establish the certificate's
		    authenticity.
		  keyfile: File containing the private key (otherwise the private key will
		    be taken from certfile as well).
		  cert_password: Password to be used if the private key is encrypted and a
		    password is necessary.
	**/
	public function new(host:Dynamic, port:Dynamic, ?username:Dynamic, ?password:Dynamic, ?certfile:Dynamic, ?keyfile:Dynamic, ?cert_password:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Extracts type information from the specified object.
	**/
	public function _collect_types(field_name:Dynamic, data:Dynamic):Dynamic;
	/**
		Queries Apache Ignite information about type by type id.
	**/
	public function _get_type(type_id:Dynamic):Dynamic;
	/**
		Computes hash code of the specified string using Java code.
	**/
	public function _java_hash_code(s:Dynamic):Dynamic;
	/**
		Parses string.
	**/
	public function _parse_string():Dynamic;
	/**
		Reads, unpacks and returns specified type (little-endian).
	**/
	public function _read(data_type:Dynamic, length:Dynamic):Dynamic;
	/**
		Packs and writes data using the specified type (little-endian).
	**/
	public function _write(value:Dynamic, data_type:Dynamic):Dynamic;
	/**
		Collects type information about objects stored in the specified cache.
	**/
	public function get_cache_type(cache_name:Dynamic):Dynamic;
	/**
		Makes a handshake  after connect and before any other calls.
	**/
	public function handshake():Dynamic;
	/**
		Reads and returnes byte.
	**/
	public function read_byte():Dynamic;
	/**
		Reads the specified number of bytes and returns them as a buffer.
	**/
	public function read_data(length:Dynamic):Dynamic;
	/**
		Reads and returns int (4 bytes, little-endian).
	**/
	public function read_int():Dynamic;
	/**
		Reads and returns long (8 bytes, little-endian).
	**/
	public function read_long():Dynamic;
	/**
		Reads and returns short (2 bytes, little-endian).
	**/
	public function read_short():Dynamic;
	/**
		Skips the specified number of bytes.
	**/
	public function skip(length:Dynamic):Dynamic;
	/**
		Writes the specified byte.
	**/
	public function write_byte(v:Dynamic):Dynamic;
	/**
		Writes the specified short (4 bytes, little-endian).
	**/
	public function write_int(v:Dynamic):Dynamic;
	/**
		Writes the specified int (8 bytes, little-endian).
	**/
	public function write_long(v:Dynamic):Dynamic;
	/**
		Writes the specified short (2 bytes, little-endian).
	**/
	public function write_short(v:Dynamic):Dynamic;
	/**
		Writes the specified string.
	**/
	public function write_string(v:Dynamic):Dynamic;
}