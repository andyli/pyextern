/* This file is generated, do not edit! */
package tensorflow.python.data.ops.multi_device_iterator_ops;
@:pythonImport("tensorflow.python.data.ops.multi_device_iterator_ops", "OwnedMultiDeviceIterator") extern class OwnedMultiDeviceIterator {
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
		Constructs an owned MultiDeviceIterator object.
		
		Args:
		  dataset: The input dataset to be iterated over.
		  devices: (Required.) The list of devices to fetch data to.
		  max_buffer_size: Maximum size of the host side per device buffer to keep.
		  prefetch_buffer_size: if > 0, then we setup a buffer on each device to
		    prefetch into.
		  source_device: The host device to place the `dataset` on.  In order to
		    prevent deadlocks, if the prefetch_buffer_size is greater than the
		    max_buffer_size, we set the max_buffer_size to prefetch_buffer_size.
		  components: Tensor components to construct the MultiDeviceIterator from.
		  element_spec: A (nested) structure of `tf.TypeSpec` objects that
		    represents the type specification of elements of the iterator.
		
		Raises:
		  RuntimeError: If executed in graph mode or outside of function building
		    mode.
		  ValueError: If any of the following happens:
		    - `devices` is `None`
		    - `dataset` is `None` and either `components` or `element_spec` is
		      `None`
		    - `dataset` is not None and either `components` or `element_spec` is
		      provided
	**/
	@:native("__init__")
	public function ___init__(?dataset:Dynamic, ?devices:Dynamic, ?max_buffer_size:Dynamic, ?prefetch_buffer_size:Dynamic, ?source_device:Dynamic, ?components:Dynamic, ?element_spec:Dynamic):Dynamic;
	/**
		Constructs an owned MultiDeviceIterator object.
		
		Args:
		  dataset: The input dataset to be iterated over.
		  devices: (Required.) The list of devices to fetch data to.
		  max_buffer_size: Maximum size of the host side per device buffer to keep.
		  prefetch_buffer_size: if > 0, then we setup a buffer on each device to
		    prefetch into.
		  source_device: The host device to place the `dataset` on.  In order to
		    prevent deadlocks, if the prefetch_buffer_size is greater than the
		    max_buffer_size, we set the max_buffer_size to prefetch_buffer_size.
		  components: Tensor components to construct the MultiDeviceIterator from.
		  element_spec: A (nested) structure of `tf.TypeSpec` objects that
		    represents the type specification of elements of the iterator.
		
		Raises:
		  RuntimeError: If executed in graph mode or outside of function building
		    mode.
		  ValueError: If any of the following happens:
		    - `devices` is `None`
		    - `dataset` is `None` and either `components` or `element_spec` is
		      `None`
		    - `dataset` is not None and either `components` or `element_spec` is
		      provided
	**/
	public function new(?dataset:Dynamic, ?devices:Dynamic, ?max_buffer_size:Dynamic, ?prefetch_buffer_size:Dynamic, ?source_device:Dynamic, ?components:Dynamic, ?element_spec:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function __next__():Dynamic;
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
		Returns the next element given a `device`, else returns all in a list.
	**/
	public function get_next(?device:Dynamic):Dynamic;
	public function get_next_as_optional():Dynamic;
	public function next():Dynamic;
}