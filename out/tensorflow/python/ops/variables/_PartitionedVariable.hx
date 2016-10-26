/* This file is generated, do not edit! */
package tensorflow.python.ops.variables;
@:pythonImport("tensorflow.python.ops.variables", "_PartitionedVariable") extern class _PartitionedVariable {
	static public function _TensorConversionFunction(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
		Creates a new partitioned variable wrapper.
		
		Args:
		  name: Overall name of the variables.
		  shape: Overall shape of the variables.
		  dtype: Type of the variables.
		  variable_list: List of `Variable` that comprise this partitioned variable.
		  partitions: List of number of partitions for each dimension.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, shape:Dynamic, dtype:Dynamic, variable_list:Dynamic, partitions:Dynamic):Dynamic;
	/**
		Creates a new partitioned variable wrapper.
		
		Args:
		  name: Overall name of the variables.
		  shape: Overall shape of the variables.
		  dtype: Type of the variables.
		  variable_list: List of `Variable` that comprise this partitioned variable.
		  partitions: List of number of partitions for each dimension.
	**/
	public function new(name:Dynamic, shape:Dynamic, dtype:Dynamic, variable_list:Dynamic, partitions:Dynamic):Void;
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
	public function _get_partitions():Dynamic;
	public function _get_variable_list():Dynamic;
	/**
		Returns the overall concatenated value as a `Tensor`.
		
		Returns:
		  `Tensor` containing the concatenated value.
	**/
	public function as_tensor():Dynamic;
	public function assign(value:Dynamic, ?use_locking:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public function get_shape():Dynamic;
	public var name : Dynamic;
}