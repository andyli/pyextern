/* This file is generated, do not edit! */
package torch.distributed;
@:pythonImport("torch.distributed", "ProcessGroupGloo") extern class ProcessGroupGloo {
	public function Device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		__init__(*args, **kwargs)
		Overloaded function.
		
		1. __init__(self: torch.distributed.ProcessGroupGloo, arg0: torch.distributed.Store, arg1: int, arg2: int, arg3: torch.distributed.ProcessGroupGloo.Options) -> None
		
		2. __init__(self: torch.distributed.ProcessGroupGloo, store: torch.distributed.Store, rank: int, size: int, timeout: datetime.timedelta = datetime.timedelta(0, 10)) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(*args, **kwargs)
		Overloaded function.
		
		1. __init__(self: torch.distributed.ProcessGroupGloo, arg0: torch.distributed.Store, arg1: int, arg2: int, arg3: torch.distributed.ProcessGroupGloo.Options) -> None
		
		2. __init__(self: torch.distributed.ProcessGroupGloo, store: torch.distributed.Store, rank: int, size: int, timeout: datetime.timedelta = datetime.timedelta(0, 10)) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		abort(self: torch.distributed.ProcessGroup, opts: torch.distributed.BarrierOptions = <torch.distributed.BarrierOptions object at 0x7f6bddf940d8>) -> c10d::ProcessGroup::Work
	**/
	public function abort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		allgather(*args, **kwargs)
		Overloaded function.
		
		1. allgather(self: torch.distributed.ProcessGroup, output_tensors: List[List[at::Tensor]], input_tensors: List[at::Tensor], opts: torch.distributed.AllgatherOptions = <torch.distributed.AllgatherOptions object at 0x7f6bddf94180>) -> c10d::ProcessGroup::Work
		
		2. allgather(self: torch.distributed.ProcessGroup, output_tensors: List[at::Tensor], input_tensor: at::Tensor) -> c10d::ProcessGroup::Work
	**/
	public function allgather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		allreduce(*args, **kwargs)
		Overloaded function.
		
		1. allreduce(self: torch.distributed.ProcessGroup, tensors: List[at::Tensor], opts: torch.distributed.AllreduceOptions = <torch.distributed.AllreduceOptions object at 0x7f6bddf94298>) -> c10d::ProcessGroup::Work
		
		2. allreduce(self: torch.distributed.ProcessGroup, tensors: List[at::Tensor], op: torch.distributed.ReduceOp = ReduceOp.SUM) -> c10d::ProcessGroup::Work
		
		3. allreduce(self: torch.distributed.ProcessGroup, tensor: at::Tensor, op: torch.distributed.ReduceOp = ReduceOp.SUM) -> c10d::ProcessGroup::Work
	**/
	public function allreduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		barrier(self: torch.distributed.ProcessGroup, opts: torch.distributed.BarrierOptions = <torch.distributed.BarrierOptions object at 0x7f6bddf940a0>) -> c10d::ProcessGroup::Work
	**/
	public function barrier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		broadcast(*args, **kwargs)
		Overloaded function.
		
		1. broadcast(self: torch.distributed.ProcessGroup, tensors: List[at::Tensor], opts: torch.distributed.BroadcastOptions = <torch.distributed.BroadcastOptions object at 0x7f6bddf942d0>) -> c10d::ProcessGroup::Work
		
		2. broadcast(self: torch.distributed.ProcessGroup, tensor: at::Tensor, root: int) -> c10d::ProcessGroup::Work
	**/
	public function broadcast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		create_tcp_device(hostname: str = '', interface: str = '') -> torch.distributed.ProcessGroupGloo.Device
	**/
	public function create_tcp_device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gather(*args, **kwargs)
		Overloaded function.
		
		1. gather(self: torch.distributed.ProcessGroup, output_tensors: List[List[at::Tensor]], input_tensors: List[at::Tensor], opts: torch.distributed.GatherOptions = <torch.distributed.GatherOptions object at 0x7f6bddf94148>) -> c10d::ProcessGroup::Work
		
		2. gather(self: torch.distributed.ProcessGroup, output_tensors: List[at::Tensor], input_tensor: at::Tensor, root: int) -> c10d::ProcessGroup::Work
	**/
	public function gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		group_ranks(self: torch.distributed.ProcessGroup) -> Dict[int, int]
	**/
	public function group_ranks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rank(self: torch.distributed.ProcessGroup) -> int
	**/
	public function rank(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		recv(self: torch.distributed.ProcessGroup, arg0: List[at::Tensor], arg1: int, arg2: int) -> c10d::ProcessGroup::Work
	**/
	public function recv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		recv_anysource(self: torch.distributed.ProcessGroup, arg0: List[at::Tensor], arg1: int) -> c10d::ProcessGroup::Work
	**/
	public function recv_anysource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(*args, **kwargs)
		Overloaded function.
		
		1. reduce(self: torch.distributed.ProcessGroup, tensors: List[at::Tensor], opts: torch.distributed.ReduceOptions = <torch.distributed.ReduceOptions object at 0x7f6bddf941f0>) -> c10d::ProcessGroup::Work
		
		2. reduce(self: torch.distributed.ProcessGroup, tensor: at::Tensor, root: int, op: torch.distributed.ReduceOp = ReduceOp.SUM) -> c10d::ProcessGroup::Work
	**/
	public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scatter(*args, **kwargs)
		Overloaded function.
		
		1. scatter(self: torch.distributed.ProcessGroup, output_tensors: List[at::Tensor], input_tensors: List[List[at::Tensor]], opts: torch.distributed.ScatterOptions = <torch.distributed.ScatterOptions object at 0x7f6bddf94110>) -> c10d::ProcessGroup::Work
		
		2. scatter(self: torch.distributed.ProcessGroup, output_tensor: at::Tensor, input_tensors: List[at::Tensor], root: int) -> c10d::ProcessGroup::Work
	**/
	public function scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		send(self: torch.distributed.ProcessGroup, arg0: List[at::Tensor], arg1: int, arg2: int) -> c10d::ProcessGroup::Work
	**/
	public function send(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		size(self: torch.distributed.ProcessGroup) -> int
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
}