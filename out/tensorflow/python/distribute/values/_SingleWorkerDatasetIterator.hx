/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "_SingleWorkerDatasetIterator") extern class _SingleWorkerDatasetIterator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		`MultiDeviceIterator` is used to prefetch input to the devices on the
		given worker. `MultiDeviceIterator` doesn't work in eager mode yet.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, worker:Dynamic, devices:Dynamic):Dynamic;
	/**
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		`MultiDeviceIterator` is used to prefetch input to the devices on the
		given worker. `MultiDeviceIterator` doesn't work in eager mode yet.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
	**/
	public function new(dataset:Dynamic, worker:Dynamic, devices:Dynamic):Void;
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
	/**
		Make appropriate iterator on the dataset.
	**/
	public function _make_iterator():Dynamic;
	/**
		Get next element from the underlying iterator.
	**/
	public function get_next(?name:Dynamic):Dynamic;
	/**
		Initialze underlying iterator.
		
		In eager execution, this simply recreates the underlying iterator.
		In graph execution, it returns the initializer ops for the underlying
		iterator.
		
		Returns:
		  A list of any initializer ops that should be run.
	**/
	public function initialize():Dynamic;
	public var output_classes : Dynamic;
	public var output_shapes : Dynamic;
	public var output_types : Dynamic;
}