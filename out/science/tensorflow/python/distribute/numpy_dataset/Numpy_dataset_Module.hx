/* This file is generated, do not edit! */
package tensorflow.python.distribute.numpy_dataset;
@:pythonImport("tensorflow.python.distribute.numpy_dataset") extern class Numpy_dataset_Module {
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
		Initialize `input_var` to `numpy_input` using `session` in graph mode.
	**/
	static public function init_var_from_numpy(input_var:Dynamic, numpy_input:Dynamic, session:Dynamic):Dynamic;
	/**
		Create a dataset on `colocate_with` from `numpy_input`.
	**/
	static public function one_host_numpy_dataset(numpy_input:Dynamic, colocate_with:Dynamic, session:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}