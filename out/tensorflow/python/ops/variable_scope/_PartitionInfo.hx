/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "_PartitionInfo") extern class _PartitionInfo {
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
		Constructor.
		
		Args:
		  full_shape: Tuple or list of `int` indicating the full combined shape
		    of the partitioned variables.
		  var_offset: Tuple or list of `int` specifying offset of this partition
		    with respect to the full variable for each dimension.
		
		Raises:
		  TypeError: If `full_shape` or `var_offset` is not a sequence.
		  ValueError: If `full_shape` or `var_offset` differ in length. If
		    `var_offset` exceeds `full_shape` in any dimension.
	**/
	@:native("__init__")
	public function ___init__(full_shape:Dynamic, var_offset:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  full_shape: Tuple or list of `int` indicating the full combined shape
		    of the partitioned variables.
		  var_offset: Tuple or list of `int` specifying offset of this partition
		    with respect to the full variable for each dimension.
		
		Raises:
		  TypeError: If `full_shape` or `var_offset` is not a sequence.
		  ValueError: If `full_shape` or `var_offset` differ in length. If
		    `var_offset` exceeds `full_shape` in any dimension.
	**/
	public function new(full_shape:Dynamic, var_offset:Dynamic):Void;
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
	public var full_shape : Dynamic;
	/**
		Returns the offset when the variable is partitioned in at most one dim.
		
		Args:
		  shape: Tuple or list of `int` indicating the shape of one specific
		    variable partition.
		
		Returns:
		  `int` representing the offset in the dimension along which the variable is
		   partitioned. Returns 0 if the variable is not being partitioned.
		
		Raises:
		  ValueError: Depending on self.single_slice_dim().
	**/
	public function single_offset(shape:Dynamic):Dynamic;
	/**
		Returns the slice dim when the variable is partitioned only in one dim.
		
		Args:
		  shape: Tuple or list of `int` indicating the shape of one specific
		    variable partition.
		
		Returns:
		  `int` representing the dimension that the variable is partitioned in, or
		  `None` if the variable doesn't seem to be partitioned at all.
		
		Raises:
		  TypeError: If `shape` is not a sequence.
		  ValueError: If `shape` is not the same length as `self.full_shape`. If
		    the variable is partitioned in more than one dimension.
	**/
	public function single_slice_dim(shape:Dynamic):Dynamic;
	public var var_offset : Dynamic;
}