/* This file is generated, do not edit! */
package tensorflow.python.training.server_lib;
@:pythonImport("tensorflow.python.training.server_lib", "ClusterSpec") extern class ClusterSpec {
	public function __bool__():Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Creates a `ClusterSpec`.
		
		Args:
		  cluster: A dictionary mapping one or more job names to (i) a list of
		    network addresses, or (ii) a dictionary mapping integer task indices to
		    network addresses; or a `tf.train.ClusterDef` protocol buffer.
		
		Raises:
		  TypeError: If `cluster` is not a dictionary mapping strings to lists
		    of strings, and not a `tf.train.ClusterDef` protobuf.
	**/
	@:native("__init__")
	public function ___init__(cluster:Dynamic):Dynamic;
	/**
		Creates a `ClusterSpec`.
		
		Args:
		  cluster: A dictionary mapping one or more job names to (i) a list of
		    network addresses, or (ii) a dictionary mapping integer task indices to
		    network addresses; or a `tf.train.ClusterDef` protocol buffer.
		
		Raises:
		  TypeError: If `cluster` is not a dictionary mapping strings to lists
		    of strings, and not a `tf.train.ClusterDef` protobuf.
	**/
	public function new(cluster:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
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
		Creates a `tf.train.ClusterDef` based on the given `cluster_spec`.
		
		Raises:
		  TypeError: If `cluster_spec` is not a dictionary mapping strings to lists
		    of strings.
	**/
	public function _make_cluster_def():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns a `tf.train.ClusterDef` protocol buffer based on this cluster.
	**/
	public function as_cluster_def():Dynamic;
	/**
		Returns a dictionary from job names to their tasks.
		
		For each job, if the task index space is dense, the corresponding
		value will be a list of network addresses; otherwise it will be a
		dictionary mapping (sparse) task indices to the corresponding
		addresses.
		
		Returns:
		  A dictionary mapping job names to lists or dictionaries
		  describing the tasks in those jobs.
	**/
	public function as_dict():Dynamic;
	/**
		Returns a mapping from task ID to address in the given job.
		
		NOTE: For backwards compatibility, this method returns a list. If
		the given job was defined with a sparse set of task indices, the
		length of this list may not reflect the number of tasks defined in
		this job. Use the `tf.train.ClusterSpec.num_tasks` method
		to find the number of tasks defined in a particular job.
		
		Args:
		  job_name: The string name of a job in this cluster.
		
		Returns:
		  A list of task addresses, where the index in the list
		  corresponds to the task index of each task. The list may contain
		  `None` if the job was defined with a sparse set of task indices.
		
		Raises:
		  ValueError: If `job_name` does not name a job in this cluster.
	**/
	public function job_tasks(job_name:Dynamic):Dynamic;
	/**
		Returns a list of job names in this cluster.
		
		Returns:
		  A list of strings, corresponding to the names of jobs in this cluster.
	**/
	public var jobs : Dynamic;
	/**
		Returns the number of tasks defined in the given job.
		
		Args:
		  job_name: The string name of a job in this cluster.
		
		Returns:
		  The number of tasks defined in the given job.
		
		Raises:
		  ValueError: If `job_name` does not name a job in this cluster.
	**/
	public function num_tasks(job_name:Dynamic):Dynamic;
	/**
		Returns the address of the given task in the given job.
		
		Args:
		  job_name: The string name of a job in this cluster.
		  task_index: A non-negative integer.
		
		Returns:
		  The address of the given task in the given job.
		
		Raises:
		  ValueError: If `job_name` does not name a job in this cluster,
		  or no task with index `task_index` is defined in that job.
	**/
	public function task_address(job_name:Dynamic, task_index:Dynamic):Dynamic;
	/**
		Returns a list of valid task indices in the given job.
		
		Args:
		  job_name: The string name of a job in this cluster.
		
		Returns:
		  A list of valid task indices in the given job.
		
		Raises:
		  ValueError: If `job_name` does not name a job in this cluster,
		  or no task with index `task_index` is defined in that job.
	**/
	public function task_indices(job_name:Dynamic):Dynamic;
}