/* This file is generated, do not edit! */
package tensorflow.contrib.ignite.python.ops.ignite_dataset_ops;
@:pythonImport("tensorflow.contrib.ignite.python.ops.ignite_dataset_ops", "TcpClient") extern class TcpClient {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs a new instance based on the specified host and port.
		
		Args:
		  host: Host to be connected.
		  port: Port to be connected.
		  certfile: File in PEM format containing the certificate as well as any
		    number of CA certificates needed to establish the certificate's
		    authenticity.
		  keyfile: File containing the private key (otherwise the private key will
		    be taken from certfile as well).
		  password: Password to be used if the private key is encrypted and a
		    password is necessary.
		
		Raises:
		  ValueError: If the wrong combination of arguments is provided.
	**/
	@:native("__init__")
	public function ___init__(host:Dynamic, port:Dynamic, ?certfile:Dynamic, ?keyfile:Dynamic, ?password:Dynamic):Dynamic;
	/**
		Constructs a new instance based on the specified host and port.
		
		Args:
		  host: Host to be connected.
		  port: Port to be connected.
		  certfile: File in PEM format containing the certificate as well as any
		    number of CA certificates needed to establish the certificate's
		    authenticity.
		  keyfile: File containing the private key (otherwise the private key will
		    be taken from certfile as well).
		  password: Password to be used if the private key is encrypted and a
		    password is necessary.
		
		Raises:
		  ValueError: If the wrong combination of arguments is provided.
	**/
	public function new(host:Dynamic, port:Dynamic, ?certfile:Dynamic, ?keyfile:Dynamic, ?password:Dynamic):Void;
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
	/**
		Reads, unpacks and returns specified type (little-endian).
	**/
	public function _read(data_type:Dynamic, length:Dynamic):Dynamic;
	/**
		Packs and writes data using the specified type (little-endian).
	**/
	public function _write(value:Dynamic, data_type:Dynamic):Dynamic;
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