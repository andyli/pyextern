/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_audio_ops;
@:pythonImport("tensorflow.python.ops.gen_audio_ops") extern class Gen_audio_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _decode_wav_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Produces a visualization of audio data over time.
		
		Spectrograms are a standard way of representing audio information as a series of
		slices of frequency information, one slice for each window of time. By joining
		these together into a sequence, they form a distinctive fingerprint of the sound
		over time.
		
		This op expects to receive audio data as an input, stored as floats in the range
		-1 to 1, together with a window width in samples, and a stride specifying how
		far to move the window between slices. From this it generates a three
		dimensional output. The lowest dimension has an amplitude value for each
		frequency during that time slice. The next dimension is time, with successive
		frequency slices. The final dimension is for the channels in the input, so a
		stereo audio input would have two here for example.
		
		This means the layout when converted and saved as an image is rotated 90 degrees
		clockwise from a typical spectrogram. Time is descending down the Y axis, and
		the frequency decreases from left to right.
		
		Each value in the result represents the square root of the sum of the real and
		imaginary parts of an FFT on the current window of samples. In this way, the
		lowest dimension represents the power of each frequency in the current window,
		and adjacent windows are concatenated in the next dimension.
		
		To get a more intuitive and visual look at what this operation does, you can run
		tensorflow/examples/wav_to_spectrogram to read in an audio file and save out the
		resulting spectrogram as a PNG image.
		
		Args:
		  input: A `Tensor` of type `float32`. Float representation of audio data.
		  window_size: An `int`.
		    How wide the input window is in samples. For the highest efficiency
		    this should be a power of two, but other values are accepted.
		  stride: An `int`.
		    How widely apart the center of adjacent sample windows should be.
		  magnitude_squared: An optional `bool`. Defaults to `False`.
		    Whether to return the squared magnitude or just the
		    magnitude. Using squared magnitude can avoid extra calculations.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function audio_spectrogram(input:Dynamic, window_size:Dynamic, stride:Dynamic, ?magnitude_squared:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function audio_spectrogram
	**/
	static public function audio_spectrogram_eager_fallback(input:Dynamic, window_size:Dynamic, stride:Dynamic, ?magnitude_squared:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decode a 16-bit PCM WAV file to a float tensor.
		
		The -32768 to 32767 signed 16-bit values will be scaled to -1.0 to 1.0 in float.
		
		When desired_channels is set, if the input contains fewer channels than this
		then the last channel will be duplicated to give the requested number, else if
		the input has more channels than requested then the additional channels will be
		ignored.
		
		If desired_samples is set, then the audio will be cropped or padded with zeroes
		to the requested length.
		
		The first output contains a Tensor with the content of the audio samples. The
		lowest dimension will be the number of channels, and the second will be the
		number of samples. For example, a ten-sample-long stereo WAV file should give an
		output shape of [10, 2].
		
		Args:
		  contents: A `Tensor` of type `string`.
		    The WAV-encoded audio, usually from a file.
		  desired_channels: An optional `int`. Defaults to `-1`.
		    Number of sample channels wanted.
		  desired_samples: An optional `int`. Defaults to `-1`.
		    Length of audio requested.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (audio, sample_rate).
		
		  audio: A `Tensor` of type `float32`.
		  sample_rate: A `Tensor` of type `int32`.
	**/
	static public function decode_wav(contents:Dynamic, ?desired_channels:Dynamic, ?desired_samples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_wav
	**/
	static public function decode_wav_eager_fallback(contents:Dynamic, ?desired_channels:Dynamic, ?desired_samples:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	/**
		Encode audio data using the WAV file format.
		
		This operation will generate a string suitable to be saved out to create a .wav
		audio file. It will be encoded in the 16-bit PCM format. It takes in float
		values in the range -1.0f to 1.0f, and any outside that value will be clamped to
		that range.
		
		`audio` is a 2-D float Tensor of shape `[length, channels]`.
		`sample_rate` is a scalar Tensor holding the rate to use (e.g. 44100).
		
		Args:
		  audio: A `Tensor` of type `float32`. 2-D with shape `[length, channels]`.
		  sample_rate: A `Tensor` of type `int32`.
		    Scalar containing the sample frequency.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_wav(audio:Dynamic, sample_rate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function encode_wav
	**/
	static public function encode_wav_eager_fallback(audio:Dynamic, sample_rate:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transforms a spectrogram into a form that's useful for speech recognition.
		
		Mel Frequency Cepstral Coefficients are a way of representing audio data that's
		been effective as an input feature for machine learning. They are created by
		taking the spectrum of a spectrogram (a 'cepstrum'), and discarding some of the
		higher frequencies that are less significant to the human ear. They have a long
		history in the speech recognition world, and https://en.wikipedia.org/wiki/Mel-frequency_cepstrum
		is a good resource to learn more.
		
		Args:
		  spectrogram: A `Tensor` of type `float32`.
		    Typically produced by the Spectrogram op, with magnitude_squared
		    set to true.
		  sample_rate: A `Tensor` of type `int32`.
		    How many samples per second the source audio used.
		  upper_frequency_limit: An optional `float`. Defaults to `4000`.
		    The highest frequency to use when calculating the
		    ceptstrum.
		  lower_frequency_limit: An optional `float`. Defaults to `20`.
		    The lowest frequency to use when calculating the
		    ceptstrum.
		  filterbank_channel_count: An optional `int`. Defaults to `40`.
		    Resolution of the Mel bank used internally.
		  dct_coefficient_count: An optional `int`. Defaults to `13`.
		    How many output channels to produce per time slice.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function mfcc(spectrogram:Dynamic, sample_rate:Dynamic, ?upper_frequency_limit:Dynamic, ?lower_frequency_limit:Dynamic, ?filterbank_channel_count:Dynamic, ?dct_coefficient_count:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function mfcc
	**/
	static public function mfcc_eager_fallback(spectrogram:Dynamic, sample_rate:Dynamic, ?upper_frequency_limit:Dynamic, ?lower_frequency_limit:Dynamic, ?filterbank_channel_count:Dynamic, ?dct_coefficient_count:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}