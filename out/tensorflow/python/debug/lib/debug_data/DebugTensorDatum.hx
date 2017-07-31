/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_data;
@:pythonImport("tensorflow.python.debug.lib.debug_data", "DebugTensorDatum") extern class DebugTensorDatum {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		`DebugTensorDatum` constructor.
		
		Args:
		  dump_root: (`str`) Debug dump root directory.
		  debug_dump_rel_path: (`str`) Path to a debug dump file, relative to the
		      `dump_root`. For example, suppose the debug dump root
		      directory is `/tmp/tfdbg_1` and the dump file is at
		      `/tmp/tfdbg_1/ns_1/node_a_0_DebugIdentity_123456789`, then
		      the value of the debug_dump_rel_path should be
		      `ns_1/node_a_0_DebugIdenity_1234456789`.
		
		Raises:
		  ValueError: If the base file name of the dump file does not conform to
		    the dump file naming pattern:
		    `node_name`_`output_slot`_`debug_op`_`timestamp`
	**/
	@:native("__init__")
	public function ___init__(dump_root:Dynamic, debug_dump_rel_path:Dynamic):Dynamic;
	/**
		`DebugTensorDatum` constructor.
		
		Args:
		  dump_root: (`str`) Debug dump root directory.
		  debug_dump_rel_path: (`str`) Path to a debug dump file, relative to the
		      `dump_root`. For example, suppose the debug dump root
		      directory is `/tmp/tfdbg_1` and the dump file is at
		      `/tmp/tfdbg_1/ns_1/node_a_0_DebugIdentity_123456789`, then
		      the value of the debug_dump_rel_path should be
		      `ns_1/node_a_0_DebugIdenity_1234456789`.
		
		Raises:
		  ValueError: If the base file name of the dump file does not conform to
		    the dump file naming pattern:
		    `node_name`_`output_slot`_`debug_op`_`timestamp`
	**/
	public function new(dump_root:Dynamic, debug_dump_rel_path:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Name of the debug op.
		
		Returns:
		  (`str`) debug op name (e.g., `DebugIdentity`).
	**/
	public var debug_op : Dynamic;
	/**
		Size of the dump file.
		
		Unit: byte.
		
		Returns:
		  If the dump file exists, size of the dump file, in bytes.
		  If the dump file does not exist, None.
	**/
	public var dump_size_bytes : Dynamic;
	/**
		Extended timestamp, possibly with an index suffix.
		
		The index suffix, e.g., "-1", is for disambiguating multiple dumps of the
		same tensor with the same timestamp, which can occur if the dumping events
		are spaced by shorter than the temporal resolution of the timestamps.
		
		Returns:
		  (`str`) The extended timestamp.
	**/
	public var extended_timestamp : Dynamic;
	/**
		Path to the file which stores the value of the dumped tensor.
	**/
	public var file_path : Dynamic;
	/**
		Get tensor from the dump (`Event`) file.
		
		Returns:
		  The tensor loaded from the dump (`Event`) file.
	**/
	public function get_tensor():Dynamic;
	/**
		Name of the node from which the tensor value was dumped.
		
		Returns:
		  (`str`) name of the node watched by the debug op.
	**/
	public var node_name : Dynamic;
	/**
		Output slot index from which the tensor value was dumped.
		
		Returns:
		  (`int`) output slot index watched by the debug op.
	**/
	public var output_slot : Dynamic;
	/**
		Name of the tensor watched by the debug op.
		
		Returns:
		  (`str`) `Tensor` name, in the form of `node_name`:`output_slot`
	**/
	public var tensor_name : Dynamic;
	/**
		Timestamp of when this tensor value was dumped.
		
		Returns:
		  (`int`) The timestamp in microseconds.
	**/
	public var timestamp : Dynamic;
	/**
		Watch key identities a debug watch on a tensor.
		
		Returns:
		  (`str`) A watch key, in the form of `tensor_name`:`debug_op`.
	**/
	public var watch_key : Dynamic;
}