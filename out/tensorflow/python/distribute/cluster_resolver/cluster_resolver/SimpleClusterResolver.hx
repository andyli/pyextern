/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.cluster_resolver", "SimpleClusterResolver") extern class SimpleClusterResolver {
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
		Creates a SimpleClusterResolver from a ClusterSpec.
	**/
	@:native("__init__")
	public function ___init__(cluster_spec:Dynamic, ?master:Dynamic, ?task_type:Dynamic, ?task_index:Dynamic, ?environment:Dynamic, ?num_accelerators:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Creates a SimpleClusterResolver from a ClusterSpec.
	**/
	public function new(cluster_spec:Dynamic, ?master:Dynamic, ?task_type:Dynamic, ?task_index:Dynamic, ?environment:Dynamic, ?num_accelerators:Dynamic, ?rpc_layer:Dynamic):Void;
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
		Returns the ClusterSpec passed into the constructor.
	**/
	public function cluster_spec():Dynamic;
	/**
		Returns the current environment which TensorFlow is running in.
	**/
	public var environment : Dynamic;
	/**
		Returns the master address to use when creating a session.
		
		Args:
		  task_type: (Optional) The type of the TensorFlow task of the master.
		  task_index: (Optional) The index of the TensorFlow task of the master.
		  rpc_layer: (Optional) The RPC used by distributed TensorFlow.
		
		Returns:
		  The name or URL of the session master.
		
		If a task_type and task_index is given, this will override the `master`
		string passed into the initialization function.
	**/
	public function master(?task_type:Dynamic, ?task_index:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of accelerator cores per worker.
		
		The SimpleClusterResolver does not do automatic detection of accelerators,
		so a TensorFlow session will never be created, and thus all arguments are
		unused and we simply return whatever was passed in when this object was
		initialized.
		
		Args:
		  task_type: Unused.
		  task_index: Unused.
		  accelerator_type: Unused.
		  config_proto: Unused.
	**/
	public function num_accelerators(?task_type:Dynamic, ?task_index:Dynamic, ?accelerator_type:Dynamic, ?config_proto:Dynamic):Dynamic;
	public var rpc_layer : Dynamic;
	public var task_index : Dynamic;
	public var task_type : Dynamic;
}