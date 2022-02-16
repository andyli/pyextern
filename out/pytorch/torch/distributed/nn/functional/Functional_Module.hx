/* This file is generated, do not edit! */
package torch.distributed.nn.functional;
@:pythonImport("torch.distributed.nn.functional") extern class Functional_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gathers tensors from the whole group in a list.
		
		Arguments:
		    tensor (Tensor): Tensor to be broadcast from current process.
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    tuple[Tensor]): Output of the collective.
	**/
	static public function all_gather(tensor:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result.
		
		After the call the returned tensor is going to be bitwise
		identical in all processes.
		
		Arguments:
		    tensor (Tensor): Input of the collective.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    Tensor: Output of the collective
	**/
	static public function all_reduce(tensor:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Each process scatters list of input tensors to all processes in a group and
		return gathered list of tensors in output list.
		
		Arguments:
		    tensors (list[Tensor]): List of tensors to scatter one per rank.
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    tuple[Tensor]): Output of the collective.
	**/
	static public function all_to_all(tensors:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group.
		
		``tensor`` must have the same number of elements in all processes
		participating in the collective.
		
		Arguments:
		    tensor (Tensor): Data to be sent if ``src`` is the rank of current
		        process.
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    Tensor: Received tensor from the broadcast op.
	**/
	static public function broadcast(tensor:Dynamic, src:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Gathers a list of tensors in a single process.
		
		Arguments:
		    tensor (Tensor): Input tensor.
		    dst (int, optional): Destination rank (default is 0).
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    tuple[Tensor]: List of appropriately-sized tensors with the gathered data.
	**/
	static public function gather(tensor:Dynamic, ?dst:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines.
		
		Only the process with rank ``dst`` is going to receive the final result.
		
		Arguments:
		    tensor (Tensor): Input of the collective.
		    dst (int): Destination rank.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    Tensor: Output of the collective.
	**/
	static public function reduce(tensor:Dynamic, dst:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Scatters a list of tensors to all processes in a group.
		
		Each process will receive exactly one tensor and store its data in the
		``tensor`` argument.
		
		Arguments:
		    tensors (list[Tensor]): List of tensors to scatter on the source rank.
		        Receivers must pass ``None`.
		    src (int, optional): Source rank (default is 0).
		    group (ProcessGroup, optional): The process group to work on.
		
		Returns:
		    Tensor: Output tensor from the scatter operation.
	**/
	static public function scatter(tensors:Dynamic, ?src:Dynamic, ?group:Dynamic):Dynamic;
}