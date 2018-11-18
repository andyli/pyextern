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
		Reduces tensors collectively, across devices.
		
		Args:
		  t: the tensor to be reduced.
		  group_size: the total number of tensors to be collectively reduced.
		    Each must reside on a different device.
		  group_key: an integer identifying the group of devices.
		  instance_key: an integer identifying the participating group of Ops.
		  merge_op: string naming the binary Op to be applied to compute each
		    partial reduction.
		  final_op: string naming the unary Op to be applied to each fully
		    reduced value.  Can be 'Id' for no operation.
		  subdiv_offsets: a list of integer offsets into the tensor at which each
		    independent subdivision should begin.  Use [0] if no subdivision should
		    be done.
		
		Returns:
		  An Op implementing the distributed reduction.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
	**/
	static public function all_reduce(t:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic, merge_op:Dynamic, final_op:Dynamic, ?subdiv_offsets:Dynamic):Dynamic;
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
		
		Returns:
		  An Op implementing the broadcast receive.
		
		Raises:
		  ValueError: if any of the input parameter constraints are not met.
	**/
	static public function broadcast_recv(shape:Dynamic, dtype:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic):Dynamic;
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
	static public function broadcast_send(t:Dynamic, shape:Dynamic, dtype:Dynamic, group_size:Dynamic, group_key:Dynamic, instance_key:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}