/* This file is generated, do not edit! */
package torch.nn.parallel.data_parallel;
@:pythonImport("torch.nn.parallel.data_parallel") extern class Data_parallel_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_balance(device_ids:Dynamic):Dynamic;
	/**
		Evaluates module(input) in parallel across the GPUs given in device_ids.
		
		This is the functional version of the DataParallel module.
		
		Args:
		    module: the module to evaluate in parallel
		    inputs: inputs to the module
		    device_ids: GPU ids on which to replicate module
		    output_device: GPU location of the output  Use -1 to indicate the CPU.
		        (default: device_ids[0])
		Returns:
		    a Tensor containing the result of module(input) located on
		    output_device
	**/
	static public function data_parallel(module:Dynamic, inputs:Dynamic, ?device_ids:Dynamic, ?output_device:Dynamic, ?dim:Dynamic, ?module_kwargs:Dynamic):Dynamic;
	/**
		Gathers tensors from different GPUs on a specified device
		  (-1 means the CPU).
	**/
	static public function gather(outputs:Dynamic, target_device:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Applies each `module` in :attr:`modules` in parallel on arguments
		contained in :attr:`inputs` (positional) and :attr:`kwargs_tup` (keyword)
		on each of :attr:`devices`.
		
		:attr:`modules`, :attr:`inputs`, :attr:`kwargs_tup` (if given), and
		:attr:`devices` (if given) should all have same length. Moreover, each
		element of :attr:`inputs` can either be a single object as the only argument
		to a module, or a collection of positional arguments.
	**/
	static public function parallel_apply(modules:Dynamic, inputs:Dynamic, ?kwargs_tup:Dynamic, ?devices:Dynamic):Dynamic;
	static public function replicate(network:Dynamic, devices:Dynamic, ?detach:Dynamic):Dynamic;
	/**
		Scatter with support for kwargs dictionary
	**/
	static public function scatter_kwargs(inputs:Dynamic, kwargs:Dynamic, target_gpus:Dynamic, ?dim:Dynamic):Dynamic;
}