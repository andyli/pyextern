/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu") extern class Tpu_Module {
	static public var _BLACKLISTED_INFERENCE_OPS : Dynamic;
	static public var _BLACKLISTED_OPS : Dynamic;
	static public var _MAX_WARNING_LINES : Dynamic;
	static public var _OUTSIDE_COMPILATION_ATTR : Dynamic;
	static public var _TPU_COMPILATION_STATUS_ATTR : Dynamic;
	static public var _TPU_REPLICATE_ATTR : Dynamic;
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
		Returns:
		  A list of output tensors.
		Raises:
		  ValueError: If `num_shards <= 0`
	**/
	static public function batch_parallel(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
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
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
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
		Rewrites `computation` for inference on a TPU system. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		   Other than 'rewriting' the computation to run on a TPU, if using variables
		   in your computation, it moves the ReadVariableOps outside the TPU
		   computation, and adds GuaranteeConst ops just after the ReadVariableOps.
		   This mechanism works only if you are using tf.get_variable() to create and
		   access variables in your tpu computation. You can validate whether this
		   worked, by calling validate_inference_rewrite_for_variables() method
		   immediately after this method to check whether GuaranteeConstOps where
		   added to the graph.
		
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
		  use_tpu: When false, the input `computation` is executed on the XLA CPU/GPU
		    backends. Currently, only supports a default placement (computation is
		    placed on GPU if one is available, and on CPU if not).
		Returns:
		  A list of lists with the first list corresponding to the compile op and the
		  second a list of output tensors, indexed by `[replica_num][output_num]`.
		Raises:
		  ValueError: If all replicas do not have equal numbers of input tensors.
		  ValueError: If the number of inputs per replica does not match
		    the number of formal parameters to `computation`.
	**/
	static public function split_compile_and_replicate(computation:Dynamic, ?inputs:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic, ?use_tpu:Dynamic):Dynamic;
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
		  A tuple of (compile op, [output tensors]).
		Raises:
		  ValueError: If num_shards <= 0
		  ValueError: If len(input_shard_axes) != len(inputs)
		  ValueError: If len(output_shard_axes) != len(outputs from `computation`)
	**/
	static public function split_compile_and_shard(computation:Dynamic, ?inputs:Dynamic, ?num_shards:Dynamic, ?input_shard_axes:Dynamic, ?outputs_from_all_shards:Dynamic, ?output_shard_axes:Dynamic, ?infeed_queue:Dynamic, ?device_assignment:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check if it is currently under `tpu.rewrite_for_inference()`.
	**/
	static public function under_tpu_inference_context():Dynamic;
	/**
		Validates whether rewrite_for_inference() 'worked' for variables. (experimental)
		
		Warning: THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		   The rewrite_for_inference() method is supposed to append GuaranteeConstOps
		   after ReadVariableOps, but this mechanism works only if you are using
		   tf.get_variable() to create and access variables in your tpu computation.
		   This validation method can be called immediately after calling
		   tpu.rewrite_for_inference() to check whether GuaranteeConstOps where added
		   to the graph.
		
		   Typical usages:
		     tpu.validate_inference_rewrite_for_variables(tf.get_default_graph())
		
		     tpu.validate_inference_rewrite_for_variables(sess.graph)
		
		Args:
		  graph: The graph which needs to be validated.
		Raises:
		  RuntimeError: if validation failed.
	**/
	static public function validate_inference_rewrite_for_variables(graph:Dynamic):Dynamic;
}