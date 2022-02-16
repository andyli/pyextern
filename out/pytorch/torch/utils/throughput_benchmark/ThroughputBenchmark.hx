/* This file is generated, do not edit! */
package torch.utils.throughput_benchmark;
@:pythonImport("torch.utils.throughput_benchmark", "ThroughputBenchmark") extern class ThroughputBenchmark {
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
	public function ___init__(module:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(module:Dynamic):Void;
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
	/**
		Store a single input to a module into the benchmark memory and keep it
		there. During the benchmark execution every thread is going to pick up a
		random input from the all the inputs ever supplied to the benchmark via
		this function.
	**/
	public function add_input(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Args:
		    num_warmup_iters (int): Warmup iters are used to make sure we run a module
		        a few times before actually measuring things. This way we avoid cold
		        caches and any other similar problems. This is the number of warmup
		        iterations for each of the thread in separate
		
		    num_iters (int): Number of iterations the benchmark should run with.
		        This number is separate from the warmup iterations. Also the number is
		        shared across all the threads. Once the num_iters iterations across all
		        the threads is reached, we will stop execution. Though total number of
		        iterations might be slightly larger. Which is reported as
		        stats.num_iters where stats is the result of this function
		
		    profiler_output_path (string): Location to save Autograd Profiler trace.
		        If not empty, Autograd Profiler will be enabled for the main benchmark
		        execution (but not the warmup phase). The full trace will be saved
		        into the file path provided by this argument
		
		
		This function returns BenchmarkExecutionStats object which is defined via pybind11.
		It currently has two fields:
		    - num_iters - number of actual iterations the benchmark have made
		    - avg_latency_ms - average time it took to infer on one input example in milliseconds
	**/
	public function benchmark(?num_calling_threads:Dynamic, ?num_warmup_iters:Dynamic, ?num_iters:Dynamic, ?profiler_output_path:Dynamic):Dynamic;
	/**
		Given input id (input_idx) run benchmark once and return prediction.
		This is useful for testing that benchmark actually runs the module you
		want it to run. input_idx here is an index into inputs array populated
		by calling add_input() method.
	**/
	public function run_once(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}