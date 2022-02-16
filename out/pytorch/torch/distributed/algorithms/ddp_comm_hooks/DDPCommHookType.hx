/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks", "DDPCommHookType") extern class DDPCommHookType {
	static public var ALLREDUCE : Dynamic;
	static public var BATCHED_POWER_SGD : Dynamic;
	static public var BATCHED_POWER_SGD_RANK2 : Dynamic;
	static public var BF16_COMPRESS : Dynamic;
	static public var FP16_COMPRESS : Dynamic;
	static public var NOOP : Dynamic;
	static public var POWER_SGD : Dynamic;
	static public var POWER_SGD_RANK2 : Dynamic;
	static public var QUANTIZE_PER_CHANNEL : Dynamic;
	static public var QUANTIZE_PER_TENSOR : Dynamic;
	/**
		Metaclass for Enum
	**/
	static public function __class__(cls:Dynamic, bases:Dynamic, classdict:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __members__ : Dynamic;
	static public var __module__ : Dynamic;
	/**
		The name of the Enum member.
	**/
	public var name : Dynamic;
	/**
		The value of the Enum member.
	**/
	public var value : Dynamic;
}