/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_v2_utils;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_v2_utils", "TableConfig") extern class TableConfig {
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
		Embedding table configuration.
		
		Args:
		  vocabulary_size: Size of the table's vocabulary (number of rows).
		  dim: The embedding dimension (width) of the table.
		  initializer: A callable initializer taking one parameter, the shape of the
		    variable that will be initialized. Will be called once per task, to
		    initialize that task's shard of the embedding table. If not specified,
		    defaults to `truncated_normal_initializer` with mean `0.0` and standard
		    deviation `1/sqrt(dim)`.
		  optimizer: An optional instance of an optimizer parameters class, instance
		    of one of `tf.tpu.experimental.embedding.SGD`,
		    `tf.tpu.experimental.embedding.Adagrad` or
		    `tf.tpu.experimental.embedding.Adam`. It set will override the global
		    optimizer passed to `tf.tpu.experimental.embedding.TPUEmbedding`.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently 'mean', 'sqrtn', 'sum' are supported, with
		    'mean' the default. 'sqrtn' often achieves good accuracy, in particular
		    with bag-of-words columns. For more information, see
		    `tf.nn.embedding_lookup_sparse`.
		  name: An optional string used to name the table. Useful for debugging.
		
		Returns:
		  `TableConfig`.
		
		Raises:
		  ValueError: if `vocabulary_size` is not a positive integer.
		  ValueError: if `dim` is not a positive integer.
		  ValueError: if `initializer` is specified and is not callable.
		  ValueError: if `combiner` is not supported.
	**/
	@:native("__init__")
	public function ___init__(vocabulary_size:Dynamic, dim:Dynamic, initializer:Dynamic, ?optimizer:Dynamic, ?combiner:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Embedding table configuration.
		
		Args:
		  vocabulary_size: Size of the table's vocabulary (number of rows).
		  dim: The embedding dimension (width) of the table.
		  initializer: A callable initializer taking one parameter, the shape of the
		    variable that will be initialized. Will be called once per task, to
		    initialize that task's shard of the embedding table. If not specified,
		    defaults to `truncated_normal_initializer` with mean `0.0` and standard
		    deviation `1/sqrt(dim)`.
		  optimizer: An optional instance of an optimizer parameters class, instance
		    of one of `tf.tpu.experimental.embedding.SGD`,
		    `tf.tpu.experimental.embedding.Adagrad` or
		    `tf.tpu.experimental.embedding.Adam`. It set will override the global
		    optimizer passed to `tf.tpu.experimental.embedding.TPUEmbedding`.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently 'mean', 'sqrtn', 'sum' are supported, with
		    'mean' the default. 'sqrtn' often achieves good accuracy, in particular
		    with bag-of-words columns. For more information, see
		    `tf.nn.embedding_lookup_sparse`.
		  name: An optional string used to name the table. Useful for debugging.
		
		Returns:
		  `TableConfig`.
		
		Raises:
		  ValueError: if `vocabulary_size` is not a positive integer.
		  ValueError: if `dim` is not a positive integer.
		  ValueError: if `initializer` is specified and is not callable.
		  ValueError: if `combiner` is not supported.
	**/
	public function new(vocabulary_size:Dynamic, dim:Dynamic, initializer:Dynamic, ?optimizer:Dynamic, ?combiner:Dynamic, ?name:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}