/* This file is generated, do not edit! */
package tensorflow.python.distribute.cross_device_utils;
@:pythonImport("tensorflow.python.distribute.cross_device_utils", "CollectiveReplicaLauncher") extern class CollectiveReplicaLauncher {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(group_key:Dynamic, group_size:Dynamic, collective_keys:Dynamic, device:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(group_key:Dynamic, group_size:Dynamic, collective_keys:Dynamic, device:Dynamic):Void;
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
		All-gather a dense tensor.
		
		Args:
		  input_tensor: a dense tensor. It must have the same shape on all replicas.
		  communication_hint: string providing hint to runtime for choosing
		    collective implementation.
		  timeout: a float. The timeout in seconds.
		
		Returns:
		  The reduced tensor.
	**/
	public function _all_gather(input_tensor:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	public function _control_input(control_input:Dynamic):Dynamic;
	public function _get_ordering_token(communication_hint:Dynamic):Dynamic;
	/**
		Returns the next instance key.
	**/
	public function _next_instance_key():Dynamic;
	static public var _prefer_ordering_token : Dynamic;
	static public var _prefer_unique_instance_key : Dynamic;
	public function _use_ordering_token():Dynamic;
	public function _use_unique_instance_key():Dynamic;
	/**
		All-gather a dense tensor.
		
		This method must be called inside a tf.function.
		
		Args:
		  input_tensor: a dense tensor. It must have the same rank on all replicas,
		    and dimensions other than `axis` need to be the same as well.
		  axis: 0-D int32 Tensor. Dimension along which to gather. Must be in the
		    range [0, rank(value)).
		  communication_hint: string providing hint to runtime for choosing
		    collective implementation. Available options are `AUTO`, `NCCL`, and
		    `RING`.
		  timeout: a float. The timeout in seconds.
		
		Returns:
		  The gathered Tensor.
		
		Raises:
		  RuntimeError: if called in eager mode.
	**/
	public function all_gather(input_tensor:Dynamic, axis:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		All-reduce a dense tensor.
		
		Args:
		  input_tensor: a dense tensor. It must have the same shape on all replicas.
		  control_input: if not None, add control edges between control_input and
		    the all-reduce.
		  communication_hint: string providing hint to runtime for choosing
		    collective implementation.
		  timeout: a float. The timeout in seconds.
		
		Returns:
		  The reduced tensor.
	**/
	public function all_reduce(input_tensor:Dynamic, ?control_input:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		All-reduce an IndexedSlices.
		
		This method must be called inside a tf.function.
		
		Args:
		  input_slices: an IndexedSlices.
		  communication_hint: string providing hint to runtime for choosing
		    collective implementation.
		  timeout: a float. The timeout in seconds.
		
		Returns:
		  The reduced IndexedSlices.
		
		Raises:
		  RuntimeError: if called in eager mode.
	**/
	public function all_reduce_indexed_slices(input_slices:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Batch all-reduce dense tensors.
		
		This takes a list of batches of tensors. Using multiple batches have the
		benefit that it doesn't need to wait for all inputs to be ready to start the
		all-reduce.
		
		Args:
		  input_tensor_packs: a list of lists of dense tensors.
		  communication_hint: string providing hint to runtime for choosing
		    collective implementation.
		  timeout: a float. The timeout in seconds.
		
		Returns:
		  A flat list of reduced tensors.
	**/
	public function batch_all_reduce(input_tensor_packs:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Whether this launcher can order NCCL operations.
	**/
	public function can_order_nccl():Dynamic;
}