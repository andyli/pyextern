/* This file is generated, do not edit! */
package tensorflow.python.distribute.parallel_device.parallel_device;
@:pythonImport("tensorflow.python.distribute.parallel_device.parallel_device", "ParallelDevice") extern class ParallelDevice {
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
		Runs ops in parallel, makes variables which save independent buffers.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(typ:Dynamic, exc:Dynamic, tb:Dynamic):Dynamic;
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
		Creates a device which executes operations in parallel on `components`.
		
		Args:
		  components: A list of device names. Each operation executed on the
		    returned device executes on these component devices.
		
		Returns:
		  A string with the name of the newly created device.
	**/
	@:native("__init__")
	public function ___init__(components:Dynamic):Dynamic;
	/**
		Creates a device which executes operations in parallel on `components`.
		
		Args:
		  components: A list of device names. Each operation executed on the
		    returned device executes on these component devices.
		
		Returns:
		  A string with the name of the newly created device.
	**/
	public function new(components:Dynamic):Void;
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
		Verifies that tracing is not active.
	**/
	public function _assert_eager():Dynamic;
	/**
		Helper to pack plain-old-tensors, not structures or composites.
	**/
	public function _pack_tensor(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper to unpack a single tensor.
	**/
	public function _unpack_tensor(parallel_tensor:Dynamic):Dynamic;
	/**
		A parallel tensor with scalar integers numbering component devices.
		
		Each device ID is placed on its corresponding device, in the same order as
		the `components` constructor argument.
		
		Returns:
		  A parallel tensor containing 0 on the first device, 1 on the second, etc.
	**/
	public var device_ids : Dynamic;
	/**
		Create a tensor on the parallel device from a sequence of tensors.
		
		Args:
		  tensors: A list of tensors, one per device in `self.components`. The list
		    can contain composite tensors and nests (lists, dicts, etc. supported by
		    `tf.nest`) with the same structure for each device, but every component
		    of nests must already be a `tf.Tensor` or composite. Passing
		    `tf.Variable` objects reads their value, it does not share a mutable
		    reference between the packed and unpacked forms.
		
		Returns:
		  A tensor placed on the ParallelDevice. For nested structures, returns a
		  single structure containing tensors placed on the ParallelDevice (same
		  structure as each component of `tensors`).
		
		Raises:
		  ValueError: If the length of `tensors` does not match the number of
		    component devices, or if there are non-tensor inputs.
	**/
	public function pack(tensors:Dynamic):Dynamic;
	/**
		Unpack a parallel tensor into its components.
		
		Args:
		  parallel_tensor: A tensor, composite tensor, or `tf.nest` of such placed
		    on the ParallelDevice. Passing `tf.Variable` objects reads their value,
		    it does not share a mutable reference between the packed and unpacked
		    forms.
		
		Returns:
		  A list with the same length as `self.components` each with the same
		  structure as `parallel_tensor`, containing component tensors.
	**/
	public function unpack(parallel_tensor:Dynamic):Dynamic;
}