/* This file is generated, do not edit! */
package theano.scalar.basic_sympy;
@:pythonImport("theano.scalar.basic_sympy") extern class Basic_sympy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function as_scalar(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function float32(?name:Dynamic):Dynamic;
	static public function float64(?name:Dynamic):Dynamic;
	static public var imported_sympy : Dynamic;
	static public function include_line(line:Dynamic):Dynamic;
	static public function int64(?name:Dynamic):Dynamic;
	static public var names : Dynamic;
	static public var print_function : Dynamic;
	/**
		Return those items of collection for which predicate(item) is true.
		
		Examples
		--------
		>>> def even(x):
		...     return x % 2 == 0
		>>> remove(even, [1, 2, 3, 4])
		[1, 3]
	**/
	static public function remove(predicate:Dynamic, coll:Dynamic):Dynamic;
	static public function sympy_dtype(expr:Dynamic):Dynamic;
	static public function theano_dtype(expr:Dynamic):Dynamic;
}