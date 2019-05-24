/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.tfconfig_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.tfconfig_cluster_resolver", "TFConfigClusterResolver") extern class TFConfigClusterResolver {
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
		Creates a new TFConfigClusterResolver.
		
		Args:
		  task_type: (String, optional) Overrides the task type specified in the
		    TF_CONFIG environment variable.
		  task_index: (Integer, optional) Overrides the task index specified in the
		    TF_CONFIG environment variable.
		  rpc_layer: (String, optional) Overrides the rpc layer TensorFlow uses.
		  environment: (String, optional) Overrides the environment TensorFlow
		    operates in.
	**/
	@:native("__init__")
	public function ___init__(?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Creates a new TFConfigClusterResolver.
		
		Args:
		  task_type: (String, optional) Overrides the task type specified in the
		    TF_CONFIG environment variable.
		  task_index: (Integer, optional) Overrides the task index specified in the
		    TF_CONFIG environment variable.
		  rpc_layer: (String, optional) Overrides the rpc layer TensorFlow uses.
		  environment: (String, optional) Overrides the environment TensorFlow
		    operates in.
	**/
	public function new(?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic, ?environment:Dynamic):Void;
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
		Returns a ClusterSpec based on the TF_CONFIG environment variable.
		
		Returns:
		  A ClusterSpec with information from the TF_CONFIG environment variable.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
	**/
	public var environment : Dynamic;
	/**
		Returns the master address to use when creating a TensorFlow session.
		
		Args:
		  task_type: (String, optional) Overrides and sets the task_type of the
		    master.
		  task_index: (Integer, optional) Overrides and sets the task id of the
		    master.
		  rpc_layer: (String, optional) Overrides and sets the protocol over which
		    TensorFlow nodes communicate with each other.
		
		Returns:
		  The address of the master.
		
		Raises:
		  RuntimeError: If the task_type or task_id is not specified and the
		    `TF_CONFIG` environment variable does not contain a task section.
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