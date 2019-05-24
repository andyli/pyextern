/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.kubernetes_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.kubernetes_cluster_resolver", "KubernetesClusterResolver") extern class KubernetesClusterResolver {
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
		Initializes a new KubernetesClusterResolver.
		
		This initializes a new Kubernetes Cluster Resolver. The Cluster Resolver
		will attempt to talk to the Kubernetes master to retrieve all the instances
		of pods matching a label selector.
		
		Args:
		  job_to_label_mapping: A mapping of TensorFlow jobs to label selectors.
		    This allows users to specify many TensorFlow jobs in one Cluster
		    Resolver, and each job can have pods belong with different label
		    selectors. For example, a sample mapping might be
		    ```
		    {'worker': ['job-name=worker-cluster-a', 'job-name=worker-cluster-b'],
		     'ps': ['job-name=ps-1', 'job-name=ps-2']}
		    ```
		  tf_server_port: The port the TensorFlow server is listening on.
		  rpc_layer: (Optional) The RPC layer TensorFlow should use to communicate
		    between tasks in Kubernetes. Defaults to 'grpc'.
		  override_client: The Kubernetes client (usually automatically retrieved
		    using `from kubernetes import client as k8sclient`). If you pass this
		    in, you are responsible for setting Kubernetes credentials manually.
		
		Raises:
		  ImportError: If the Kubernetes Python client is not installed and no
		    `override_client` is passed in.
		  RuntimeError: If autoresolve_task is not a boolean or a callable.
	**/
	@:native("__init__")
	public function ___init__(?job_to_label_mapping:Dynamic, ?tf_server_port:Dynamic, ?rpc_layer:Dynamic, ?override_client:Dynamic):Dynamic;
	/**
		Initializes a new KubernetesClusterResolver.
		
		This initializes a new Kubernetes Cluster Resolver. The Cluster Resolver
		will attempt to talk to the Kubernetes master to retrieve all the instances
		of pods matching a label selector.
		
		Args:
		  job_to_label_mapping: A mapping of TensorFlow jobs to label selectors.
		    This allows users to specify many TensorFlow jobs in one Cluster
		    Resolver, and each job can have pods belong with different label
		    selectors. For example, a sample mapping might be
		    ```
		    {'worker': ['job-name=worker-cluster-a', 'job-name=worker-cluster-b'],
		     'ps': ['job-name=ps-1', 'job-name=ps-2']}
		    ```
		  tf_server_port: The port the TensorFlow server is listening on.
		  rpc_layer: (Optional) The RPC layer TensorFlow should use to communicate
		    between tasks in Kubernetes. Defaults to 'grpc'.
		  override_client: The Kubernetes client (usually automatically retrieved
		    using `from kubernetes import client as k8sclient`). If you pass this
		    in, you are responsible for setting Kubernetes credentials manually.
		
		Raises:
		  ImportError: If the Kubernetes Python client is not installed and no
		    `override_client` is passed in.
		  RuntimeError: If autoresolve_task is not a boolean or a callable.
	**/
	public function new(?job_to_label_mapping:Dynamic, ?tf_server_port:Dynamic, ?rpc_layer:Dynamic, ?override_client:Dynamic):Void;
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
		Returns a ClusterSpec object based on the latest info from Kubernetes.
		
		We retrieve the information from the Kubernetes master every time this
		method is called.
		
		Returns:
		  A ClusterSpec containing host information returned from Kubernetes.
		
		Raises:
		  RuntimeError: If any of the pods returned by the master is not in the
		    `Running` phase.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
		
		For users in the Cloud environment, the environment property is always an
		empty string, and Google users will not use this ClusterResolver for running
		on internal systems.
	**/
	public var environment : Dynamic;
	/**
		Returns the master address to use when creating a session.
		
		You must have set the task_type and task_index object properties before
		calling this function, or pass in the `task_type` and `task_index`
		parameters when using this function. If you do both, the function parameters
		will override the object properties.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the master.
		  task_index: (Optional) The index of the TensorFlow task of the master.
		  rpc_layer: (Optional) The RPC protocol for the given cluster.
		
		Returns:
		  The name or URL of the session master.
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
}