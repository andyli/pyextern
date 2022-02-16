/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.skip.tracker;
@:pythonImport("torch.distributed.pipeline.sync.skip.tracker") extern class Tracker_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Gets the skip tracker on the current thread.
	**/
	static public function current_skip_tracker():Dynamic;
	/**
		Branches out from an autograd lane of the given tensor.
	**/
	static public function fork(input:Dynamic):Dynamic;
	/**
		Whether the current forward propagation is under checkpointing.
		
		Returns:
		    bool: :data:`True` if it's under checkpointing.
	**/
	static public function is_checkpointing():Dynamic;
	/**
		Merges two autograd lanes.
	**/
	static public function join(input:Dynamic, phony:Dynamic):Dynamic;
	static public var thread_local : Dynamic;
	/**
		Registers the given skip tracker on the current thread within a
		context::
		
		    with use_skip_tracker(my_skip_tracker):
		        ...
	**/
	static public function use_skip_tracker(skip_tracker:Dynamic):Dynamic;
}