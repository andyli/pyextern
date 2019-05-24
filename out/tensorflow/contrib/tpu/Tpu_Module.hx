/* This file is generated, do not edit! */
package tensorflow.contrib.tpu;
@:pythonImport("tensorflow.contrib.tpu") extern class Tpu_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Shards `computation` along the batch dimension for parallel execution.
		
		Convenience wrapper around shard().
		
		`inputs` must be a list of Tensors or None (equivalent to an empty list).
		Each input is split into `num_shards` pieces along the 0-th dimension, and
		computation is applied to each shard in parallel.
		
		Tensors are broadcast to all shards if they are lexically captured by
		`computation`. e.g.,
		
		x = tf.constant(7)
		def computation():
		  return x + 3
		... = shard(computation, ...)
		
		The outputs from all shards are concatenated back together along their 0-th
		dimension.
		
		Inputs and outputs of the computation must be at least rank-1 Tensors.
		
		Args:
		  computation: A Python function that builds a computation to apply to each
		    shard of the input.
		  inputs: A list of input tensors or None (equivalent to an empty list). The
		    0-th dimension of each Tensor must have size divisible by `num_shards`.
		  num_shards: The number of shards.
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to `computation`.
		  device_assignment: If not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. Uses a default device assignment if `None`. The
		    `DeviceAssignment` may be omitted if each shard of the computation uses
		    only one core, and there is either only one shard, or the number of shards
		    is equal to the number of cores in the TPU system.
		  name: (Deprecated) Does nothing.
		Returns:
		  A list of output tensors.
		Raises:
		  ValueError: If `num_shards <= 0`
	**/
	static public function batch_parallel(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scope class for bfloat16 variables so that the model uses custom getter.
		
		This enables variables to be read as bfloat16 type when using get_variable.
	**/
	static public function bfloat16_scope():Dynamic;
	/**
		Returns the device name for a core in a replicated TPU computation.
		
		Args:
		  num: the virtual core number within each replica to which operators should
		  be assigned.
		Returns:
		  A device name, suitable for passing to `tf.device()`.
	**/
	static public function core(num:Dynamic):Dynamic;
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
		Computes a device_assignment of a computation across a TPU topology.
		
		Attempts to choose a compact grid of cores for locality.
		
		Returns a `DeviceAssignment` that describes the cores in the topology assigned
		to each core of each replica.
		
		`computation_shape` and `computation_stride` values should be powers of 2 for
		optimal packing.
		
		Args:
		  topology: A `Topology` object that describes the TPU cluster topology.
		    To obtain a TPU topology, evaluate the `Tensor` returned by
		    `initialize_system` using `Session.run`. Either a serialized
		    `TopologyProto` or a `Topology` object may be passed. Note: you must
		    evaluate the `Tensor` first; you cannot pass an unevaluated `Tensor` here.
		  computation_shape: A rank 1 int32 numpy array with size equal to the
		    topology rank, describing the shape of the computation's block of cores.
		    If None, the `computation_shape` is `[1] * topology_rank`.
		  computation_stride: A rank 1 int32 numpy array of size `topology_rank`,
		    describing the inter-core spacing of the `computation_shape` cores in the
		    TPU topology. If None, the `computation_stride` is `[1] * topology_rank`.
		  num_replicas: The number of computation replicas to run. The replicas will
		    be packed into the free spaces of the topology.
		
		Returns:
		  A DeviceAssignment object, which describes the mapping between the logical
		  cores in each computation replica and the physical cores in the TPU
		  topology.
		
		Raises:
		  ValueError: If `topology` is not a valid `Topology` object.
		  ValueError: If `computation_shape` or `computation_stride` are not 1D int32
		    numpy arrays with shape [3] where all values are positive.
		  ValueError: If computation's replicas cannot fit into the TPU topology.
	**/
	static public function device_assignment(topology:Dynamic, ?computation_shape:Dynamic, ?computation_stride:Dynamic, ?num_replicas:Dynamic):Dynamic;
	/**
		Export `Estimator` trained model for TPU inference.
		
		Args:
		  estimator: `Estimator` with which model has been trained.
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported SavedModels.
		  serving_input_receiver_fn: A function that takes no argument and returns a
		    `ServingInputReceiver` or `TensorServingInputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel, or `None` if no extra assets are needed.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs.
		
		Returns:
		  The string path to the exported directory.
	**/
	static public function export_estimator_savedmodel(estimator:Dynamic, export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
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
		Initializes a distributed TPU system for use with TensorFlow.
		
		Args:
		  embedding_config: If not None, a `TPUEmbeddingConfiguration` proto
		    describing the desired configuration of the hardware embedding lookup
		    tables. If embedding_config is None, no hardware embeddings can be used.
		  job: The job (the XXX in TensorFlow device specification /job:XXX) that
		    contains the TPU devices that will be initialized. If job=None it is
		    assumed there is only one job in the TensorFlow flock, and an error will
		    be returned if this assumption does not hold.
		Returns:
		  A serialized `TopologyProto` that describes the TPU system. Note:
		    the topology must be evaluated using `Session.run` before it can be used.
	**/
	static public function initialize_system(?embedding_config:Dynamic, ?job:Dynamic):Dynamic;
	/**
		Copy `model` along with weights to the TPU. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		Returns a TPU model.
		
		Usage:
		```
		a = Input(shape=(32,))
		b = Dense(32)(a)
		model = Model(inputs=a, outputs=b)
		
		# If `num_cores_per_host` is greater than one, batch parallelism will be used
		# to run on multiple TPU cores.
		strategy = keras_support.TPUDistributionStrategy(tpu_cluster_resolver)
		model = keras_support.tpu_model(model, strategy)
		model.compile(
		    optimizer=tf.train.GradientDescentOptimizer(learning_rate=1.0),
		    ...)
		```
		
		Args:
		  model: A `tf.keras.Model` instance.
		  strategy: `TPUDistributionStrategy`.  The strategy to use for replicating
		    model across multiple TPU cores.
		
		Returns:
		  A new `KerasTPUModel` instance.
	**/
	static public function keras_to_tpu_model(model:Dynamic, ?strategy:Dynamic):Dynamic;
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
		An op which emits a single Tensor value from an XLA computation.
		
		Args:
		  input: A `Tensor`. A tensor that will be inserted into the outfeed queue.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function outfeed_enqueue(input:Dynamic, ?name:Dynamic):Dynamic;
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
		Builds part of a computation outside any current TPU replicate scope.
		
		Args:
		  computation: A Python function that builds the computation to
		    place on the host.
		  *args: the positional arguments for the computation.
		  **kwargs: the keyword arguments for the computation.
		
		Returns:
		  The Tensors returned by computation.
	**/
	static public function outside_compilation(computation:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Builds a training loop that executes a fixed number of iterations.
		
		The set of loop-carried tensors correspond to `inputs`.
		`body` must be a function that takes and returns the values of the
		loop-carried tensors.
		
		Args:
		  n: the number of loop iterations
		  body: a Python function that builds the loop body.
		  inputs: a list of initial values passed into the training loop or
		    None (equivalent to an empty list).
		  infeed_queue: if not None, the infeed queue from which to append a tuple
		    of arguments as inputs to condition.
		  name: (Deprecated) Does nothing.
		Returns:
		  The final values of the loop-carried tensors.
		Raises:
		  ValueError: if there is a type error.
	**/
	static public function repeat(n:Dynamic, body:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Builds a graph operator that runs a replicated TPU computation.
		
		Args:
		  computation: A Python function that builds the computation to replicate.
		  inputs: A list of lists of input tensors or `None` (equivalent to
		    `[[]]`), indexed by `[replica_num][input_num]`. All replicas must
		    have the same number of inputs.
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to computation.
		  device_assignment: If not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. Uses a default device assignment if `None`. The
		    `DeviceAssignment` may be omitted if each replica of the computation uses
		    only one core, and there is either only one replica, or the number of
		    replicas is equal to the number of cores in the TPU system.
		  name: (Deprecated) Does nothing.
		Returns:
		  A list of lists of output tensors, indexed by `[replica_num][output_num]`.
		Raises:
		  ValueError: If all replicas do not have equal numbers of input tensors.
		  ValueError: If the number of inputs per replica does not match
		    the number of formal parameters to `computation`.
	**/
	static public function replicate(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rewrites `computation` for execution on a TPU system.
		
		Args:
		  computation: A Python function that builds a computation to apply to the
		    input. If the function takes n inputs, 'inputs' should be a list of n
		    tensors.
		
		    `computation` may return a list of operations and tensors. Tensors must
		    come before operations in the returned list.  The return value of
		    `rewrite` is a list of tensors corresponding to the tensors from the
		    output of `computation`.
		
		    All `Operation`s constructed during `computation` will be executed when
		    evaluating any of the returned output tensors, not just the ones returned.
		  inputs: A list of input tensors or `None` (equivalent to an empty list).
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to `computation`.
		  device_assignment: if not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. May be omitted for a single-core computation, in which
		    case the core attached to task 0, TPU device 0 is used.
		  name: (Deprecated) Does nothing.
		Returns:
		  A list of output tensors.
	**/
	static public function rewrite(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shards `computation` for parallel execution.
		
		`inputs` must be a list of Tensors or None (equivalent to an empty list), each
		of which has a corresponding split axis (from `input_shard_axes`). Each input
		is split into `num_shards` pieces along the corresponding axis, and
		computation is applied to each shard in parallel.
		
		Tensors are broadcast to all shards if they are lexically captured by
		`computation`. e.g.,
		
		x = tf.constant(7)
		def computation():
		  return x + 3
		... = shard(computation, ...)
		
		TODO(phawkins): consider adding support for broadcasting Tensors passed
		as inputs.
		
		If `outputs_from_all_shards` is true, the outputs from all shards of
		`computation` are concatenated back together along their `output_shards_axes`.
		Otherwise, each output is taken from an arbitrary shard.
		
		Inputs and outputs of the computation must be at least rank-1 Tensors.
		
		Args:
		  computation: A Python function that builds a computation to apply to each
		    shard of the input.
		  inputs: A list of input tensors or None (equivalent to an empty list). Each
		    input tensor has a corresponding shard axes, given by `input_shard_axes`,
		    which must have size divisible by `num_shards`.
		  num_shards: The number of shards.
		  input_shard_axes: A list of dimensions along which to shard `inputs`, or
		    `None`. `None` means "shard all inputs along dimension 0". If not `None`,
		    there must be one dimension per input.
		  outputs_from_all_shards: Boolean or list of boolean. For each output, if
		    `True`, outputs from all shards are concatenated along the corresponding
		    `output_shard_axes` entry. Otherwise, each output is taken
		    from an arbitrary shard. If the argument is a boolean, the argument's
		    value is used for each output.
		  output_shard_axes: A list of dimensions along which to concatenate the
		    outputs of `computation`, or `None`. `None` means "concatenate all outputs
		    along dimension 0". If not `None`, there must be one dimension per output.
		    Ignored if `outputs_from_all_shards` is False.
		  infeed_queue: If not `None`, the `InfeedQueue` to use to augment the inputs
		    of `computation`.
		  device_assignment: If not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. Uses a default device assignment if `None`. The
		    `DeviceAssignment` may be omitted if each shard of the computation uses
		    only one core, and there is either only one shard, or the number of shards
		    is equal to the number of cores in the TPU system.
		  name: (Deprecated) Does nothing.
		Returns:
		  A list of output tensors.
		Raises:
		  ValueError: If num_shards <= 0
		  ValueError: If len(input_shard_axes) != len(inputs)
		  ValueError: If len(output_shard_axes) != len(outputs from `computation`)
	**/
	static public function shard(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?input_shard_axes:Dynamic, ?outputs_from_all_shards:Dynamic, ?output_shard_axes:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shuts down a running a distributed TPU system.
	**/
	static public function shutdown_system(?job:Dynamic):Dynamic;
	/**
		Builds a training loop for TPUs.
		
		The set of loop-carried tensors corresponds to `inputs`.  Both
		`condition` and `body` take the current value of the loop-carried
		tensors. 'body' additionally takes a tuple of infeed from
		infeed_queue if infeed_queue is not None. `condition` must return a
		single boolean value that determines whether iteration
		continues. `body` must return an updated list of values for the
		loop-carried tensors.
		
		Args:
		  condition: a Python function that builds the loop condition.
		  body: a Python function that builds the loop body.
		  inputs: a list of initial values passed into the training loop, or
		    None (equivalent to an empty list).
		  infeed_queue: if not None, the infeed queue from which to append a tuple
		    of arguments as inputs to condition.
		  name: (Deprecated) Does nothing.
		
		Returns:
		  The final values of the loop-carried tensors.
		
		Raises:
		  TypeError: if body or condition has the wrong signature.
	**/
	static public function while_loop(condition:Dynamic, body:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?name:Dynamic):Dynamic;
}