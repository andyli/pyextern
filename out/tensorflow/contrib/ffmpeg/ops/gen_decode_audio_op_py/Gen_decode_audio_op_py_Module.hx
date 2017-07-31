/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ops.gen_decode_audio_op_py;
@:pythonImport("tensorflow.contrib.ffmpeg.ops.gen_decode_audio_op_py") extern class Gen_decode_audio_op_py_Module {
	static public function _InitOpDefLibrary():Dynamic;
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
		    A string describing the audio file format. This can be "wav" or
		    "mp3".
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
}