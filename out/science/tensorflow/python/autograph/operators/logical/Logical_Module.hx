/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.logical;
@:pythonImport("tensorflow.python.autograph.operators.logical") extern class Logical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overload of "equal" that falls back to Python's default implementation.
	**/
	static public function _py_equal(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Lazy-eval equivalent of "and" in Python.
	**/
	static public function _py_lazy_and(cond:Dynamic, b:Dynamic):Dynamic;
	/**
		Lazy-eval equivalent of "or" in Python.
	**/
	static public function _py_lazy_or(cond:Dynamic, b:Dynamic):Dynamic;
	/**
		Default Python implementation of the "not_" operator.
	**/
	static public function _py_not(a:Dynamic):Dynamic;
	/**
		Overload of "equal" for Tensors.
	**/
	static public function _tf_equal(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Lazy-eval equivalent of "and" for Tensors.
	**/
	static public function _tf_lazy_and(cond:Dynamic, b:Dynamic):Dynamic;
	/**
		Lazy-eval equivalent of "or" for Tensors.
	**/
	static public function _tf_lazy_or(cond:Dynamic, b:Dynamic):Dynamic;
	/**
		Implementation of the "not_" operator for TensorFlow.
	**/
	static public function _tf_not(a:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Functional form of "and". Uses lazy evaluation semantics.
	**/
	static public function and_(a:Dynamic, b:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Functional form of "equal".
	**/
	static public function eq(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Functional form of "not".
	**/
	static public function not_(a:Dynamic):Dynamic;
	/**
		Functional form of "not-equal".
	**/
	static public function not_eq(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Functional form of "or". Uses lazy evaluation semantics.
	**/
	static public function or_(a:Dynamic, b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}