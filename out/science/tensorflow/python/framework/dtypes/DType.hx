/* This file is generated, do not edit! */
package tensorflow.python.framework.dtypes;
@:pythonImport("tensorflow.python.framework.dtypes", "DType") extern class DType {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Returns True iff this DType refers to the same type as `other`.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		__hash__(self: tensorflow.python.framework._dtypes.DType) -> int
	**/
	public function __hash__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: tensorflow.python.framework._dtypes.DType, arg0: object) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: tensorflow.python.framework._dtypes.DType, arg0: object) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		Returns True iff self != other.
	**/
	public function __ne__(other:Dynamic):Dynamic;
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
		__repr__(self: tensorflow.python.framework._dtypes.DType) -> str
	**/
	public function __repr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		__str__(self: tensorflow.python.framework._dtypes.DType) -> str
	**/
	public function __str__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a reference `DType` based on this `DType`.
	**/
	public var _as_ref : Dynamic;
	/**
		Returns `True` if this `DType` represents a reference type.
	**/
	public var _is_ref_dtype : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public var _type_enum : Dynamic;
	/**
		Returns a `types_pb2.DataType` enum value based on this data type.
	**/
	public var as_datatype_enum : Dynamic;
	/**
		Returns a Python `type` object based on this `DType`.
	**/
	public var as_numpy_dtype : Dynamic;
	/**
		Returns a non-reference `DType` based on this `DType`.
	**/
	public var base_dtype : Dynamic;
	/**
		Returns whether this is a boolean data type.
	**/
	public var is_bool : Dynamic;
	/**
		Returns True if the `other` DType will be converted to this DType.
		
		The conversion rules are as follows:
		
		```python
		DType(T)       .is_compatible_with(DType(T))        == True
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
		Returns whether this is a (non-quantized, real) floating point type.
	**/
	public var is_floating : Dynamic;
	/**
		Returns whether this is a (non-quantized) integer type.
	**/
	public var is_integer : Dynamic;
	/**
		Returns whether this data type has a compatible NumPy data type.
	**/
	public var is_numpy_compatible : Dynamic;
	/**
		Returns whether this is a quantized data type.
	**/
	public var is_quantized : Dynamic;
	/**
		Returns whether this type is unsigned.
		
		Non-numeric, unordered, and quantized types are not considered unsigned, and
		this function returns `False`.
	**/
	public var is_unsigned : Dynamic;
	/**
		Return intensity limits, i.e.
		
		(min, max) tuple, of the dtype.
		Args:
		  clip_negative : bool, optional If True, clip the negative range (i.e.
		    return 0 for min intensity) even if the image dtype allows negative
		    values. Returns
		  min, max : tuple Lower and upper intensity limits.
	**/
	public var limits : Dynamic;
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
	public var name : Dynamic;
	/**
		Returns the `DType` corresponding to this `DType`'s real part.
	**/
	public var real_dtype : Dynamic;
	public var size : Dynamic;
}