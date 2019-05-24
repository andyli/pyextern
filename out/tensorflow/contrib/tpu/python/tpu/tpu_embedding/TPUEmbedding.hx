/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_embedding", "TPUEmbedding") extern class TPUEmbedding {
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
		API for using TPU for embedding lookups. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		Args:
		  table_to_config_dict: A dictionary mapping from string of table name to
		    `TableConfig`. Table refers to an embedding table, e.g. `params`
		    argument to `tf.nn.embedding_lookup_sparse()`.
		  feature_to_table_dict: A dictionary mapping from string of feature name
		    to string of table name. Feature refers to ids to lookup in embedding
		    table, e.g. `sp_ids` argument to `tf.nn.embedding_lookup_sparse()`.
		  batch_size: An `int` representing the global batch size.
		  num_hosts: An `int` representing the number of TPU hosts.
		  mode: `TRAINING` or `INFERENCE`.
		  optimization_parameters: `AdagradParameters`, `AdamParameters`,
		    `Stochasticgradientdescentparameters`. Must be set in training and must
		    be `None` in inference.
		  tpu_embedding_test: A `bool`. Only used for testing.
		
		Raises:
		  ValueError: if any input is invalid.
	**/
	@:native("__init__")
	public function ___init__(table_to_config_dict:Dynamic, feature_to_table_dict:Dynamic, batch_size:Dynamic, num_hosts:Dynamic, mode:Dynamic, ?optimization_parameters:Dynamic, ?tpu_embedding_test:Dynamic):Dynamic;
	/**
		API for using TPU for embedding lookups. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		Args:
		  table_to_config_dict: A dictionary mapping from string of table name to
		    `TableConfig`. Table refers to an embedding table, e.g. `params`
		    argument to `tf.nn.embedding_lookup_sparse()`.
		  feature_to_table_dict: A dictionary mapping from string of feature name
		    to string of table name. Feature refers to ids to lookup in embedding
		    table, e.g. `sp_ids` argument to `tf.nn.embedding_lookup_sparse()`.
		  batch_size: An `int` representing the global batch size.
		  num_hosts: An `int` representing the number of TPU hosts.
		  mode: `TRAINING` or `INFERENCE`.
		  optimization_parameters: `AdagradParameters`, `AdamParameters`,
		    `Stochasticgradientdescentparameters`. Must be set in training and must
		    be `None` in inference.
		  tpu_embedding_test: A `bool`. Only used for testing.
		
		Raises:
		  ValueError: if any input is invalid.
	**/
	public function new(table_to_config_dict:Dynamic, feature_to_table_dict:Dynamic, batch_size:Dynamic, num_hosts:Dynamic, mode:Dynamic, ?optimization_parameters:Dynamic, ?tpu_embedding_test:Dynamic):Void;
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
		Create `TPUEmbeddingConfiguration`.
	**/
	public function _create_config_proto():Dynamic;
	/**
		Create dummy embedding table variables.
		
		The sole purpose of these dummy variables are to trigger gradient
		calcuation wrt them so that the gradients wrt activation can be captured
		and later sent to TPU embedding.
		
		Returns:
		  Initializer for these variables.
		
		Raises:
		  RuntimeError: if collection to store gradients already exists and is not
		  empty.
	**/
	public function _create_dummy_table_variables():Dynamic;
	/**
		Create embedding variables and return ops to load them into TPU.
	**/
	public function _create_variables_and_ops():Dynamic;
	/**
		Format sparse features for `enqueue_tpu_embedding_sparse_batch()`.
		
		Args:
		  sparse_features: a `Dict` of `SparseTensor`s for embedding.
		
		Returns:
		  Arguments for `enqueue_tpu_embedding_sparse_batch()`.
	**/
	public function _format_for_tpu_embedding_sparse_batch(sparse_features:Dynamic):Dynamic;
	public function _generate_enqueue_op(sparse_features:Dynamic, device_ordinal:Dynamic):Dynamic;
	/**
		Validate `sparse_features_list`.
	**/
	public function _validate_generate_enqueue_ops_sparse_features_list(sparse_features_list:Dynamic):Dynamic;
	/**
		Batch size for each TPU core.
		
		The sparse tensors in `sparse_features_list` to `generate_enqueue_ops`
		   must have batch dimension equal to this.
		
		Returns:
		  Batch size for each TPU core.
	**/
	public var batch_size_per_core : Dynamic;
	/**
		Create embedding config proto for `tpu.initialize_system()`.
		
		Returns:
		  an `TPUEmbeddingConfiguration` proto describing the desired
		     configuration of the hardware embedding lookup tables, which
		     is passed to `tpu.initialize_system()`.
	**/
	public var config_proto : Dynamic;
	/**
		Generate enqueue ops.
		
		Args:
		  sparse_features_list: a list of dictionary mapping from string
		    of feature names to sparse tensor. Each dictionary is for one
		    TPU core. Dictionaries for the same core should be contiguous
		    on the list.
		
		Returns:
		  Ops to enqueue to TPU for embedding.
	**/
	public function generate_enqueue_ops(sparse_features_list:Dynamic):Dynamic;
	/**
		Retrieve gradients from collections and send them to TPU embedding.
		
		Args:
		  gradient_multipliers: None, or dict mapping table names to gradient
		    multiplier Tensors.
		
		Returns:
		  SendTPUEmbeddingGradients Op.
		
		Raises:
		  ValueError: If required gradients have not been defined.
		  RuntimeError: If `mode` is not `TRAINING`.
	**/
	public function generate_send_gradients_op(?gradient_multipliers:Dynamic):Dynamic;
	/**
		Get activations for features.
		
		This should be called within `computation` that is passed to
		  `tpu.replicate` and friends.
		
		Returns:
		  A dictionary mapping from `String` of feature name to `Tensor`
		    of activation.
	**/
	public function get_activations():Dynamic;
	/**
		Return a slot named `name` create for `table` by `TPUEmbedding`.
	**/
	public function get_slot(table:Dynamic, name:Dynamic):Dynamic;
	/**
		Return a list of the names of slots created by `TPUEmbedding`.
	**/
	public function get_slot_names():Dynamic;
	/**
		A list of device names for CPU hosts.
		
		Returns:
		  A list of device names for CPU hosts.
	**/
	public var hosts : Dynamic;
	/**
		Initialization ops for TPU embedding.
		
		It must be called after all global variables have been initialized,
		i.e. after `global_variables_initializer()`, as it loads embedding
		tables into TPU.
		
		Returns:
		  A list of ops.
	**/
	public var init_ops : Dynamic;
	/**
		Total number of TPU cores on all hosts.
		
		Returns:
		  Total number of TPU cores on all hosts.
	**/
	public var num_cores : Dynamic;
	/**
		Number of TPU cores on a CPU host.
		
		Returns:
		  Number of TPU cores on a CPU host.
	**/
	public var num_cores_per_host : Dynamic;
	public var retrieve_parameters_ops : Dynamic;
	public var table_to_table_variables_dict : Dynamic;
}