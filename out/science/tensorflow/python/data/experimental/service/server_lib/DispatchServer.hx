/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.service.server_lib;
@:pythonImport("tensorflow.python.data.experimental.service.server_lib", "DispatchServer") extern class DispatchServer {
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
		Creates a new dispatch server.
		
		Args:
		  config: (Optional.) A `tf.data.experimental.service.DispatcherConfig`
		    configration. If `None`, the dispatcher will use default
		    configuration values.
		  start: (Optional.) Boolean, indicating whether to start the server after
		    creating it. Defaults to True.
	**/
	@:native("__init__")
	public function ___init__(?config:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Creates a new dispatch server.
		
		Args:
		  config: (Optional.) A `tf.data.experimental.service.DispatcherConfig`
		    configration. If `None`, the dispatcher will use default
		    configuration values.
		  start: (Optional.) Boolean, indicating whether to start the server after
		    creating it. Defaults to True.
	**/
	public function new(?config:Dynamic, ?start:Dynamic):Void;
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
	/**
		Returns the address of the server.
		
		The returned string will be in the form address:port, e.g. "localhost:1000".
	**/
	public var _address : Dynamic;
	/**
		Returns the number of workers registered with the dispatcher.
	**/
	public function _num_workers():Dynamic;
	/**
		Stops the server.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    stopping the server.
	**/
	public function _stop():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Blocks until the server has shut down.
		
		This is useful when starting a dedicated dispatch process.
		
		```
		dispatcher = tf.data.experimental.service.DispatchServer(
		    tf.data.experimental.service.DispatcherConfig(port=5050))
		dispatcher.join()
		```
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    joining the server.
	**/
	public function join():Dynamic;
	/**
		Starts this server.
		
		>>> dispatcher = tf.data.experimental.service.DispatchServer(start=False)
		>>> dispatcher.start()
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    starting the server.
	**/
	public function start():Dynamic;
	/**
		Returns a target that can be used to connect to the server.
		
		>>> dispatcher = tf.data.experimental.service.DispatchServer()
		>>> dataset = tf.data.Dataset.range(10)
		>>> dataset = dataset.apply(tf.data.experimental.service.distribute(
		...     processing_mode="parallel_epochs", service=dispatcher.target))
		
		The returned string will be in the form protocol://address, e.g.
		"grpc://localhost:5050".
	**/
	public var target : Dynamic;
}