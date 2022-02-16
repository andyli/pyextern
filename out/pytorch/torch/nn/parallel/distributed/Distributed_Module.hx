/* This file is generated, do not edit! */
package torch.nn.parallel.distributed;
@:pythonImport("torch.nn.parallel.distributed") extern class Distributed_Module {
	static public var RPC_AVAILABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dump_DDP_relevant_env_vars():Dynamic;
	/**
		Recursively find all tensors contained in the specified object.
	**/
	static public function _find_tensors(obj:Dynamic):Dynamic;
	/**
		Getting the default process group created by init_process_group
	**/
	static public function _get_default_group():Dynamic;
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
	/**
		Gets a background stream for copying between CPU and GPU
	**/
	static public function _get_stream(device:Dynamic):Dynamic;
	static public function _tree_flatten_with_rref(output:Dynamic):Dynamic;
	static public function _tree_unflatten_with_rref(output:Dynamic, treespec:Dynamic, output_is_rref:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Gathers tensors from different GPUs on a specified device.
		Use 'cpu' for CPU to avoid a deprecation warning.
	**/
	static public function gather(outputs:Dynamic, target_device:Dynamic, ?dim:Dynamic):Dynamic;
	static public function is_namedtuple(obj:Dynamic):Dynamic;
	/**
		Scatter with support for kwargs dictionary
	**/
	static public function scatter_kwargs(inputs:Dynamic, kwargs:Dynamic, target_gpus:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Flattens a pytree into a list of values and a TreeSpec that can be used
		to reconstruct the pytree.
	**/
	static public function tree_flatten(pytree:Dynamic):Dynamic;
	/**
		Given a list of values and a TreeSpec, builds a pytree.
		This is the inverse operation of `tree_flatten`.
	**/
	static public function tree_unflatten(values:Dynamic, spec:Dynamic):Dynamic;
}