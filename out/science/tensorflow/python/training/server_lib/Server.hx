/* This file is generated, do not edit! */
package tensorflow.python.training.server_lib;
@:pythonImport("tensorflow.python.training.server_lib", "Server") extern class Server {
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
		Creates a new server with the given definition.
		
		The `job_name`, `task_index`, and `protocol` arguments are optional, and
		override any information provided in `server_or_cluster_def`.
		
		Args:
		  server_or_cluster_def: A `tf.train.ServerDef` or `tf.train.ClusterDef`
		    protocol buffer, or a `tf.train.ClusterSpec` object, describing the
		    server to be created and/or the cluster of which it is a member.
		  job_name: (Optional.) Specifies the name of the job of which the server is
		    a member. Defaults to the value in `server_or_cluster_def`, if
		    specified.
		  task_index: (Optional.) Specifies the task index of the server in its job.
		    Defaults to the value in `server_or_cluster_def`, if specified.
		    Otherwise defaults to 0 if the server's job has only one task.
		  protocol: (Optional.) Specifies the protocol to be used by the server.
		    Acceptable values include `"grpc", "grpc+verbs"`. Defaults to the value
		    in `server_or_cluster_def`, if specified. Otherwise defaults to
		    `"grpc"`.
		  config: (Options.) A `tf.compat.v1.ConfigProto` that specifies default
		    configuration options for all sessions that run on this server.
		  start: (Optional.) Boolean, indicating whether to start the server after
		    creating it. Defaults to `True`.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    creating the TensorFlow server.
	**/
	@:native("__init__")
	public function ___init__(server_or_cluster_def:Dynamic, ?job_name:Dynamic, ?task_index:Dynamic, ?protocol:Dynamic, ?config:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Creates a new server with the given definition.
		
		The `job_name`, `task_index`, and `protocol` arguments are optional, and
		override any information provided in `server_or_cluster_def`.
		
		Args:
		  server_or_cluster_def: A `tf.train.ServerDef` or `tf.train.ClusterDef`
		    protocol buffer, or a `tf.train.ClusterSpec` object, describing the
		    server to be created and/or the cluster of which it is a member.
		  job_name: (Optional.) Specifies the name of the job of which the server is
		    a member. Defaults to the value in `server_or_cluster_def`, if
		    specified.
		  task_index: (Optional.) Specifies the task index of the server in its job.
		    Defaults to the value in `server_or_cluster_def`, if specified.
		    Otherwise defaults to 0 if the server's job has only one task.
		  protocol: (Optional.) Specifies the protocol to be used by the server.
		    Acceptable values include `"grpc", "grpc+verbs"`. Defaults to the value
		    in `server_or_cluster_def`, if specified. Otherwise defaults to
		    `"grpc"`.
		  config: (Options.) A `tf.compat.v1.ConfigProto` that specifies default
		    configuration options for all sessions that run on this server.
		  start: (Optional.) Boolean, indicating whether to start the server after
		    creating it. Defaults to `True`.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    creating the TensorFlow server.
	**/
	public function new(server_or_cluster_def:Dynamic, ?job_name:Dynamic, ?task_index:Dynamic, ?protocol:Dynamic, ?config:Dynamic, ?start:Dynamic):Void;
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
	static public var _tf_deprecated_api_names : Dynamic;
	/**
		Creates a new single-process cluster running on the local host.
		
		This method is a convenience wrapper for creating a
		`tf.distribute.Server` with a `tf.train.ServerDef` that specifies a
		single-process cluster containing a single task in a job called
		`"local"`.
		
		Args:
		  config: (Options.) A `tf.compat.v1.ConfigProto` that specifies default
		    configuration options for all sessions that run on this server.
		  start: (Optional.) Boolean, indicating whether to start the server after
		    creating it. Defaults to `True`.
		
		Returns:
		  A local `tf.distribute.Server`.
	**/
	static public function create_local_server(?config:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Blocks until the server has shut down.
		
		This method currently blocks forever.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    joining the TensorFlow server.
	**/
	public function join():Dynamic;
	/**
		Returns the `tf.train.ServerDef` for this server.
		
		Returns:
		  A `tf.train.ServerDef` protocol buffer that describes the configuration
		  of this server.
	**/
	public var server_def : Dynamic;
	/**
		Starts this server.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    starting the TensorFlow server.
	**/
	public function start():Dynamic;
	/**
		Returns the target for a `tf.compat.v1.Session` to connect to this server.
		
		To create a
		`tf.compat.v1.Session` that
		connects to this server, use the following snippet:
		
		```python
		server = tf.distribute.Server(...)
		with tf.compat.v1.Session(server.target):
		  # ...
		```
		
		Returns:
		  A string containing a session target for this server.
	**/
	public var target : Dynamic;
}