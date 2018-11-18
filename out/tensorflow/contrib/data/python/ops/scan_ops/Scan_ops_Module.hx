/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.scan_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.scan_ops") extern class Scan_ops_Module {
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
	static public var print_function : Dynamic;
	/**
		A transformation that scans a function across an input dataset. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.scan(...)`.
		
		This transformation is a stateful relative of `tf.data.Dataset.map`.
		In addition to mapping `scan_func` across the elements of the input dataset,
		`scan()` accumulates one or more state tensors, whose initial values are
		`initial_state`.
		
		Args:
		  initial_state: A nested structure of tensors, representing the initial state
		    of the accumulator.
		  scan_func: A function that maps `(old_state, input_element)` to
		    `(new_state, output_element). It must take two arguments and return a
		    pair of nested structures of tensors. The `new_state` must match the
		    structure of `initial_state`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function scan(initial_state:Dynamic, scan_func:Dynamic):Dynamic;
}