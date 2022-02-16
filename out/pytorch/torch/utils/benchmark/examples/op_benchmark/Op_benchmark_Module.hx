/* This file is generated, do not edit! */
package torch.utils.benchmark.examples.op_benchmark;
@:pythonImport("torch.utils.benchmark.examples.op_benchmark") extern class Op_benchmark_Module {
	static public var _MEASURE_TIME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builtin dict comparison will not compare numpy arrays.
		e.g.
		    x = {"a": np.ones((2, 1))}
		    x == x  # Raises ValueError
	**/
	static public function assert_dicts_equal(dict_0:Dynamic, dict_1:Dynamic):Dynamic;
	static public function main():Dynamic;
	static public function run(n:Dynamic, stmt:Dynamic, fuzzer_cls:Dynamic):Dynamic;
}