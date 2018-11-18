/* This file is generated, do not edit! */
package tensorflow.contrib.cluster_resolver.python.training.tpu_cluster_resolver;
@:pythonImport("tensorflow.contrib.cluster_resolver.python.training.tpu_cluster_resolver", "TPUClusterResolver") extern class TPUClusterResolver {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Creates a new TPUClusterResolver object.
		
		The ClusterResolver will then use the parameters to query the Cloud TPU APIs
		for the IP addresses and ports of each Cloud TPU listed.
		
		Args:
		  tpu: Either a string, or a list of strings corresponding to the TPUs to
		    use. If the single string is the empty string, the string 'local', or a
		    string that begins with 'grpc://' or '/bns', then it is assumed to not
		    correspond with a Cloud TPU and will instead be passed as the session
		    master and no ClusterSpec propagation will be done.
		  zone: Zone where the TPUs are located. If omitted or empty, we will assume
		    that the zone of the TPU is the same as the zone of the GCE VM, which we
		    will try to discover from the GCE metadata service.
		  project: Name of the GCP project containing Cloud TPUs. If omitted or
		    empty, we will try to discover the project name of the GCE VM from the
		    GCE metadata service.
		  job_name: Name of the TensorFlow job the TPUs belong to.
		  coordinator_name: The name to use for the coordinator. Set to None if the
		    coordinator should not be included in the computed ClusterSpec.
		  coordinator_address: The address of the coordinator (typically an ip:port
		    pair). If set to None, a TF server will be started. If coordinator_name
		    is None, a TF server will not be started even if coordinator_address is
		    None.
		  credentials: GCE Credentials. If None, then we use default credentials
		    from the oauth2client
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. If you specify a custom service object, then the credentials
		    parameter will be ignored.
		  discovery_url: A URL template that points to the location of
		    the discovery service. It should have two parameters {api} and
		    {apiVersion} that when filled in produce an absolute URL to the
		    discovery document for that service. The environment variable
		    'TPU_API_DISCOVERY_URL' will override this.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
		  ValueError: If no TPUs are specified.
	**/
	@:native("__init__")
	public function ___init__(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic, ?job_name:Dynamic, ?coordinator_name:Dynamic, ?coordinator_address:Dynamic, ?credentials:Dynamic, ?service:Dynamic, ?discovery_url:Dynamic):Dynamic;
	/**
		Creates a new TPUClusterResolver object.
		
		The ClusterResolver will then use the parameters to query the Cloud TPU APIs
		for the IP addresses and ports of each Cloud TPU listed.
		
		Args:
		  tpu: Either a string, or a list of strings corresponding to the TPUs to
		    use. If the single string is the empty string, the string 'local', or a
		    string that begins with 'grpc://' or '/bns', then it is assumed to not
		    correspond with a Cloud TPU and will instead be passed as the session
		    master and no ClusterSpec propagation will be done.
		  zone: Zone where the TPUs are located. If omitted or empty, we will assume
		    that the zone of the TPU is the same as the zone of the GCE VM, which we
		    will try to discover from the GCE metadata service.
		  project: Name of the GCP project containing Cloud TPUs. If omitted or
		    empty, we will try to discover the project name of the GCE VM from the
		    GCE metadata service.
		  job_name: Name of the TensorFlow job the TPUs belong to.
		  coordinator_name: The name to use for the coordinator. Set to None if the
		    coordinator should not be included in the computed ClusterSpec.
		  coordinator_address: The address of the coordinator (typically an ip:port
		    pair). If set to None, a TF server will be started. If coordinator_name
		    is None, a TF server will not be started even if coordinator_address is
		    None.
		  credentials: GCE Credentials. If None, then we use default credentials
		    from the oauth2client
		  service: The GCE API object returned by the googleapiclient.discovery
		    function. If you specify a custom service object, then the credentials
		    parameter will be ignored.
		  discovery_url: A URL template that points to the location of
		    the discovery service. It should have two parameters {api} and
		    {apiVersion} that when filled in produce an absolute URL to the
		    discovery document for that service. The environment variable
		    'TPU_API_DISCOVERY_URL' will override this.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
		  ValueError: If no TPUs are specified.
	**/
	public function new(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic, ?job_name:Dynamic, ?coordinator_name:Dynamic, ?coordinator_address:Dynamic, ?credentials:Dynamic, ?service:Dynamic, ?discovery_url:Dynamic):Void;
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
	static public function _discoveryUrl():Dynamic;
	static public function _envVarFallback():Dynamic;
	static public function _gkeEndpoints():Dynamic;
	/**
		When running in GKE, the environment variable will be set.
	**/
	static public function _inGke():Dynamic;
	public function _requestComputeMetadata(path:Dynamic):Dynamic;
	public function _shouldResolve():Dynamic;
	public function _start_local_server():Dynamic;
	/**
		Returns a ClusterSpec object based on the latest TPU information.
		
		We retrieve the information from the GCE APIs every time this method is
		called.
		
		Returns:
		  A ClusterSpec containing host information returned from Cloud TPUs.
		
		Raises:
		  RuntimeError: If the provided TPU is not healthy.
	**/
	public function cluster_spec():Dynamic;
	public function get_job_name():Dynamic;
	public function get_master():Dynamic;
	/**
		Get the Master string to be used for the session.
		
		In the normal case, this returns the grpc path (grpc://1.2.3.4:8470) of
		first instance in the ClusterSpec returned by the cluster_spec function.
		
		If a non-TPU name is used when constructing a TPUClusterResolver, that will
		be returned instead (e.g. If the tpus argument's value when constructing
		this TPUClusterResolver was 'grpc://10.240.1.2:8470',
		'grpc://10.240.1.2:8470' will be returned).
		
		Returns:
		  string, the connection string to use when creating a session.
		
		Raises:
		  ValueError: If none of the TPUs specified exists.
	**/
	public function master():Dynamic;
}