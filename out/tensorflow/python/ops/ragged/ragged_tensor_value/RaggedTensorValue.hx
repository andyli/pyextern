/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor_value;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor_value", "RaggedTensorValue") extern class RaggedTensorValue {
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
		Creates a `RaggedTensorValue`.
		
		Args:
		  values: A numpy array of any type and shape; or a RaggedTensorValue.
		  row_splits: A 1-D int64 numpy array.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, row_splits:Dynamic):Dynamic;
	/**
		Creates a `RaggedTensorValue`.
		
		Args:
		  values: A numpy array of any type and shape; or a RaggedTensorValue.
		  row_splits: A 1-D int64 numpy array.
	**/
	public function new(values:Dynamic, row_splits:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		The numpy dtype of values in this tensor.
	**/
	public var dtype : Dynamic;
	/**
		The innermost `values` array for this ragged tensor value.
	**/
	public var flat_values : Dynamic;
	/**
		The row_splits for all ragged dimensions in this ragged tensor value.
	**/
	public var nested_row_splits : Dynamic;
	/**
		The number of ragged dimensions in this ragged tensor value.
	**/
	public var ragged_rank : Dynamic;
	/**
		The split indices for the ragged tensor value.
	**/
	public var row_splits : Dynamic;
	/**
		A tuple indicating the shape of this RaggedTensorValue.
	**/
	public var shape : Dynamic;
	/**
		Returns this ragged tensor value as a nested Python list.
	**/
	public function to_list():Dynamic;
	/**
		The concatenated values for all rows in this tensor.
	**/
	public var values : Dynamic;
}