/* This file is generated, do not edit! */
package tensorflow.python.ops.collective_ops;
@:pythonImport("tensorflow.python.ops.collective_ops") extern class Collective_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Accumulates tensors collectively, across devices, along first dimension.
		
		Args:
		  t: the tensor to participate in the accumulation.
		  group_size: the total number of tensors to be collectively accumulated.
		    Each must reside on a different device. Should be a positive integer.
		  group_key: an integer identifying the group of devices.
		  instance_key: an integer identifying the participating group of Ops.
		  communication_hint: preferred collective communication. The implementation
		    may fall back to another mechanism. Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: a float. If set to a non zero, set a completion timeout to detect
		    staleness. If the timer goes off, a DeadlineExceededError is raised. The
		    timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the distributed operation.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
	**/
	static public function all_gather(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Accumulates tensors collectively, across devices, along first dimension.
		
		Args:
		  t: the tensor to participate in the accumulation.
		  group_size: an int32 tensor, the total number of tensors to be collectively
		    accumulated. Each must reside on a different device. Should be a positive
		    integer.
		  group_key: an int32 tensor identifying the group of devices.
		  instance_key: an int32 tensor identifying the participating group of Ops.
		  communication_hint: preferred collective communication. The implementation
		    may fall back to another mechanism. Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: a float. If set to a non zero, set a completion timeout to detect
		    staleness. If the timer goes off, a DeadlineExceededError is raised. The
		    timeout value in seconds. This feature is experimental.
		  ordering_token: an optional resource tensor to pass to the op as inputs.
		    They aren't used by the kernel but allow AutoControlDependency to order
		    the collectives with control dependencies.
		
		Returns:
		  An Op implementing the distributed operation.
	**/
	static public function all_gather_v2(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic, ?ordering_token:Dynamic):Dynamic;
	/**
		Reduces tensors collectively, across devices.
		
		Args:
		  t: the tensor to be reduced.
		  group_size: the total number of tensors to be collectively reduced.
		    Each must reside on a different device.  Should be a positive integer.
		  group_key: an integer identifying the group of devices.
		  instance_key: an integer identifying the participating group of Ops.
		  merge_op: string naming the binary Op to be applied to compute each
		    partial reduction.
		  final_op: string naming the unary Op to be applied to each fully
		    reduced value.  Can be 'Id' for no operation.
		  subdiv_offsets: a list of integer offsets into the tensor at which each
		    independent subdivision should begin.  Use [0] if no subdivision should
		    be done.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: a float. If set to a non zero, set a completion timeout to detect
		    staleness.  If the timer goes off, a DeadlineExceededError is raised.  The
		    timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the distributed reduction.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
	**/
	static public function all_reduce(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?merge_op:Dynamic, ?final_op:Dynamic, ?subdiv_offsets:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Reduces tensors collectively, across devices.
		
		Args:
		  t: the tensor to be reduced.
		  group_size: an int32 tensor. The total number of tensors to be collectively
		    reduced.  Each must reside on a different device.  Should be a positive
		    integer.
		  group_key: an int32 tensor identifying the group of devices.
		  instance_key: an int32 tensor identifying the participating group of Ops.
		  merge_op: string naming the binary Op to be applied to compute each partial
		    reduction.
		  final_op: string naming the unary Op to be applied to each fully reduced
		    value.  Can be 'Id' for no operation.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: a float. If set to a non zero, set a completion timeout to detect
		    staleness.  If the timer goes off, a DeadlineExceededError is raised.  The
		    timeout value in seconds. This feature is experimental.
		  ordering_token: an optional resource tensor to pass to the op as inputs.
		    They aren't used by the kernel but allow AutoControlDependency to order
		    the collectives with control dependencies.
		  max_subdivs_per_device: int specifying the maximum number of subdivisions a
		    tensor on a device can be divided into. The runtime uses this contraint to
		    parallelize processing of each per-device tensor. Setting to -1 disables
		    subdivision and reverts to previous behavior of not sub-dividing tensor.
		    Setting to 0 uses sytem defaults.
		
		Returns:
		  An Op implementing the distributed reduction.
	**/
	static public function all_reduce_v2(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?merge_op:Dynamic, ?final_op:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic, ?ordering_token:Dynamic, ?max_subdivs_per_device:Dynamic):Dynamic;
	/**
		Reduces tensors mutually.
		
		Args:
		  communicator: the resource `tf.Tensor` returned from
		    `initialize_communicator`.
		  t: the `tf.Tensor` to be reduced.
		  reduction: a string. The name of the operation to reduce the values.
		    Accpeted values are `"min"`, `"max"`, `"mul"`, `"add"`.
		  group_assignment: Optional int32 `tf.Tensor` with shape [num_groups,
		    num_ranks_per_group]. `group_assignment[i]` represents the ranks in the
		    `ith` subgroup.
		  timeout_seconds: If set to a non zero, set a completion timeout to detect
		    staleness. If the timer goes off, a DeadlineExceededError is raised. The
		    timeout value in seconds. This feature is experimental.
		
		Returns:
		  The reduced `tf.Tensor`.
	**/
	static public function all_reduce_v3(communicator:Dynamic, t:Dynamic, ?reduction:Dynamic, ?group_assignment:Dynamic, ?timeout_seconds:Dynamic):Dynamic;
	/**
		Exchanges tensors mutually.
		
		Args:
		  communicator: the resource `tf.Tensor` returned from
		    `initialize_communicator`.
		  t: a `tf.Tensor`. The first dimension should have the length as the size of
		    the group. `t[i]` is sent to `rank i` within the group.
		  group_assignment: Optional int32 `tf.Tensor` with shape [num_groups,
		    num_ranks_per_group]. `group_assignment[i]` represents the ranks in the
		    `ith` subgroup.
		  timeout_seconds: If set to a non zero, set a completion timeout to detect
		    staleness. If the timer goes off, a DeadlineExceededError is raised. The
		    timeout value in seconds. This feature is experimental.
		
		Returns:
		  a `tf.Tensor`. `t[i]` is sent from `rank i` within the group.
	**/
	static public function all_to_all_v3(communicator:Dynamic, t:Dynamic, ?group_assignment:Dynamic, ?timeout_seconds:Dynamic):Dynamic;
	/**
		Receives a broadcasts tensor, across devices.
		
		Args:
		  shape: Shape of the tensor to be received.
		  dtype: Type of the tensor to be received.
		  group_size: one plus the number of receiving tensors, i.e. the total
		    number of devices participating.  Each tensor must reside on a
		    different device.
		  group_key: an integer identifying the group of devices.
		  instance_key: an integer identifying the participating group of Ops.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: If set to a non zero, set a completion timeout to detect staleness.
		    If the timer goes off, a DeadlineExceededError is raised.
		    The timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the broadcast receive.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
	**/
	static public function broadcast_recv(shape:Dynamic, dtype:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Receives a broadcasts tensor, across devices.
		
		Args:
		  shape: an int tensor.  Shape of the tensor to be received.
		  dtype: Type of the tensor to be received.
		  group_size: an int32 tensor.  One plus the number of receiving tensors, i.e.
		      the total number of devices participating.  Each tensor must reside on a
		      different device.
		  group_key: an int32 tensor identifying the group of devices.
		  instance_key: an int32 tensor identifying the participating group of Ops.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: If set to a non zero, set a completion timeout to detect staleness.
		    If the timer goes off, a DeadlineExceededError is raised.
		    The timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the broadcast receive.
	**/
	static public function broadcast_recv_v2(shape:Dynamic, dtype:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Broadcasts one tensor to a group of others, across devices.
		
		Args:
		  t: the tensor to be sent.
		  shape: the shape of the tensor being sent, which must agree with t.
		  dtype: the type of the tensor being sent, which must agree with t.
		  group_size: one plus the number of receiving tensors, i.e. the total
		    number of devices participating.  Each tensor must reside on a
		    different device.
		  group_key: an integer identifying the group of devices.
		  instance_key: an integer identifying the participating group of Ops.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: If set to a non zero, set a completion timeout to detect staleness.
		    If the timer goes off, a DeadlineExceededError is raised.
		    The timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the distributed broadcast send.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
		
		Note that the shape and dtype arguments appear redundant since they
		should be obtainable from t.  The are two reasons for including
		them.  First, the shape and type of tensors passed via broadcast must
		be known ahead of time in their most specific form so that the receive
		side can allocate memory for the operation and shape/type inference can
		carry forward from there.  Including the same declarations on the
		send side clarifies a commitment already made.  Secondly, having nearly
		identical use syntax for send and receive sides may simplify tool-driven
		generation of broadcast.
	**/
	static public function broadcast_send(t:Dynamic, shape:Dynamic, dtype:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Broadcasts one tensor to a group of others, across devices.
		
		Args:
		  t: the tensor to be sent.
		  group_size: an int32 tensor.  One plus the number of receiving tensors, i.e.
		      the total number of devices participating.  Each tensor must reside on a
		      different device.
		  group_key: an int32 tensor identifying the group of devices.
		  instance_key: an int32 tensor identifying the participating group of Ops.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout: If set to a non zero, set a completion timeout to detect staleness.
		    If the timer goes off, a DeadlineExceededError is raised.
		    The timeout value in seconds. This feature is experimental.
		
		Returns:
		  An Op implementing the distributed broadcast send.
	**/
	static public function broadcast_send_v2(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, ?communication_hint:Dynamic, ?timeout:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Initializes a collective communicator.
		
		This creates a collective communicator, which represents membership to a
		collective group. It should be called once per member of the group, and each
		member needs to be on a different device. It blocks until all members of the
		group run this op.
		
		Communicators of a group can only be initialized once. Trying to initialize
		communicators of an existing group will result in an error.
		
		Args:
		  group_key: an int32 `tf.Tensor` identifying the group.
		  rank: an `tf.Tensor` specifying the rank of this device in the group. If
		    specified, the rank is required to be unique in the group.
		  group_size: an int32 `tf.Tensor`. The size of the group.
		  communication_hint: preferred collective communication.  The implementation
		    may fall back to another mechanism.  Options include `auto`, `ring`, and
		    `nccl`.
		  timeout_seconds: If set to a non zero, set a completion timeout to detect
		    staleness. If the timer goes off, a DeadlineExceededError is raised. The
		    timeout value in seconds. This feature is experimental.
		
		
		Returns:
		  A resource `tf.Tensor`.
	**/
	static public function initialize_communicator(group_key:Dynamic, rank:Dynamic, group_size:Dynamic, ?communication_hint:Dynamic, ?timeout_seconds:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}