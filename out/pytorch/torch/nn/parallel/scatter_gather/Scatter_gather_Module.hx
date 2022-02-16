/* This file is generated, do not edit! */
package torch.nn.parallel.scatter_gather;
@:pythonImport("torch.nn.parallel.scatter_gather") extern class Scatter_gather_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gathers tensors from different GPUs on a specified device.
		Use 'cpu' for CPU to avoid a deprecation warning.
	**/
	static public function gather(outputs:Dynamic, target_device:Dynamic, ?dim:Dynamic):Dynamic;
	static public function is_namedtuple(obj:Dynamic):Dynamic;
	/**
		Slices tensors into approximately equal chunks and
		distributes them across given GPUs. Duplicates
		references to objects that are not tensors.
	**/
	static public function scatter(inputs:Dynamic, target_gpus:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Scatter with support for kwargs dictionary
	**/
	static public function scatter_kwargs(inputs:Dynamic, kwargs:Dynamic, target_gpus:Dynamic, ?dim:Dynamic):Dynamic;
}