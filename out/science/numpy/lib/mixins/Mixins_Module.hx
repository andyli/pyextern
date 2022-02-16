/* This file is generated, do not edit! */
package numpy.lib.mixins;
@:pythonImport("numpy.lib.mixins") extern class Mixins_Module {
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
		Implement a forward binary method with a ufunc, e.g., __add__.
	**/
	static public function _binary_method(ufunc:Dynamic, name:Dynamic):Dynamic;
	/**
		True when __array_ufunc__ is set to None.
	**/
	static public function _disables_array_ufunc(obj:Dynamic):Dynamic;
	/**
		Implement an in-place binary method with a ufunc, e.g., __iadd__.
	**/
	static public function _inplace_binary_method(ufunc:Dynamic, name:Dynamic):Dynamic;
	/**
		Implement forward, reflected and inplace binary methods with a ufunc.
	**/
	static public function _numeric_methods(ufunc:Dynamic, name:Dynamic):Dynamic;
	/**
		Implement a reflected binary method with a ufunc, e.g., __radd__.
	**/
	static public function _reflected_binary_method(ufunc:Dynamic, name:Dynamic):Dynamic;
	/**
		Implement a unary special method with a ufunc.
	**/
	static public function _unary_method(ufunc:Dynamic, name:Dynamic):Dynamic;
}