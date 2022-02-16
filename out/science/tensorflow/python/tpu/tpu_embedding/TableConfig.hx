/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "TableConfig") extern class TableConfig {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Embedding table configuration.
		
		Args:
		  vocabulary_size: Number of vocabulary (/rows) in the table.
		  dimension: The embedding dimension.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.compat.v1.truncated_normal_initializer` with mean `0.0` and standard
		    deviation `1/sqrt(dimension)`.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently 'mean', 'sqrtn', 'sum' and None are
		    supported, with 'mean' the default. 'sqrtn' often achieves good
		    accuracy, in particular with bag-of-words columns. For more information,
		    see `tf.nn.embedding_lookup_sparse`. None is only valid for dense rather
		    than sparse tensors.
		  hot_id_replication: If true, enables hot id replication, which can make
		    embedding lookups faster if there are some hot rows in the table.
		  learning_rate: float, static learning rate for this table. If
		    learning_rate and learning_rate_fn are both `None`, static learning rate
		    as specified in local `optimization_parameters` will be used. In case
		    local `optimization_parameters` is `None`, global
		    `optimization_parameters` in `TPUEmbedding` constructor will be used.
		    `learning_rate_fn` must be `None` if `learning_rate` is not `None.
		  learning_rate_fn: string, use dynamic learning rate given by the function.
		    This function will be passed the current global step. If learning_rate
		    and learning_rate_fn are both `None`, static learning rate as specified
		    in `optimization_parameters` is used. `learning_rate` must be `None` if
		    `learning_rate_fn` is not `None.
		  optimization_parameters: `AdagradParameters`, `AdamParameters`,
		    `Stochasticgradientdescentparameters`. Specifies table level optimizer.
		    If it's `None` global optimizer in `TPUEmbedding` constructor is used.
		
		Returns:
		  `TableConfig`.
		
		Raises:
		  ValueError: if `vocabulary_size` is not positive integer.
		  ValueError: if `dimension` is not positive integer.
		  ValueError: if `initializer` is specified and is not callable.
		  ValueError: if `combiner` is not supported.
		  ValueError: if `learning_rate` and `learning_rate_fn` are both not
		    `None`.
	**/
	static public function __new__(cls:Dynamic, vocabulary_size:Dynamic, dimension:Dynamic, ?initializer:Dynamic, ?combiner:Dynamic, ?hot_id_replication:Dynamic, ?learning_rate:Dynamic, ?learning_rate_fn:Dynamic, ?optimization_parameters:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
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
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Make a new TableConfig object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Return a new TableConfig object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alias for field number 3
	**/
	public var combiner : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var dimension : Dynamic;
	/**
		Alias for field number 4
	**/
	public var hot_id_replication : Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 2
	**/
	public var initializer : Dynamic;
	/**
		Alias for field number 5
	**/
	public var learning_rate : Dynamic;
	/**
		Alias for field number 6
	**/
	public var learning_rate_fn : Dynamic;
	/**
		Alias for field number 7
	**/
	public var optimization_parameters : Dynamic;
	/**
		Alias for field number 0
	**/
	public var vocabulary_size : Dynamic;
}