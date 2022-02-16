/* This file is generated, do not edit! */
package torch.utils.benchmark;
@:pythonImport("torch.utils.benchmark") extern class Benchmark_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Create a temporary directory. The caller is responsible for cleanup.
		
		This function is conceptually similar to `tempfile.mkdtemp`, but with
		the key additional feature that it will use shared memory if the
		`BENCHMARK_USE_DEV_SHM` environment variable is set. This is an
		implementation detail, but an important one for cases where many Callgrind
		measurements are collected at once. (Such as when collecting
		microbenchmarks.)
		
		This is an internal utility, and is exported solely so that microbenchmarks
		can reuse the util.
	**/
	static public function _make_temp_dir(?prefix:Dynamic, ?gc_dev_shm:Dynamic):Dynamic;
	/**
		perf_counter() -> float
		
		Performance counter for benchmarking.
	**/
	static public function timer(args:haxe.extern.Rest<Dynamic>):Dynamic;
}