/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.tpu.tpu_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.tpu.tpu_cluster_resolver", "TPUClusterResolver") extern class TPUClusterResolver {
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
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
		Creates a new TPUClusterResolver object.
		
		The ClusterResolver will then use the parameters to query the Cloud TPU APIs
		for the IP addresses and ports of each Cloud TPU listed.
		
		Args:
		  tpu: A string corresponding to the TPU to use. It can be the TPU name or
		    TPU worker gRPC address. If not set, it will try automatically resolve
		    the TPU address on Cloud TPUs. If set to "local", it will assume that
		    the TPU is directly connected to the VM instead of over the network.
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
		  discovery_url: A URL template that points to the location of the discovery
		    service. It should have two parameters {api} and {apiVersion} that when
		    filled in produce an absolute URL to the discovery document for that
		    service. The environment variable 'TPU_API_DISCOVERY_URL' will override
		    this.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
		  ValueError: If no TPUs are specified.
		  RuntimeError: If an empty TPU name is specified and this is running in a
		    Google Cloud environment.
	**/
	@:native("__init__")
	public function ___init__(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic, ?job_name:Dynamic, ?coordinator_name:Dynamic, ?coordinator_address:Dynamic, ?credentials:Dynamic, ?service:Dynamic, ?discovery_url:Dynamic):Dynamic;
	/**
		Creates a new TPUClusterResolver object.
		
		The ClusterResolver will then use the parameters to query the Cloud TPU APIs
		for the IP addresses and ports of each Cloud TPU listed.
		
		Args:
		  tpu: A string corresponding to the TPU to use. It can be the TPU name or
		    TPU worker gRPC address. If not set, it will try automatically resolve
		    the TPU address on Cloud TPUs. If set to "local", it will assume that
		    the TPU is directly connected to the VM instead of over the network.
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
		  discovery_url: A URL template that points to the location of the discovery
		    service. It should have two parameters {api} and {apiVersion} that when
		    filled in produce an absolute URL to the discovery document for that
		    service. The environment variable 'TPU_API_DISCOVERY_URL' will override
		    this.
		
		Raises:
		  ImportError: If the googleapiclient is not installed.
		  ValueError: If no TPUs are specified.
		  RuntimeError: If an empty TPU name is specified and this is running in a
		    Google Cloud environment.
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
	static public var _abc_impl : Dynamic;
	/**
		Returns a dict of hosts to cores and total cores given devices names.
		
		Returns a namedtuple with two attributes:
		  device_map: A map of host_ids to a list of core_ids.
		  total_cores: The total number of cores within the TPU system.
		
		Args:
		  devices: A list of devices returned by session.list_devices()
	**/
	static public function _get_device_dict_and_cores(devices:Dynamic):Dynamic;
	public function _start_local_server():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Verifies that every device in device_dict has the same # of cores.
	**/
	static public function _verify_and_return_same_core_count(device_dict:Dynamic):Dynamic;
	/**
		Returns a ClusterSpec object based on the latest TPU information.
		
		We retrieve the information from the GCE APIs every time this method is
		called.
		
		Returns:
		  A ClusterSpec containing host information returned from Cloud TPUs,
		  or None.
		
		Raises:
		  RuntimeError: If the provided TPU is not healthy.
	**/
	public function cluster_spec():Dynamic;
	/**
		Initializes TPU and returns a TPUClusterResolver.
		
		This API will connect to remote TPU cluster and initialize the TPU
		hardwares. Example usage:
		
		>>> resolver = tf.distribute.cluster_resolver.TPUClusterResolver.connect(
		...     tpu='')
		
		It can be viewed as convenient wrapper of the following code:
		
		>>> resolver = tf.distribute.cluster_resolver.TPUClusterResolver(tpu='')
		>>> tf.config.experimental_connect_to_cluster(resolver)
		>>> tf.tpu.experimental.initialize_tpu_system(resolver)
		
		Args:
		  tpu: A string corresponding to the TPU to use. It can be the TPU name or
		    TPU worker gRPC address. If not set, it will try automatically resolve
		    the TPU address on Cloud TPUs.
		  zone: Zone where the TPUs are located. If omitted or empty, we will assume
		    that the zone of the TPU is the same as the zone of the GCE VM, which we
		    will try to discover from the GCE metadata service.
		  project: Name of the GCP project containing Cloud TPUs. If omitted or
		    empty, we will try to discover the project name of the GCE VM from the
		    GCE metadata service.
		
		Returns:
		  An instance of TPUClusterResolver object.
		
		Raises:
		  NotFoundError: If no TPU devices found in eager mode.
	**/
	static public function connect(?tpu:Dynamic, ?zone:Dynamic, ?project:Dynamic):Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
	**/
	public var environment : Dynamic;
	public function get_job_name():Dynamic;
	public function get_master():Dynamic;
	/**
		Returns the metadata of the TPU system.
		
		Users can call this method to get some facts of the TPU system, like
		total number of cores, number of TPU workers and the devices. E.g.
		```python
		
		resolver = tf.distribute.cluster_resolver.TPUClusterResolver(tpu='')
		tpu_system_metadata = resolver.get_tpu_system_metadata()
		num_hosts = tpu_system_metadata.num_hosts
		```
		
		Returns:
		  A `tf.tpu.experimental.TPUSystemMetadata` object.
	**/
	public function get_tpu_system_metadata():Dynamic;
	/**
		Get the Master string to be used for the session.
		
		In the normal case, this returns the grpc path (grpc://1.2.3.4:8470) of
		first instance in the ClusterSpec returned by the cluster_spec function.
		
		If a non-TPU name is used when constructing a TPUClusterResolver, that will
		be returned instead (e.g. If the tpus argument's value when constructing
		this TPUClusterResolver was 'grpc://10.240.1.2:8470',
		'grpc://10.240.1.2:8470' will be returned).
		
		Args:
		  task_type: (Optional, string) The type of the TensorFlow task of the
		    master.
		  task_id: (Optional, integer) The index of the TensorFlow task of the
		    master.
		  rpc_layer: (Optional, string) The RPC protocol TensorFlow should use to
		    communicate with TPUs.
		
		Returns:
		  string, the connection string to use when creating a session.
		
		Raises:
		  ValueError: If none of the TPUs specified exists.
	**/
	public function master(?task_type:Dynamic, ?task_id:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of TPU cores per worker.
		
		Connects to the master and list all the devices present in the master,
		and counts them up. Also verifies that the device counts per host in the
		cluster is the same before returning the number of TPU cores per host.
		
		Args:
		  task_type: Unused.
		  task_id: Unused.
		  config_proto: Used to create a connection to a TPU master in order to
		    retrieve the system metadata.
		
		Raises:
		  RuntimeError: If we cannot talk to a TPU worker after retrying or if the
		    number of TPU devices per host is different.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_id:Dynamic, ?config_proto:Dynamic):Dynamic;
	/**
		Returns the task id this `ClusterResolver` indicates.
		
		In TensorFlow distributed environment, each job may have an applicable
		task id, which is the index of the instance within its task type. This is
		useful when user needs to run specific code according to task index. For
		example,
		
		```python
		cluster_spec = tf.train.ClusterSpec({
		    "ps": ["localhost:2222", "localhost:2223"],
		    "worker": ["localhost:2224", "localhost:2225", "localhost:2226"]
		})
		
		# SimpleClusterResolver is used here for illustration; other cluster
		# resolvers may be used for other source of task type/id.
		simple_resolver = SimpleClusterResolver(cluster_spec, task_type="worker",
		                                        task_id=0)
		
		...
		
		if cluster_resolver.task_type == 'worker' and cluster_resolver.task_id == 0:
		  # Perform something that's only applicable on 'worker' type, id 0. This
		  # block will run on this particular instance since we've specified this
		  # task to be a 'worker', id 0 in above cluster resolver.
		else:
		  # Perform something that's only applicable on other ids. This block will
		  # not run on this particular instance.
		```
		
		Returns `None` if such information is not available or is not applicable
		in the current distributed environment, such as training with
		`tf.distribute.cluster_resolver.TPUClusterResolver`.
		
		For more information, please see
		`tf.distribute.cluster_resolver.ClusterResolver`'s class docstring.
	**/
	public var task_id : Dynamic;
	/**
		Returns the task type this `ClusterResolver` indicates.
		
		In TensorFlow distributed environment, each job may have an applicable
		task type. Valid task types in TensorFlow include
		'chief': a worker that is designated with more responsibility,
		'worker': a regular worker for training/evaluation,
		'ps': a parameter server, or
		'evaluator': an evaluator that evaluates the checkpoints for metrics.
		
		See [Multi-worker configuration](
		https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras#multi-worker_configuration)
		for more information about 'chief' and 'worker' task type, which are most
		commonly used.
		
		Having access to such information is useful when user needs to run specific
		code according to task types. For example,
		
		```python
		cluster_spec = tf.train.ClusterSpec({
		    "ps": ["localhost:2222", "localhost:2223"],
		    "worker": ["localhost:2224", "localhost:2225", "localhost:2226"]
		})
		
		# SimpleClusterResolver is used here for illustration; other cluster
		# resolvers may be used for other source of task type/id.
		simple_resolver = SimpleClusterResolver(cluster_spec, task_type="worker",
		                                        task_id=1)
		
		...
		
		if cluster_resolver.task_type == 'worker':
		  # Perform something that's only applicable on workers. This block
		  # will run on this particular instance since we've specified this task to
		  # be a worker in above cluster resolver.
		elif cluster_resolver.task_type == 'ps':
		  # Perform something that's only applicable on parameter servers. This
		  # block will not run on this particular instance.
		```
		
		Returns `None` if such information is not available or is not applicable
		in the current distributed environment, such as training with
		`tf.distribute.experimental.TPUStrategy`.
		
		For more information, please see
		`tf.distribute.cluster_resolver.ClusterResolver`'s class doc.
	**/
	public var task_type : Dynamic;
}