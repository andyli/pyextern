/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ops.gen_decode_audio_op_py;
@:pythonImport("tensorflow.contrib.ffmpeg.ops.gen_decode_audio_op_py") extern class Gen_decode_audio_op_py_Module {
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
		Processes the contents of an audio file into a tensor using FFmpeg to decode
		
		the file.
		
		One row of the tensor is created for each channel in the audio file. Each
		channel contains audio samples starting at the beginning of the audio and
		having `1/samples_per_second` time between them. If the `channel_count` is
		different from the contents of the file, channels will be merged or created.
		
		Args:
		  contents: A `Tensor` of type `string`. The binary audio file contents.
		  file_format: A `string`.
		    A string describing the audio file format. This can be "mp3", "mp4", "ogg", or "wav".
		  samples_per_second: An `int`.
		    The number of samples per second that the audio should have.
		  channel_count: An `int`. The number of channels of audio to read.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A rank 2 tensor containing all tracks of the audio. Dimension 0
		  is time and dimension 1 is the channel. If ffmpeg fails to decode the audio
		  then an empty tensor will be returned.
	**/
	static public function decode_audio(contents:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, channel_count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_audio
	**/
	static public function decode_audio_eager_fallback(contents:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, channel_count:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Processes the contents of an audio file into a tensor using FFmpeg to decode
		
		the file.
		
		One row of the tensor is created for each channel in the audio file. Each
		channel contains audio samples starting at the beginning of the audio and
		having `1/samples_per_second` time between them. If the `channel_count` is
		different from the contents of the file, channels will be merged or created.
		
		Args:
		  contents: A `Tensor` of type `string`.
		    The binary audio file contents, as a string or rank-0 string
		    tensor.
		  file_format: A `Tensor` of type `string`.
		    A string or rank-0 string tensor describing the audio file
		    format. This must be one of: "mp3", "mp4", "ogg", "wav".
		  samples_per_second: A `Tensor` of type `int32`.
		    The number of samples per second that the audio
		    should have, as an `int` or rank-0 `int32` tensor. This value must
		    be positive.
		  channel_count: A `Tensor` of type `int32`.
		    The number of channels of audio to read, as an int rank-0
		    int32 tensor. Must be a positive integer.
		  stream: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A rank-2 tensor containing all tracks of the audio.
		  Dimension 0 is time and dimension 1 is the channel. If ffmpeg fails
		  to decode the audio then an empty tensor will be returned.
	**/
	static public function decode_audio_v2(contents:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, channel_count:Dynamic, ?stream:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_audio_v2
	**/
	static public function decode_audio_v2_eager_fallback(contents:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, channel_count:Dynamic, ?stream:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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