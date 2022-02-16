/* This file is generated, do not edit! */
package torch.distributed.elastic.timer;
@:pythonImport("torch.distributed.elastic.timer") extern class Timer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Configures a timer client. Must be called before using ``expires``.
	**/
	static public function configure(timer_client:Dynamic):Dynamic;
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
}