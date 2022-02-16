/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.advanced_activations;
@:pythonImport("tensorflow.python.keras.layers.advanced_activations") extern class Advanced_activations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Large negative number as Tensor.
		
		This function is necessary because the standard value for epsilon
		in this module (-1e9) cannot be represented using tf.float16
		
		Args:
		  tensor_type: a dtype to determine the type.
		
		Returns:
		  a large negative number.
	**/
	static public function _large_compatible_negative(tensor_type:Dynamic):Dynamic;
	static public function get_globals():Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}