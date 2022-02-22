/* This file is generated, do not edit! */
package paho.mqtt.client;
@:pythonImport("paho.mqtt.client", "WebsocketWrapper") extern class WebsocketWrapper {
	static public var OPCODE_BINARY : Dynamic;
	static public var OPCODE_CONNCLOSE : Dynamic;
	static public var OPCODE_CONTINUATION : Dynamic;
	static public var OPCODE_PING : Dynamic;
	static public var OPCODE_PONG : Dynamic;
	static public var OPCODE_TEXT : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	public function ___init__(socket:Dynamic, host:Dynamic, port:Dynamic, is_ssl:Dynamic, path:Dynamic, extra_headers:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(socket:Dynamic, host:Dynamic, port:Dynamic, is_ssl:Dynamic, path:Dynamic, extra_headers:Dynamic):Void;
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
	public function _buffered_read(length:Dynamic):Dynamic;
	public function _create_frame(opcode:Dynamic, data:Dynamic, ?do_masking:Dynamic):Dynamic;
	public function _do_handshake(extra_headers:Dynamic):Dynamic;
	public function _recv_impl(length:Dynamic):Dynamic;
	public function _send_impl(data:Dynamic):Dynamic;
	public function close():Dynamic;
	public function fileno():Dynamic;
	public function pending():Dynamic;
	public function read(length:Dynamic):Dynamic;
	public function recv(length:Dynamic):Dynamic;
	public function send(data:Dynamic):Dynamic;
	public function setblocking(flag:Dynamic):Dynamic;
	public function write(data:Dynamic):Dynamic;
}