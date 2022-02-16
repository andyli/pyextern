/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.utils;
@:pythonImport("torch.distributed.pipeline.sync.utils") extern class Utils_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given an :class:`nn.Sequential <torch.nn.Sequential>` module, partitions
		the model across multiple GPU devices according the provided ``balance``
		and ``devices``.
		
		Args:
		    module (:class:`nn.Sequential <torch.nn.Sequential>`):
		        Sequential model representing the pipe.
		    balance (List[int]):
		        List indicating the number of layers in each partition.
		    devices (List[int], optional):
		        List indicating the device to use for each partition. Defaults to
		        ``range(len(balance))``
	**/
	static public function partition_model(module:Dynamic, balance:Dynamic, ?devices:Dynamic):Dynamic;
}