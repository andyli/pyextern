/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.cluster_resolver", "UnionClusterResolver") extern class UnionClusterResolver {
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
		Initializes a UnionClusterResolver with other ClusterResolvers.
		
		Args:
		  *args: `ClusterResolver` objects to be unionized.
		  **kwargs:
		    rpc_layer - (Optional) Override value for the RPC layer used by
		      TensorFlow.
		    task_type - (Optional) Override value for the current task type.
		    task_id - (Optional) Override value for the current task index.
		
		Raises:
		  TypeError: If any argument is not a subclass of `ClusterResolvers`.
		  ValueError: If there are no arguments passed.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initializes a UnionClusterResolver with other ClusterResolvers.
		
		Args:
		  *args: `ClusterResolver` objects to be unionized.
		  **kwargs:
		    rpc_layer - (Optional) Override value for the RPC layer used by
		      TensorFlow.
		    task_type - (Optional) Override value for the current task type.
		    task_id - (Optional) Override value for the current task index.
		
		Raises:
		  TypeError: If any argument is not a subclass of `ClusterResolvers`.
		  ValueError: If there are no arguments passed.
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
	static public var _abc_impl : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns a union of all the ClusterSpecs from the ClusterResolvers.
		
		Returns:
		  A ClusterSpec containing host information merged from all the underlying
		  ClusterResolvers.
		
		Raises:
		  KeyError: If there are conflicting keys detected when merging two or
		  more dictionaries, this exception is raised.
		
		Note: If there are multiple ClusterResolvers exposing ClusterSpecs with the
		same job name, we will merge the list/dict of workers.
		
		If *all* underlying ClusterSpecs expose the set of workers as lists, we will
		concatenate the lists of workers, starting with the list of workers from
		the first ClusterResolver passed into the constructor.
		
		If *any* of the ClusterSpecs expose the set of workers as a dict, we will
		treat all the sets of workers as dicts (even if they are returned as lists)
		and will only merge them into a dict if there is no conflicting keys. If
		there is a conflicting key, we will raise a `KeyError`.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
		
		There are two possible return values, "google" (when TensorFlow is running
		in a Google-internal environment) or an empty string (when TensorFlow is
		running elsewhere).
		
		If you are implementing a ClusterResolver that works in both the Google
		environment and the open-source world (for instance, a TPU ClusterResolver
		or similar), you will have to return the appropriate string depending on the
		environment, which you will have to detect.
		
		Otherwise, if you are implementing a ClusterResolver that will only work
		in open-source TensorFlow, you do not need to implement this property.
	**/
	public var environment : Dynamic;
	/**
		Returns the master address to use when creating a session.
		
		This usually returns the master from the first ClusterResolver passed in,
		but you can override this by specifying the task_type and task_id.
		
		Note: this is only useful for TensorFlow 1.x.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the master.
		  task_id: (Optional) The index of the TensorFlow task of the master.
		  rpc_layer: (Optional) The RPC protocol for the given cluster.
		
		Returns:
		  The name or URL of the session master.
	**/
	public function master(?task_type:Dynamic, ?task_id:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of accelerator cores per worker.
		
		This returns the number of accelerator cores (such as GPUs and TPUs)
		available per worker.
		
		Optionally, we allow callers to specify the task_type, and task_id, for
		if they want to target a specific TensorFlow task to query
		the number of accelerators. This is to support heterogenous environments,
		where the number of accelerators cores per host is different.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the machine we
		    want to query.
		  task_id: (Optional) The index of the TensorFlow task of the machine we
		    want to query.
		  config_proto: (Optional) Configuration for starting a new session to
		    query how many accelerator cores it has.
		
		Returns:
		  A map of accelerator types to number of cores.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_id:Dynamic, ?config_proto:Dynamic):Dynamic;
	public var rpc_layer : Dynamic;
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