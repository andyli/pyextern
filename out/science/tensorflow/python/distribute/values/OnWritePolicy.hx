/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values", "OnWritePolicy") extern class OnWritePolicy {
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
	public function ___init__(aggregation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(aggregation:Dynamic):Void;
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
	public function _as_graph_element(_var:Dynamic):Dynamic;
	public function _get_cross_replica(_var:Dynamic):Dynamic;
	public function _is_mirrored():Dynamic;
	public function _update_replica(_var:Dynamic, update_fn:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Update a SavedObject proto for the caller.
		
		If a DistributedVariable object supports this method, it will be called when
		saving with a pre-built `SavedObject` proto representing the object, plus an
		instance of `SaveOptions`. This method is then free to modify that proto
		instance.
		
		`DistributedVariable` with `AUTO` or `ON_WRITE` synchronization optionally
		write out information about their components to the
		`experimental_distributed_variable_components` field of a
		`SavedVariable` (depending on the `SaveOptions` variable policy).
		
		Args:
		  var : A DistributedVariable object
		  proto: A pre-built `SavedObject` proto for this object. It is assumed this
		    will be a `SavedVariable` instance.
		  options: A `SaveOptions` instance.
	**/
	public function _write_object_proto(_var:Dynamic, proto:Dynamic, options:Dynamic):Dynamic;
	public function assign(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_add(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_sub(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function get_restore_ops(_var:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Saveable ops for AUTO variables.
	**/
	public function get_saveable(_var:Dynamic, primary_var:Dynamic, name:Dynamic):Dynamic;
	public function scatter_add(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_div(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_max(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_min(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_mul(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_sub(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function scatter_update(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function value(_var:Dynamic):Dynamic;
}