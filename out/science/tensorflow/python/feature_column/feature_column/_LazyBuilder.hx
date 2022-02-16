/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column;
@:pythonImport("tensorflow.python.feature_column.feature_column", "_LazyBuilder") extern class _LazyBuilder {
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
		Creates a `_LazyBuilder`.
		
		Args:
		  features: A mapping from feature column to objects that are `Tensor` or
		    `SparseTensor`, or can be converted to same via
		    `sparse_tensor.convert_to_tensor_or_sparse_tensor`. A `string` key
		    signifies a base feature (not-transformed). A `_FeatureColumn` key
		    means that this `Tensor` is the output of an existing `_FeatureColumn`
		    which can be reused.
	**/
	@:native("__init__")
	public function ___init__(features:Dynamic):Dynamic;
	/**
		Creates a `_LazyBuilder`.
		
		Args:
		  features: A mapping from feature column to objects that are `Tensor` or
		    `SparseTensor`, or can be converted to same via
		    `sparse_tensor.convert_to_tensor_or_sparse_tensor`. A `string` key
		    signifies a base feature (not-transformed). A `_FeatureColumn` key
		    means that this `Tensor` is the output of an existing `_FeatureColumn`
		    which can be reused.
	**/
	public function new(features:Dynamic):Void;
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
	/**
		Gets the raw_feature (keyed by `key`) as `tensor`.
		
		The raw feature is converted to (sparse) tensor and maybe expand dim.
		
		For both `Tensor` and `SparseTensor`, the rank will be expanded (to 2) if
		the rank is 1. This supports dynamic rank also. For rank 0 raw feature, will
		error out as it is not supported.
		
		Args:
		  key: A `str` key to access the raw feature.
		
		Returns:
		  A `Tensor` or `SparseTensor`.
		
		Raises:
		  ValueError: if the raw feature has rank 0.
	**/
	public function _get_raw_feature_as_tensor(key:Dynamic):Dynamic;
	/**
		Returns a `Tensor` for the given key.
		
		A `str` key is used to access a base feature (not-transformed). When a
		`_FeatureColumn` is passed, the transformed feature is returned if it
		already exists, otherwise the given `_FeatureColumn` is asked to provide its
		transformed output, which is then cached.
		
		Args:
		  key: a `str` or a `_FeatureColumn`.
		
		Returns:
		  The transformed `Tensor` corresponding to the `key`.
		
		Raises:
		  ValueError: if key is not found or a transformed `Tensor` cannot be
		    computed.
	**/
	public function get(key:Dynamic):Dynamic;
}