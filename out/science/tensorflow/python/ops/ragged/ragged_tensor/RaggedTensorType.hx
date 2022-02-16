/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor", "RaggedTensorType") extern class RaggedTensorType {
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
		Initializes a RaggedTensorType object.
		
		Args:
		  dtype: data type of the `RaggedTensor`'s inner values.
		  ragged_rank: ragged_rank of the declared `RaggedTensor`.
		  row_splits_dtype: data type for the `RaggedTensor`'s row splits.
		    One of: `tf.int32` or `tf.int64`.
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, ragged_rank:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		Initializes a RaggedTensorType object.
		
		Args:
		  dtype: data type of the `RaggedTensor`'s inner values.
		  ragged_rank: ragged_rank of the declared `RaggedTensor`.
		  row_splits_dtype: data type for the `RaggedTensor`'s row splits.
		    One of: `tf.int32` or `tf.int64`.
	**/
	public function new(dtype:Dynamic, ragged_rank:Dynamic, ?row_splits_dtype:Dynamic):Void;
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
	public var dtype : Dynamic;
	public var ragged_rank : Dynamic;
	public var row_splits_dtype : Dynamic;
}