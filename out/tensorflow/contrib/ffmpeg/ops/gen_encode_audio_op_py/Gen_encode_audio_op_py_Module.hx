/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ops.gen_encode_audio_op_py;
@:pythonImport("tensorflow.contrib.ffmpeg.ops.gen_encode_audio_op_py") extern class Gen_encode_audio_op_py_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _encode_audio_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Processes a `Tensor` containing sampled audio with the number of channels
		
		and length of the audio specified by the dimensions of the `Tensor`. The
		audio is converted into a string that, when saved to disk, will be equivalent
		to the audio in the specified audio format.
		
		The input audio has one row of the tensor for each channel in the audio file.
		Each channel contains audio samples starting at the beginning of the audio and
		having `1/samples_per_second` time between them. The output file will contain
		all of the audio channels contained in the tensor.
		
		Args:
		  sampled_audio: A `Tensor` of type `float32`.
		    A rank 2 tensor containing all tracks of the audio. Dimension 0
		    is time and dimension 1 is the channel.
		  file_format: A `string`.
		    A string describing the audio file format. This must be "wav".
		  samples_per_second: An `int`.
		    The number of samples per second that the audio should have.
		  bits_per_second: An optional `int`. Defaults to `192000`.
		    The approximate bitrate of the encoded audio file. This is
		    ignored by the "wav" file format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. The binary audio file contents.
	**/
	static public function encode_audio(sampled_audio:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, ?bits_per_second:Dynamic, ?name:Dynamic):Dynamic;
}