/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "_SingleWorkerOwnedDatasetIterator") extern class _SingleWorkerOwnedDatasetIterator {
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
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		`OwnedMultiDeviceIterator` is used to prefetch input to the devices on the
		given worker. The lifetime of this iterator is tied to the encompassing
		python object. Once we go out of scope of the python object or return from
		a tf.function the underlying iterator resource is deleted.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
		  components: Tensor components to construct the
		    _SingleWorkerOwnedDatasetIterator from.
		  element_spec: A nested structure of `TypeSpec` objects that represents the
		  type specification of elements of the iterator.
		  options: `tf.distribute.InputOptions` used to control options on how this
		  dataset is distributed.
		  canonicalize_devices: Whether to canonicalize devices for workers fully or
		  partially. If False, it will partially canonicalize devices by removing
		  job and task.
	**/
	@:native("__init__")
	public function ___init__(?dataset:Dynamic, ?worker:Dynamic, ?devices:Dynamic, ?components:Dynamic, ?element_spec:Dynamic, ?options:Dynamic, ?canonicalize_devices:Dynamic):Dynamic;
	/**
		Create iterator for the `dataset` to fetch data to worker's `devices` .
		
		`OwnedMultiDeviceIterator` is used to prefetch input to the devices on the
		given worker. The lifetime of this iterator is tied to the encompassing
		python object. Once we go out of scope of the python object or return from
		a tf.function the underlying iterator resource is deleted.
		
		Args:
		  dataset: A `tf.data.Dataset` instance.
		  worker: Worker on which ops should be created.
		  devices: Distribute data from `dataset` to these devices.
		  components: Tensor components to construct the
		    _SingleWorkerOwnedDatasetIterator from.
		  element_spec: A nested structure of `TypeSpec` objects that represents the
		  type specification of elements of the iterator.
		  options: `tf.distribute.InputOptions` used to control options on how this
		  dataset is distributed.
		  canonicalize_devices: Whether to canonicalize devices for workers fully or
		  partially. If False, it will partially canonicalize devices by removing
		  job and task.
	**/
	public function new(?dataset:Dynamic, ?worker:Dynamic, ?devices:Dynamic, ?components:Dynamic, ?element_spec:Dynamic, ?options:Dynamic, ?canonicalize_devices:Dynamic):Void;
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
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	public function _create_owned_multi_device_iterator():Dynamic;
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
	/**
		Make appropriate iterator on the dataset.
	**/
	public function _make_iterator():Dynamic;
	/**
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	public var element_spec : Dynamic;
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
	/**
		Returns the class of each component of an element of this iterator.
		
		The expected values are `tf.Tensor` and `tf.SparseTensor`.
		
		Returns:
		  A nested structure of Python `type` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_classes : Dynamic;
	/**
		Returns the shape of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.TensorShape` objects corresponding to each
		  component of an element of this dataset.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns the type of each component of an element of this iterator.
		
		Returns:
		  A nested structure of `tf.DType` objects corresponding to each component
		  of an element of this dataset.
	**/
	public var output_types : Dynamic;
}