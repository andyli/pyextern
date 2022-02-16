/* This file is generated, do not edit! */
package tensorflow.python.tpu.feature_column;
@:pythonImport("tensorflow.python.tpu.feature_column", "_TPUBaseEmbeddingColumn") extern class _TPUBaseEmbeddingColumn {
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
	public function ___init__(categorical_column:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(categorical_column:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic):Void;
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
		Returns the embedding combiner.
	**/
	public function get_combiner():Dynamic;
	/**
		Returns the embedding table size, tuple of vocab size and dimension.
	**/
	public function get_embedding_table_size():Dynamic;
	/**
		Returns the embedding variable name.
		
		Feature key name and embedding variable name are usually one-to-one mapping.
		But for shared embedding columns, it is many-to-one mapping.
	**/
	public function get_embedding_var_name():Dynamic;
	/**
		Returns the feature key name in the features dict.
	**/
	public function get_feature_key_name():Dynamic;
	/**
		Returns the initializer.
	**/
	public function get_initializer():Dynamic;
	public function get_learning_rate_fn():Dynamic;
	public function get_max_sequence_length():Dynamic;
	/**
		Get the key for the associated sequence length feature.
	**/
	public function get_sequence_length_feature_key_name():Dynamic;
	/**
		Return the key name for weights.
	**/
	public function get_weight_key_name():Dynamic;
	/**
		Check if the categorical column of the embedding column is weighted.
	**/
	public function is_categorical_column_weighted():Dynamic;
	public function is_sequence_column():Dynamic;
}