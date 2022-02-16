/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.mfcc_ops;
@:pythonImport("tensorflow.python.ops.signal.mfcc_ops") extern class Mfcc_ops_Module {
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
	/**
		Computes [MFCCs][mfcc] of `log_mel_spectrograms`.
		
		Implemented with GPU-compatible ops and supports gradients.
		
		[Mel-Frequency Cepstral Coefficient (MFCC)][mfcc] calculation consists of
		taking the DCT-II of a log-magnitude mel-scale spectrogram. [HTK][htk]'s MFCCs
		use a particular scaling of the DCT-II which is almost orthogonal
		normalization. We follow this convention.
		
		All `num_mel_bins` MFCCs are returned and it is up to the caller to select
		a subset of the MFCCs based on their application. For example, it is typical
		to only use the first few for speech recognition, as this results in
		an approximately pitch-invariant representation of the signal.
		
		For example:
		
		```python
		batch_size, num_samples, sample_rate = 32, 32000, 16000.0
		# A Tensor of [batch_size, num_samples] mono PCM samples in the range [-1, 1].
		pcm = tf.random.normal([batch_size, num_samples], dtype=tf.float32)
		
		# A 1024-point STFT with frames of 64 ms and 75% overlap.
		stfts = tf.signal.stft(pcm, frame_length=1024, frame_step=256,
		                       fft_length=1024)
		spectrograms = tf.abs(stfts)
		
		# Warp the linear scale spectrograms into the mel-scale.
		num_spectrogram_bins = stfts.shape[-1].value
		lower_edge_hertz, upper_edge_hertz, num_mel_bins = 80.0, 7600.0, 80
		linear_to_mel_weight_matrix = tf.signal.linear_to_mel_weight_matrix(
		  num_mel_bins, num_spectrogram_bins, sample_rate, lower_edge_hertz,
		  upper_edge_hertz)
		mel_spectrograms = tf.tensordot(
		  spectrograms, linear_to_mel_weight_matrix, 1)
		mel_spectrograms.set_shape(spectrograms.shape[:-1].concatenate(
		  linear_to_mel_weight_matrix.shape[-1:]))
		
		# Compute a stabilized log to get log-magnitude mel-scale spectrograms.
		log_mel_spectrograms = tf.math.log(mel_spectrograms + 1e-6)
		
		# Compute MFCCs from log_mel_spectrograms and take the first 13.
		mfccs = tf.signal.mfccs_from_log_mel_spectrograms(
		  log_mel_spectrograms)[..., :13]
		```
		
		Args:
		  log_mel_spectrograms: A `[..., num_mel_bins]` `float32`/`float64` `Tensor`
		    of log-magnitude mel-scale spectrograms.
		  name: An optional name for the operation.
		Returns:
		  A `[..., num_mel_bins]` `float32`/`float64` `Tensor` of the MFCCs of
		  `log_mel_spectrograms`.
		
		Raises:
		  ValueError: If `num_mel_bins` is not positive.
		
		[mfcc]: https://en.wikipedia.org/wiki/Mel-frequency_cepstrum
		[htk]: https://en.wikipedia.org/wiki/HTK_(software)
	**/
	static public function mfccs_from_log_mel_spectrograms(log_mel_spectrograms:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}