/* This file is generated, do not edit! */
package numpy.f2py;
@:pythonImport("numpy.f2py.f2py_testing") extern class F2py_testing {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function cmdline():Dynamic;
	static public var division : Dynamic;
	/**
		Return number of jiffies elapsed.
		
		Return number of jiffies (1/100ths of a second) that this
		process has been scheduled in user mode. See man 5 proc.
	**/
	static public function jiffies(?_load_time:Dynamic):Dynamic;
	/**
		Return memory usage of running python. [Not implemented]
	**/
	static public function memusage():Dynamic;
	static public var print_function : Dynamic;
	static public function run(runtest:Dynamic, test_functions:Dynamic, ?repeat:Dynamic):Dynamic;
}