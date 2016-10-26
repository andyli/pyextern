/* This file is generated, do not edit! */
package tensorflow.python.training.server_lib;
@:pythonImport("tensorflow.python.training.server_lib", "ClusterSpec") extern class ClusterSpec {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a `ClusterSpec`.
		
		Args:
		  cluster: A dictionary mapping one or more job names to lists of network
		    addresses, or a `tf.train.ClusterDef` protocol buffer.
		
		Raises:
		  TypeError: If `cluster` is not a dictionary mapping strings to lists
		    of strings, and not a `tf.train.ClusterDef` protobuf.
	**/
	@:native("__init__")
	public function ___init__(cluster:Dynamic):Dynamic;
	/**
		Creates a `ClusterSpec`.
		
		Args:
		  cluster: A dictionary mapping one or more job names to lists of network
		    addresses, or a `tf.train.ClusterDef` protocol buffer.
		
		Raises:
		  TypeError: If `cluster` is not a dictionary mapping strings to lists
		    of strings, and not a `tf.train.ClusterDef` protobuf.
	**/
	public function new(cluster:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Returns a `tf.train.ClusterDef` protocol buffer based on this cluster.
	**/
	public function as_cluster_def():Dynamic;
	/**
		Returns a dictionary from job names to lists of network addresses.
	**/
	public function as_dict():Dynamic;
	/**
		Returns a list of tasks in the given job.
		
		Args:
		  job_name: The string name of a job in this cluster.
		
		Returns:
		  A list of strings, corresponding to the network addresses of tasks in
		  the given job, ordered by task index.
		
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
}