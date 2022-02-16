/* This file is generated, do not edit! */
package tensorflow.python.distribute.coordinator.values;
@:pythonImport("tensorflow.python.distribute.coordinator.values", "RemoteValueImpl") extern class RemoteValueImpl {
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
		Initializes a `RemoteValueImpl`.
		
		Args:
		  closure: The closure from which the `RemoteValue` is created.
		  type_spec: The type spec for this `RemoteValue` which is used to trace
		    functions that take this `RemoteValue` as input.
	**/
	@:native("__init__")
	public function ___init__(closure:Dynamic, type_spec:Dynamic):Dynamic;
	/**
		Initializes a `RemoteValueImpl`.
		
		Args:
		  closure: The closure from which the `RemoteValue` is created.
		  type_spec: The type spec for this `RemoteValue` which is used to trace
		    functions that take this `RemoteValue` as input.
	**/
	public function new(closure:Dynamic, type_spec:Dynamic):Void;
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
	public function _get_error():Dynamic;
	public function _get_values():Dynamic;
	public function _rebuild_on(worker:Dynamic):Dynamic;
	public function _set_aborted():Dynamic;
	public function _set_error(exception:Dynamic):Dynamic;
	public function _set_values(tensors:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _wait_and_maybe_error():Dynamic;
	/**
		Wait for the result of `RemoteValue` and return the numpy result.
		
		This makes the value concrete by copying the remote value to local.
		
		Returns:
		  The numpy array structure of the actual output of the `tf.function`
		  associated with this `RemoteValue`, previously returned by a
		  `tf.distribute.experimental.coordinator.ClusterCoordinator.schedule` call.
		  This can be a single value, or a structure of values, depending on the
		  output of the `tf.function`.
		
		Raises:
		  tf.errors.CancelledError: If the function that produces this `RemoteValue`
		    is aborted or cancelled due to failure.
	**/
	public function fetch():Dynamic;
	/**
		Wait for the result of `RemoteValue` and return the tensor result.
		
		This makes the value concrete by copying the remote tensor to local.
		
		Returns:
		  The actual output (in the form of `tf.Tensor`s) of the `tf.function`
		  associated with this `RemoteValue`, previously returned by a
		  `tf.distribute.experimental.coordinator.ClusterCoordinator.schedule` call.
		  This can be a single Tensor, or a structure of Tensors, depending on the
		  output of the `tf.function`.
		
		Raises:
		  tf.errors.CancelledError: If the function that produces this `RemoteValue`
		    is aborted or cancelled due to failure.
	**/
	public function get():Dynamic;
}