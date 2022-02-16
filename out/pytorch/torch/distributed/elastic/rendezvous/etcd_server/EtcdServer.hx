/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.etcd_server;
@:pythonImport("torch.distributed.elastic.rendezvous.etcd_server", "EtcdServer") extern class EtcdServer {
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
	public function ___init__(?data_dir:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?data_dir:Dynamic):Void;
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
	public function _get_etcd_server_process():Dynamic;
	public function _start(data_dir:Dynamic, ?timeout:Dynamic, ?stderr:Dynamic):Dynamic;
	public function _wait_for_ready(?timeout:Dynamic):Dynamic;
	/**
		Returns:
		   An etcd client object that can be used to make requests to
		   this server.
	**/
	public function get_client():Dynamic;
	/**
		Returns:
		    the etcd server endpoint (host:port)
	**/
	public function get_endpoint():Dynamic;
	/**
		Returns:
		    the host the server is running on.
	**/
	public function get_host():Dynamic;
	/**
		Returns:
		    the port the server is running on.
	**/
	public function get_port():Dynamic;
	/**
		Starts the server, and waits for it to be ready. When this function
		returns the sever is ready to take requests.
		
		Args:
		    timeout: time (in seconds) to wait for the server to be ready
		        before giving up.
		    num_retries: number of retries to start the server. Each retry
		        will wait for max ``timeout`` before considering it as failed.
		    stderr: the standard error file handle. Valid values are
		        `subprocess.PIPE`, `subprocess.DEVNULL`, an existing file
		        descriptor (a positive integer), an existing file object, and
		        `None`.
		
		Raises:
		    TimeoutError: if the server is not ready within the specified timeout
	**/
	public function start(?timeout:Dynamic, ?num_retries:Dynamic, ?stderr:Dynamic):Dynamic;
	/**
		Stops the server and cleans up auto generated resources (e.g. data dir)
	**/
	public function stop():Dynamic;
}