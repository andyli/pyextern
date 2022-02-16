/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.stream;
@:pythonImport("torch.distributed.pipeline.sync.stream") extern class Stream_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var CPUStream : Dynamic;
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Casts the given stream as :class:`torch.cuda.Stream`.
	**/
	static public function as_cuda(stream:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
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
		:func:`torch.cuda.current_stream` for either CPU or CUDA device.
	**/
	static public function current_stream(device:Dynamic):Dynamic;
	/**
		:func:`torch.cuda.default_stream` for either CPU or CUDA device.
	**/
	static public function default_stream(device:Dynamic):Dynamic;
	/**
		Gets the device from CPU or CUDA stream.
	**/
	static public function get_device(stream:Dynamic):Dynamic;
	/**
		Returns ``True`` if the given stream is a valid CUDA stream.
	**/
	static public function is_cuda(stream:Dynamic):Dynamic;
	/**
		Creates a new stream for either CPU or CUDA device.
	**/
	static public function new_stream(device:Dynamic):Dynamic;
	/**
		:meth:`torch.Tensor.record_stream` for either CPU or CUDA stream.
	**/
	static public function record_stream(tensor:Dynamic, stream:Dynamic):Dynamic;
	/**
		:func:`torch.cuda.device` for either CPU or CUDA device.
	**/
	static public function use_device(device:Dynamic):Dynamic;
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