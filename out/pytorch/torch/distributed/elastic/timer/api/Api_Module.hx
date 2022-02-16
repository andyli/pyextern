/* This file is generated, do not edit! */
package torch.distributed.elastic.timer.api;
@:pythonImport("torch.distributed.elastic.timer.api") extern class Api_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _timer_client : Dynamic;
	/**
		Configures a timer client. Must be called before using ``expires``.
	**/
	static public function configure(timer_client:Dynamic):Dynamic;
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
		Acquires a countdown timer that expires in ``after`` seconds from now,
		unless the code-block that it wraps is finished within the timeframe.
		When the timer expires, this worker is eligible to be reaped. The
		exact meaning of "reaped" depends on the client implementation. In
		most cases, reaping means to terminate the worker process.
		Note that the worker is NOT guaranteed to be reaped at exactly
		``time.now() + after``, but rather the worker is "eligible" for being
		reaped and the ``TimerServer`` that the client talks to will ultimately
		make the decision when and how to reap the workers with expired timers.
		
		Usage::
		
		    torch.distributed.elastic.timer.configure(LocalTimerClient())
		    with expires(after=10):
		        torch.distributed.all_reduce(...)
	**/
	static public function expires(after:Dynamic, ?scope:Dynamic, ?client:Dynamic):Dynamic;
	/**
		Get information about a frame or traceback object.
		
		A tuple of five things is returned: the filename, the line number of
		the current line, the function name, a list of lines of context from
		the source code, and the index of the current line within that list.
		The optional second argument specifies the number of lines of context
		to return, which are centered around the current line.
	**/
	static public function getframeinfo(frame:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Return a list of records for the stack above the caller's frame.
	**/
	static public function stack(?context:Dynamic):Dynamic;
}