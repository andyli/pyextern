/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.common;
@:pythonImport("torch.utils.benchmark.utils.common") extern class Common_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function DefaultDict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _IQR_GROSS_WARN_THRESHOLD : Dynamic;
	static public var _IQR_WARN_THRESHOLD : Dynamic;
	static public var _MAX_SIGNIFICANT_FIGURES : Dynamic;
	static public var _MIN_CONFIDENCE_INTERVAL : Dynamic;
	static public var _TASKSPEC_FIELDS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function ordered_unique(elements:Dynamic):Dynamic;
	/**
		Determine how to scale times for O(1) magnitude.
		
		This utility is used to format numbers for human consumption.
	**/
	static public function select_unit(t:Dynamic):Dynamic;
	static public function set_torch_threads(n:Dynamic):Dynamic;
	/**
		Trim `x` to `n` significant figures. (e.g. 3.14159, 2 -> 3.10000)
	**/
	static public function trim_sigfig(x:Dynamic, n:Dynamic):Dynamic;
	static public function unit_to_english(u:Dynamic):Dynamic;
}