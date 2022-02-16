/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.base;
@:pythonImport("tensorflow.python.training.tracking.base", "PythonStateSaveable") extern class PythonStateSaveable {
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
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	@:native("__init__")
	public function ___init__(op:Dynamic, specs:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	public function new(op:Dynamic, specs:Dynamic, name:Dynamic):Void;
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
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
	/**
		When running a graph, indicates fresh state to feed.
		
		Returns:
		  A dictionary mapping `Tensor`s to current Python state.
	**/
	public function feed_dict_additions():Dynamic;
	/**
		Create a new `SaveableObject` which freezes current state as a constant.
		
		Used when executing eagerly to embed the current state as a constant, or
		when creating a static tf.compat.v1.train.Saver with the frozen current
		Python state.
		
		Returns:
		  A `SaveableObject` which is not a `PythonStateSaveable` instance (i.e. has
		  no Python state associated with it).
	**/
	public function freeze():Dynamic;
	/**
		A hint to restore assertions that this object is optional.
	**/
	public var optional_restore : Dynamic;
	/**
		Restores this object from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint
		  restored_shapes: the shapes this object should conform to after
		    restore, or None.
		
		Returns:
		  An operation that restores the state of the object.
		
		Raises:
		  ValueError: If the object cannot be restored using the provided
		    parameters.
	**/
	public function restore(restored_tensors:Dynamic, restored_shapes:Dynamic):Dynamic;
}