/* This file is generated, do not edit! */
package tensorflow.contrib.cluster_resolver.python.training.gce_cluster_resolver;
@:pythonImport("tensorflow.contrib.cluster_resolver.python.training.gce_cluster_resolver", "GceClusterResolver") extern class GceClusterResolver {
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
		  project: Name of the GCE project
		  zone: Zone of the GCE instance group
		  instance_group: Name of the GCE instance group
		  port: Port of the listening TensorFlow server (default: 8470)
		  job_name: Name of the TensorFlow job this set of instances belongs to
		  credentials: GCE Credentials. If nothing is specified, this defaults to
		    GoogleCredentials.get_application_default()
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. (Default: discovery.build('compute', 'v1')). If you specify a
		    custom service object, then the credentials parameter will be ignored.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
	**/
	@:native("__init__")
	public function ___init__(project:Dynamic, zone:Dynamic, instance_group:Dynamic, port:Dynamic, ?job_name:Dynamic, ?credentials:Dynamic, ?service:Dynamic):Dynamic;
	/**
		Creates a new GceClusterResolver object.
		
		This takes in a few parameters and creates a GceClusterResolver project. It
		will then use these parameters to query the GCE API for the IP addresses of
		each instance in the instance group.
		
		Args:
		  project: Name of the GCE project
		  zone: Zone of the GCE instance group
		  instance_group: Name of the GCE instance group
		  port: Port of the listening TensorFlow server (default: 8470)
		  job_name: Name of the TensorFlow job this set of instances belongs to
		  credentials: GCE Credentials. If nothing is specified, this defaults to
		    GoogleCredentials.get_application_default()
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. (Default: discovery.build('compute', 'v1')). If you specify a
		    custom service object, then the credentials parameter will be ignored.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
	**/
	public function new(project:Dynamic, zone:Dynamic, instance_group:Dynamic, port:Dynamic, ?job_name:Dynamic, ?credentials:Dynamic, ?service:Dynamic):Void;
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
		Returns a ClusterSpec object based on the latest instance group info.
		
		This returns a ClusterSpec object for use based on information from the
		specified instance group. We will retrieve the information from the GCE APIs
		every time this method is called.
		
		Returns:
		  A ClusterSpec containing host information retrieved from GCE.
	**/
	public function cluster_spec():Dynamic;
	/**
		...
	**/
	public function master():Dynamic;
}