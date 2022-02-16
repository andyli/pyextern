/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.einsum_dense;
@:pythonImport("tensorflow.python.keras.layers.einsum_dense") extern class Einsum_dense_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Analyzes an einsum string to determine the required weight shape.
	**/
	static public function _analyze_einsum_string(equation:Dynamic, bias_axes:Dynamic, input_shape:Dynamic, output_shape:Dynamic):Dynamic;
	/**
		Analyze an pre-split einsum string to find the weight shape.
	**/
	static public function _analyze_split_string(split_string:Dynamic, bias_axes:Dynamic, input_shape:Dynamic, output_shape:Dynamic, ?left_elided:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}