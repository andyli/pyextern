/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.variables;
@:pythonImport("tensorflow.python.autograph.operators.variables") extern class Variables_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Load variable operator.
	**/
	static public function ld(v:Dynamic):Dynamic;
	/**
		Load variable operator that returns Undefined when failing to evaluate.
		
		Note: the name ("load or return undefined") is abbreviated to minimize
		the amount of clutter in generated code.
		
		This variant of `ld` is useful when loading symbols that may be undefined at
		runtime, such as composite symbols, and whether they are defined or not cannot
		be determined statically. For example `d['a']` is undefined when `d` is an
		empty dict.
		
		Args:
		  load_v: Lambda that executes the actual read.
		  name: Human-readable name of the symbol being read.
		Returns:
		  Either the value of the symbol, or Undefined, if the symbol is not fully
		  defined.
	**/
	static public function ldu(load_v:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}