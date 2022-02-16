/* This file is generated, do not edit! */
package tensorflow.python.data.ops.multi_device_iterator_ops;
@:pythonImport("tensorflow.python.data.ops.multi_device_iterator_ops", "MultiDeviceIterator") extern class MultiDeviceIterator {
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
		Constructs a MultiDeviceIterator.
		
		Args:
		  dataset: The input dataset to be iterated over.
		  devices: The list of devices to fetch data to.
		  max_buffer_size: Maximum size of the host side per device buffer to keep.
		  prefetch_buffer_size: if > 0, then we setup a buffer on each device to
		    prefetch into.
		  source_device: The host device to place the `dataset` on.  In order to
		    prevent deadlocks, if the prefetch_buffer_size is greater than the
		    max_buffer_size, we set the max_buffer_size to prefetch_buffer_size.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, devices:Dynamic, ?max_buffer_size:Dynamic, ?prefetch_buffer_size:Dynamic, ?source_device:Dynamic):Dynamic;
	/**
		Constructs a MultiDeviceIterator.
		
		Args:
		  dataset: The input dataset to be iterated over.
		  devices: The list of devices to fetch data to.
		  max_buffer_size: Maximum size of the host side per device buffer to keep.
		  prefetch_buffer_size: if > 0, then we setup a buffer on each device to
		    prefetch into.
		  source_device: The host device to place the `dataset` on.  In order to
		    prevent deadlocks, if the prefetch_buffer_size is greater than the
		    max_buffer_size, we set the max_buffer_size to prefetch_buffer_size.
	**/
	public function new(dataset:Dynamic, devices:Dynamic, ?max_buffer_size:Dynamic, ?prefetch_buffer_size:Dynamic, ?source_device:Dynamic):Void;
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
		Uses _prototype_device_datasets[i] to build a dataset for the device.
	**/
	public function _create_device_dataset(i:Dynamic):Dynamic;
	/**
		Resets the MultiDeviceIterator in eager mode.
	**/
	public function _eager_reset():Dynamic;
	public var element_spec : Dynamic;
	/**
		Returns the next element given a `device`, else returns all in a list.
	**/
	public function get_next(?device:Dynamic):Dynamic;
	public function get_next_as_optional():Dynamic;
	public var initializer : Dynamic;
}