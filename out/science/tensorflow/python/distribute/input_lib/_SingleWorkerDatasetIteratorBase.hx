/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "_SingleWorkerDatasetIteratorBase") extern class _SingleWorkerDatasetIteratorBase {
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
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		A `MultiDeviceIterator`  or `OwnedMultiDeviceIterator` is used to prefetch
		input to the devices on the given worker.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
		  options: options.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, worker:Dynamic, devices:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		A `MultiDeviceIterator`  or `OwnedMultiDeviceIterator` is used to prefetch
		input to the devices on the given worker.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
		  options: options.
	**/
	public function new(dataset:Dynamic, worker:Dynamic, devices:Dynamic, ?options:Dynamic):Void;
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
		Change the data in to a list type if required.
		
		The OwnedMultiDeviceIterator returns the list data type,
		while the PER_REPLICA iterator (when used with prefetch disabled)
		returns without the enclosed list. This is to fix the inconsistency.
		Args:
		  data_list: data_list
		Returns:
		  list
	**/
	public function _format_data_list_with_options(data_list:Dynamic):Dynamic;
	public function _make_iterator():Dynamic;
	/**
		Get next element for the given device.
	**/
	public function get_next(device:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get next element from the underlying iterator.
		
		Runs the iterator get_next() within a device scope. Since this doesn't use
		get_next_as_optional(), it is considerably faster than get_next_as_list(),
		but it raises EOFError if any of the device doesn't get any data.
		
		Args:
		  name: not used.
		
		Returns:
		  A list consisting of the next data from each device.
	**/
	public function get_next_as_list(?name:Dynamic):Dynamic;
	public function get_next_as_optional_list():Dynamic;
}