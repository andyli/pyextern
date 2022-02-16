/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_arrays;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_arrays") extern class Np_arrays_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Wrapper over `tf.convert_to_tensor`.
		
		Args:
		  value: value to convert
		  dtype: (optional) the type we would like it to be converted to.
		  dtype_hint: (optional) soft preference for the type we would like it to be
		    converted to. `tf.convert_to_tensor` will attempt to convert value to this
		    type first, but will not fail if conversion is not possible falling back
		    to inferring the type instead.
		
		Returns:
		  Value converted to tf.Tensor.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?dtype_hint:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}