/* This file is generated, do not edit! */
package tensorflow.python.platform.benchmark;
@:pythonImport("tensorflow.python.platform.benchmark", "TensorFlowBenchmark") extern class TensorFlowBenchmark {
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
		Run an op or tensor in the given session.  Report the results.
		
		Args:
		  sess: `Session` object to use for timing.
		  op_or_tensor: `Operation` or `Tensor` to benchmark.
		  feed_dict: A `dict` of values to feed for each op iteration (see the
		    `feed_dict` parameter of `Session.run`).
		  burn_iters: Number of burn-in iterations to run.
		  min_iters: Minimum number of iterations to use for timing.
		  store_trace: Boolean, whether to run an extra untimed iteration and
		    store the trace of iteration in returned extras.
		    The trace will be stored as a string in Google Chrome trace format
		    in the extras field "full_trace_chrome_format". Note that trace
		    will not be stored in test_log_pb2.TestResults proto.
		  store_memory_usage: Boolean, whether to run an extra untimed iteration,
		    calculate memory usage, and store that in extras fields.
		  name: (optional) Override the BenchmarkEntry name with `name`.
		    Otherwise it is inferred from the top-level method name.
		  extras: (optional) Dict mapping string keys to additional benchmark info.
		    Values may be either floats or values that are convertible to strings.
		  mbs: (optional) The number of megabytes moved by this op, used to
		    calculate the ops throughput.
		
		Returns:
		  A `dict` containing the key-value pairs that were passed to
		  `report_benchmark`. If `store_trace` option is used, then
		  `full_chrome_trace_format` will be included in return dictionary even
		  though it is not passed to `report_benchmark` with `extras`.
	**/
	public function run_op_benchmark(sess:Dynamic, op_or_tensor:Dynamic, ?feed_dict:Dynamic, ?burn_iters:Dynamic, ?min_iters:Dynamic, ?store_trace:Dynamic, ?store_memory_usage:Dynamic, ?name:Dynamic, ?extras:Dynamic, ?mbs:Dynamic):Dynamic;
}