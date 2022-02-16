/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_process_runner;
@:pythonImport("tensorflow.python.distribute.multi_process_runner", "MultiProcessPoolRunner") extern class MultiProcessPoolRunner {
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
		Creates a multi-process pool runner.
		
		Args:
		  cluster_spec: Dict for cluster spec. The following is an example of
		    cluster with three workers.
		    {"worker": ["worker0.example.com:2222",
		                "worker1.example.com:2222",
		                "worker2.example.com:2222"]}
		  initializer: a callable to called at the startup of worker processes.
		  share_gpu: Whether to share GPUs among workers. If False, each worker is
		    assigned different GPUs in a roundrobin fashion.
		
		Raises:
		  RuntimeError: if `multi_process_runner.test_main()` is not called.
		  ValueError: if there are more than one chief in the `cluster_spec`.
	**/
	@:native("__init__")
	public function ___init__(cluster_spec:Dynamic, ?initializer:Dynamic, ?share_gpu:Dynamic):Dynamic;
	/**
		Creates a multi-process pool runner.
		
		Args:
		  cluster_spec: Dict for cluster spec. The following is an example of
		    cluster with three workers.
		    {"worker": ["worker0.example.com:2222",
		                "worker1.example.com:2222",
		                "worker2.example.com:2222"]}
		  initializer: a callable to called at the startup of worker processes.
		  share_gpu: Whether to share GPUs among workers. If False, each worker is
		    assigned different GPUs in a roundrobin fashion.
		
		Raises:
		  RuntimeError: if `multi_process_runner.test_main()` is not called.
		  ValueError: if there are more than one chief in the `cluster_spec`.
	**/
	public function new(cluster_spec:Dynamic, ?initializer:Dynamic, ?share_gpu:Dynamic):Void;
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
	/**
		Starts the worker pool.
	**/
	public function _start():Dynamic;
	/**
		Runs `fn` with `args` and `kwargs` on all jobs.
		
		Args:
		  fn: The function to be run.
		  args: Optional positional arguments to be supplied in `fn`.
		  kwargs: Optional keyword arguments to be supplied in `fn`.
		
		Returns:
		  A list of return values.
	**/
	public function run(fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Shuts down the worker pool.
	**/
	public function shutdown():Dynamic;
}