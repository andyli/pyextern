/* This file is generated, do not edit! */
package torch.nn.parallel._functions;
@:pythonImport("torch.nn.parallel._functions") extern class _Functions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the device index from :attr:`device`, which can be a torch.device
		object, a Python integer, or ``None``.
		
		If :attr:`device` is a torch.device object, returns the device index if it
		is a CUDA device. Note that for CUDA device without sepecified index, i.e.,
		``torch.devie('cuda')``, this will return the current default CUDA device if
		:attr:`optional` is ``True``.
		
		If :attr:`device` is a Python interger, it is returned as is.
		
		If :attr:`device` is ``None``, this will return the current default CUDA
		device if :attr:`optional` is ``True``.
	**/
	static public function _get_device_index(device:Dynamic, ?optional:Dynamic):Dynamic;
	/**
		Gets a background stream for copying between CPU and GPU
	**/
	static public function _get_stream(device:Dynamic):Dynamic;
	static public var _streams : Dynamic;
}