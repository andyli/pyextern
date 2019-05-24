/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.gce_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.gce_cluster_resolver", "GceClusterResolver") extern class GceClusterResolver {
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Creates a new GceClusterResolver object.
		
		This takes in a few parameters and creates a GceClusterResolver project. It
		will then use these parameters to query the GCE API for the IP addresses of
		each instance in the instance group.
		
		Args:
		  project: Name of the GCE project.
		  zone: Zone of the GCE instance group.
		  instance_group: Name of the GCE instance group.
		  port: Port of the listening TensorFlow server (default: 8470)
		  task_type: Name of the TensorFlow job this GCE instance group of VM
		    instances belong to.
		  task_index: The task index for this particular VM, within the GCE
		    instance group. In particular, every single instance should be assigned
		    a unique ordinal index within an instance group manually so that they
		    can be distinguished from each other.
		  rpc_layer: The RPC layer TensorFlow should use to communicate across
		    instances.
		  credentials: GCE Credentials. If nothing is specified, this defaults to
		    GoogleCredentials.get_application_default().
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. (Default: discovery.build('compute', 'v1')). If you specify a
		    custom service object, then the credentials parameter will be ignored.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
	**/
	@:native("__init__")
	public function ___init__(project:Dynamic, zone:Dynamic, instance_group:Dynamic, port:Dynamic, ?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic, ?credentials:Dynamic, ?service:Dynamic):Dynamic;
	/**
		Creates a new GceClusterResolver object.
		
		This takes in a few parameters and creates a GceClusterResolver project. It
		will then use these parameters to query the GCE API for the IP addresses of
		each instance in the instance group.
		
		Args:
		  project: Name of the GCE project.
		  zone: Zone of the GCE instance group.
		  instance_group: Name of the GCE instance group.
		  port: Port of the listening TensorFlow server (default: 8470)
		  task_type: Name of the TensorFlow job this GCE instance group of VM
		    instances belong to.
		  task_index: The task index for this particular VM, within the GCE
		    instance group. In particular, every single instance should be assigned
		    a unique ordinal index within an instance group manually so that they
		    can be distinguished from each other.
		  rpc_layer: The RPC layer TensorFlow should use to communicate across
		    instances.
		  credentials: GCE Credentials. If nothing is specified, this defaults to
		    GoogleCredentials.get_application_default().
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. (Default: discovery.build('compute', 'v1')). If you specify a
		    custom service object, then the credentials parameter will be ignored.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
	**/
	public function new(project:Dynamic, zone:Dynamic, instance_group:Dynamic, port:Dynamic, ?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic, ?credentials:Dynamic, ?service:Dynamic):Void;
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
		Returns a ClusterSpec object based on the latest instance group info.
		
		This returns a ClusterSpec object for use based on information from the
		specified instance group. We will retrieve the information from the GCE APIs
		every time this method is called.
		
		Returns:
		  A ClusterSpec containing host information retrieved from GCE.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
		
		For users in the GCE environment, the environment property is always an
		empty string, and Google users will not use this ClusterResolver for running
		on internal systems.
	**/
	public var environment : Dynamic;
	/**
		Retrieves the name or URL of the session master.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the master.
		  task_index: (Optional) The index of the TensorFlow task of the master.
		  rpc_layer: (Optional) The RPC protocol for the given cluster.
		
		Returns:
		  The name or URL of the session master.
		
		Implementors of this function must take care in ensuring that the master
		returned is up-to-date at the time to calling this function. This usually
		means retrieving the master every time this function is invoked.
	**/
	public function master(?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of accelerator cores per worker.
		
		This returns the number of accelerator cores (such as GPUs and TPUs)
		available per worker. If workers only has CPU cores available, then this
		should return 0. This method will query the master for this information
		if it is not otherwise known.
		
		Optionally, we allow callers to specify the task_type, task_index, and
		rpc_layer, if they want to target a specific TensorFlow process to query
		the number of accelerators. This is to support heterogenous environments,
		where the number of accelerators cores per host is different.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the machine we
		    want to query.
		  task_index: (Optional) The index of the TensorFlow task of the machine we
		    want to query.
		  accelerator_type: (Optional) The type of accelerator we are trying to
		    query (defaults to 'GPU').
		  config_proto: (Optional) Configuration for starting a new session to
		    query how many accelerator cores it has.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_index:Dynamic, ?accelerator_type:Dynamic, ?config_proto:Dynamic):Dynamic;
	public var rpc_layer : Dynamic;
	public var task_index : Dynamic;
	public var task_type : Dynamic;
}