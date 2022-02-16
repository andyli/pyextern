/* This file is generated, do not edit! */
package tensorflow.python.tpu.ops.tpu_ops;
@:pythonImport("tensorflow.python.tpu.ops.tpu_ops") extern class Tpu_ops_Module {
	/**
		An Op to exchange data across TPU replicas.
		
		On each replica, the input is split into `split_count` blocks along
		`split_dimension` and send to the other replicas given group_assignment. After
		receiving `split_count` - 1 blocks from other replicas, we concatenate the
		blocks along `concat_dimension` as the output.
		
		For example, suppose there are 2 TPU replicas:
		replica 0 receives input: `[[A, B]]`
		replica 1 receives input: `[[C, D]]`
		
		group_assignment=`[[0, 1]]`
		concat_dimension=0
		split_dimension=1
		split_count=2
		
		replica 0's output: `[[A], [C]]`
		replica 1's output: `[[B], [D]]`
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`, `bool`.
		    The local input to the sum.
		  group_assignment: A `Tensor` of type `int32`. An int32 tensor with shape
		    [num_groups, num_replicas_per_group]. `group_assignment[i]` represents the
		    replica ids in the ith subgroup.
		  concat_dimension: An `int`. The dimension number to concatenate.
		  split_dimension: An `int`. The dimension number to split.
		  split_count: An `int`.
		    The number of splits, this number must equal to the sub-group
		    size(group_assignment.get_shape()[1])
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function AllToAll(input:Dynamic, group_assignment:Dynamic, concat_dimension:Dynamic, split_dimension:Dynamic, split_count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concats input tensor across all dimensions.
		
		An op which merges slices the input tensor based on the given num_splits
		attribute, strips paddings optionally, and writes the merged tensor without
		paddings to the resource variable.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1],
		 [4, 5]]
		[[2, 3],
		 [6, 7]]
		[[8, 9],
		 [12, 13]]
		[[10, 11],
		 [14, 15]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1, 2],
		 [4, 5, 6],
		 [8, 9, 10]]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    Resource variable for concatenated input tensors across all dimensions.
		      }
		      in_arg {
		        name: "inputs"
		        description: <<END
		    Input tensor slices in row-major order to merge across all dimensions. All
		    inputs must have the same shape.
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Output tensor formed from merging input slices based on num_concats defined.
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		  num_concats: A list of `ints`. Number of ways to merge per dimension.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension to strip from the final merged
		    tensor. These paddings must not exceed the dimension size of the merged result
		    prior to stripping paddings.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function AssignVariableXlaConcatND(resource:Dynamic, inputs:Dynamic, num_concats:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An Op to permute tensors across replicated TPU instances.
		
		Each instance supplies its own input.
		
		For example, suppose there are 4 TPU instances: `[A, B, C, D]`. Passing
		source_target_pairs=`[[0,1],[1,2],[2,3],[3,0]]` gets the outputs:
		`[D, A, B, C]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The local input to be permuted. Currently only supports float and
		    bfloat16.
		  source_target_pairs: A `Tensor` of type `int32`.
		    A tensor with shape [num_pairs, 2].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CollectivePermute(input:Dynamic, source_target_pairs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets up the centralized structures for a distributed TPU system.
		
		Args:
		  embedding_config: An optional `string`. Defaults to `""`.
		    Reserved. Do not use.
		  tpu_embedding_config: An optional `string`. Defaults to `""`.
		    Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
		    describes the embedding lookups of the program.
		  is_global_init: An optional `bool`. Defaults to `False`.
		    Reserved. Do not use.
		  enable_whole_mesh_compilations: An optional `bool`. Defaults to `False`.
		  compilation_failure_closes_chips: An optional `bool`. Defaults to `True`.
		  tpu_cancellation_closes_chips: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function ConfigureDistributedTPU(?embedding_config:Dynamic, ?tpu_embedding_config:Dynamic, ?is_global_init:Dynamic, ?enable_whole_mesh_compilations:Dynamic, ?compilation_failure_closes_chips:Dynamic, ?tpu_cancellation_closes_chips:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets up TPUEmbedding in a distributed TPU system.
		
		Args:
		  config: A `string`.
		    Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
		    describes the embedding lookups of the program.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ConfigureTPUEmbedding(config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An Op to sum inputs across replicated TPU instances.
		
		Each instance supplies its own input.
		
		For example, suppose there are 8 TPU instances: `[A, B, C, D, E, F, G, H]`.
		Passing group_assignment=`[[0,2,4,6],[1,3,5,7]]` sets `A, C, E, G` as group 0,
		and `B, D, F, H` as group 1. Thus we get the outputs:
		`[A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H, A+C+E+G, B+D+F+H]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `uint32`.
		    The local input to the sum.
		  group_assignment: A `Tensor` of type `int32`. An int32 tensor with shape
		    [num_groups, num_replicas_per_group]. `group_assignment[i]` represents the
		    replica ids in the ith subgroup.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function CrossReplicaSum(input:Dynamic, group_assignment:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function EnqueueTPUEmbeddingIntegerBatch(batch:Dynamic, mode_override:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Eases the porting of code that uses tf.nn.embedding_lookup().
		
		sample_splits[i], embedding_indices[i] and aggregation_weights[i] correspond
		to the ith feature. table_ids[i] indicates which embedding table to look up ith
		feature.
		
		The tensors at corresponding positions in two of the input lists,
		embedding_indices and aggregation_weights, must have the same shape, i.e. rank 1
		with dim_size() equal to the total number of lookups into the table described by
		the corresponding feature.
		
		Args:
		  sample_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the break points for splitting
		    embedding_indices and aggregation_weights into rows.
		    It corresponds to ids.row_splits in embedding_lookup(), when ids is a
		    RaggedTensor.
		  embedding_indices: A list with the same length as `sample_splits` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		    It corresponds to ids.values in embedding_lookup(), when ids is a RaggedTensor.
		  aggregation_weights: A list with the same length as `sample_splits` of `Tensor` objects with the same type in: `float32`, `float64`.
		    A list of rank 1 Tensors containing per training example
		    aggregation weights. It corresponds to the values field of a RaggedTensor
		    with the same row_splits as ids in embedding_lookup(), when ids is a
		    RaggedTensor.
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
		  max_sequence_lengths: An optional list of `ints`. Defaults to `[]`.
		  num_features: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function EnqueueTPUEmbeddingRaggedTensorBatch(sample_splits:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, table_ids:Dynamic, ?device_ordinal:Dynamic, ?combiners:Dynamic, ?max_sequence_lengths:Dynamic, ?num_features:Dynamic, ?name:Dynamic):Dynamic;
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
		  sample_indices: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the training example and
		    feature to which the corresponding embedding_indices and aggregation_weights
		    values belong. sample_indices[i] must equal b * nf + f, where nf is the
		    number of features from the corresponding table, f is in [0, nf), and
		    b is in [0, batch size).
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `float32`, `float64`.
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
	static public function EnqueueTPUEmbeddingSparseBatch(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, ?device_ordinal:Dynamic, ?combiners:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Eases the porting of code that uses tf.nn.embedding_lookup_sparse().
		
		sample_indices[i], embedding_indices[i] and aggregation_weights[i] correspond
		to the ith feature. table_ids[i] indicates which embedding table to look up ith
		feature.
		
		The tensors at corresponding positions in the three input lists (sample_indices,
		embedding_indices and aggregation_weights) must have the same shape, i.e. rank 1
		with dim_size() equal to the total number of lookups into the table described by
		the corresponding feature.
		
		Args:
		  sample_indices: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the training example to
		    which the corresponding embedding_indices and aggregation_weights values
		    belong. It corresponds to sp_ids.indices[:,0] in  embedding_lookup_sparse().
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		    It corresponds to sp_ids.values in embedding_lookup_sparse().
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `float32`, `float64`.
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
		  max_sequence_lengths: An optional list of `ints`. Defaults to `[]`.
		  num_features: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function EnqueueTPUEmbeddingSparseTensorBatch(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, table_ids:Dynamic, ?device_ordinal:Dynamic, ?combiners:Dynamic, ?max_sequence_lengths:Dynamic, ?num_features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A placeholder op for a value that will be fed into the computation.
		
		Args:
		  dtype: A `tf.DType`. The type of elements in the tensor.
		  shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function InfeedDequeue(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fetches multiple values from infeed as an XLA tuple.
		
		Args:
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		    The element types of each element in `outputs`.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `outputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function InfeedDequeueTuple(dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which feeds a single Tensor value into the computation.
		
		Args:
		  input: A `Tensor`.
		    A tensor that will be provided using the infeed mechanism.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of the tensor.
		  layout: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence.
		    If a layout attribute is passed, but its values are all -1, the layout will
		    be computed by the infeed operation.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InfeedEnqueue(input:Dynamic, ?shape:Dynamic, ?layout:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which enqueues prelinearized buffer into TPU infeed.
		
		Args:
		  input: A `Tensor` of type `variant`.
		    A variant tensor representing linearized output.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op is running on a TPU device
		    and = 0 when the Op is running on the CPU device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InfeedEnqueuePrelinearizedBuffer(input:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Feeds multiple Tensor values into the computation as an XLA tuple.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be provided using the infeed mechanism.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `inputs`.
		  layouts: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence for
		    all the tuple shapes, in the order the shapes appear in the "shapes" input.
		    The layout elements for a sub-shape can be set to -1, in which case the
		    corresponding layout will be computed by the infeed operation.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function InfeedEnqueueTuple(inputs:Dynamic, shapes:Dynamic, ?layouts:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Whether TPU Embedding is initialized in a distributed TPU system.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function IsTPUEmbeddingInitialized(?name:Dynamic):Dynamic;
	/**
		Load ADAM embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`.
		    Value of velocities used in the ADAM optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingADAMParameters(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load Adadelta embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`.
		    Value of updates used in the Adadelta optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingAdadeltaParameters(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load Adagrad Momentum embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad Momentum optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Adagrad Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingAdagradMomentumParameters(parameters:Dynamic, accumulators:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load Adagrad embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingAdagradParameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load centered RMSProp embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
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
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingCenteredRMSPropParameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, mg:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load FTRL embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`.
		    Value of linears used in the FTRL optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingFTRLParameters(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load frequency estimator embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the frequency estimator optimization algorithm.
		  last_hit_step: A `Tensor` of type `float32`.
		    Value of last_hit_step used in the frequency estimator optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingFrequencyEstimatorParameters(parameters:Dynamic, last_hit_step:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load MDL Adagrad Light embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
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
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingMDLAdagradLightParameters(parameters:Dynamic, accumulators:Dynamic, weights:Dynamic, benefits:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load Momentum embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingMomentumParameters(parameters:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load proximal Adagrad embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the proximal Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingProximalAdagradParameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		  v: A `Tensor` of type `float32`.
		  m: A `Tensor` of type `float32`.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingProximalYogiParameters(parameters:Dynamic, v:Dynamic, m:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load RMSProp embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`.
		    Value of ms used in the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`.
		    Value of mom used in the RMSProp optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingRMSPropParameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Load SGD embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the stochastic gradient descent optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function LoadTPUEmbeddingStochasticGradientDescentParameters(parameters:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieves a single tensor from the computation outfeed.
		
		This operation will block indefinitely until data is available.
		
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
	**/
	static public function OutfeedDequeue(dtype:Dynamic, shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve multiple values from the computation outfeed.
		
		This operation will block indefinitely until data is available. Output `i`
		corresponds to XLA tuple element `i`.
		
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
	**/
	static public function OutfeedDequeueTuple(dtypes:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve multiple values from the computation outfeed. Device ordinal is a
		tensor allowing dynamic outfeed.
		
		  This operation will block indefinitely until data is available. Output `i`
		  corresponds to XLA tuple element `i`.
		
		  Args:
		    device_ordinal: A `Tensor` of type `int32`.
		      An int scalar tensor, representing the TPU device to use. This should be -1 when
		      the Op is running on a TPU device, and >= 0 when the Op is running on the CPU
		      device.
		    dtypes: A list of `tf.DTypes` that has length `>= 1`.
		      The element types of each element in `outputs`.
		    shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		      The shapes of each tensor in `outputs`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A list of `Tensor` objects of type `dtypes`.
		  
	**/
	static public function OutfeedDequeueTupleV2(device_ordinal:Dynamic, dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieves a single tensor from the computation outfeed. Device ordinal is a
		tensor allowing dynamic outfeed.
		
		  This operation will block indefinitely until data is available.
		
		  Args:
		    device_ordinal: A `Tensor` of type `int32`.
		      An int scalar tensor, representing the TPU device to use. This should be -1 when
		      the Op is running on a TPU device, and >= 0 when the Op is running on the CPU
		      device.
		    dtype: A `tf.DType`. The type of elements in the tensor.
		    shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function OutfeedDequeueV2(device_ordinal:Dynamic, dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueue a Tensor on the computation outfeed.
		
		Args:
		  input: A `Tensor`. A tensor that will be inserted into the outfeed queue.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function OutfeedEnqueue(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueue multiple Tensor values on the computation outfeed.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be inserted into the outfeed queue as an
		    XLA tuple.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function OutfeedEnqueueTuple(inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which linearizes one Tensor value to an opaque variant tensor.
		
		Args:
		  input: A `Tensor`. A tensor that will be linearized.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of the tensor.
		  layout: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence. If a layout
		    attribute is passed but its values are all -1 the layout will be computed by
		    the infeed operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function Prelinearize(input:Dynamic, ?shape:Dynamic, ?layout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An op which linearizes multiple Tensor values to an opaque variant tensor.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be provided using the infeed mechanism.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `inputs`.
		  layouts: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence for all the
		    tuple shapes in the order the shapes appear in the "shapes" input. The layout
		    elements for a sub-shape can be set to -1 in which case the corresponding layout
		    will be computed by the infeed operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function PrelinearizeTuple(inputs:Dynamic, shapes:Dynamic, ?layouts:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits resource variable input tensor across all dimensions.
		
		An op which splits the resource variable input tensor based on the given
		num_splits attribute, pads slices optionally, and returned the slices. Slices
		are returned in row-major order.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1, 2],
		 [3, 4, 5],
		 [6, 7, 8]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1],
		 [3, 4]]
		[[2, 0],
		 [5, 0]]
		[[6, 7],
		 [0, 0]]
		[[8, 0],
		 [0, 0]]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    Resource variable of input tensor to split across all dimensions.
		      }
		      out_arg {
		        name: "outputs"
		        description: <<END
		    Output slices based on input and num_splits defined, in row-major order.
		  T: A `tf.DType`.
		  N: An `int` that is `>= 1`.
		  num_splits: A list of `ints`.
		    Number of ways to split per dimension. Shape dimensions must be evenly
		    divisible.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension of input tensor to apply before
		    splitting. This can be used to make a dimension evenly divisible.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `N` `Tensor` objects with type `T`.
	**/
	static public function ReadVariableXlaSplitND(resource:Dynamic, T:Dynamic, N:Dynamic, num_splits:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function RecvTPUEmbeddingActivations(num_outputs:Dynamic, config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve ADAM embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta, velocities).
		
		  parameters: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
		  velocities: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingADAMParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve Adadelta embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, updates).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  updates: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingAdadeltaParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve Adagrad Momentum embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, momenta).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingAdagradMomentumParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve Adagrad embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingAdagradParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve centered RMSProp embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom, mg).
		
		  parameters: A `Tensor` of type `float32`.
		  ms: A `Tensor` of type `float32`.
		  mom: A `Tensor` of type `float32`.
		  mg: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingCenteredRMSPropParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve FTRL embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, linears).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  linears: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingFTRLParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve frequency estimator embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, last_hit_step).
		
		  parameters: A `Tensor` of type `float32`.
		  last_hit_step: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingFrequencyEstimatorParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve MDL Adagrad Light embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, weights, benefits).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  weights: A `Tensor` of type `float32`.
		  benefits: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingMDLAdagradLightParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve Momentum embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta).
		
		  parameters: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingMomentumParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve proximal Adagrad embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingProximalAdagradParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, v, m).
		
		  parameters: A `Tensor` of type `float32`.
		  v: A `Tensor` of type `float32`.
		  m: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingProximalYogiParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve RMSProp embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom).
		
		  parameters: A `Tensor` of type `float32`.
		  ms: A `Tensor` of type `float32`.
		  mom: A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingRMSPropParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieve SGD embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function RetrieveTPUEmbeddingStochasticGradientDescentParameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs gradient updates of embedding tables.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `float32`.
		    A TensorList of gradients with which to update embedding tables.
		    This argument has the same length and shapes as the return value of
		    RecvTPUEmbeddingActivations, but contains gradients of the model's loss
		    with respect to the embedding activations. The embedding tables are updated
		    from these gradients via the optimizer specified in the TPU embedding
		    configuration given to tpu.initialize_system.
		  learning_rates: A list of `Tensor` objects with type `float32`.
		    A TensorList of float32 scalars, one for each dynamic learning
		    rate tag: see the comments in
		    //third_party/tensorflow/core/protobuf/tpu/optimization_parameters.proto.
		    Multiple tables can share the same dynamic learning rate tag as specified
		    in the configuration. If the learning rates for all tables are constant,
		    this list should be empty.
		  config: A `string`. Serialized TPUEmbeddingConfiguration proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function SendTPUEmbeddingGradients(inputs:Dynamic, learning_rates:Dynamic, config:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shuts down a running distributed TPU system.
		
		The op returns an error if no system is running.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ShutdownDistributedTPU(?name:Dynamic):Dynamic;
	/**
		Returns the result of a TPU compilation.
		
		This operation returns the result of a TPU compilation as a serialized
		CompilationResultProto, which holds a status and an error message if an error
		occurred during compilation.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function TPUCompilationResult(?name:Dynamic):Dynamic;
	/**
		An op enabling differentiation of TPU Embeddings.
		
		This op simply returns its first input, which is assumed to have been sliced
		from the Tensors returned by TPUEmbeddingDequeueActivations. The presence of
		this op, and its first argument being a trainable Variable, enables automatic
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
	static public function TPUEmbeddingActivations(embedding_variable:Dynamic, sliced_activations:Dynamic, table_id:Dynamic, lookup_id:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A TPU core selector Op.
		
		This Op produces a set of TPU cores (for warm-up) or a single TPU core
		(for regular inference) to execute the TPU program on. The output is
		consumed by TPUPartitionedCall.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function TPUOrdinalSelector(?name:Dynamic):Dynamic;
	/**
		Calls a function placed on a specified TPU device.
		
		Args:
		  args: A list of `Tensor` objects. The arguments to the function.
		  device_ordinal: A `Tensor` of type `int32`.
		    The TPU device ordinal to run the function on.
		  Tout: A list of `tf.DTypes`. The types of the outputs of the function.
		  f: A function decorated with @Defun. The function to call.
		  autotuner_thresh: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function TPUPartitionedCall(args:Dynamic, device_ordinal:Dynamic, Tout:Dynamic, f:Dynamic, ?autotuner_thresh:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Metadata indicating how the TPU computation should be replicated.
		
		This operation holds the metadata common to operations of a `tpu.replicate()` computation subgraph.
		
		Args:
		  num_replicas: An `int` that is `>= 0`.
		    Number of replicas of the computation
		  num_cores_per_replica: An optional `int`. Defaults to `1`.
		    Number of cores per replica. Used for model parallelism.
		  topology: An optional `string`. Defaults to `""`.
		    TopologyProto indicating the topology of the TPU pod slice.
		  use_tpu: An optional `bool`. Defaults to `True`.
		    Whether to place the computation on the TPU.
		  device_assignment: An optional list of `ints`. Defaults to `[]`.
		    The assignment of devices for the computation.
		  computation_shape: An optional list of `ints`. Defaults to `[]`.
		    DEPRECATED. Use num_cores_per_replica instead.
		  host_compute_core: An optional list of `strings`. Defaults to `[]`.
		  padding_map: An optional list of `strings`. Defaults to `[]`.
		  step_marker_location: An optional `string`. Defaults to `"STEP_MARK_AT_ENTRY"`.
		  allow_soft_placement: An optional `bool`. Defaults to `False`.
		  use_spmd_for_xla_partitioning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function TPUReplicateMetadata(num_replicas:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?computation_shape:Dynamic, ?host_compute_core:Dynamic, ?padding_map:Dynamic, ?step_marker_location:Dynamic, ?allow_soft_placement:Dynamic, ?use_spmd_for_xla_partitioning:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Connects N inputs to an N-way replicated TPU computation.
		
		This operation holds a replicated input to a `tpu.replicate()` computation subgraph.
		Each replicated input has the same shape and type alongside the output.
		
		For example:
		```
		%a = "tf.opA"()
		%b = "tf.opB"()
		%replicated_input = "tf.TPUReplicatedInput"(%a, %b)
		%computation = "tf.Computation"(%replicated_input)
		```
		The above computation has a replicated input of two replicas.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		  is_mirrored_variable: An optional `bool`. Defaults to `False`.
		  index: An optional `int`. Defaults to `-1`.
		  is_packed: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function TPUReplicatedInput(inputs:Dynamic, ?is_mirrored_variable:Dynamic, ?index:Dynamic, ?is_packed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Connects N outputs from an N-way replicated TPU computation.
		
		This operation holds a replicated output from a `tpu.replicate()` computation subgraph.
		Each replicated output has the same shape and type alongside the input.
		
		For example:
		```
		%computation = "tf.Computation"()
		%replicated_output:2 = "tf.TPUReplicatedOutput"(%computation)
		```
		The above computation has a replicated output of two replicas.
		
		Args:
		  input: A `Tensor`.
		  num_replicas: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_replicas` `Tensor` objects with the same type as `input`.
	**/
	static public function TPUReplicatedOutput(input:Dynamic, num_replicas:Dynamic, ?name:Dynamic):Dynamic;
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
	**/
	static public function WorkerHeartbeat(request:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concats input tensor across all dimensions.
		
		An op which merges slices the input tensor based on the given num_splits
		attribute, strips paddings optionally, and returns the merged tensor without
		paddings.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1],
		 [4, 5]]
		[[2, 3],
		 [6, 7]]
		[[8, 9],
		 [12, 13]]
		[[10, 11],
		 [14, 15]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1, 2],
		 [4, 5, 6],
		 [8, 9, 10]]
		```
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		    Input tensor slices in row-major order to merge across all dimensions. All
		    inputs must have the same shape.
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Output tensor formed from merging input slices based on num_concats defined.
		  num_concats: A list of `ints`. Number of ways to merge per dimension.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension to strip from the final merged
		    tensor. These paddings must not exceed the dimension size of the merged result
		    prior to stripping paddings.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function XlaConcatND(inputs:Dynamic, num_concats:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits input tensor across all dimensions.
		
		An op which slices the input tensor based on the given num_splits attribute,
		pads slices optionally, and returned the slices. Slices are returned in
		row-major order.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1, 2],
		 [3, 4, 5],
		 [6, 7, 8]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1],
		 [3, 4]]
		[[2, 0],
		 [5, 0]]
		[[6, 7],
		 [0, 0]]
		[[8, 0],
		 [0, 0]]
		```
		
		Args:
		  input: A `Tensor`. Input tensor to split across all dimensions.
		      }
		      out_arg {
		        name: "outputs"
		        description: <<END
		    Output slices based on input and num_splits defined, in row-major order.
		  N: An `int` that is `>= 1`.
		  num_splits: A list of `ints`.
		    Number of ways to split per dimension. Shape dimensions must be evenly
		    divisible.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension of input tensor to apply before
		    splitting. This can be used to make a dimension evenly divisible.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `N` `Tensor` objects with the same type as `input`.
	**/
	static public function XlaSplitND(input:Dynamic, N:Dynamic, num_splits:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Saves the gradient of embedding activations ops in a graph collection.
	**/
	static public function _embedding_activations_grad(activations_op:Dynamic, grad_wrt_activations:Dynamic):Dynamic;
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
		    num_replicas_per_group]. `group_assignment[i]` represents the replica ids
		    in the ith subgroup.
		  name: Optional op name.
		
		Returns:
		  A `Tensor` which is concatenated by data from different replicas.
	**/
	static public function all_to_all(x:Dynamic, concat_dimension:Dynamic, split_dimension:Dynamic, split_count:Dynamic, ?group_assignment:Dynamic, ?name:Dynamic):Dynamic;
	static public function all_to_all_eager_fallback(input:Dynamic, group_assignment:Dynamic, concat_dimension:Dynamic, split_dimension:Dynamic, split_count:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concats input tensor across all dimensions.
		
		An op which merges slices the input tensor based on the given num_splits
		attribute, strips paddings optionally, and writes the merged tensor without
		paddings to the resource variable.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1],
		 [4, 5]]
		[[2, 3],
		 [6, 7]]
		[[8, 9],
		 [12, 13]]
		[[10, 11],
		 [14, 15]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1, 2],
		 [4, 5, 6],
		 [8, 9, 10]]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    Resource variable for concatenated input tensors across all dimensions.
		      }
		      in_arg {
		        name: "inputs"
		        description: <<END
		    Input tensor slices in row-major order to merge across all dimensions. All
		    inputs must have the same shape.
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Output tensor formed from merging input slices based on num_concats defined.
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		  num_concats: A list of `ints`. Number of ways to merge per dimension.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension to strip from the final merged
		    tensor. These paddings must not exceed the dimension size of the merged result
		    prior to stripping paddings.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_variable_xla_concat_nd(resource:Dynamic, inputs:Dynamic, num_concats:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	static public function assign_variable_xla_concat_nd_eager_fallback(resource:Dynamic, inputs:Dynamic, num_concats:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function collective_permute_eager_fallback(input:Dynamic, source_target_pairs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sets up the centralized structures for a distributed TPU system.
		
		Args:
		  embedding_config: An optional `string`. Defaults to `""`.
		    Reserved. Do not use.
		  tpu_embedding_config: An optional `string`. Defaults to `""`.
		    Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
		    describes the embedding lookups of the program.
		  is_global_init: An optional `bool`. Defaults to `False`.
		    Reserved. Do not use.
		  enable_whole_mesh_compilations: An optional `bool`. Defaults to `False`.
		  compilation_failure_closes_chips: An optional `bool`. Defaults to `True`.
		  tpu_cancellation_closes_chips: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function configure_distributed_tpu(?embedding_config:Dynamic, ?tpu_embedding_config:Dynamic, ?is_global_init:Dynamic, ?enable_whole_mesh_compilations:Dynamic, ?compilation_failure_closes_chips:Dynamic, ?tpu_cancellation_closes_chips:Dynamic, ?name:Dynamic):Dynamic;
	static public function configure_distributed_tpu_eager_fallback(embedding_config:Dynamic, tpu_embedding_config:Dynamic, is_global_init:Dynamic, enable_whole_mesh_compilations:Dynamic, compilation_failure_closes_chips:Dynamic, tpu_cancellation_closes_chips:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sets up TPUEmbedding in a distributed TPU system.
		
		Args:
		  config: A `string`.
		    Serialized tensorflow.tpu.TPUEmbeddingConfiguration that
		    describes the embedding lookups of the program.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function configure_tpu_embedding(config:Dynamic, ?name:Dynamic):Dynamic;
	static public function configure_tpu_embedding_eager_fallback(config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sum the input tensor across replicas according to group_assignment.
		
		Args:
		  x: The local tensor to the sum.
		  group_assignment: Optional 2d int32 lists with shape [num_groups,
		    num_replicas_per_group]. `group_assignment[i]` represents the replica ids
		    in the ith subgroup.
		  name: Optional op name.
		
		Returns:
		  A `Tensor` which is summed across replicas.
	**/
	static public function cross_replica_sum(x:Dynamic, ?group_assignment:Dynamic, ?name:Dynamic):Dynamic;
	static public function cross_replica_sum_eager_fallback(input:Dynamic, group_assignment:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function enqueue_tpu_embedding_integer_batch_eager_fallback(batch:Dynamic, mode_override:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Eases the porting of code that uses tf.nn.embedding_lookup().
		
		sample_splits[i], embedding_indices[i] and aggregation_weights[i] correspond
		to the ith feature. table_ids[i] indicates which embedding table to look up ith
		feature.
		
		The tensors at corresponding positions in two of the input lists,
		embedding_indices and aggregation_weights, must have the same shape, i.e. rank 1
		with dim_size() equal to the total number of lookups into the table described by
		the corresponding feature.
		
		Args:
		  sample_splits: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the break points for splitting
		    embedding_indices and aggregation_weights into rows.
		    It corresponds to ids.row_splits in embedding_lookup(), when ids is a
		    RaggedTensor.
		  embedding_indices: A list with the same length as `sample_splits` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		    It corresponds to ids.values in embedding_lookup(), when ids is a RaggedTensor.
		  aggregation_weights: A list with the same length as `sample_splits` of `Tensor` objects with the same type in: `float32`, `float64`.
		    A list of rank 1 Tensors containing per training example
		    aggregation weights. It corresponds to the values field of a RaggedTensor
		    with the same row_splits as ids in embedding_lookup(), when ids is a
		    RaggedTensor.
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
		  max_sequence_lengths: An optional list of `ints`. Defaults to `[]`.
		  num_features: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function enqueue_tpu_embedding_ragged_tensor_batch(sample_splits:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, table_ids:Dynamic, device_ordinal:Dynamic, ?max_sequence_lengths:Dynamic, ?num_features:Dynamic, ?combiners:Dynamic, ?mode_override:Dynamic, ?name:Dynamic):Dynamic;
	static public function enqueue_tpu_embedding_ragged_tensor_batch_eager_fallback(sample_splits:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, table_ids:Dynamic, device_ordinal:Dynamic, combiners:Dynamic, max_sequence_lengths:Dynamic, num_features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  sample_indices: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the training example and
		    feature to which the corresponding embedding_indices and aggregation_weights
		    values belong. sample_indices[i] must equal b * nf + f, where nf is the
		    number of features from the corresponding table, f is in [0, nf), and
		    b is in [0, batch size).
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `float32`, `float64`.
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
	static public function enqueue_tpu_embedding_sparse_batch_eager_fallback(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, device_ordinal:Dynamic, combiners:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Eases the porting of code that uses tf.nn.embedding_lookup_sparse().
		
		sample_indices[i], embedding_indices[i] and aggregation_weights[i] correspond
		to the ith feature. table_ids[i] indicates which embedding table to look up ith
		feature.
		
		The tensors at corresponding positions in the three input lists (sample_indices,
		embedding_indices and aggregation_weights) must have the same shape, i.e. rank 1
		with dim_size() equal to the total number of lookups into the table described by
		the corresponding feature.
		
		Args:
		  sample_indices: A list of at least 1 `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors specifying the training example to
		    which the corresponding embedding_indices and aggregation_weights values
		    belong. It corresponds to sp_ids.indices[:,0] in  embedding_lookup_sparse().
		  embedding_indices: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `int32`, `int64`.
		    A list of rank 1 Tensors, indices into the embedding tables.
		    It corresponds to sp_ids.values in embedding_lookup_sparse().
		  aggregation_weights: A list with the same length as `sample_indices` of `Tensor` objects with the same type in: `float32`, `float64`.
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
		  max_sequence_lengths: An optional list of `ints`. Defaults to `[]`.
		  num_features: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function enqueue_tpu_embedding_sparse_tensor_batch(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, table_ids:Dynamic, device_ordinal:Dynamic, ?max_sequence_lengths:Dynamic, ?num_features:Dynamic, ?combiners:Dynamic, ?mode_override:Dynamic, ?name:Dynamic):Dynamic;
	static public function enqueue_tpu_embedding_sparse_tensor_batch_eager_fallback(sample_indices:Dynamic, embedding_indices:Dynamic, aggregation_weights:Dynamic, mode_override:Dynamic, table_ids:Dynamic, device_ordinal:Dynamic, combiners:Dynamic, max_sequence_lengths:Dynamic, num_features:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function infeed_dequeue_eager_fallback(dtype:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A placeholder op for values fed into the TPU simultaneously as a tuple.
		
		Args:
		  dtypes: A list of `tf.DType`s that has length `>= 1`. The element types of
		    each element in `outputs`.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`). The
		    shapes of each tensor in `outputs`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
		  A list of tensors that will be provided using the infeed mechanism.
		
		Raises:
		  TypeError: If a type in 'dtypes` is not a supported infeed type.
	**/
	static public function infeed_dequeue_tuple(dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function infeed_dequeue_tuple_eager_fallback(dtypes:Dynamic, shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which feeds a single Tensor value into the computation.
		
		Args:
		  input: A `Tensor`.
		    A tensor that will be provided using the infeed mechanism.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of the tensor.
		  layout: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence.
		    If a layout attribute is passed, but its values are all -1, the layout will
		    be computed by the infeed operation.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function infeed_enqueue(input:Dynamic, ?shape:Dynamic, ?layout:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	static public function infeed_enqueue_eager_fallback(input:Dynamic, shape:Dynamic, layout:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which enqueues prelinearized buffer into TPU infeed.
		
		Args:
		  input: A `Tensor` of type `variant`.
		    A variant tensor representing linearized output.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op is running on a TPU device
		    and = 0 when the Op is running on the CPU device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function infeed_enqueue_prelinearized_buffer(input:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	static public function infeed_enqueue_prelinearized_buffer_eager_fallback(input:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Feeds multiple Tensor values into the computation as an XLA tuple.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be provided using the infeed mechanism.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `inputs`.
		  layouts: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence for
		    all the tuple shapes, in the order the shapes appear in the "shapes" input.
		    The layout elements for a sub-shape can be set to -1, in which case the
		    corresponding layout will be computed by the infeed operation.
		  device_ordinal: An optional `int`. Defaults to `-1`.
		    The TPU device to use. This should be -1 when the Op
		    is running on a TPU device, and >= 0 when the Op is running on the CPU
		    device.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function infeed_enqueue_tuple(inputs:Dynamic, shapes:Dynamic, ?layouts:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	static public function infeed_enqueue_tuple_eager_fallback(inputs:Dynamic, shapes:Dynamic, layouts:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Whether TPU Embedding is initialized in a distributed TPU system.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_tpu_embedding_initialized(?name:Dynamic):Dynamic;
	static public function is_tpu_embedding_initialized_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load Adadelta embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adadelta optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adadelta optimization algorithm.
		  updates: A `Tensor` of type `float32`.
		    Value of updates used in the Adadelta optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adadelta_parameters(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_adadelta_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, updates:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load Adagrad Momentum embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad Momentum optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Adagrad Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adagrad_momentum_parameters(parameters:Dynamic, accumulators:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_adagrad_momentum_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load Adagrad embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adagrad_parameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_adagrad_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load ADAM embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the ADAM optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the ADAM optimization algorithm.
		  velocities: A `Tensor` of type `float32`.
		    Value of velocities used in the ADAM optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_adam_parameters(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_adam_parameters_eager_fallback(parameters:Dynamic, momenta:Dynamic, velocities:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load centered RMSProp embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
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
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_centered_rms_prop_parameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, mg:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_centered_rms_prop_parameters_eager_fallback(parameters:Dynamic, ms:Dynamic, mom:Dynamic, mg:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load frequency estimator embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the frequency estimator optimization algorithm.
		  last_hit_step: A `Tensor` of type `float32`.
		    Value of last_hit_step used in the frequency estimator optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_frequency_estimator_parameters(parameters:Dynamic, last_hit_step:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_frequency_estimator_parameters_eager_fallback(parameters:Dynamic, last_hit_step:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load FTRL embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the FTRL optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the FTRL optimization algorithm.
		  linears: A `Tensor` of type `float32`.
		    Value of linears used in the FTRL optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_ftrl_parameters(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_ftrl_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, linears:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load MDL Adagrad Light embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
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
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_mdl_adagrad_light_parameters(parameters:Dynamic, accumulators:Dynamic, weights:Dynamic, benefits:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_mdl_adagrad_light_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, weights:Dynamic, benefits:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load Momentum embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the Momentum optimization algorithm.
		  momenta: A `Tensor` of type `float32`.
		    Value of momenta used in the Momentum optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_momentum_parameters(parameters:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_momentum_parameters_eager_fallback(parameters:Dynamic, momenta:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load proximal Adagrad embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the proximal Adagrad optimization algorithm.
		  accumulators: A `Tensor` of type `float32`.
		    Value of accumulators used in the proximal Adagrad optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_proximal_adagrad_parameters(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_proximal_adagrad_parameters_eager_fallback(parameters:Dynamic, accumulators:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		  v: A `Tensor` of type `float32`.
		  m: A `Tensor` of type `float32`.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_proximal_yogi_parameters(parameters:Dynamic, v:Dynamic, m:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_proximal_yogi_parameters_eager_fallback(parameters:Dynamic, v:Dynamic, m:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load RMSProp embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the RMSProp optimization algorithm.
		  ms: A `Tensor` of type `float32`.
		    Value of ms used in the RMSProp optimization algorithm.
		  mom: A `Tensor` of type `float32`.
		    Value of mom used in the RMSProp optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_rms_prop_parameters(parameters:Dynamic, ms:Dynamic, mom:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_rms_prop_parameters_eager_fallback(parameters:Dynamic, ms:Dynamic, mom:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Load SGD embedding parameters.
		
		An op that loads optimization parameters into HBM for embedding. Must be
		preceded by a ConfigureTPUEmbeddingHost op that sets up the correct
		embedding table configuration. For example, this op is used to install
		parameters that are loaded from a checkpoint before a training loop is
		executed.
		
		Args:
		  parameters: A `Tensor` of type `float32`.
		    Value of parameters used in the stochastic gradient descent optimization algorithm.
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function load_tpu_embedding_stochastic_gradient_descent_parameters(parameters:Dynamic, num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_tpu_embedding_stochastic_gradient_descent_parameters_eager_fallback(parameters:Dynamic, num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieves a single tensor from the computation outfeed.
		
		This operation will block indefinitely until data is available.
		
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
	**/
	static public function outfeed_dequeue(dtype:Dynamic, shape:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_dequeue_eager_fallback(dtype:Dynamic, shape:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve multiple values from the computation outfeed.
		
		This operation will block indefinitely until data is available. Output `i`
		corresponds to XLA tuple element `i`.
		
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
	**/
	static public function outfeed_dequeue_tuple(dtypes:Dynamic, shapes:Dynamic, ?device_ordinal:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_dequeue_tuple_eager_fallback(dtypes:Dynamic, shapes:Dynamic, device_ordinal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve multiple values from the computation outfeed. Device ordinal is a
		tensor allowing dynamic outfeed.
		
		  This operation will block indefinitely until data is available. Output `i`
		  corresponds to XLA tuple element `i`.
		
		  Args:
		    device_ordinal: A `Tensor` of type `int32`.
		      An int scalar tensor, representing the TPU device to use. This should be -1 when
		      the Op is running on a TPU device, and >= 0 when the Op is running on the CPU
		      device.
		    dtypes: A list of `tf.DTypes` that has length `>= 1`.
		      The element types of each element in `outputs`.
		    shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		      The shapes of each tensor in `outputs`.
		    name: A name for the operation (optional).
		
		  Returns:
		    A list of `Tensor` objects of type `dtypes`.
		  
	**/
	static public function outfeed_dequeue_tuple_v2(device_ordinal:Dynamic, dtypes:Dynamic, shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_dequeue_tuple_v2_eager_fallback(device_ordinal:Dynamic, dtypes:Dynamic, shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieves a single tensor from the computation outfeed. Device ordinal is a
		tensor allowing dynamic outfeed.
		
		  This operation will block indefinitely until data is available.
		
		  Args:
		    device_ordinal: A `Tensor` of type `int32`.
		      An int scalar tensor, representing the TPU device to use. This should be -1 when
		      the Op is running on a TPU device, and >= 0 when the Op is running on the CPU
		      device.
		    dtype: A `tf.DType`. The type of elements in the tensor.
		    shape: A `tf.TensorShape` or list of `ints`. The shape of the tensor.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function outfeed_dequeue_v2(device_ordinal:Dynamic, dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_dequeue_v2_eager_fallback(device_ordinal:Dynamic, dtype:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Enqueue a Tensor on the computation outfeed.
		
		Args:
		  input: A `Tensor`. A tensor that will be inserted into the outfeed queue.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function outfeed_enqueue(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_enqueue_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Enqueue multiple Tensor values on the computation outfeed.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be inserted into the outfeed queue as an
		    XLA tuple.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function outfeed_enqueue_tuple(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function outfeed_enqueue_tuple_eager_fallback(inputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which linearizes one Tensor value to an opaque variant tensor.
		
		Args:
		  input: A `Tensor`. A tensor that will be linearized.
		  shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[]`.
		    The shape of the tensor.
		  layout: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence. If a layout
		    attribute is passed but its values are all -1 the layout will be computed by
		    the infeed operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function prelinearize(input:Dynamic, ?shape:Dynamic, ?layout:Dynamic, ?name:Dynamic):Dynamic;
	static public function prelinearize_eager_fallback(input:Dynamic, shape:Dynamic, layout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op which linearizes multiple Tensor values to an opaque variant tensor.
		
		Args:
		  inputs: A list of `Tensor` objects.
		    A list of tensors that will be provided using the infeed mechanism.
		  shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of each tensor in `inputs`.
		  layouts: An optional list of `ints`. Defaults to `[]`.
		    A vector holding the requested layout in minor-to-major sequence for all the
		    tuple shapes in the order the shapes appear in the "shapes" input. The layout
		    elements for a sub-shape can be set to -1 in which case the corresponding layout
		    will be computed by the infeed operation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function prelinearize_tuple(inputs:Dynamic, shapes:Dynamic, ?layouts:Dynamic, ?name:Dynamic):Dynamic;
	static public function prelinearize_tuple_eager_fallback(inputs:Dynamic, shapes:Dynamic, layouts:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Splits resource variable input tensor across all dimensions.
		
		An op which splits the resource variable input tensor based on the given
		num_splits attribute, pads slices optionally, and returned the slices. Slices
		are returned in row-major order.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1, 2],
		 [3, 4, 5],
		 [6, 7, 8]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1],
		 [3, 4]]
		[[2, 0],
		 [5, 0]]
		[[6, 7],
		 [0, 0]]
		[[8, 0],
		 [0, 0]]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    Resource variable of input tensor to split across all dimensions.
		      }
		      out_arg {
		        name: "outputs"
		        description: <<END
		    Output slices based on input and num_splits defined, in row-major order.
		  T: A `tf.DType`.
		  N: An `int` that is `>= 1`.
		  num_splits: A list of `ints`.
		    Number of ways to split per dimension. Shape dimensions must be evenly
		    divisible.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension of input tensor to apply before
		    splitting. This can be used to make a dimension evenly divisible.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `N` `Tensor` objects with type `T`.
	**/
	static public function read_variable_xla_split_nd(resource:Dynamic, T:Dynamic, N:Dynamic, num_splits:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	static public function read_variable_xla_split_nd_eager_fallback(resource:Dynamic, T:Dynamic, N:Dynamic, num_splits:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	**/
	static public function recv_tpu_embedding_activations(num_outputs:Dynamic, config:Dynamic, ?name:Dynamic):Dynamic;
	static public function recv_tpu_embedding_activations_eager_fallback(num_outputs:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve Adadelta embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, updates).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  updates: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_adadelta_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_adadelta_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve Adagrad Momentum embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, momenta).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_adagrad_momentum_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_adagrad_momentum_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve Adagrad embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_adagrad_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_adagrad_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve ADAM embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta, velocities).
		
		  parameters: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
		  velocities: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_adam_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_adam_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve centered RMSProp embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom, mg).
		
		  parameters: A `Tensor` of type `float32`.
		  ms: A `Tensor` of type `float32`.
		  mom: A `Tensor` of type `float32`.
		  mg: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_centered_rms_prop_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_centered_rms_prop_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve frequency estimator embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, last_hit_step).
		
		  parameters: A `Tensor` of type `float32`.
		  last_hit_step: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_frequency_estimator_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_frequency_estimator_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve FTRL embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, linears).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  linears: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_ftrl_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_ftrl_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve MDL Adagrad Light embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators, weights, benefits).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
		  weights: A `Tensor` of type `float32`.
		  benefits: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_mdl_adagrad_light_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_mdl_adagrad_light_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve Momentum embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, momenta).
		
		  parameters: A `Tensor` of type `float32`.
		  momenta: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_momentum_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_momentum_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve proximal Adagrad embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, accumulators).
		
		  parameters: A `Tensor` of type `float32`.
		  accumulators: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_proximal_adagrad_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, v, m).
		
		  parameters: A `Tensor` of type `float32`.
		  v: A `Tensor` of type `float32`.
		  m: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_proximal_yogi_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_proximal_yogi_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve RMSProp embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (parameters, ms, mom).
		
		  parameters: A `Tensor` of type `float32`.
		  ms: A `Tensor` of type `float32`.
		  mom: A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_rms_prop_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_rms_prop_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Retrieve SGD embedding parameters.
		
		An op that retrieves optimization parameters from embedding to host
		memory. Must be preceded by a ConfigureTPUEmbeddingHost op that sets up
		the correct embedding table configuration. For example, this op is
		used to retrieve updated parameters before saving a checkpoint.
		
		Args:
		  num_shards: An `int`.
		  shard_id: An `int`.
		  table_id: An optional `int`. Defaults to `-1`.
		  table_name: An optional `string`. Defaults to `""`.
		  config: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function retrieve_tpu_embedding_stochastic_gradient_descent_parameters(num_shards:Dynamic, shard_id:Dynamic, ?table_id:Dynamic, ?table_name:Dynamic, ?config:Dynamic, ?name:Dynamic):Dynamic;
	static public function retrieve_tpu_embedding_stochastic_gradient_descent_parameters_eager_fallback(num_shards:Dynamic, shard_id:Dynamic, table_id:Dynamic, table_name:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Performs gradient updates of embedding tables.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `float32`.
		    A TensorList of gradients with which to update embedding tables.
		    This argument has the same length and shapes as the return value of
		    RecvTPUEmbeddingActivations, but contains gradients of the model's loss
		    with respect to the embedding activations. The embedding tables are updated
		    from these gradients via the optimizer specified in the TPU embedding
		    configuration given to tpu.initialize_system.
		  learning_rates: A list of `Tensor` objects with type `float32`.
		    A TensorList of float32 scalars, one for each dynamic learning
		    rate tag: see the comments in
		    //third_party/tensorflow/core/protobuf/tpu/optimization_parameters.proto.
		    Multiple tables can share the same dynamic learning rate tag as specified
		    in the configuration. If the learning rates for all tables are constant,
		    this list should be empty.
		  config: A `string`. Serialized TPUEmbeddingConfiguration proto.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function send_tpu_embedding_gradients(inputs:Dynamic, config:Dynamic, ?learning_rates:Dynamic, ?name:Dynamic):Dynamic;
	static public function send_tpu_embedding_gradients_eager_fallback(inputs:Dynamic, learning_rates:Dynamic, config:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Shuts down a running distributed TPU system.
		
		The op returns an error if no system is running.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function shutdown_distributed_tpu(?name:Dynamic):Dynamic;
	static public function shutdown_distributed_tpu_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the result of a TPU compilation.
		
		This operation returns the result of a TPU compilation as a serialized
		CompilationResultProto, which holds a status and an error message if an error
		occurred during compilation.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function tpu_compilation_result(?name:Dynamic):Dynamic;
	static public function tpu_compilation_result_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An op enabling differentiation of TPU Embeddings.
		
		This op simply returns its first input, which is assumed to have been sliced
		from the Tensors returned by TPUEmbeddingDequeueActivations. The presence of
		this op, and its first argument being a trainable Variable, enables automatic
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
	static public function tpu_embedding_activations_eager_fallback(embedding_variable:Dynamic, sliced_activations:Dynamic, table_id:Dynamic, lookup_id:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A TPU core selector Op.
		
		This Op produces a set of TPU cores (for warm-up) or a single TPU core
		(for regular inference) to execute the TPU program on. The output is
		consumed by TPUPartitionedCall.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tpu_ordinal_selector(?name:Dynamic):Dynamic;
	static public function tpu_ordinal_selector_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Calls a function placed on a specified TPU device.
		
		Args:
		  args: A list of `Tensor` objects. The arguments to the function.
		  device_ordinal: A `Tensor` of type `int32`.
		    The TPU device ordinal to run the function on.
		  Tout: A list of `tf.DTypes`. The types of the outputs of the function.
		  f: A function decorated with @Defun. The function to call.
		  autotuner_thresh: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function tpu_partitioned_call(args:Dynamic, device_ordinal:Dynamic, Tout:Dynamic, f:Dynamic, ?autotuner_thresh:Dynamic, ?name:Dynamic):Dynamic;
	static public function tpu_partitioned_call_eager_fallback(args:Dynamic, device_ordinal:Dynamic, Tout:Dynamic, f:Dynamic, autotuner_thresh:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Metadata indicating how the TPU computation should be replicated.
		
		This operation holds the metadata common to operations of a `tpu.replicate()` computation subgraph.
		
		Args:
		  num_replicas: An `int` that is `>= 0`.
		    Number of replicas of the computation
		  num_cores_per_replica: An optional `int`. Defaults to `1`.
		    Number of cores per replica. Used for model parallelism.
		  topology: An optional `string`. Defaults to `""`.
		    TopologyProto indicating the topology of the TPU pod slice.
		  use_tpu: An optional `bool`. Defaults to `True`.
		    Whether to place the computation on the TPU.
		  device_assignment: An optional list of `ints`. Defaults to `[]`.
		    The assignment of devices for the computation.
		  computation_shape: An optional list of `ints`. Defaults to `[]`.
		    DEPRECATED. Use num_cores_per_replica instead.
		  host_compute_core: An optional list of `strings`. Defaults to `[]`.
		  padding_map: An optional list of `strings`. Defaults to `[]`.
		  step_marker_location: An optional `string`. Defaults to `"STEP_MARK_AT_ENTRY"`.
		  allow_soft_placement: An optional `bool`. Defaults to `False`.
		  use_spmd_for_xla_partitioning: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function tpu_replicate_metadata(num_replicas:Dynamic, ?num_cores_per_replica:Dynamic, ?topology:Dynamic, ?use_tpu:Dynamic, ?device_assignment:Dynamic, ?computation_shape:Dynamic, ?host_compute_core:Dynamic, ?padding_map:Dynamic, ?step_marker_location:Dynamic, ?allow_soft_placement:Dynamic, ?use_spmd_for_xla_partitioning:Dynamic, ?name:Dynamic):Dynamic;
	static public function tpu_replicate_metadata_eager_fallback(num_replicas:Dynamic, num_cores_per_replica:Dynamic, topology:Dynamic, use_tpu:Dynamic, device_assignment:Dynamic, computation_shape:Dynamic, host_compute_core:Dynamic, padding_map:Dynamic, step_marker_location:Dynamic, allow_soft_placement:Dynamic, use_spmd_for_xla_partitioning:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Connects N inputs to an N-way replicated TPU computation.
		
		This operation holds a replicated input to a `tpu.replicate()` computation subgraph.
		Each replicated input has the same shape and type alongside the output.
		
		For example:
		```
		%a = "tf.opA"()
		%b = "tf.opB"()
		%replicated_input = "tf.TPUReplicatedInput"(%a, %b)
		%computation = "tf.Computation"(%replicated_input)
		```
		The above computation has a replicated input of two replicas.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		  is_mirrored_variable: An optional `bool`. Defaults to `False`.
		  index: An optional `int`. Defaults to `-1`.
		  is_packed: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function tpu_replicated_input(inputs:Dynamic, ?is_mirrored_variable:Dynamic, ?index:Dynamic, ?is_packed:Dynamic, ?name:Dynamic):Dynamic;
	static public function tpu_replicated_input_eager_fallback(inputs:Dynamic, is_mirrored_variable:Dynamic, index:Dynamic, is_packed:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Connects N outputs from an N-way replicated TPU computation.
		
		This operation holds a replicated output from a `tpu.replicate()` computation subgraph.
		Each replicated output has the same shape and type alongside the input.
		
		For example:
		```
		%computation = "tf.Computation"()
		%replicated_output:2 = "tf.TPUReplicatedOutput"(%computation)
		```
		The above computation has a replicated output of two replicas.
		
		Args:
		  input: A `Tensor`.
		  num_replicas: An `int` that is `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_replicas` `Tensor` objects with the same type as `input`.
	**/
	static public function tpu_replicated_output(input:Dynamic, num_replicas:Dynamic, ?name:Dynamic):Dynamic;
	static public function tpu_replicated_output_eager_fallback(input:Dynamic, num_replicas:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	**/
	static public function worker_heartbeat(request:Dynamic, ?name:Dynamic):Dynamic;
	static public function worker_heartbeat_eager_fallback(request:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concats input tensor across all dimensions.
		
		An op which merges slices the input tensor based on the given num_splits
		attribute, strips paddings optionally, and returns the merged tensor without
		paddings.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1],
		 [4, 5]]
		[[2, 3],
		 [6, 7]]
		[[8, 9],
		 [12, 13]]
		[[10, 11],
		 [14, 15]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1, 2],
		 [4, 5, 6],
		 [8, 9, 10]]
		```
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with the same type.
		    Input tensor slices in row-major order to merge across all dimensions. All
		    inputs must have the same shape.
		      }
		      out_arg {
		        name: "output"
		        description: <<END
		    Output tensor formed from merging input slices based on num_concats defined.
		  num_concats: A list of `ints`. Number of ways to merge per dimension.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension to strip from the final merged
		    tensor. These paddings must not exceed the dimension size of the merged result
		    prior to stripping paddings.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `inputs`.
	**/
	static public function xla_concat_nd(inputs:Dynamic, num_concats:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_concat_nd_eager_fallback(inputs:Dynamic, num_concats:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Splits input tensor across all dimensions.
		
		An op which slices the input tensor based on the given num_splits attribute,
		pads slices optionally, and returned the slices. Slices are returned in
		row-major order.
		
		This op may be generated via the TPU bridge.
		
		For example, with `input` tensor:
		```
		[[0, 1, 2],
		 [3, 4, 5],
		 [6, 7, 8]]
		```
		`num_splits`:
		```
		[2, 2]
		```
		and `paddings`:
		```
		[1, 1]
		```
		the expected `outputs` is:
		```
		[[0, 1],
		 [3, 4]]
		[[2, 0],
		 [5, 0]]
		[[6, 7],
		 [0, 0]]
		[[8, 0],
		 [0, 0]]
		```
		
		Args:
		  input: A `Tensor`. Input tensor to split across all dimensions.
		      }
		      out_arg {
		        name: "outputs"
		        description: <<END
		    Output slices based on input and num_splits defined, in row-major order.
		  N: An `int` that is `>= 1`.
		  num_splits: A list of `ints`.
		    Number of ways to split per dimension. Shape dimensions must be evenly
		    divisible.
		  paddings: An optional list of `ints`. Defaults to `[]`.
		    Optional list of right paddings per dimension of input tensor to apply before
		    splitting. This can be used to make a dimension evenly divisible.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `N` `Tensor` objects with the same type as `input`.
	**/
	static public function xla_split_nd(input:Dynamic, N:Dynamic, num_splits:Dynamic, ?paddings:Dynamic, ?name:Dynamic):Dynamic;
	static public function xla_split_nd_eager_fallback(input:Dynamic, N:Dynamic, num_splits:Dynamic, paddings:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}