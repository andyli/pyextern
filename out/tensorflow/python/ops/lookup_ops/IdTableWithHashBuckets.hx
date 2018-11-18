/* This file is generated, do not edit! */
package tensorflow.python.ops.lookup_ops;
@:pythonImport("tensorflow.python.ops.lookup_ops", "IdTableWithHashBuckets") extern class IdTableWithHashBuckets {
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
		Construct a `IdTableWithHashBuckets` object.
		
		Args:
		  table: Table that maps `tf.string` or `tf.int64` keys to `tf.int64` ids.
		  num_oov_buckets: Number of buckets to use for out-of-vocabulary keys.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets  (optional).
		  name: A name for the operation (optional).
		  key_dtype: Data type of keys passed to `lookup`. Defaults to
		    `table.key_dtype` if `table` is specified, otherwise `tf.string`.
		    Must be string or integer, and must be castable to `table.key_dtype`.
		
		Raises:
		  ValueError: when `table` in None and `num_oov_buckets` is not positive.
		  TypeError: when `hasher_spec` is invalid.
	**/
	@:native("__init__")
	public function ___init__(table:Dynamic, num_oov_buckets:Dynamic, ?hasher_spec:Dynamic, ?name:Dynamic, ?key_dtype:Dynamic):Dynamic;
	/**
		Construct a `IdTableWithHashBuckets` object.
		
		Args:
		  table: Table that maps `tf.string` or `tf.int64` keys to `tf.int64` ids.
		  num_oov_buckets: Number of buckets to use for out-of-vocabulary keys.
		  hasher_spec: A `HasherSpec` to specify the hash function to use for
		    assignation of out-of-vocabulary buckets  (optional).
		  name: A name for the operation (optional).
		  key_dtype: Data type of keys passed to `lookup`. Defaults to
		    `table.key_dtype` if `table` is specified, otherwise `tf.string`.
		    Must be string or integer, and must be castable to `table.key_dtype`.
		
		Raises:
		  ValueError: when `table` in None and `num_oov_buckets` is not positive.
		  TypeError: when `hasher_spec` is invalid.
	**/
	public function new(table:Dynamic, num_oov_buckets:Dynamic, ?hasher_spec:Dynamic, ?name:Dynamic, ?key_dtype:Dynamic):Void;
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
	/**
		Returns the string_to_hash_bucket op to use based on `hasher_spec`.
	**/
	public function _get_string_to_hash_bucket_fn(hasher_spec:Dynamic):Dynamic;
	/**
		The table initialization op.
	**/
	public var init : Dynamic;
	/**
		The table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		Looks up `keys` in the table, outputs the corresponding values.
		
		It assigns out-of-vocabulary keys to buckets based in their hashes.
		
		Args:
		  keys: Keys to look up. May be either a `SparseTensor` or dense `Tensor`.
		  name: Optional name for the op.
		
		Returns:
		  A `SparseTensor` if keys are sparse, otherwise a dense `Tensor`.
		
		Raises:
		  TypeError: when `keys` doesn't match the table key data type.
	**/
	public function lookup(keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The name of the table.
	**/
	public var name : Dynamic;
	/**
		Compute the number of elements in this table.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		Returns the table_ref of the underlying table, if one exists.
		
		Only use the table_ref directly if you know what you are doing. The
		table_ref does not have the "hash bucket" functionality, as that is provided
		by this class.
		
		One possible use of the table_ref is subtokenization, i.e. ops which
		dynamically decompose tokens into subtokens based on the contents of the
		table_ref.
		
		Returns:
		  the underlying table_ref, or None if there is no underlying table
	**/
	public var table_ref : Dynamic;
	/**
		The table value dtype.
	**/
	public var value_dtype : Dynamic;
}