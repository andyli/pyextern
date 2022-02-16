/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "TPUEmbedding") extern class TPUEmbedding {
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
		API for using TPU for embedding lookups.
		
		Args:
		  table_to_config_dict: A dictionary mapping from string of table name to
		    `TableConfig`. Table refers to an embedding table, e.g. `params`
		    argument to `tf.nn.embedding_lookup_sparse()`.
		  feature_to_config_dict: A dictionary mapping from string of feature name
		    to `FeatureConfig`. Feature refers to ids to lookup in embedding table,
		    e.g. `sp_ids` argument to `tf.nn.embedding_lookup_sparse()`.
		  batch_size: An `int` representing the global batch size.
		  mode: `TRAINING` or `INFERENCE`.
		  master: A `string` representing the TensorFlow master to use.
		  optimization_parameters: `AdagradParameters`, `AdamParameters`,
		    `Stochasticgradientdescentparameters`. Must be set in training unless
		    all tables specify their own optimizers. And it must be `None` in
		    inference.
		  cluster_def: A ClusterDef object describing the TPU cluster.
		  pipeline_execution_with_tensor_core: setting this to `True` makes training
		    faster, but trained model will be different if step N and step N+1
		    involve the same set of embedding IDs. Please see
		    `tpu_embedding_configuration.proto` for details.
		  partition_strategy: A string, either 'mod' or 'div', specifying how to map
		    the lookup id to the embedding tensor. For more information see
		    `tf.nn.embedding_lookup_sparse`.
		  profile_data_directory: Directory where embedding lookup statistics are
		    stored. These statistics summarize information about the inputs to the
		    embedding lookup operation, in particular, the average number of
		    embedding IDs per example and how well the embedding IDs are load
		    balanced across the system. The lookup statistics are used during TPU
		    initialization for embedding table partitioning. Collection of lookup
		    statistics is done at runtime by  profiling the embedding inputs, only a
		    small fraction of input samples are profiled to minimize host CPU
		    overhead. Once a suitable number of samples are profiled, the lookup
		    statistics are saved to table-specific files in the profile data
		    directory generally at the end of a TPU training loop. The filename
		    corresponding to each table is obtained by hashing table specific
		    parameters (e.g., table name and number of features) and global
		    configuration parameters (e.g., sharding strategy and task count). The
		    same profile data directory can be shared among several models to reuse
		    embedding lookup statistics.
		  device_config: A DeviceConfig instance, used when `master` and
		    `cluster_def` are both `None`.
		  master_job_name: if set, overrides the master job name used to schedule
		    embedding ops.
		
		Raises:
		  ValueError: if any input is invalid.
	**/
	@:native("__init__")
	public function ___init__(table_to_config_dict:Dynamic, feature_to_config_dict:Dynamic, batch_size:Dynamic, mode:Dynamic, ?master:Dynamic, ?optimization_parameters:Dynamic, ?cluster_def:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic, ?partition_strategy:Dynamic, ?profile_data_directory:Dynamic, ?device_config:Dynamic, ?master_job_name:Dynamic):Dynamic;
	/**
		API for using TPU for embedding lookups.
		
		Args:
		  table_to_config_dict: A dictionary mapping from string of table name to
		    `TableConfig`. Table refers to an embedding table, e.g. `params`
		    argument to `tf.nn.embedding_lookup_sparse()`.
		  feature_to_config_dict: A dictionary mapping from string of feature name
		    to `FeatureConfig`. Feature refers to ids to lookup in embedding table,
		    e.g. `sp_ids` argument to `tf.nn.embedding_lookup_sparse()`.
		  batch_size: An `int` representing the global batch size.
		  mode: `TRAINING` or `INFERENCE`.
		  master: A `string` representing the TensorFlow master to use.
		  optimization_parameters: `AdagradParameters`, `AdamParameters`,
		    `Stochasticgradientdescentparameters`. Must be set in training unless
		    all tables specify their own optimizers. And it must be `None` in
		    inference.
		  cluster_def: A ClusterDef object describing the TPU cluster.
		  pipeline_execution_with_tensor_core: setting this to `True` makes training
		    faster, but trained model will be different if step N and step N+1
		    involve the same set of embedding IDs. Please see
		    `tpu_embedding_configuration.proto` for details.
		  partition_strategy: A string, either 'mod' or 'div', specifying how to map
		    the lookup id to the embedding tensor. For more information see
		    `tf.nn.embedding_lookup_sparse`.
		  profile_data_directory: Directory where embedding lookup statistics are
		    stored. These statistics summarize information about the inputs to the
		    embedding lookup operation, in particular, the average number of
		    embedding IDs per example and how well the embedding IDs are load
		    balanced across the system. The lookup statistics are used during TPU
		    initialization for embedding table partitioning. Collection of lookup
		    statistics is done at runtime by  profiling the embedding inputs, only a
		    small fraction of input samples are profiled to minimize host CPU
		    overhead. Once a suitable number of samples are profiled, the lookup
		    statistics are saved to table-specific files in the profile data
		    directory generally at the end of a TPU training loop. The filename
		    corresponding to each table is obtained by hashing table specific
		    parameters (e.g., table name and number of features) and global
		    configuration parameters (e.g., sharding strategy and task count). The
		    same profile data directory can be shared among several models to reuse
		    embedding lookup statistics.
		  device_config: A DeviceConfig instance, used when `master` and
		    `cluster_def` are both `None`.
		  master_job_name: if set, overrides the master job name used to schedule
		    embedding ops.
		
		Raises:
		  ValueError: if any input is invalid.
	**/
	public function new(table_to_config_dict:Dynamic, feature_to_config_dict:Dynamic, batch_size:Dynamic, mode:Dynamic, ?master:Dynamic, ?optimization_parameters:Dynamic, ?cluster_def:Dynamic, ?pipeline_execution_with_tensor_core:Dynamic, ?partition_strategy:Dynamic, ?profile_data_directory:Dynamic, ?device_config:Dynamic, ?master_job_name:Dynamic):Void;
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
		Create `TPUEmbeddingConfiguration`.
	**/
	public function _create_config_proto():Dynamic;
	/**
		Format sparse features for `enqueue_tpu_embedding_ragged_tensor_batch()`.
		
		Args:
		  enqueue_datas: a `Dict` of `RaggedEnqueueData` objects for embedding.
		
		Returns:
		  Dict of arguments for `enqueue_tpu_embedding_ragged_tensor_batch()`.
	**/
	public function _format_for_tpu_embedding_ragged_tensor_batch(enqueue_datas:Dynamic):Dynamic;
	/**
		Format sparse features for `enqueue_tpu_embedding_sparse_tensor_batch()`.
		
		Args:
		  enqueue_datas: a `Dict` of `EnqueueData` objects for embedding.
		
		Returns:
		  Dict of arguments for `enqueue_tpu_embedding_sparse_tensor_batch()`.
	**/
	public function _format_for_tpu_embedding_sparse_tensor_batch(enqueue_datas:Dynamic):Dynamic;
	/**
		Creates op for enqueuing batch to TPU.
	**/
	public function _generate_enqueue_op(enqueue_datas:Dynamic, device_ordinal:Dynamic, ?mode_override:Dynamic, ?ragged:Dynamic):Dynamic;
	public function _get_optimizer_handler_by_table():Dynamic;
	/**
		Validate `enqueue_datas_list`.
	**/
	public function _validate_generate_enqueue_ops_enqueue_datas_list(enqueue_datas_list:Dynamic):Dynamic;
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
		Create embedding and slot variables, with ops to load and retrieve them.
		
		N.B.: the retrieve embedding variables (including slot variables) ops are
		returned as lambda fn, as the call side might want to impose control
		dependencies between the TPU computation and retrieving actions. For
		example, the following code snippet ensures the TPU computation finishes
		first, and then we pull the variables back from TPU to CPU.
		
		```
		updates_ops = []
		with ops.control_dependencies([loss]):
		  for op_fn in retrieve_parameters_op_fns:
		    update_ops.append(op_fn())
		```
		
		Args:
		  embedding_variable_name_by_table: A dictionary mapping from string of
		    table name to string of embedding variable name. If `None`, defaults
		    from `get_default_slot_variable_names()` will be used.
		  slot_variable_names_by_table: A dictionary mapping from string of table
		    name to `AdamSlotVariableNames`, `AdagradSlotVariableNames` etc. If
		    `None`, defaults from `get_default_slot_variable_names()` will be used.
		
		Returns:
		  `tpu_embedding.VariablesAndOps` with:
		    A dictionary mapping from string of table name to embedding variables,
		    A dictionary mapping from string of table name to AdagradSlotVariables,
		     AdamSlotVariables etc with slot variables,
		    A function which returns a list of ops to load embedding and slot
		     variables from CPU to TPU.
		    A function which returns a list of ops to retrieve embedding and slot
		     variables from TPU to CPU.
	**/
	public function create_variables_and_ops(?embedding_variable_name_by_table:Dynamic, ?slot_variable_names_by_table:Dynamic):Dynamic;
	public var feature_to_config_dict : Dynamic;
	/**
		Generate enqueue ops.
		
		Args:
		  enqueue_datas_list: a list of dictionary mapping from string of feature
		    names to EnqueueData. Each dictionary is for one TPU core. Dictionaries
		    for the same host should be contiguous in the list.
		  mode_override: A string input that overrides the mode specified in the
		    TPUEmbeddingConfiguration. Supported values are {'unspecified',
		    'inference', 'training', 'backward_pass_only'}. When set to
		    'unspecified', the mode set in TPUEmbeddingConfiguration is used,
		    otherwise mode_override is used (optional).
		  ragged: If True, creates RaggedTensor enqueue ops rather than
		    SparseTensor.
		
		Returns:
		  Ops to enqueue to TPU for embedding.
	**/
	public function generate_enqueue_ops(enqueue_datas_list:Dynamic, ?mode_override:Dynamic, ?ragged:Dynamic):Dynamic;
	/**
		Send gradient to TPU embedding.
		
		Args:
		  feature_to_gradient_dict: dict mapping feature names to gradient wrt
		    activations.
		  step: the current global step, used for dynamic learning rate.
		
		Returns:
		  SendTPUEmbeddingGradients Op.
		
		Raises:
		  RuntimeError: If `mode` is not `TRAINING`.
	**/
	public function generate_send_gradients_op(feature_to_gradient_dict:Dynamic, ?step:Dynamic):Dynamic;
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
		A list of device names for CPU hosts.
		
		Returns:
		  A list of device names for CPU hosts.
	**/
	public var hosts : Dynamic;
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
	public var optimization_parameters : Dynamic;
	public var table_to_config_dict : Dynamic;
	public var table_to_features_dict : Dynamic;
}