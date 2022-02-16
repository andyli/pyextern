/* This file is generated, do not edit! */
package tensorflow.python.data.util.convert;
@:pythonImport("tensorflow.python.data.util.convert") extern class Convert_Module {
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
	static public function optional_param_to_tensor(argument_name:Dynamic, argument_value:Dynamic, ?argument_default:Dynamic, ?argument_dtype:Dynamic):Dynamic;
	/**
		Returns a `tf.Tensor` that represents the given shape.
		
		Args:
		  shape_like: A value that can be converted to a `tf.TensorShape` or a
		    `tf.Tensor`.
		
		Returns:
		  A 1-D `tf.Tensor` of `tf.int64` elements representing the given shape, where
		  `-1` is substituted for any unknown dimensions.
	**/
	static public function partial_shape_to_tensor(shape_like:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}