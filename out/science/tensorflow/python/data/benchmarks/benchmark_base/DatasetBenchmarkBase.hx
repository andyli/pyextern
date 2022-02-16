/* This file is generated, do not edit! */
package tensorflow.python.data.benchmarks.benchmark_base;
@:pythonImport("tensorflow.python.data.benchmarks.benchmark_base", "DatasetBenchmarkBase") extern class DatasetBenchmarkBase {
	/**
		The Benchmark class registrar.  Used by abstract Benchmark class.
	**/
	static public function __class__(clsname:Dynamic, base:Dynamic, attrs:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Returns full name of class and method calling report_benchmark.
	**/
	public function _get_name(?overwrite_name:Dynamic):Dynamic;
	/**
		Benchmark the iterable in eager mode.
		
		Runs the iterable `iters` times. In each iteration, the benchmark measures
		the time it takes to go execute the iterable.
		
		Args:
		  iterable: The tf op or tf.data Dataset to benchmark.
		  iters: Number of times to repeat the timing.
		  warmup: If true, warms up the session caches by running an untimed run.
		
		Returns:
		  A float, representing the median time (with respect to `iters`)
		  it takes for the iterable to be executed `iters` num of times.
		
		Raises:
		  RuntimeError: When executed in graph mode.
	**/
	public function _run_eager_benchmark(iterable:Dynamic, iters:Dynamic, warmup:Dynamic):Dynamic;
	/**
		Benchmarks the iterable in graph mode.
		
		Runs the iterable `iters` times. In each iteration, the benchmark measures
		the time it takes to go execute the iterable.
		
		Args:
		  iterable: The tf op or tf.data Dataset to benchmark.
		  iters: Number of times to repeat the timing.
		  warmup: If true, warms up the session caches by running an untimed run.
		  session_config: A ConfigProto protocol buffer with configuration options
		    for the session. Applicable only for benchmarking in graph mode.
		  initializer: The initializer op required to initialize the iterable.
		
		Returns:
		  A float, representing the median time (with respect to `iters`)
		  it takes for the iterable to be executed `iters` num of times.
		
		Raises:
		  RuntimeError: When executed in eager mode.
	**/
	public function _run_graph_benchmark(iterable:Dynamic, iters:Dynamic, warmup:Dynamic, session_config:Dynamic, ?initializer:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Evaluates tensors and returns numpy values.
		
		Args:
		  tensors: A Tensor or a nested list/tuple of Tensors.
		
		Returns:
		  tensors numpy values.
	**/
	public function evaluate(tensors:Dynamic):Dynamic;
	static public function is_abstract():Dynamic;
	/**
		Report a benchmark.
		
		Args:
		  iters: (optional) How many iterations were run
		  cpu_time: (optional) Median or mean cpu time in seconds.
		  wall_time: (optional) Median or mean wall time in seconds.
		  throughput: (optional) Throughput (in MB/s)
		  extras: (optional) Dict mapping string keys to additional benchmark info.
		    Values may be either floats or values that are convertible to strings.
		  name: (optional) Override the BenchmarkEntry name with `name`.
		    Otherwise it is inferred from the top-level method name.
		  metrics: (optional) A list of dict, where each dict has the keys below
		    name (required), string, metric name
		    value (required), double, metric value
		    min_value (optional), double, minimum acceptable metric value
		    max_value (optional), double, maximum acceptable metric value
	**/
	public function report_benchmark(?iters:Dynamic, ?cpu_time:Dynamic, ?wall_time:Dynamic, ?throughput:Dynamic, ?extras:Dynamic, ?name:Dynamic, ?metrics:Dynamic):Dynamic;
	/**
		Benchmarks the dataset and reports the stats.
		
		Runs the dataset `iters` times. In each iteration, the benchmark measures
		the time it takes to go through `num_elements` elements of the dataset.
		This is followed by logging/printing the benchmark stats.
		
		Args:
		  dataset: Dataset to benchmark.
		  num_elements: Number of dataset elements to iterate through each benchmark
		    iteration.
		  name: Name of the benchmark.
		  iters: Number of times to repeat the timing.
		  extras: A dict which maps string keys to additional benchmark info.
		  warmup: If true, warms up the session caches by running an untimed run.
		  apply_default_optimizations: Determines whether default optimizations
		    should be applied.
		  session_config: A ConfigProto protocol buffer with configuration options
		    for the session. Applicable only for benchmarking in graph mode.
		
		Returns:
		  A float, representing the per-element wall time of the dataset in seconds.
		  This is the median time (with respect to `iters`) it takes for the dataset
		  to go through `num_elements` elements, divided by `num_elements.`
	**/
	public function run_and_report_benchmark(dataset:Dynamic, num_elements:Dynamic, name:Dynamic, ?iters:Dynamic, ?extras:Dynamic, ?warmup:Dynamic, ?apply_default_optimizations:Dynamic, ?session_config:Dynamic):Dynamic;
	/**
		Benchmarks the dataset.
		
		Runs the dataset `iters` times. In each iteration, the benchmark measures
		the time it takes to go through `num_elements` elements of the dataset.
		
		Args:
		  dataset: Dataset to benchmark.
		  num_elements: Number of dataset elements to iterate through each benchmark
		    iteration.
		  iters: Number of times to repeat the timing.
		  warmup: If true, warms up the session caches by running an untimed run.
		  apply_default_optimizations: Determines whether default optimizations
		    should be applied.
		  session_config: A ConfigProto protocol buffer with configuration options
		    for the session. Applicable only for benchmarking in graph mode.
		
		Returns:
		  A float, representing the per-element wall time of the dataset in seconds.
		  This is the median time (with respect to `iters`) it takes for the dataset
		  to go through `num_elements` elements, divided by `num_elements.`
	**/
	public function run_benchmark(dataset:Dynamic, num_elements:Dynamic, ?iters:Dynamic, ?warmup:Dynamic, ?apply_default_optimizations:Dynamic, ?session_config:Dynamic):Dynamic;
	/**
		Benchmarks the op.
		
		Runs the op `iters` times. In each iteration, the benchmark measures
		the time it takes to go execute the op.
		
		Args:
		  op: The tf op to benchmark.
		  iters: Number of times to repeat the timing.
		  warmup: If true, warms up the session caches by running an untimed run.
		  session_config: A ConfigProto protocol buffer with configuration options
		    for the session. Applicable only for benchmarking in graph mode.
		
		Returns:
		  A float, representing the per-execution wall time of the op in seconds.
		  This is the median time (with respect to `iters`) it takes for the op
		  to be executed `iters` num of times.
	**/
	public function run_op_benchmark(op:Dynamic, ?iters:Dynamic, ?warmup:Dynamic, ?session_config:Dynamic):Dynamic;
}