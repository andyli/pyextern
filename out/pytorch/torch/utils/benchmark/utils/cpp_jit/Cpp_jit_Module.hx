/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.cpp_jit;
@:pythonImport("torch.utils.benchmark.utils.cpp_jit") extern class Cpp_jit_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var COMPAT_CALLGRIND_BINDINGS : Dynamic;
	static public var CONDA_PREFIX : Dynamic;
	static public var CXX_FLAGS : Dynamic;
	static public var EXTRA_INCLUDE_PATHS : Dynamic;
	static public var LOCK : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var SOURCE_ROOT : Dynamic;
	static public var _BUILD_ROOT : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _compile_template(stmt:Dynamic, setup:Dynamic, global_setup:Dynamic, src:Dynamic, is_standalone:Dynamic):Dynamic;
	static public function _get_build_root():Dynamic;
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
	static public function compile_callgrind_template(stmt:Dynamic, setup:Dynamic, global_setup:Dynamic):Dynamic;
	static public function compile_timeit_template(stmt:Dynamic, setup:Dynamic, global_setup:Dynamic):Dynamic;
	static public function get_compat_bindings():Dynamic;
}