/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.copy;
@:pythonImport("torch.distributed.pipeline.sync.copy") extern class Copy_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Deque(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		:func:`torch.cuda.current_stream` for either CPU or CUDA device.
	**/
	static public function current_stream(device:Dynamic):Dynamic;
	/**
		Gets the device from CPU or CUDA stream.
	**/
	static public function get_device(stream:Dynamic):Dynamic;
	/**
		:meth:`torch.Tensor.record_stream` for either CPU or CUDA stream.
	**/
	static public function record_stream(tensor:Dynamic, stream:Dynamic):Dynamic;
	/**
		:func:`torch.cuda.stream` for either CPU or CUDA stream.
	**/
	static public function use_stream(stream:Dynamic):Dynamic;
	/**
		:meth:`torch.cuda.Stream.wait_stream` for either CPU or CUDA stream. It
		makes the source stream wait until the target stream completes work queued.
	**/
	static public function wait_stream(source:Dynamic, target:Dynamic):Dynamic;
}