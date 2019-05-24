/* This file is generated, do not edit! */
package tensorflow.compat.v1.lite;
@:pythonImport("tensorflow.compat.v1.lite") extern class Lite_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a model using TOCO. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `lite.TFLiteConverter` instead.
		
		Typically this function is used to convert from TensorFlow GraphDef to TFLite.
		Conversion can be customized by providing arguments that are forwarded to
		`build_toco_convert_protos` (see documentation for details). This function has
		been deprecated. Please use `lite.TFLiteConverter` instead.
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`),
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function toco_convert(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}