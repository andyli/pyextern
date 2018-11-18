/* This file is generated, do not edit! */
package tensorflow.python.ops.variables;
@:pythonImport("tensorflow.python.ops.variables", "PartitionedVariable") extern class PartitionedVariable {
	/**
		An iterator that allows accessing the underlying `Variable` objects.
		
		This iterator is necessary to control order of access when Variables
		are not partitioned in a standard way along a single axis.
		
		Allows e.g. `list(partitioned_variable)` to return a proper list.
	**/
	static public function PartitionedVariableIterator(partitioned_variable:Dynamic):Dynamic;
	static public function _TensorConversionFunction(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
		Creates a new partitioned variable wrapper.
		
		Variables passed via the variable_list must contain a save_slice_info
		field.  Concatenation and iteration is in lexicographic order according
		to the var_offset property of the save_slice_info.
		
		Args:
		  name: String. Overall name of the variables.
		  shape: List of integers.  Overall shape of the variables.
		  dtype: Type of the variables.
		  variable_list: List of `Variable` that comprise this partitioned variable.
		  partitions: List of integers.  Number of partitions for each dimension.
		
		Raises:
		  TypeError: If `variable_list` is not a list of `Variable` objects, or
		    `partitions` is not a list.
		  ValueError: If `variable_list` is empty, or the `Variable` shape
		    information does not match `shape`, or `partitions` has invalid values.
		  RuntimeError: If eager execution is enabled
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, shape:Dynamic, dtype:Dynamic, variable_list:Dynamic, partitions:Dynamic):Dynamic;
	/**
		Creates a new partitioned variable wrapper.
		
		Variables passed via the variable_list must contain a save_slice_info
		field.  Concatenation and iteration is in lexicographic order according
		to the var_offset property of the save_slice_info.
		
		Args:
		  name: String. Overall name of the variables.
		  shape: List of integers.  Overall shape of the variables.
		  dtype: Type of the variables.
		  variable_list: List of `Variable` that comprise this partitioned variable.
		  partitions: List of integers.  Number of partitions for each dimension.
		
		Raises:
		  TypeError: If `variable_list` is not a list of `Variable` objects, or
		    `partitions` is not a list.
		  ValueError: If `variable_list` is empty, or the `Variable` shape
		    information does not match `shape`, or `partitions` has invalid values.
		  RuntimeError: If eager execution is enabled
	**/
	public function new(name:Dynamic, shape:Dynamic, dtype:Dynamic, variable_list:Dynamic, partitions:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an iterable for accessing the underlying partition Variables.
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	public function _apply_assign_fn(assign_fn:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns the overall concatenated value as a `Tensor`.
		
		This is different from using the partitioned variable directly as a tensor
		(through tensor conversion and `as_tensor`) in that it creates a new set of
		operations that keeps the control dependencies from its scope.
		
		Returns:
		  `Tensor` containing the concatenated value.
	**/
	public function _concat():Dynamic;
	public function _get_partitions():Dynamic;
	public function _get_variable_list():Dynamic;
	public function _partition_axes():Dynamic;
	/**
		Returns the overall concatenated value as a `Tensor`.
		
		The returned tensor will not inherit the control dependencies from the scope
		where the value is used, which is similar to getting the value of
		`Variable`.
		
		Returns:
		  `Tensor` containing the concatenated value.
	**/
	public function as_tensor():Dynamic;
	public function assign(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_add(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public function assign_sub(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public function get_shape():Dynamic;
	public var name : Dynamic;
	public var shape : Dynamic;
}