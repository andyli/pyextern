/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.cluster_resolver", "ClusterResolver") extern class ClusterResolver {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
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
		Retrieve the current state of the cluster and returns a ClusterSpec.
		
		Returns:
		  A ClusterSpec representing the state of the cluster at the moment this
		  function is called.
		
		Implementors of this function must take care in ensuring that the
		ClusterSpec returned is up-to-date at the time of calling this function.
		This usually means retrieving the information from the underlying cluster
		management system every time this function is invoked and reconstructing
		a cluster_spec, rather than attempting to cache anything.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
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
}