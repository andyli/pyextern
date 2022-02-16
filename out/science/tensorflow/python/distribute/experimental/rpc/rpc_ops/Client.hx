/* This file is generated, do not edit! */
package tensorflow.python.distribute.experimental.rpc.rpc_ops;
@:pythonImport("tensorflow.python.distribute.experimental.rpc.rpc_ops", "Client") extern class Client {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Method for making RPC calls to remote server.
		
		This invokes RPC to the server, executing the registered method_name
		remotely.
		Args:
		  method_name: Remote registered method to invoke
		  args: List of arguments for the registered method.
		  output_specs: Output specs for the output from method.
		     For example, if tf.function is: @tf.function(input_signature=[
		       tf.TensorSpec([], tf.int32), tf.TensorSpec([], tf.int32) ])
		      def multiply_fn(a, b): return tf.math.multiply(a, b)
		    output_spec is: tf.TensorSpec((), tf.int32)  If you have access to TF
		      Function, the output specs can be generated
		   from tf.function by calling: output_specs =
		     tf.nest.map_structure(tf.type_spec_from_value,
		     tf_function.get_concrete_function().structured_outputs  If output_specs
		     are not provided, flattened list of tensors will be returned in
		     response.
		  timeout_in_ms: Timeout for this call. If 0, default client timeout will be
		    used.
		
		Returns:
		  An instance of `StatusOrResult` class with the following available
		  methods.
		    * `is_ok()`:
		        Returns True of RPC was successful.
		    * `get_error()`:
		        Returns TF error_code and error message for the RPC.
		    * `get_value()`:
		        Returns the returned value from remote TF function execution
		        when RPC is successful.
		
		  Calling any of the above methods will block till RPC is completed and
		  result is available.
	**/
	public function call(method_name:Dynamic, ?args:Dynamic, ?output_specs:Dynamic, ?timeout_in_ms:Dynamic):Dynamic;
	/**
		Create TF RPC client to connect to the given address.
		
		Args:
		  rpc_layer: Communication layer between client and server. Only "grpc" rpc
		    layer is supported at the moment.
		  address: Address of the server to connect the RPC client to.
		  name: Name of the RPC Client. You can create multiple clients connecting
		    to same server and distinguish them using different names.
		  timeout_in_ms: The default timeout to use for outgoing RPCs from client. 0
		    indicates no timeout. Exceeding timeout during RPC will raise
		    DeadlineExceeded error.
		
		Returns:
		  An instance of `tf.distribute.experimental.rpc.Client` with the following
		  dynamically added methods for eagerly created clients:
		    * `Registered methods` e.g. multiply(**args):
		        If Client is created when executing eagerly, client will request the
		        list of registered methods from server during client creation.
		        The convenience methods for RPCs will be dynamically added to the
		        created Client instance.
		
		        For example, when a server has method "multiply" registered, the
		        client object created in eager mode will have 'multiply' method
		        available. Users can use client.multiply(..) to make RPC, instead of
		        client.call("multiply", ...)
		
		        These methods are not available when Client is created inside a
		        tf.function.
		
		Raises:
		    A ValueError if rpc_layer other than "grpc" is used. Only GRPC
		      is supported at the moment.
		    A DeadlineExceeded exception in eager mode if timeout exceeds while
		      creating and listing client methods.
		
		Example usage:
		  >>> # Have server already started.
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
		
		  >>> # Start client
		  >>> client = tf.distribute.experimental.rpc.Client.create("grpc",
		  ...      address=address, name="test_client")
		
		  >>> a = tf.constant(2, dtype=tf.int32)
		  >>> b = tf.constant(3, dtype=tf.int32)
		
		  >>> result = client.call(
		  ...    args=[a, b],
		  ...    method_name="addition",
		  ...    output_specs=tf.TensorSpec((), tf.int32))
		
		  >>> if result.is_ok():
		  ...   result.get_value()
		
		  >>> result = client.addition(a, b)
		
		  >>> if result.is_ok():
		  ...   result.get_value()
	**/
	static public function create(rpc_layer:Dynamic, address:Dynamic, ?name:Dynamic, ?timeout_in_ms:Dynamic):Dynamic;
}