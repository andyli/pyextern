/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.py_builtins;
@:pythonImport("tensorflow.python.autograph.operators.py_builtins") extern class Py_builtins_Module {
	static public var BUILTIN_FUINCTIONS_MAP : Dynamic;
	static public var SUPPORTED_BUILTINS : Dynamic;
	static public var UNDEFINED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _py_abs(x:Dynamic):Dynamic;
	static public function _py_float(x:Dynamic):Dynamic;
	static public function _py_int(x:Dynamic, base:Dynamic):Dynamic;
	static public function _py_len(s:Dynamic):Dynamic;
	static public function _py_range(start_or_stop:Dynamic, stop:Dynamic, step:Dynamic):Dynamic;
	static public function _tf_abs(x:Dynamic):Dynamic;
	static public function _tf_float(x:Dynamic):Dynamic;
	static public function _tf_int(x:Dynamic, base:Dynamic):Dynamic;
	/**
		Overload of print_ as a py_func implementation.
	**/
	static public function _tf_py_func_print(objects:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _tf_range(start_or_stop:Dynamic, stop:Dynamic, step:Dynamic):Dynamic;
	static public function _tf_tensor_array_len(s:Dynamic):Dynamic;
	/**
		Overload of len_ for Tensor arguments.
	**/
	static public function _tf_tensor_len(s:Dynamic):Dynamic;
	static public function _tf_tensor_list_len(s:Dynamic):Dynamic;
	static public function abs_(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function float_(?x:Dynamic):Dynamic;
	static public function int_(?x:Dynamic, ?base:Dynamic):Dynamic;
	static public function len_(s:Dynamic):Dynamic;
	static public function overload_of(f:Dynamic):Dynamic;
	static public function print_(?objects:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function range_(start_or_stop:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
}