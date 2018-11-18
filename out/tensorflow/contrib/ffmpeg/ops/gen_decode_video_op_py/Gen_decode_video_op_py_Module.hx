/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ops.gen_decode_video_op_py;
@:pythonImport("tensorflow.contrib.ffmpeg.ops.gen_decode_video_op_py") extern class Gen_decode_video_op_py_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Processes the contents of an video file into a tensor using FFmpeg to decode
		
		the file.
		
		Args:
		  contents: A `Tensor` of type `string`.
		    The binary contents of the video file to decode. This is a
		    scalar.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
		  A rank-4 `Tensor` that has `[frames, height, width, 3]` RGB as output.
	**/
	static public function decode_video(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_video
	**/
	static public function decode_video_eager_fallback(contents:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}