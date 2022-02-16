/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.category_encoding;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.category_encoding") extern class Category_encoding_Module {
	static public var COUNT : Dynamic;
	static public var INT : Dynamic;
	static public var MULTI_HOT : Dynamic;
	static public var ONE_HOT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Apply binary or count encoding to an input.
	**/
	static public function dense_bincount(inputs:Dynamic, out_depth:Dynamic, binary_output:Dynamic, ?count_weights:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply binary or count encoding to an input and return a sparse tensor.
	**/
	static public function sparse_bincount(inputs:Dynamic, out_depth:Dynamic, binary_output:Dynamic, ?count_weights:Dynamic):Dynamic;
}