/* This file is generated, do not edit! */
package tensorflow.python.ops.parsing_config;
@:pythonImport("tensorflow.python.ops.parsing_config", "_ParseOpParams") extern class _ParseOpParams {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?sparse_keys:Dynamic, ?sparse_types:Dynamic, ?dense_keys:Dynamic, ?dense_types:Dynamic, ?dense_defaults:Dynamic, ?dense_shapes:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?sparse_keys:Dynamic, ?sparse_types:Dynamic, ?dense_keys:Dynamic, ?dense_types:Dynamic, ?dense_defaults:Dynamic, ?dense_shapes:Dynamic, ?ragged_keys:Dynamic, ?ragged_value_types:Dynamic, ?ragged_split_types:Dynamic):Void;
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
		Adds the specified feature to this ParseOpParams.
	**/
	public function _add_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Adds a FixedLenFeature.
	**/
	public function _add_fixed_len_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Adds a FixedLenSequenceFeature.
	**/
	public function _add_fixed_len_sequence_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Adds a RaggedFeature.
	**/
	public function _add_ragged_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Adds a ragged key & dtype, checking for duplicates.
	**/
	public function _add_ragged_key(key:Dynamic, value_type:Dynamic, split_type:Dynamic):Dynamic;
	/**
		Adds a SparseFeature.
	**/
	public function _add_sparse_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Adds a sparse key & dtype, checking for duplicates.
	**/
	public function _add_sparse_key(key:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Adds a VarLenFeature.
	**/
	public function _add_varlen_feature(key:Dynamic, feature:Dynamic):Dynamic;
	/**
		Construct the default value tensor for a specified dense feature.
		
		Args:
		  key: The key string identifying the dense feature.
		  shape: The dense feature's shape.
		  dtype: The dense feature's dtype.
		
		Returns:
		  A Tensor.
	**/
	public function _make_dense_default(key:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Validates the features in this ParseOpParams.
	**/
	public function _validate():Dynamic;
	public var dense_defaults_vec : Dynamic;
	public var dense_shapes_as_proto : Dynamic;
	/**
		Builds _ParseOpParams for a given set of features and allowed types.
		
		Args:
		  features: A `dict` mapping feature keys to objects of a type in `types`.
		  types: Type of features to allow, among `FixedLenFeature`,
		    `VarLenFeature`, `SparseFeature`, and `FixedLenSequenceFeature`.
		
		Returns:
		  A `_ParseOpParams` containing the raw parameters for `gen_parsing_ops`.
		
		Raises:
		  ValueError: if `features` contains an item not in `types`, or an invalid
		      feature.
		  ValueError: if sparse and dense key sets intersect.
		  ValueError: if input lengths do not match up.
	**/
	static public function from_features(features:Dynamic, types:Dynamic):Dynamic;
	public var num_features : Dynamic;
}