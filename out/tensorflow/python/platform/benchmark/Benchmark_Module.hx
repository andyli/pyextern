/* This file is generated, do not edit! */
package tensorflow.python.platform.benchmark;
@:pythonImport("tensorflow.python.platform.benchmark") extern class Benchmark_Module {
	static public var GLOBAL_BENCHMARK_REGISTRY : Dynamic;
	static public var TEST_REPORTER_TEST_ENV : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Method for recording a benchmark directly.
		
		Args:
		  name: The BenchmarkEntry name.
		  iters: (optional) How many iterations were run
		  cpu_time: (optional) Total cpu time in seconds
		  wall_time: (optional) Total wall time in seconds
		  throughput: (optional) Throughput (in MB/s)
		  extras: (optional) Dict mapping string keys to additional benchmark info.
		
		Raises:
		  TypeError: if extras is not a dict.
		  IOError: if the benchmark output file already exists.
	**/
	static public function _global_report_benchmark(name:Dynamic, ?iters:Dynamic, ?cpu_time:Dynamic, ?wall_time:Dynamic, ?throughput:Dynamic, ?extras:Dynamic):Dynamic;
	/**
		Run benchmarks that match regex `regex`.
		
		This function goes through the global benchmark registry, and matches
		benchmark class and method names of the form
		`module.name.BenchmarkClass.benchmarkMethod` to the given regex.
		If a method matches, it is run.
		
		Args:
		  regex: The string regular expression to match Benchmark classes against.
	**/
	static public function _run_benchmarks(regex:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Run benchmarks as declared in argv.
		
		Args:
		  true_main: True main function to run if benchmarks are not requested.
		  argv: the command line arguments (if None, uses sys.argv).
	**/
	static public function benchmarks_main(true_main:Dynamic, ?argv:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}