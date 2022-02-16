/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.conditional_expressions;
@:pythonImport("tensorflow.python.autograph.operators.conditional_expressions") extern class Conditional_expressions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _py_if_exp(cond:Dynamic, if_true:Dynamic, if_false:Dynamic):Dynamic;
	/**
		Overload of if_exp that stages a TF cond.
	**/
	static public function _tf_if_exp(cond:Dynamic, if_true:Dynamic, if_false:Dynamic, expr_repr:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function if_exp(cond:Dynamic, if_true:Dynamic, if_false:Dynamic, expr_repr:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}