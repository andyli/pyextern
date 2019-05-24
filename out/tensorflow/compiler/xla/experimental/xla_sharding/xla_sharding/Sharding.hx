/* This file is generated, do not edit! */
package tensorflow.compiler.xla.experimental.xla_sharding.xla_sharding;
@:pythonImport("tensorflow.compiler.xla.experimental.xla_sharding.xla_sharding", "Sharding") extern class Sharding {
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
		Do not use this constructor; use the factory functions below.
	**/
	@:native("__init__")
	public function ___init__(?proto:Dynamic):Dynamic;
	/**
		Do not use this constructor; use the factory functions below.
	**/
	public function new(?proto:Dynamic):Void;
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
	public function _create_tuple_proto(op:Dynamic):Dynamic;
	public function _get_or_create_tuple_proto(op:Dynamic):Dynamic;
	/**
		Applies this Sharding attribute to `tensor`.
	**/
	public function apply_to_tensor(tensor:Dynamic):Dynamic;
	/**
		Returns an AssignDevice sharding attribute.
		
		This causes an op to be computed in its entirety only on one core in
		the XLA device.
		Args:
		  core: The core to assign this Op to.
	**/
	static public function assign_device(core:Dynamic):Dynamic;
	/**
		Return the sharding protobuf of type xla_data_pb2.OpSharding.
	**/
	public var proto : Dynamic;
	/**
		Returns a replicated sharding attribute.
		
		This causes an op to be computed in its entirety independently on all
		cores in the XLA device.
	**/
	static public function replicate():Dynamic;
	/**
		Returns a Sharding that splits a tensor across a dimension.
		
		This creates a Tiled attribute, similar to tile(), but easier to use for the
		common case of tiling a tensor N ways in one dimension.
		
		Args:
		  tensor: A tf.Tensor to split.
		  split_dimension: The dimension number to split.
		  num_devices: The number of cores to split `tensor` over.
		
		Raises:
		  ValueError: The tensor to split was smaller in the split dimension than
		    the number of devices to split over.
	**/
	static public function split(tensor:Dynamic, split_dimension:Dynamic, num_devices:Dynamic):Dynamic;
	/**
		Returns a Tiled sharding attribute.
		
		This causes an op to be partially computed on multiple cores in the
		XLA device.
		
		Args:
		  tile_assignment: An np.ndarray describing the topology of the tiling and
		    which device will compute which part of the topology.
		
		Raises:
		  TypeError: tile_assignment was not of np.array type.
		
		TODO(jmolloy): This concept is nefarious and is not
		something we really want to expose to users (especially as the
		contract for tile_assignment is very strict).
	**/
	static public function tile(tile_assignment:Dynamic):Dynamic;
}