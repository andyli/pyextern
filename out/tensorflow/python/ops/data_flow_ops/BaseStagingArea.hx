/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "BaseStagingArea") extern class BaseStagingArea {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dtypes:Dynamic, ?shapes:Dynamic, ?names:Dynamic, ?shared_name:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dtypes:Dynamic, ?shapes:Dynamic, ?names:Dynamic, ?shared_name:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic):Void;
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
		Validate and convert `vals` to a list of `Tensor`s.
		
		The `vals` argument can be a Tensor, a list or tuple of tensors, or a
		dictionary with tensor values.
		
		If `vals` is a list, then the appropriate indices associated with the
		values must be provided.
		
		If it is a dictionary, the staging area must have been constructed with a
		`names` attribute and the dictionary keys must match the staging area names.
		`indices` will be inferred from the dictionary keys.
		If the staging area was constructed with a `names` attribute, `vals` must
		be a dictionary.
		
		Checks that the dtype and shape of each value matches that
		of the staging area.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary.
		
		Returns:
		  A (tensors, indices) tuple where `tensors` is a list of `Tensor` objects
		  and `indices` is a list of indices associed with the tensors.
		
		Raises:
		  ValueError: If `vals` or `indices` is invalid.
	**/
	public function _check_put_dtypes(vals:Dynamic, ?indices:Dynamic):Dynamic;
	/**
		Encode inter-device transfers if the current device
		is not the same as the Staging Area's device.
	**/
	public function _create_device_transfers(tensors:Dynamic):Dynamic;
	/**
		Return the value to return from a get op.
		
		If the staging area has names, return a dictionary with the
		names as keys.  Otherwise return either a single tensor
		or a list of tensors depending on the length of `tensors`.
		
		Args:
		  tensors: List of tensors from the get op.
		  indices: Indices of associated names and shapes
		
		Returns:
		  A single tensor, a list of tensors, or a dictionary
		  of tensors.
	**/
	public function _get_return_value(tensors:Dynamic, indices:Dynamic):Dynamic;
	static public var _identifier : Dynamic;
	static public var _lock : Dynamic;
	/**
		Return a list of values to pass to `name_scope()`.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary.
		
		Returns:
		  The values in vals as a list.
	**/
	public function _scope_vals(vals:Dynamic):Dynamic;
	/**
		The maximum number of elements of this staging area.
	**/
	public var capacity : Dynamic;
	/**
		The list of dtypes for each component of a staging area element.
	**/
	public var dtypes : Dynamic;
	/**
		The maximum number of bytes of this staging area.
	**/
	public var memory_limit : Dynamic;
	/**
		The name of the staging area.
	**/
	public var name : Dynamic;
	/**
		The list of names for each component of a staging area element.
	**/
	public var names : Dynamic;
	/**
		The list of shapes for each component of a staging area element.
	**/
	public var shapes : Dynamic;
}