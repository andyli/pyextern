/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu;
@:pythonImport("tensorflow.python.tpu.tpu") extern class Tpu_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _DENYLISTED_INFERENCE_OPS : Dynamic;
	static public var _DENYLISTED_OPS : Dynamic;
	static public var _MAX_WARNING_LINES : Dynamic;
	static public var _OUTSIDE_COMPILATION_ATTR : Dynamic;
	static public var _PIVOT_FOR_CLUSTER : Dynamic;
	static public var _POST_DEVICE_REWRITE_ATTR : Dynamic;
	static public var _TPU_COMPILATION_STATUS_ATTR : Dynamic;
	static public var _TPU_REPLICATE_ATTR : Dynamic;
	static public var _UNCONNECTED_OPS_TO_PRUNE : Dynamic;
	static public var _UNSUPPORTED_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Ceil input `x` to power of `n`.
	**/
	static public function _ceil_to_pow_of_n(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Returns the TPUReplicateContext and its associated graph.
	**/
	static public function _enclosing_tpu_context_and_graph():Dynamic;
	static public function _enclosing_tpu_device_assignment():Dynamic;
	/**
		For an input, replaced the input by a tuple if the input is composite.
		
		If `maybe_composite` is not composite, return the parameter
		`non_composite_output` otherwise return a tuple which consists of the value of
		the parameter `composite_output` the same number of times as there are
		components of the composite tensor.
		
		This is useful for computing a mask when flattening nested data with
		`expand_composites=True`. For example
		
		```python
		nest.flatten(data, expand_composites=True)
		```
		
		and
		
		```python
		nest.flatten(nest.map(
		    data, lambda x: _flatten_and_filter_composite(x, False, True)))
		```
		
		will have the same length and second will be True if the tensor in the first
		is derived from a expanding a composite tensor.
		
		Args:
		  maybe_composite: A value to test for being a composite tensor.
		  non_composite_output: The value to return when `maybe_composite` is not a
		    composite.
		  composite_output: the value to fill the output tuple with if
		    `maybe_composite` is a composite.
		
		Returns:
		  `non_composite_output` or a tuple with multiple copies of
		  `composite_output`.
	**/
	static public function _flatten_and_filter_composite(maybe_composite:Dynamic, non_composite_output:Dynamic, ?composite_output:Dynamic):Dynamic;
	/**
		Pad all input tensors given padded_shapes.
		
		The real shape tensors will be concatenated with the padded original inputs.
		
		Args:
		  inputs: The original inputs.
		  padded_shapes: A list of padded shapes for each input. If an entry is None,
		    no padding is performed.
		  padding_spec: An enum specified by `tpu.PaddingSpec`. This describes the
		    padding policy when the `inputs` to `tf.tpu.replicate` is dynamic.
		    One usage is to enable automatic bucketizing on the inputs by setting the
		    value to `tpu.PaddingSpec.POWER_OF_TWO`, which can help to reduce the
		    recompilation in the XLA side.
		
		Returns:
		  The padded inputs and a PaddingMap list which maps the padded input
		  dimension to the real shape argument index.
	**/
	static public function _pad_all_input(inputs:Dynamic, padded_shapes:Dynamic, padding_spec:Dynamic):Dynamic;
	/**
		Validates non-flat outputs, add backs device assignments and other attrs.
		
		Args:
		  outputs: Output from `computation` inside `tpu.rewrite`.
		  need_spmd_partitioning: Whether XLA SPMD partitioning is needed.
		
		Returns:
		  - Tensors extracted from outputs.
		  - Operations extracted from outputs.
		  - A pack template for use with nest.pack_sequence_as to pack the tensors.
	**/
	static public function _postprocess_flat_outputs(outputs:Dynamic, need_spmd_partitioning:Dynamic):Dynamic;
	/**
		Validates non-flat outputs, add backs device assignments and other attrs.
		
		Args:
		  outputs: Output from `computation` inside `tpu.rewrite`.
		  need_spmd_partitioning: Whether XLA SPMD partitioning is needed.
		
		Returns:
		  - Tensors extracted from outputs.
		  - An empty Operations list because Operations are not allowed in non-flat
		    outputs.
		  - A pack template for use with nest.pack_sequence_as to pack the tensors.
	**/
	static public function _postprocess_non_flat_outputs(outputs:Dynamic, need_spmd_partitioning:Dynamic):Dynamic;
	/**
		Returns the device name for the TPU_SYSTEM device of `job`.
	**/
	static public function _tpu_system_device_name(job:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		Returns:
		  A list of output tensors.
		Raises:
		  ValueError: If `num_shards <= 0`
	**/
	static public function batch_parallel(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?xla_options:Dynamic):Dynamic;
	/**
		Returns the device name for a core in a replicated TPU computation.
		
		Args:
		  num: the virtual core number within each replica to which operators should
		  be assigned.
		Returns:
		  A device name, suitable for passing to `tf.device()`.
	**/
	static public function core(num:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		  compilation_failure_closes_chips: Set the configuration whether
		    we want to close TPU chips when there is a compilation failure.
		  tpu_cancellation_closes_chips: Set the configuration whether
		    we want to close TPU chips when a TPU execution is cancelled. If the value
		    is None, the behavior will be determined by the command line flag
		    `tpu_cancellation_closes_chips` for the TPU worker. WARNING: this argument
		    only applies to TFRT TPU runtime.
		Returns:
		  A serialized `TopologyProto` that describes the TPU system. Note:
		    the topology must be evaluated using `Session.run` before it can be used.
	**/
	static public function initialize_system(?embedding_config:Dynamic, ?job:Dynamic, ?compilation_failure_closes_chips:Dynamic, ?tpu_cancellation_closes_chips:Dynamic):Dynamic;
	/**
		Initializes a distributed TPU Embedding system for use with TensorFlow.
		
		The following two are equivalent:
		1. initialize_system() with embedding_config.
		2. initialize_system() without embedding_config, then
		   initialize_system_for_tpu_embedding().
		initialize_system() should not be called with embedding_config if
		initialize_system_for_tpu_embedding() is meant to be called later.
		
		Args:
		  embedding_config: a `TPUEmbeddingConfiguration` proto describing the desired
		    configuration of the hardware embedding lookup tables.
		  job: The job (the XXX in TensorFlow device specification /job:XXX) that
		    contains the TPU devices that will be initialized. If job=None it is
		    assumed there is only one job in the TensorFlow flock, and an error will
		    be returned if this assumption does not hold.
		
		Returns:
		  A no-op.
	**/
	static public function initialize_system_for_tpu_embedding(embedding_config:Dynamic, ?job:Dynamic):Dynamic;
	static public function is_tpu_strategy(strategy:Dynamic):Dynamic;
	/**
		Builds part of a computation outside any current TPU replicate scope.
		
		`tf.tpu.outside_compilation()` is used to run ops in `computation` on CPU
		instead of running on TPU. For example, users can run ops that are not
		supported on TPU's (e.g. tf.summary.write()) by explicitly placing those
		ops on CPU's. Below usage of outside compilation will place ops in
		`computation_with_string_ops` on CPU.
		
		Example usage:
		
		```python
		def computation_with_string_ops(x):
		  # strings types are not supported on TPU's and below ops must
		  # run on CPU instead.
		  output = tf.strings.format('1{}', x)
		  return tf.strings.to_number(output)
		
		def tpu_computation():
		  # Expected output is 11.
		  output = tf.tpu.outside_compilation(computation_with_string_ops, 1)
		```
		
		Outside compilation should be called inside TPUReplicateContext. That is,
		`tf.tpu.outside_compilation()` should be called inside a function that is
		passed to `tpu.split_compile_and_replicate()` -- this is implied when
		outside compilation is invoked inside a function passed to TPUStrategy
		`run()`. If invoked outside of TPUReplicateContext,
		then this simply returns the result of `computation`, and therefore,
		would be a no-op. Note that outside compilation is different from
		`tf.distribute.experimental.TPUStrategy.merge_call()` as logic in
		outside compilation is replicated and executed separately for each
		replica. On the other hand, `merge_call()` requires a `merge_fn`
		to aggregate the inputs from different replicas and is executed only
		once.
		
		For variables placed in TPU device, which includes variables created inside
		TPUStrategy scope, outside compilation logic must not include variable
		read/write. For variables placed on host, which is the case when variables
		created via TPUEstimator, variable read/write is only allowed if the variable
		is not accessed by any other ops in the TPU computation. Variable read/write
		from outside compilation cluster is not visible from TPU computation and
		vice versa. Therefore, if outside compilation logic contains such host
		variables read/write ops and if the variables are accessed by TPU
		computation as well, then this may lead to deadlock.
		
		Internally, `tf.tpu.outside_compilation()` adds outside compilation
		attributes to all ops in `computation`. During later graph pass, these
		ops with outside compilation attribute is extracted out and replicated
		into a host-side graph. Inputs to this extract host-side graph is sent
		from TPU computation graph to host graph via a pair of XlaSendToHost and
		XlaRecvFromHost ops. Note that using `tf.tpu.outside_compilation()`
		may result in tensor transfer between TPU and CPU, leading to non-trivial
		performance impact.
		
		Args:
		  computation: A Python function that builds the computation to
		    place on the host.
		  *args: the positional arguments for the computation.
		  **kwargs: the keyword arguments for the computation.
		
		Returns:
		  The Tensors returned by computation.
	**/
	static public function outside_compilation(computation:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Prunes unconnected ops as listed in _UNCONNECTED_OPS_TO_PRUNE.
		
		Args:
		  prune_graph: A tensorflow graph from which we wish to prune unconnected ops
		    as listed in _UNCONNECTED_OPS_TO_PRUNE.  In general, these ops should have
		    no inputs and no consumers. These can often be left behind due to graph
		    construction rewiring (for instance TF-Hub). While they never execute,
		    they will cause XLA compile to fail so we strip them from XLA compile by
		    removing the tpu_replicate attribute.
	**/
	static public function prune_unconnected_ops_from_xla(prune_graph:Dynamic):Dynamic;
	/**
		Builds a graph operator that runs a replicated TPU computation.
		
		Example for the basic usage that `inputs` has static shape:
		
		```python
		
		def computation(x):
		  x = x + 1
		  return tf.math.reduce_mean(x)
		
		x = tf.convert_to_tensor([1., 2., 3.])
		y = tf.convert_to_tensor([4., 5., 6.])
		tf.compat.v1.tpu.replicate(computation, inputs=[[x], [y]])
		```
		
		If the `inputs` has dynamic shapes and you would like to automatically
		bucketize the inputs to avoid XLA recompilation. See the advanced example
		below:
		
		```python
		
		def computation(x):
		  x = x + 1
		  return tf.math.reduce_mean(x)
		
		# Assume input tensors in two replicas `x` and `y` both have dynamic shape
		# ([None, 2]).
		tf.compat.v1.tpu.replicate(
		  computation,
		  inputs=[x, y],
		  maximum_shapes=[tf.TensorShape([None, None])],
		  padding_spec=tf.compat.v1.tpu.PaddingSpec.POWER_OF_TWO)
		```
		
		Args:
		  computation: A Python function that builds the computation to replicate.
		  inputs: A list of lists of input tensors or `None` (equivalent to
		    `[[]]`), indexed by `[replica_num][input_num]`. All replicas must
		    have the same number of inputs. Each input can be a nested structure
		    containing values that are convertible to tensors. Note that passing an
		    N-dimension list of compatible values will result in a N-dimension list of
		    scalar tensors rather than a single Rank-N tensors. If you need different
		    behavior, convert part of inputs to tensors with `tf.convert_to_tensor`.
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to computation.
		  device_assignment: If not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. Uses a default device assignment if `None`. The
		    `DeviceAssignment` may be omitted if each replica of the computation uses
		    only one core, and there is either only one replica, or the number of
		    replicas is equal to the number of cores in the TPU system.
		  name: (Deprecated) Does nothing.
		  maximum_shapes: A nested structure of tf.TensorShape representing the shape
		    to which the respective component of each input element in each replica
		    should be padded. Any unknown dimensions (e.g.
		    tf.compat.v1.Dimension(None) in a tf.TensorShape or -1 in a tensor-like
		    object) will be padded to the maximum size of that dimension over all
		    replicas. The structure of `maximum_shapes` needs to be the same as
		    `inputs[0]`.
		  padding_spec: An enum specified by `tpu.PaddingSpec`. This describes the
		    padding policy when the `inputs` to `tpu.replicate` is dynamic.
		    One usage is to enable automatic bucketizing on the inputs by setting the
		    value to `tpu.PaddingSpec.POWER_OF_TWO`, which can help to reduce the
		    recompilation in the XLA side.
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		Returns:
		  A list of outputs, indexed by `[replica_num]` each output can be a nested
		  structure same as what computation() returns with a few exceptions.
		
		  Exceptions include:
		    1) None output: a NoOp would be returned which control-depends on
		       computation.
		    2) Single value output: A tuple containing the value would be returned.
		    3) Operation-only outputs: a NoOp would be returned which
		       control-depends on computation.
		    TODO(b/121383831): Investigate into removing these special cases.
		
		Raises:
		  ValueError: If all replicas do not have equal numbers of input tensors.
		  ValueError: If the number of inputs per replica does not match
		    the number of formal parameters to `computation`.
		  ValueError: If the static `inputs` dimensions don't match with the values
		    given in `maximum_shapes`.
		  ValueError: If the structure of inputs per replica does not match
		    the structure of `maximum_shapes`.
	**/
	static public function replicate(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?maximum_shapes:Dynamic, ?padding_spec:Dynamic, ?xla_options:Dynamic):Dynamic;
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
		    Each input can be a nested structure containing values that are
		    convertible to tensors. Note that passing an N-dimension list of
		    compatible values will result in a N-dimension list of scalar tensors
		    rather than a single Rank-N tensors. If you need different behavior,
		    convert part of inputs to tensors with `tf.convert_to_tensor`.
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to `computation`.
		  device_assignment: if not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. May be omitted for a single-core computation, in which
		    case the core attached to task 0, TPU device 0 is used.
		  name: (Deprecated) Does nothing.
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		Returns:
		  Same data structure as if computation(*inputs) is called directly with some
		  exceptions for correctness. Exceptions include:
		    1) None output: a NoOp would be returned which control-depends on
		       computation.
		    2) Single value output: A tuple containing the value would be returned.
		    3) Operation-only outputs: a NoOp would be returned which
		       control-depends on computation.
		    TODO(b/121383831): Investigate into removing these special cases.
	**/
	static public function rewrite(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?xla_options:Dynamic):Dynamic;
	/**
		Rewrites `computation` for inference on a TPU system.
		
		   Other than 'rewriting' the computation to run on a TPU, if using variables
		   in your computation, it moves the ReadVariableOps outside the TPU
		   computation, and adds GuaranteeConst ops just after the ReadVariableOps.
		   This mechanism works only if you are using tf.compat.v1.get_variable() to
		   create and access variables in your tpu computation. You can validate
		   whether this worked, by calling validate_inference_rewrite_for_variables()
		   method immediately after this method to check whether GuaranteeConstOps
		   where added to the graph.
		
		Args:
		  computation: A Python function that builds a computation to apply to the
		    input. If the function takes n inputs, 'inputs' should be a list of n
		    tensors. If the function returns m outputs, rewrite will return a list of
		    m tensors.
		  inputs: A list of input tensors or `None` (equivalent to an empty list).
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to `computation`.
		  device_assignment: if not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. May be omitted for a single-core computation, in which
		    case the core attached to task 0, TPU device 0 is used.
		  name: The name of the operator.
		Returns:
		  A list of output tensors.
	**/
	static public function rewrite_for_inference(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
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
		`computation` are concatenated back together along their `output_shard_axes`.
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
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		Returns:
		  A list of output tensors.
		Raises:
		  ValueError: If num_shards <= 0
		  ValueError: If len(input_shard_axes) != len(inputs)
		  ValueError: If len(output_shard_axes) != len(outputs from `computation`)
	**/
	static public function shard(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?input_shard_axes:Dynamic, ?outputs_from_all_shards:Dynamic, ?output_shard_axes:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?xla_options:Dynamic):Dynamic;
	/**
		Shuts down a running a distributed TPU system.
		
		Args:
		  job: The job (the XXX in TensorFlow device specification /job:XXX) that
		    contains the TPU devices that will be shutdown. If job=None it is
		    assumed there is only one job in the TensorFlow flock, and an error will
		    be returned if this assumption does not hold.
	**/
	static public function shutdown_system(?job:Dynamic):Dynamic;
	/**
		Builds graph operators that runs compilation and replicated computation.
		
		This is a lower level interface than replicate that returns a separate compile
		and execute output tensor. In the generated graph the compile op feeds into
		the execute op and no additional compilation is incurred when running the
		compile op before the execute op. The compile op returns additional
		information about the compilation but does not return the compiled program.
		
		Args:
		  computation: A Python function that builds the computation to replicate.
		  inputs: A list of lists of input tensors or `None` (equivalent to
		    `[[]]`), indexed by `[replica_num][input_num]`. All replicas must
		    have the same number of inputs. Each input can be a nested structure
		    containing values that are convertible to tensors. Note that passing an
		    N-dimension list of compatible values will result in a N-dimension list of
		    scalar tensors rather than a single Rank-N tensors. If you need different
		    behavior, convert part of inputs to tensors with `tf.convert_to_tensor`.
		  infeed_queue: If not `None`, the `InfeedQueue` from which to append a tuple
		    of arguments as inputs to computation.
		  device_assignment: If not `None`, a `DeviceAssignment` describing the
		    mapping between logical cores in the computation with physical cores in
		    the TPU topology. Uses a default device assignment if `None`. The
		    `DeviceAssignment` may be omitted if each replica of the computation uses
		    only one core, and there is either only one replica, or the number of
		    replicas is equal to the number of cores in the TPU system.
		  name: (Deprecated) Does nothing.
		  use_tpu: When false, the input `computation` is executed on the XLA CPU/GPU
		    backends. Currently, only supports a default placement (computation is
		    placed on GPU if one is available, and on CPU if not).
		  maximum_shapes: A nested structure of tf.TensorShape representing the shape
		    to which the respective component of each input element in each replica
		    should be padded. Any unknown dimensions (e.g.
		    tf.compat.v1.Dimension(None) in a tf.TensorShape or -1 in a tensor-like
		    object) will be padded to the maximum size of that dimension over all
		    replicas. The structure of `maximum_shapes` needs to be the same as
		    `inputs[0]`.
		  padding_spec: An enum specified by `tf.tpu.PaddingSpec`. This describes the
		    padding policy when the `inputs` to `tf.tpu.replicate` is dynamic.
		    One usage is to enable automatic bucketizing on the inputs by setting the
		    value to `tpu.PaddingSpec.POWER_OF_TWO`, which can help to reduce the
		    recompilation in the XLA side.
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		
		Returns:
		  A list of lists with the first list corresponding to the compile op and the
		  second a list of output tensors, indexed by `[replica_num][output_num]`.
		Raises:
		  ValueError: If all replicas do not have equal numbers of input tensors.
		  ValueError: If the number of inputs per replica does not match
		    the number of formal parameters to `computation`.
		  ValueError: If the static `inputs` dimensions don't match with the values
		    given in `maximum_shapes`.
		  ValueError: If the structure of inputs per replica does not match
		    the structure of `maximum_shapes`.
	**/
	static public function split_compile_and_replicate(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?use_tpu:Dynamic, ?maximum_shapes:Dynamic, ?padding_spec:Dynamic, ?xla_options:Dynamic):Dynamic;
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
		
		If `outputs_from_all_shards` is true, the outputs from all shards of
		`computation` are concatenated back together along their `output_shard_axes`.
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
		  xla_options: An instance of `tpu.XLAOptions` which indicates the options
		    passed to XLA compiler. Use `None` for default options.
		Returns:
		  A tuple of (compile op, [output tensors]).
		Raises:
		  ValueError: If num_shards <= 0
		  ValueError: If len(input_shard_axes) != len(inputs)
		  ValueError: If len(output_shard_axes) != len(outputs from `computation`)
	**/
	static public function split_compile_and_shard(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?input_shard_axes:Dynamic, ?outputs_from_all_shards:Dynamic, ?output_shard_axes:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?xla_options:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replaces TPUReplicatedInput outputs with its inputs in resource_inputs.
	**/
	static public function tpu_replicated_input_resolver(op:Dynamic, resource_reads:Dynamic, resource_writes:Dynamic):Dynamic;
	/**
		Check if it is currently under `_TPUInferenceContext`.
	**/
	static public function under_tpu_inference_context():Dynamic;
	/**
		Validates whether rewrite_for_inference() 'worked' for variables.
		
		   The rewrite_for_inference() method is supposed to append GuaranteeConstOps
		   after ReadVariableOps, but this mechanism works only if you are using
		   tf.compat.v1.get_variable() to create and access variables in your tpu
		   computation. This validation method can be called immediately after calling
		   tpu.rewrite_for_inference() to check whether GuaranteeConstOps where added
		   to the graph.
		
		   Typical usages:
		     tpu.validate_inference_rewrite_for_variables(
		         tf.compat.v1.get_default_graph())
		
		     tpu.validate_inference_rewrite_for_variables(sess.graph)
		
		Args:
		  graph: The graph which needs to be validated.
		Raises:
		  RuntimeError: if validation failed.
	**/
	static public function validate_inference_rewrite_for_variables(graph:Dynamic):Dynamic;
}