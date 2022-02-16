/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.timer;
@:pythonImport("torch.utils.benchmark.utils.timer", "Timer") extern class Timer {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?stmt:Dynamic, ?setup:Dynamic, ?global_setup:Dynamic, ?timer:Dynamic, ?globals:Dynamic, ?label:Dynamic, ?sub_label:Dynamic, ?description:Dynamic, ?env:Dynamic, ?num_threads:Dynamic, ?language:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?stmt:Dynamic, ?setup:Dynamic, ?global_setup:Dynamic, ?timer:Dynamic, ?globals:Dynamic, ?label:Dynamic, ?sub_label:Dynamic, ?description:Dynamic, ?env:Dynamic, ?num_threads:Dynamic, ?language:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _estimate_block_size(min_run_time:Dynamic):Dynamic;
	public function _threaded_measurement_loop(number:Dynamic, time_hook:Dynamic, stop_hook:Dynamic, min_run_time:Dynamic, ?max_run_time:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Class for timing execution speed of small code snippets.
		
		The constructor takes a statement to be timed, an additional
		statement used for setup, and a timer function.  Both statements
		default to 'pass'; the timer function is platform-dependent (see
		module doc string).  If 'globals' is specified, the code will be
		executed within that namespace (as opposed to inside timeit's
		namespace).
		
		To measure the execution time of the first statement, use the
		timeit() method.  The repeat() method is a convenience to call
		timeit() multiple times and return a list of results.
		
		The statements may contain newlines, as long as they don't contain
		multi-line string literals.
	**/
	static public function _timer_cls(?stmt:Dynamic, ?setup:Dynamic, ?timer:Dynamic, ?globals:Dynamic):Dynamic;
	public function adaptive_autorange(?threshold:Dynamic, ?min_run_time:Dynamic, ?max_run_time:Dynamic, ?callback:Dynamic):Dynamic;
	public function autorange(?callback:Dynamic):Dynamic;
	/**
		Measure many replicates while keeping timer overhead to a minimum.
		
		At a high level, blocked_autorange executes the following pseudo-code::
		
		    `setup`
		
		    total_time = 0
		    while total_time < min_run_time
		        start = timer()
		        for _ in range(block_size):
		            `stmt`
		        total_time += (timer() - start)
		
		Note the variable `block_size` in the inner loop. The choice of block
		size is important to measurement quality, and must balance two
		competing objectives:
		
		    1) A small block size results in more replicates and generally
		       better statistics.
		
		    2) A large block size better amortizes the cost of `timer`
		       invocation, and results in a less biased measurement. This is
		       important because CUDA syncronization time is non-trivial
		       (order single to low double digit microseconds) and would
		       otherwise bias the measurement.
		
		blocked_autorange sets block_size by running a warmup period,
		increasing block size until timer overhead is less than 0.1% of
		the overall computation. This value is then used for the main
		measurement loop.
		
		Returns:
		    A `Measurement` object that contains measured runtimes and
		    repetition counts, and can be used to compute statistics.
		    (mean, median, etc.)
	**/
	public function blocked_autorange(?callback:Dynamic, ?min_run_time:Dynamic):Dynamic;
	/**
		Collect instruction counts using Callgrind.
		
		Unlike wall times, instruction counts are deterministic
		(modulo non-determinism in the program itself and small amounts of
		jitter from the Python interpreter.) This makes them ideal for detailed
		performance analysis. This method runs `stmt` in a separate process
		so that Valgrind can instrument the program. Performance is severely
		degraded due to the instrumentation, however this is ameliorated by
		the fact that a small number of iterations is generally sufficient to
		obtain good measurements.
		
		In order to to use this method `valgrind`, `callgrind_control`, and
		`callgrind_annotate` must be installed.
		
		Because there is a process boundary between the caller (this process)
		and the `stmt` execution, `globals` cannot contain arbitrary in-memory
		data structures. (Unlike timing methods) Instead, globals are
		restricted to builtins, `nn.Modules`'s, and TorchScripted functions/modules
		to reduce the surprise factor from serialization and subsequent
		deserialization. The `GlobalsBridge` class provides more detail on this
		subject. Take particular care with nn.Modules: they rely on pickle and
		you may need to add an import to `setup` for them to transfer properly.
		
		By default, a profile for an empty statement will be collected and
		cached to indicate how many instructions are from the Python loop which
		drives `stmt`.
		
		Returns:
		    A `CallgrindStats` object which provides instruction counts and
		    some basic facilities for analyzing and manipulating results.
	**/
	public function collect_callgrind(?number:Dynamic, ?repeats:Dynamic, ?collect_baseline:Dynamic, ?retain_out_file:Dynamic):Dynamic;
	public function repeat(?repeat:Dynamic, ?number:Dynamic):Dynamic;
	/**
		Mirrors the semantics of timeit.Timer.timeit().
		
		Execute the main statement (`stmt`) `number` times.
		https://docs.python.org/3/library/timeit.html#timeit.Timer.timeit
	**/
	public function timeit(?number:Dynamic):Dynamic;
}