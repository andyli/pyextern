/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.get_layer_policy;
@:pythonImport("tensorflow.python.keras.mixed_precision.get_layer_policy") extern class Get_layer_policy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the dtype policy of a layer.
		
		Warning: This function is deprecated. Use
		`tf.keras.layers.Layer.dtype_policy` instead.
		
		Args:
		  layer: A `tf.keras.layers.Layer`.
		
		Returns:
		  The `tf.keras.mixed_precision.Policy` of the layer.
	**/
	static public function get_layer_policy(layer:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}