/* This file is generated, do not edit! */
package torch.cuda.nvtx;
@:pythonImport("torch.cuda.nvtx") extern class Nvtx_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _nvtx : Dynamic;
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
		Describe an instantaneous event that occurred at some point.
		
		Args:
		    msg (string): ASCII message to associate with the event.
	**/
	static public function mark(msg:Dynamic):Dynamic;
	/**
		Context manager / decorator that pushes an NVTX range at the beginning
		of its scope, and pops it at the end. If extra arguments are given,
		they are passed as arguments to msg.format().
		
		Args:
		    msg (string): message to associate with the range
	**/
	static public function range(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pops a range off of a stack of nested range spans.  Returns the
		zero-based depth of the range that is ended.
	**/
	static public function range_pop():Dynamic;
	/**
		Pushes a range onto a stack of nested range span.  Returns zero-based
		depth of the range that is started.
		
		Args:
		    msg (string): ASCII message to associate with range
	**/
	static public function range_push(msg:Dynamic):Dynamic;
}