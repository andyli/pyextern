/* This file is generated, do not edit! */
package tensorflow.python.framework.dtypes;
@:pythonImport("tensorflow.python.framework.dtypes", "DType") extern class DType {
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
		Returns True iff this DType refers to the same type as `other`.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Creates a new `DataType`.
		
		NOTE(mrry): In normal circumstances, you should not need to
		construct a `DataType` object directly. Instead, use the
		`tf.as_dtype()` function.
		
		Args:
		  type_enum: A `types_pb2.DataType` enum value.
		
		Raises:
		  TypeError: If `type_enum` is not a value `types_pb2.DataType`.
	**/
	@:native("__init__")
	public function ___init__(type_enum:Dynamic):Dynamic;
	/**
		Creates a new `DataType`.
		
		NOTE(mrry): In normal circumstances, you should not need to
		construct a `DataType` object directly. Instead, use the
		`tf.as_dtype()` function.
		
		Args:
		  type_enum: A `types_pb2.DataType` enum value.
		
		Raises:
		  TypeError: If `type_enum` is not a value `types_pb2.DataType`.
	**/
	public function new(type_enum:Dynamic):Void;
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
		Returns True iff self != other.
	**/
	public function __ne__(other:Dynamic):Dynamic;
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
		Returns a `types_pb2.DataType` enum value based on this `DType`.
	**/
	public var as_datatype_enum : Dynamic;
	/**
		Returns a `numpy.dtype` based on this `DType`.
	**/
	public var as_numpy_dtype : Dynamic;
	/**
		Returns a reference `DType` based on this `DType`.
	**/
	public var as_ref : Dynamic;
	/**
		Returns a non-reference `DType` based on this `DType`.
	**/
	public var base_dtype : Dynamic;
	/**
		Returns True if the `other` DType will be converted to this DType.
		
		The conversion rules are as follows:
		
		```
		DType(T)       .is_compatible_with(DType(T))        == True
		DType(T)       .is_compatible_with(DType(T).as_ref) == True
		DType(T).as_ref.is_compatible_with(DType(T))        == False
		DType(T).as_ref.is_compatible_with(DType(T).as_ref) == True
		```
		
		Args:
		  other: A `DType` (or object that may be converted to a `DType`).
		
		Returns:
		  True if a Tensor of the `other` `DType` will be implicitly converted to
		  this `DType`.
	**/
	public function is_compatible_with(other:Dynamic):Dynamic;
	/**
		Returns whether this is a complex floating point type.
	**/
	public var is_complex : Dynamic;
	/**
		Returns whether this is a (real) floating point type.
	**/
	public var is_floating : Dynamic;
	/**
		Returns whether this is a (non-quantized) integer type.
	**/
	public var is_integer : Dynamic;
	/**
		Returns whether this is a quantized data type.
	**/
	public var is_quantized : Dynamic;
	/**
		Returns `True` if this `DType` represents a reference type.
	**/
	public var is_ref_dtype : Dynamic;
	/**
		Returns whether this type is unsigned.
		
		Non-numeric, unordered, and quantized types are not considered unsigned, and
		this function returns `False`.
		
		Returns:
		  Whether a `DType` is unsigned.
	**/
	public var is_unsigned : Dynamic;
	/**
		Returns the maximum representable value in this data type.
		
		Raises:
		  TypeError: if this is a non-numeric, unordered, or quantized type.
	**/
	public var max : Dynamic;
	/**
		Returns the minimum representable value in this data type.
		
		Raises:
		  TypeError: if this is a non-numeric, unordered, or quantized type.
	**/
	public var min : Dynamic;
	/**
		Returns the string name for this `DType`.
	**/
	public var name : Dynamic;
	/**
		Returns the dtype correspond to this dtype's real part.
	**/
	public var real_dtype : Dynamic;
	public var size : Dynamic;
}