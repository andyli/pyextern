/* This file is generated, do not edit! */
package torch.nn.parallel.replicate;
@:pythonImport("torch.nn.parallel.replicate") extern class Replicate_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _broadcast_coalesced_reshape(tensors:Dynamic, devices:Dynamic, ?detach:Dynamic):Dynamic;
	/**
		Gets the device index from :attr:`device`, which can be a torch.device
		object, a Python integer, or ``None``.
		
		If :attr:`device` is a torch.device object, returns the device index if it
		has index. Note that for a device without a specified index,
		i.e., ``torch.device('xxx')``, this will return the current default
		device of that type if :attr:`optional` is ``True``. If :attr:`allow_cpu` is ``True``,
		CPU devices will be accepted and ``-1`` will be returned in this case.
		
		If :attr:`device` is a Python integer, it is returned as is.
		
		If :attr:`device` is ``None``, this will return the current default
		device of the supported runtime platform if :attr:`optional` is ``True``.
		i.e., the current default CUDA device will be returned if CUDA runtime is supported.
	**/
	static public function _get_device_index(device:Dynamic, ?optional:Dynamic, ?allow_cpu:Dynamic):Dynamic;
	static public function _init_script_module():Dynamic;
	static public function _is_jit_enabled():Dynamic;
	static public function _is_script_method(module:Dynamic):Dynamic;
	static public function _is_script_module(module:Dynamic):Dynamic;
	static public function _replicatable_module(module:Dynamic, ?memo:Dynamic):Dynamic;
	static public function replicate(network:Dynamic, devices:Dynamic, ?detach:Dynamic):Dynamic;
}