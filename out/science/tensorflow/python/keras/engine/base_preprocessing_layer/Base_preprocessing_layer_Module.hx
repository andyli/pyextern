/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.base_preprocessing_layer;
@:pythonImport("tensorflow.python.keras.engine.base_preprocessing_layer") extern class Base_preprocessing_layer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Disallow calling a method inside a `tf.function`.
	**/
	static public function _disallow_inside_tf_function(method_name:Dynamic):Dynamic;
	/**
		Convert a TensorLike, CompositeTensor, or ndarray into a Python list.
	**/
	static public function convert_to_list(values:Dynamic, ?sparse_default_value:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}