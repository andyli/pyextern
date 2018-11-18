/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ffmpeg_ops;
@:pythonImport("tensorflow.contrib.ffmpeg.ffmpeg_ops") extern class Ffmpeg_ops_Module {
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
		Create an op that decodes the contents of an audio file. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-09-04.
		Instructions for updating:
		This will be deleted and should not be used.
		
		Note that ffmpeg is free to select the "best" audio track from an mp4.
		https://trac.ffmpeg.org/wiki/Map
		
		Args:
		  contents: The binary contents of the audio file to decode. This is a
		      scalar.
		  file_format: A string or scalar string tensor specifying which
		      format the contents will conform to. This can be mp3, mp4, ogg,
		      or wav.
		  samples_per_second: The number of samples per second that is
		      assumed, as an `int` or scalar `int32` tensor. In some cases,
		      resampling will occur to generate the correct sample rate.
		  channel_count: The number of channels that should be created from the
		      audio contents, as an `int` or scalar `int32` tensor. If the
		      `contents` have more than this number, then some channels will
		      be merged or dropped. If `contents` has fewer than this, then
		      additional channels will be created from the existing ones.
		  stream: A string specifying which stream from the content file
		      should be decoded, e.g., '0' means the 0-th stream.
		      The default value is '' which leaves the decision to ffmpeg.
		
		Returns:
		  A rank-2 tensor that has time along dimension 0 and channels along
		  dimension 1. Dimension 0 will be `samples_per_second *
		  length_in_seconds` wide, and dimension 1 will be `channel_count`
		  wide. If ffmpeg fails to decode the audio then an empty tensor will
		  be returned.
	**/
	static public function decode_audio(contents:Dynamic, ?file_format:Dynamic, ?samples_per_second:Dynamic, ?channel_count:Dynamic, ?stream:Dynamic):Dynamic;
	/**
		Create an op that decodes the contents of a video file. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-09-04.
		Instructions for updating:
		This will be deleted and should not be used.
		
		Args:
		  contents: The binary contents of the video file to decode. This is a
		    scalar.
		
		Returns:
		  A rank-4 `Tensor` that has `[frames, height, width, 3]` RGB as output.
	**/
	static public function decode_video(contents:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates an op that encodes an audio file using sampled audio from a tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-09-04.
		Instructions for updating:
		This will be deleted and should not be used.
		
		Args:
		  audio: A rank-2 `Tensor` that has time along dimension 0 and
		      channels along dimension 1. Dimension 0 is `samples_per_second *
		      length_in_seconds` long.
		  file_format: The type of file to encode, as a string or rank-0
		      string tensor. "wav" is the only supported format.
		  samples_per_second: The number of samples in the audio tensor per
		      second of audio, as an `int` or rank-0 `int32` tensor.
		
		Returns:
		  A scalar tensor that contains the encoded audio in the specified file
		  format.
	**/
	static public function encode_audio(audio:Dynamic, ?file_format:Dynamic, ?samples_per_second:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}