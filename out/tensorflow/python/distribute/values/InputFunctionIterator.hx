/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "InputFunctionIterator") extern class InputFunctionIterator {
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
		Make an iterator for input provided via an input function.
		
		Currently implements PER_WORKER mode, in which the `input_fn` is called
		once on each worker.
		
		TODO(priyag): Add other replication modes.
		TODO(priyag): Allow taking input function that returns a callable that
		returns nest of tensors.
		
		Args:
		  input_fn: Input function that returns a `tf.data.Dataset` object.
		  worker_device_pairs: A list of (worker, list of devices on that worker)
		    pairs.
		  input_contexts: A list of `InputContext` instances to be passed to call(s)
		    to `input_fn`. Length and order should match worker order in
		    `worker_device_pairs`.
	**/
	@:native("__init__")
	public function ___init__(input_fn:Dynamic, worker_device_pairs:Dynamic, input_contexts:Dynamic):Dynamic;
	/**
		Make an iterator for input provided via an input function.
		
		Currently implements PER_WORKER mode, in which the `input_fn` is called
		once on each worker.
		
		TODO(priyag): Add other replication modes.
		TODO(priyag): Allow taking input function that returns a callable that
		returns nest of tensors.
		
		Args:
		  input_fn: Input function that returns a `tf.data.Dataset` object.
		  worker_device_pairs: A list of (worker, list of devices on that worker)
		    pairs.
		  input_contexts: A list of `InputContext` instances to be passed to call(s)
		    to `input_fn`. Length and order should match worker order in
		    `worker_device_pairs`.
	**/
	public function new(input_fn:Dynamic, worker_device_pairs:Dynamic, input_contexts:Dynamic):Void;
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
	public function get_iterator(worker:Dynamic):Dynamic;
	/**
		Returns the next input from the iterator for all replicas.
	**/
	public function get_next(?name:Dynamic):Dynamic;
	/**
		Initialze underlying iterators.
		
		Returns:
		  A list of any initializer ops that should be run.
	**/
	public function initialize():Dynamic;
	public var output_classes : Dynamic;
	public var output_shapes : Dynamic;
	public var output_types : Dynamic;
}