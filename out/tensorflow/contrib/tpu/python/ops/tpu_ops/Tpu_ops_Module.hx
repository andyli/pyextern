/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.ops.tpu_ops;
@:pythonImport("tensorflow.contrib.tpu.python.ops.tpu_ops") extern class Tpu_ops_Module {
	static public var _SUPPORTED_INFEED_DTYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_to_all_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _collective_permute_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _create_default_group_assignment():Dynamic;
	static public function _cross_replica_sum_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Exchange data across TPU replicas.
		
		Args:
		  x: The local tensor.
		  concat_dimension: The dimension number to concatenate.
		  split_dimension: The dimension number to split.
		  split_count: The number of splits, this number must equal to the sub-group
		    size(group_assignment.get_shape()[1])
		  group_assignment: Optional 2d int32 lists with shape [num_groups,
		    num_replicas_per_group]. `group_assignment[i]` represents the replica
		    ids in the ith subgroup.
		  name: Optional op name.
		
		Returns:
		  A `Tensor` which is concatenated by data from different replicas.
	**/
	static public function all_to_all(x:Dynamic, concat_dimension:Dynamic, split_dimension:Dynamic, split_count:Dynamic, ?group_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function all_to_all
	**/
	static public function all_to_all_eager_fallback(input:Dynamic, group_assignment:Dynamic, concat_dimension:Dynamic, split_dimension:Dynamic, split_count:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Permute the input tensor across replicas given source_target_pairs.
		
		For each source_target_pair <a, b>, we send replica a's input to replica b.
		Each replica id must only appear once in the source column. Also it must
		only appear once in the target column.
		For the replica id not in the target column, this op returns a zero tensor
		with the same shape and dtype of the input x.
		
		For example, suppose there are 4 TPU instances: `[A, B, C, D]`. Passing
		source_target_pairs=`[[0,1],[1,2],[2,3]]` gets the outputs:
		`[0, A, B, C]`.
		
		Args:
		  x: The local tensor to be permuted.
		  source_target_pairs: 2d int lists with shape [num_pairs, 2].
		    source_target_pairs[i][0] represents the source replica id and
		    source_target_pairs[i][1] represents the target replica id.
		  name: Optional op name.
		
		Returns:
		  A `Tensor` which is permuted.
	**/
	static public function collective_permute(x:Dynamic, source_target_pairs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function collective_permute
	**/
	static public function collective_permute_eager_fallback(input:Dynamic, source_target_pairs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op that sets up the centralized structures for a distributed TPU
		
		system.
		
		Args:
		  embedding_config: An optional `string`. Defaults to `""`.
		    Reserved. Do not use.
		  tpu_embedding_config: An optional `string`. Defaults to `""`.
		    Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
		    describes the embedding lookups of the program.
		  is_global_init: An optional `bool`. Defaults to `False`.
		    Reserved. Do not use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  A serialized tensorflow.tpu.TopologyProto that describes the TPU
		  topology.
	**/
	static public function configure_distributed_tpu(?embedding_config:Dynamic, ?tpu_embedding_config:Dynamic, ?is_global_init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function configure_distributed_tpu
	**/
	static public function configure_distributed_tpu_eager_fallback(?embedding_config:Dynamic, ?tpu_embedding_config:Dynamic, ?is_global_init:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sum the input tensor across replicas according to group_assignment.
		
		Args:
		  x: The local tensor to the sum.
		  group_assignment: Optional 2d int32 lists with shape [num_groups,
		    num_replicas_per_group]. `group_assignment[i]` represents the replica
		    ids in the ith subgroup.
		  name: Optional op name.
		
		Returns:
		  A `Tensor` which is summed across replicas.
	**/
	static public function cross_replica_sum(x:Dynamic, ?group_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cross_replica_sum
	**/
	static public function cross_replica_sum_eager_fallback(input:Dynamic, group_assignment:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		An op that enqueues a list of input batch tensors to TPUEmbedding.
		
		Args:
		  batch: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of 1D tensors, one for each embedding table, containing the
		    indices into the tables.
		  mode_override: A `Tensor` of type `string`.
		    A string input that overrides the mode specified in the
		    TPUEmbeddingConfiguration. Supported values are {'unspecified', 'inference',
		    'training', 'backward_pass_only'}. When set to 'unspecified', the mode set
		    in TPUEmbeddingConfiguration is used, otherwise mode_override is used.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. Should be >= 0 and less than the number
		    of TPU cores in the task on which the node is placed.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function enqueue_tpu_embedding_integer_batch(batch:Dynamic, device_ordinal:Dynamic, ?mode_override:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op that enqueues TPUEmbedding input indices from a SparseTensor.
		
		This Op eases the porting of code that uses embedding_lookup_sparse(),
		although some Python preprocessing of the SparseTensor arguments to
		embedding_lookup_sparse() is required to produce the arguments to this Op,
		since only a single EnqueueTPUEmbeddingSparseBatch Op is allowed per training
		step.
		
		The tensors at corresponding positions in the three input lists
		must have the same shape, i.e. rank 1 with dim_size() equal to the total
		number of lookups into the table described by the corresponding table_id.
		
		Args:
		  sample_indices: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors specifying the training example and
		    feature to which the corresponding embedding_indices and aggregation_weights
		    values belong. sample_indices[i] must equal b * nf + f, where nf is the
		    number of features from the corresponding table, f is in [0, nf), and
		    b is in [0, batch size).
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with type `float32`.
		    A list of rank 1 Tensors containing per sample -- i.e. per
		    (training example, feature) -- aggregation weights.
		  mode_override: A `Tensor` of type `string`.
		    A string input that overrides the mode specified in the
		    TPUEmbeddingConfiguration. Supported values are {'unspecified', 'inference',
		    'training', 'backward_pass_only'}. When set to 'unspecified', the mode set
		    in TPUEmbeddingConfiguration is used, otherwise mode_override is used.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. Should be >= 0 and less than the number
		    of TPU cores in the task on which the node is placed.
		  combiners: An optional list of `strings`. Defaults to `[]`.
		    A list of string scalars, one for each embedding table that specify
		    how to normalize the embedding activations after weighted summation.
		    Supported combiners are 'mean', 'sum', or 'sqrtn'. It is invalid to have
		    the sum of the weights be 0 for 'mean' or the sum of the squared weights be
		    0 for 'sqrtn'. If combiners isn't passed, the default is to use 'sum' for
		    all tables.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function enqueue_tpu_embedding_sparse_batch(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, device_ordinal:Dynamic, ?combiners:Dynamic, ?mode_override:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This Op eases the porting of code that uses tf.nn.embedding_lookup_sparse().
		
		sample_indices[i], embedding_indices[i] and aggregation_weights[i] correspond
		to the ith feature. table_ids[i] indicates which embedding table to look up ith
		feature.
		
		The tensors at corresponding positions in the three input lists (sample_indices,
		embedding_indices and aggregation_weights) must have the same shape, i.e. rank 1
		with dim_size() equal to the total number of lookups into the table described by
		the corresponding feature.
		
		Args:
		  sample_indices: A list of at least 1 `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors specifying the training example to
		    which the corresponding embedding_indices and aggregation_weights values
		    belong. It corresponds to sp_ids.indices[:,0] in  embedding_lookup_sparse().
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with type `int32`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		    It corresponds to sp_ids.values in embedding_lookup_sparse().
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with type `float32`.
		    A list of rank 1 Tensors containing per training example
		    aggregation weights. It corresponds to sp_weights.values in
		    embedding_lookup_sparse().
		  mode_override: A `Tensor` of type `string`.
		    A string input that overrides the mode specified in the
		    TPUEmbeddingConfiguration. Supported values are {'unspecified', 'inference',
		    'training', 'backward_pass_only'}. When set to 'unspecified', the mode set
		    in TPUEmbeddingConfiguration is used, otherwise mode_override is used.
		  table_ids: A list of `ints`.
		    A list of integers specifying the identifier of the embedding table
		    (offset of TableDescriptor in the TPUEmbeddingConfiguration) to lookup the
		    corresponding input. The ith input is looked up using table_ids[i]. The size
		    of the table_ids list must be equal to that of sample_indices,
		    embedding_indices and aggregation_weights.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. Should be >= 0 and less than the number
		    of TPU cores in the task on which the node is placed.
		  combiners: An optional list of `strings`. Defaults to `[]`.
		    A list of string scalars, one for each embedding table that specify
		    how to normalize the embedding activations after weighted summation.
		    Supported combiners are 'mean', 'sum', or 'sqrtn'. It is invalid to have
		    the sum of the weights be 0 for 'mean' or the sum of the squared weights be
		    0 for 'sqrtn'. If combiners isn't passed, the default is to use 'sum' for
		    all tables.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function enqueue_tpu_embedding_sparse_tensor_batch(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, table_ids:Dynamic, device_ordinal:Dynamic, ?combiners:Dynamic, ?mode_override:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A tensor that will be provided using the infeed mechanism.
		
		Raises:
		  TypeError: If 'dtype` is not a supported infeed type.
	**/
	static public function infeed_dequeue(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function infeed_dequeue
	**/
	static public function infeed_dequeue_eager_fallback(dtype:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A placeholder op for values fed into the TPU simultaneously as a tuple.
		
		Args:
		  dtypes: A list of `tf.DType`s that has length `>= 1`.
		    The element types of each element in `outputs`.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `outputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
		  A list of tensors that will be provided using the infeed mechanism.
		
		Raises:
		  TypeError: If a type in 'dtypes` is not a supported infeed type.
	**/
	static public function infeed_dequeue_tuple(dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function infeed_dequeue_tuple
	**/
	static public function infeed_dequeue_tuple_eager_fallback(dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op which feeds a single Tensor value into the computation.
		
		Args:
		  input: A `Tensor`.
		    A tensor that will be provided using the infeed mechanism.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of the tensor.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function infeed_enqueue(input:Dynamic, ?shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function infeed_enqueue
	**/
	static public function infeed_enqueue_eager_fallback(input:Dynamic, ?shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op which feeds multiple Tensor values into the computation as an XLA tuple.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be provided using the infeed mechanism.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `inputs`.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function infeed_enqueue_tuple(inputs:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function infeed_enqueue_tuple
	**/
	static public function infeed_enqueue_tuple_eager_fallback(inputs:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Adadelta optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the Adadelta optimization algorithm.
		updates: A tensor containing the initial embedding table updates to use in embedding
		lookups using the Adadelta optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`.
		    Value of updates used in the Adadelta optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adadelta_parameters(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adadelta_parameters
	**/
	static public function load_tpu_embedding_adadelta_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Adadelta optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the Adadelta optimization algorithm.
		updates: A tensor containing the initial embedding table updates to use in embedding
		lookups using the Adadelta optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the Adadelta optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`.
		    Value of updates used in the Adadelta optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the Adadelta optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adadelta_parameters_grad_accum_debug(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adadelta_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_adadelta_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Adagrad optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adagrad_parameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adagrad_parameters
	**/
	static public function load_tpu_embedding_adagrad_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Adagrad optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the Adagrad optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adagrad_parameters_grad_accum_debug(parameters:Dynamic, accumulators:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adagrad_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_adagrad_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, accumulators:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the ADAM optimization algorithm.
		momenta: A tensor containing the initial embedding table momenta to use in embedding
		lookups using the ADAM optimization algorithm.
		velocities: A tensor containing the initial embedding table velocities to use in embedding
		lookups using the ADAM optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`.
		    Value of velocities used in the ADAM optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adam_parameters(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adam_parameters
	**/
	static public function load_tpu_embedding_adam_parameters_eager_fallback(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the ADAM optimization algorithm.
		momenta: A tensor containing the initial embedding table momenta to use in embedding
		lookups using the ADAM optimization algorithm.
		velocities: A tensor containing the initial embedding table velocities to use in embedding
		lookups using the ADAM optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the ADAM optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`.
		    Value of velocities used in the ADAM optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the ADAM optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adam_parameters_grad_accum_debug(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_adam_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_adam_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the centered RMSProp optimization algorithm.
		ms: A tensor containing the initial embedding table ms to use in embedding
		lookups using the centered RMSProp optimization algorithm.
		mom: A tensor containing the initial embedding table mom to use in embedding
		lookups using the centered RMSProp optimization algorithm.
		mg: A tensor containing the initial embedding table mg to use in embedding
		lookups using the centered RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the centered RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`.
		    Value of ms used in the centered RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`.
		    Value of mom used in the centered RMSProp optimization algorithm.
		  mg: A `Tensor` of type `float32`.
		    Value of mg used in the centered RMSProp optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_centered_rms_prop_parameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, mg:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_centered_rms_prop_parameters
	**/
	static public function load_tpu_embedding_centered_rms_prop_parameters_eager_fallback(parameters:Dynamic, ms:Dynamic, mom:Dynamic, mg:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the FTRL optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the FTRL optimization algorithm.
		linears: A tensor containing the initial embedding table linears to use in embedding
		lookups using the FTRL optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`.
		    Value of linears used in the FTRL optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_ftrl_parameters(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_ftrl_parameters
	**/
	static public function load_tpu_embedding_ftrl_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the FTRL optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the FTRL optimization algorithm.
		linears: A tensor containing the initial embedding table linears to use in embedding
		lookups using the FTRL optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the FTRL optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`.
		    Value of linears used in the FTRL optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the FTRL optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_ftrl_parameters_grad_accum_debug(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_ftrl_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_ftrl_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the MDL Adagrad Light optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the MDL Adagrad Light optimization algorithm.
		weights: A tensor containing the initial embedding table weights to use in embedding
		lookups using the MDL Adagrad Light optimization algorithm.
		benefits: A tensor containing the initial embedding table benefits to use in embedding
		lookups using the MDL Adagrad Light optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the MDL Adagrad Light optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the MDL Adagrad Light optimization algorithm.
		  weights: A `Tensor` of type `float32`.
		    Value of weights used in the MDL Adagrad Light optimization algorithm.
		  benefits: A `Tensor` of type `float32`.
		    Value of benefits used in the MDL Adagrad Light optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_mdl_adagrad_light_parameters(parameters:Dynamic, accumulators:Dynamic, weights:Dynamic, benefits:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_mdl_adagrad_light_parameters
	**/
	static public function load_tpu_embedding_mdl_adagrad_light_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, weights:Dynamic, benefits:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Momentum optimization algorithm.
		momenta: A tensor containing the initial embedding table momenta to use in embedding
		lookups using the Momentum optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_momentum_parameters(parameters:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_momentum_parameters
	**/
	static public function load_tpu_embedding_momentum_parameters_eager_fallback(parameters:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the Momentum optimization algorithm.
		momenta: A tensor containing the initial embedding table momenta to use in embedding
		lookups using the Momentum optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the Momentum optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Momentum optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_momentum_parameters_grad_accum_debug(parameters:Dynamic, momenta:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_momentum_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_momentum_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, momenta:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the proximal Adagrad optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the proximal Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the proximal Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_proximal_adagrad_parameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_proximal_adagrad_parameters
	**/
	static public function load_tpu_embedding_proximal_adagrad_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the proximal Adagrad optimization algorithm.
		accumulators: A tensor containing the initial embedding table accumulators to use in embedding
		lookups using the proximal Adagrad optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the proximal Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the proximal Adagrad optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the proximal Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug(parameters:Dynamic, accumulators:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, accumulators:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the RMSProp optimization algorithm.
		ms: A tensor containing the initial embedding table ms to use in embedding
		lookups using the RMSProp optimization algorithm.
		mom: A tensor containing the initial embedding table mom to use in embedding
		lookups using the RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`.
		    Value of ms used in the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`.
		    Value of mom used in the RMSProp optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_rms_prop_parameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_rms_prop_parameters
	**/
	static public function load_tpu_embedding_rms_prop_parameters_eager_fallback(parameters:Dynamic, ms:Dynamic, mom:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the RMSProp optimization algorithm.
		ms: A tensor containing the initial embedding table ms to use in embedding
		lookups using the RMSProp optimization algorithm.
		mom: A tensor containing the initial embedding table mom to use in embedding
		lookups using the RMSProp optimization algorithm.
		gradient_accumulators: A tensor containing the initial embedding table gradient_accumulators to use in embedding
		lookups using the RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`.
		    Value of ms used in the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`.
		    Value of mom used in the RMSProp optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`.
		    Value of gradient_accumulators used in the RMSProp optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_rms_prop_parameters_grad_accum_debug(parameters:Dynamic, ms:Dynamic, mom:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_rms_prop_parameters_grad_accum_debug
	**/
	static public function load_tpu_embedding_rms_prop_parameters_grad_accum_debug_eager_fallback(parameters:Dynamic, ms:Dynamic, mom:Dynamic, gradient_accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Load embedding parameters for a single table.
		
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		parameters: A tensor containing the initial embedding table parameters to use in embedding
		lookups using the stochastic gradient descent optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the stochastic gradient descent optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_stochastic_gradient_descent_parameters(parameters:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function load_tpu_embedding_stochastic_gradient_descent_parameters
	**/
	static public function load_tpu_embedding_stochastic_gradient_descent_parameters_eager_fallback(parameters:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieves a single tensor from the computation outfeed.  This operation will
		
		block indefinitely until data is available.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A tensor that will be read from the device outfeed.
	**/
	static public function outfeed_dequeue(dtype:Dynamic, shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function outfeed_dequeue
	**/
	static public function outfeed_dequeue_eager_fallback(dtype:Dynamic, shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve multiple values that will be emitted by the computation as an XLA
		
		tuple.  This operations will block indefinitely until data is available.
		Output `i` corresponds to XLA tuple element `i`.
		
		Args:
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		    The element types of each element in `outputs`.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `outputs`.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
		  A list of tensors that will be read from the outfeed.
	**/
	static public function outfeed_dequeue_tuple(dtypes:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function outfeed_dequeue_tuple
	**/
	static public function outfeed_dequeue_tuple_eager_fallback(dtypes:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op which emits a single Tensor value from an XLA computation.
		
		Args:
		  input: A `Tensor`. A tensor that will be inserted into the outfeed queue.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function outfeed_enqueue(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function outfeed_enqueue
	**/
	static public function outfeed_enqueue_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op which emits multiple Tensor values from an XLA computation.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be inserted into the outfeed queue as an
		    XLA tuple.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function outfeed_enqueue_tuple(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function outfeed_enqueue_tuple
	**/
	static public function outfeed_enqueue_tuple_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		An op that receives embedding activations on the TPU.
		
		The TPU system performs the embedding lookups and aggregations specified by
		the arguments to TPUEmbeddingEnqueue(Integer/Sparse/SparseTensor)Batch. The
		results of these aggregations are visible to the Tensorflow Graph as the
		outputs of a RecvTPUEmbeddingActivations op. This op returns a list containing
		one Tensor of activations per table specified in the model. There can be at
		most one RecvTPUEmbeddingActivations op in the TPU graph.
		
		Args:
		  num_outputs: An `int` that is `>= 1`.
		    The number of output activation tensors, equal to the number of
		    embedding tables in the model.
		  config: A `string`. Serialized TPUEmbeddingConfiguration proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_outputs` `Tensor` objects with type `float32`.
		  A TensorList of embedding activations containing one Tensor per
		  embedding table in the model.
	**/
	static public function recv_tpu_embedding_activations(num_outputs:Dynamic, config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function recv_tpu_embedding_activations
	**/
	static public function recv_tpu_embedding_activations_eager_fallback(num_outputs:Dynamic, config:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		updates: A tensor containing the embedding table updates to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, updates).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`. Parameter updates updated by the Adadelta optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adadelta_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adadelta_parameters
	**/
	static public function retrieve_tpu_embedding_adadelta_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		updates: A tensor containing the embedding table updates to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the Adadelta optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, updates, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`. Parameter updates updated by the Adadelta optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the Adadelta optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adadelta_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adadelta_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_adadelta_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Adagrad optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the Adagrad optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adagrad_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adagrad_parameters
	**/
	static public function retrieve_tpu_embedding_adagrad_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Adagrad optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the Adagrad optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the Adagrad optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the Adagrad optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adagrad_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adagrad_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_adagrad_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		momenta: A tensor containing the embedding table momenta to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		velocities: A tensor containing the embedding table velocities to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta, velocities).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`. Parameter momenta updated by the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`. Parameter velocities updated by the ADAM optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adam_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adam_parameters
	**/
	static public function retrieve_tpu_embedding_adam_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		momenta: A tensor containing the embedding table momenta to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		velocities: A tensor containing the embedding table velocities to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the ADAM optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta, velocities, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`. Parameter momenta updated by the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`. Parameter velocities updated by the ADAM optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the ADAM optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_adam_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_adam_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_adam_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the centered RMSProp optimization algorithm.
		ms: A tensor containing the embedding table ms to store with the
		parameters from embedding updates using the centered RMSProp optimization algorithm.
		mom: A tensor containing the embedding table mom to store with the
		parameters from embedding updates using the centered RMSProp optimization algorithm.
		mg: A tensor containing the embedding table mg to store with the
		parameters from embedding updates using the centered RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom, mg).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the centered RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`. Parameter ms updated by the centered RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`. Parameter mom updated by the centered RMSProp optimization algorithm.
		  mg: A `Tensor` of type `float32`. Parameter mg updated by the centered RMSProp optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_centered_rms_prop_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_centered_rms_prop_parameters
	**/
	static public function retrieve_tpu_embedding_centered_rms_prop_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		linears: A tensor containing the embedding table linears to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, linears).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`. Parameter linears updated by the FTRL optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_ftrl_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_ftrl_parameters
	**/
	static public function retrieve_tpu_embedding_ftrl_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		linears: A tensor containing the embedding table linears to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the FTRL optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, linears, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`. Parameter linears updated by the FTRL optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the FTRL optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_ftrl_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_ftrl_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_ftrl_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the MDL Adagrad Light optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the MDL Adagrad Light optimization algorithm.
		weights: A tensor containing the embedding table weights to store with the
		parameters from embedding updates using the MDL Adagrad Light optimization algorithm.
		benefits: A tensor containing the embedding table benefits to store with the
		parameters from embedding updates using the MDL Adagrad Light optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, weights, benefits).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the MDL Adagrad Light optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the MDL Adagrad Light optimization algorithm.
		  weights: A `Tensor` of type `float32`. Parameter weights updated by the MDL Adagrad Light optimization algorithm.
		  benefits: A `Tensor` of type `float32`. Parameter benefits updated by the MDL Adagrad Light optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_mdl_adagrad_light_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_mdl_adagrad_light_parameters
	**/
	static public function retrieve_tpu_embedding_mdl_adagrad_light_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Momentum optimization algorithm.
		momenta: A tensor containing the embedding table momenta to store with the
		parameters from embedding updates using the Momentum optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`. Parameter momenta updated by the Momentum optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_momentum_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_momentum_parameters
	**/
	static public function retrieve_tpu_embedding_momentum_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the Momentum optimization algorithm.
		momenta: A tensor containing the embedding table momenta to store with the
		parameters from embedding updates using the Momentum optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the Momentum optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`. Parameter momenta updated by the Momentum optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the Momentum optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_momentum_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_momentum_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_momentum_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the proximal Adagrad optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the proximal Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the proximal Adagrad optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_proximal_adagrad_parameters
	**/
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the proximal Adagrad optimization algorithm.
		accumulators: A tensor containing the embedding table accumulators to store with the
		parameters from embedding updates using the proximal Adagrad optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the proximal Adagrad optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`. Parameter accumulators updated by the proximal Adagrad optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the proximal Adagrad optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		ms: A tensor containing the embedding table ms to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		mom: A tensor containing the embedding table mom to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`. Parameter ms updated by the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`. Parameter mom updated by the RMSProp optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_rms_prop_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_rms_prop_parameters
	**/
	static public function retrieve_tpu_embedding_rms_prop_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		ms: A tensor containing the embedding table ms to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		mom: A tensor containing the embedding table mom to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		gradient_accumulators: A tensor containing the embedding table gradient_accumulators to store with the
		parameters from embedding updates using the RMSProp optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom, gradient_accumulators).
		
		  parameters: A `Tensor` of type `float32`. Parameter parameters updated by the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`. Parameter ms updated by the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`. Parameter mom updated by the RMSProp optimization algorithm.
		  gradient_accumulators: A `Tensor` of type `float32`. Parameter gradient_accumulators updated by the RMSProp optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_rms_prop_parameters_grad_accum_debug(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_rms_prop_parameters_grad_accum_debug
	**/
	static public function retrieve_tpu_embedding_rms_prop_parameters_grad_accum_debug_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieve embedding parameters for a single table.
		
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		parameters: A tensor containing the embedding table parameters to store with the
		parameters from embedding updates using the stochastic gradient descent optimization algorithm.
		table_name: Name of this table; must match a name in the
		  TPUEmbeddingConfiguration proto (overrides table_id).
		num_shards: Number of shards into which the embedding tables are divided.
		shard_id: Identifier of shard for this operation.
		table_id: Index of this table in the EmbeddingLayerConfiguration proto
		  (deprecated).
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int` that is `>= -1`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  Parameter parameters updated by the stochastic gradient descent optimization algorithm.
	**/
	static public function retrieve_tpu_embedding_stochastic_gradient_descent_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function retrieve_tpu_embedding_stochastic_gradient_descent_parameters
	**/
	static public function retrieve_tpu_embedding_stochastic_gradient_descent_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op that performs gradient updates of embedding tables.
		
		The TensorList argument has the same length and shapes as the return value of
		TPUEmbeddingReceiveActivations, but contains gradients of the model's loss
		with respect to the embedding activations. The embedding tables are updated
		from these gradients via the optimizer specified in the configuration given
		to tpu.initialize_system.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `float32`.
		    A TensorList of gradients with which to update embedding tables.
		    It contains one tensor per embedding table in the model.
		  learning_rates: A list of `Tensor` objects with type `float32`.
		    A list of float32 scalars, one for each embedding table,
		    containing the learning rates for each table when dynamic learning rate is
		    enabled through the OptimizationParameters in TPUEmbeddingConfiguration.
		    When the learning rate is constant, the list should be empty.
		  config: A `string`. Serialized TPUEmbeddingConfiguration proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function send_tpu_embedding_gradients(inputs:Dynamic, config:Dynamic, ?learning_rates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op that shuts down a running distributed TPU system. The Op returns
		
		an error if no system is running.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function shutdown_distributed_tpu(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function shutdown_distributed_tpu
	**/
	static public function shutdown_distributed_tpu_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tpu_compilation_result(?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_compilation_result
	**/
	static public function tpu_compilation_result_eager_fallback(?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		An op enabling differentiation of TPU Embeddings.
		
		This op simply returns its first input, which is assumed to have been sliced
		from the Tensors returned by TPUEmbeddingDequeueActivations. The presence of this
		op, and its first argument being a trainable Variable, enables automatic
		differentiation of graphs containing embeddings via the TPU Embedding Python
		libraries.
		
		Args:
		  embedding_variable: A `Tensor` of type `float32`.
		    A trainable variable, enabling optimizers to find this op.
		  sliced_activations: A `Tensor` of type `float32`.
		    The embedding activations Tensor to return.
		  table_id: An `int` that is `>= 0`.
		    The id of the table in the embedding layer configuration from which
		    these activations were computed.
		  lookup_id: An `int` that is `>= 0`.
		    Identifier of the set of embedding indices which produced these
		    activations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tpu_embedding_activations(embedding_variable:Dynamic, sliced_activations:Dynamic, table_id:Dynamic, lookup_id:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_embedding_activations
	**/
	static public function tpu_embedding_activations_eager_fallback(embedding_variable:Dynamic, sliced_activations:Dynamic, table_id:Dynamic, lookup_id:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Runs replicated computations on a distributed TPU system.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    the inputs to 'computation', flattened, in replica-major order.
		  broadcast_inputs: A list of `Tensor` objects.
		    additional arguments to broadcast to all replicas. The
		    broadcast inputs are appended to the per-replica inputs when calling
		    computation.
		  variables: A list of `Tensor` objects with type `resource`.
		  guaranteed_constants: A list of `Tensor` objects.
		    arguments which have been guaranteed to not
		    change their values during the session lifetime. These contain tensors marked as
		    constant using the GuaranteeConstOp.
		  computation: A function decorated with @Defun.
		    a function containing the computation to run.
		  num_replicas: An `int` that is `>= 1`.
		    the number of replicas of the computation to run.
		  output_types: A list of `tf.DTypes`.
		    the types of the outputs of 'computation'.
		  num_cores_per_replica: An optional `int`. Defaults to `1`.
		    the number of logical cores in each replica.
		  topology: An optional `string`. Defaults to `""`.
		    A serialized tensorflow.tpu.TopologyProto that describes the TPU
		    topology.
		  use_tpu: An optional `bool`. Defaults to `True`.
		    a bool indicating if this computation will run on TPU or CPU/GPU.
		    Currently, only supports a default placement (computation is placed on GPU
		    if one is available, and on CPU if not).
		  device_assignment: An optional list of `ints`. Defaults to `[]`.
		    a flattened array with shape
		    [replica, num_cores_per_replica, mesh_dimension] that maps the coordinates
		    of logical cores in each replica of a computation to physical coordinates in
		    the TPU topology.
		  host_compute_core: An optional list of `strings`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `output_types`.
		  the outputs of 'computation'.
	**/
	static public function tpu_replicate(inputs:Dynamic, broadcast_inputs:Dynamic, variables:Dynamic, guaranteed_constants:Dynamic, computation:Dynamic, num_replicas:Dynamic, output_types:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?host_compute_core:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_replicate
	**/
	static public function tpu_replicate_eager_fallback(inputs:Dynamic, broadcast_inputs:Dynamic, variables:Dynamic, guaranteed_constants:Dynamic, computation:Dynamic, num_replicas:Dynamic, output_types:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?host_compute_core:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  num_replicas: An `int` that is `>= 0`.
		  num_cores_per_replica: An optional `int`. Defaults to `1`.
		  topology: An optional `string`. Defaults to `""`.
		  use_tpu: An optional `bool`. Defaults to `True`.
		  device_assignment: An optional list of `ints`. Defaults to `[]`.
		  computation_shape: An optional list of `ints`. Defaults to `[]`.
		  host_compute_core: An optional list of `strings`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tpu_replicate_metadata(num_replicas:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?computation_shape:Dynamic, ?host_compute_core:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_replicate_metadata
	**/
	static public function tpu_replicate_metadata_eager_fallback(num_replicas:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?computation_shape:Dynamic, ?host_compute_core:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Operator that connects N unreplicated inputs to an N-way replicated TPU computation.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function tpu_replicated_input(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_replicated_input
	**/
	static public function tpu_replicated_input_eager_fallback(inputs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Operator that connects the output of an N-way replicated TPU computation to N separate outputs.
		
		Args:
		  input: A `Tensor`.
		  num_replicas: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_replicas` `Tensor` objects with the same type as `input`.
	**/
	static public function tpu_replicated_output(input:Dynamic, num_replicas:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tpu_replicated_output
	**/
	static public function tpu_replicated_output_eager_fallback(input:Dynamic, num_replicas:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Worker heartbeat op.
		
		Heartbeats may be sent periodically to indicate the coordinator is still active,
		to retrieve the current worker status and to expedite shutdown when necessary.
		
		Args:
		  request: A `Tensor` of type `string`.
		    A string tensor containing a serialized WorkerHeartbeatRequest
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  A string tensor containing a serialized WorkerHeartbeatResponse
	**/
	static public function worker_heartbeat(request:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function worker_heartbeat
	**/
	static public function worker_heartbeat_eager_fallback(request:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}