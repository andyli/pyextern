/* This file is generated, do not edit! */
package tensorflow.python.distribute.experimental.rpc.rpc_ops;
@:pythonImport("tensorflow.python.distribute.experimental.rpc.rpc_ops", "GrpcServer") extern class GrpcServer {
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
	public function ___init__(address:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(address:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Create TF RPC server at given address.
		
		Args:
		  rpc_layer: Communication layer between client and server. Only "grpc" rpc
		    layer is supported at the moment.
		  address: Address where RPC server is hosted.
		
		Returns:
		  An instance of `tf.distribute.experimental.rpc.Server` class.
		
		Raises:
		    A ValueError if rpc_layer other than "grpc" is used. Only GRPC
		    is supported at the moment.
		
		Example usage:
		
		  >>> import portpicker
		  >>> @tf.function(input_signature=[
		  ...      tf.TensorSpec([], tf.int32),
		  ...      tf.TensorSpec([], tf.int32)])
		  ... def remote_fn(a, b):
		  ...   return tf.add(a, b)
		
		  >>> port = portpicker.pick_unused_port()
		  >>> address = "localhost:{}".format(port)
		  >>> server = tf.distribute.experimental.rpc.Server.create("grpc", address)
		  >>> server.register("addition", remote_fn)
		  >>> server.start()
	**/
	static public function create(rpc_layer:Dynamic, address:Dynamic):Dynamic;
	/**
		Method for registering functions.
	**/
	public function register(method_name:Dynamic, func:Dynamic):Dynamic;
	/**
		Starts GRPC server.
	**/
	public function start():Dynamic;
}