/* This file is generated, do not edit! */
package tensorflow.contrib.signal.python.ops.mel_ops;
@:pythonImport("tensorflow.contrib.signal.python.ops.mel_ops") extern class Mel_ops_Module {
	static public var _MEL_BREAK_FREQUENCY_HERTZ : Dynamic;
	static public var _MEL_HIGH_FREQUENCY_Q : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts frequencies in `frequencies_hertz` in Hertz to the mel scale.
		
		Args:
		  frequencies_hertz: A `Tensor` of frequencies in Hertz.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of the same shape and type of `frequencies_hertz` containing
		  frequencies in the mel scale.
	**/
	static public function _hertz_to_mel(frequencies_hertz:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts frequencies in `mel_values` from the mel scale to linear scale.
		
		Args:
		  mel_values: A `Tensor` of frequencies in the mel scale.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of the same shape and type as `mel_values` containing linear
		  scale frequencies in Hertz.
	**/
	static public function _mel_to_hertz(mel_values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks the inputs to linear_to_mel_weight_matrix.
	**/
	static public function _validate_arguments(num_mel_bins:Dynamic, sample_rate:Dynamic, lower_edge_hertz:Dynamic, upper_edge_hertz:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a matrix to warp linear scale spectrograms to the [mel scale][mel].
		
		Returns a weight matrix that can be used to re-weight a `Tensor` containing
		`num_spectrogram_bins` linearly sampled frequency information from
		`[0, sample_rate / 2]` into `num_mel_bins` frequency information from
		`[lower_edge_hertz, upper_edge_hertz]` on the [mel scale][mel].
		
		For example, the returned matrix `A` can be used to right-multiply a
		spectrogram `S` of shape `[frames, num_spectrogram_bins]` of linear
		scale spectrum values (e.g. STFT magnitudes) to generate a "mel spectrogram"
		`M` of shape `[frames, num_mel_bins]`.
		
		    # `S` has shape [frames, num_spectrogram_bins]
		    # `M` has shape [frames, num_mel_bins]
		    M = tf.matmul(S, A)
		
		The matrix can be used with `tf.tensordot` to convert an arbitrary rank
		`Tensor` of linear-scale spectral bins into the mel scale.
		
		    # S has shape [..., num_spectrogram_bins].
		    # M has shape [..., num_mel_bins].
		    M = tf.tensordot(S, A, 1)
		    # tf.tensordot does not support shape inference for this case yet.
		    M.set_shape(S.shape[:-1].concatenate(A.shape[-1:]))
		
		Args:
		  num_mel_bins: Python int. How many bands in the resulting mel spectrum.
		  num_spectrogram_bins: An integer `Tensor`. How many bins there are in the
		    source spectrogram data, which is understood to be `fft_size // 2 + 1`,
		    i.e. the spectrogram only contains the nonredundant FFT bins.
		  sample_rate: Python float. Samples per second of the input signal used to
		    create the spectrogram. We need this to figure out the actual frequencies
		    for each spectrogram bin, which dictates how they are mapped into the mel
		    scale.
		  lower_edge_hertz: Python float. Lower bound on the frequencies to be
		    included in the mel spectrum. This corresponds to the lower edge of the
		    lowest triangular band.
		  upper_edge_hertz: Python float. The desired top edge of the highest
		    frequency band.
		  dtype: The `DType` of the result matrix. Must be a floating point type.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of shape `[num_spectrogram_bins, num_mel_bins]`.
		
		Raises:
		  ValueError: If num_mel_bins/num_spectrogram_bins/sample_rate are not
		    positive, lower_edge_hertz is negative, frequency edges are incorrectly
		    ordered, or upper_edge_hertz is larger than the Nyquist frequency.
		
		[mel]: https://en.wikipedia.org/wiki/Mel_scale
	**/
	static public function linear_to_mel_weight_matrix(?num_mel_bins:Dynamic, ?num_spectrogram_bins:Dynamic, ?sample_rate:Dynamic, ?lower_edge_hertz:Dynamic, ?upper_edge_hertz:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}