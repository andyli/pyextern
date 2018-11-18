/* This file is generated, do not edit! */
package tensorflow.contrib.signal.python.ops.spectral_ops;
@:pythonImport("tensorflow.contrib.signal.python.ops.spectral_ops") extern class Spectral_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return 2**N for integer N such that 2**N >= value.
	**/
	static public function _enclosing_power_of_two(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes the inverse [Short-time Fourier Transform][stft] of `stfts`.
		
		To reconstruct an original waveform, a complimentary window function should
		be used in inverse_stft. Such a window function can be constructed with
		tf.contrib.signal.inverse_stft_window_fn.
		
		Example:
		
		```python
		frame_length = 400
		frame_step = 160
		waveform = tf.placeholder(dtype=tf.float32, shape=[1000])
		stft = tf.contrib.signal.stft(waveform, frame_length, frame_step)
		inverse_stft = tf.contrib.signal.inverse_stft(
		    stft, frame_length, frame_step,
		    window_fn=tf.contrib.signal.inverse_stft_window_fn(frame_step))
		```
		
		if a custom window_fn is used in stft, it must be passed to
		inverse_stft_window_fn:
		
		```python
		frame_length = 400
		frame_step = 160
		window_fn = functools.partial(window_ops.hamming_window, periodic=True),
		waveform = tf.placeholder(dtype=tf.float32, shape=[1000])
		stft = tf.contrib.signal.stft(
		    waveform, frame_length, frame_step, window_fn=window_fn)
		inverse_stft = tf.contrib.signal.inverse_stft(
		    stft, frame_length, frame_step,
		    window_fn=tf.contrib.signal.inverse_stft_window_fn(
		       frame_step, forward_window_fn=window_fn))
		```
		
		Implemented with GPU-compatible ops and supports gradients.
		
		Args:
		  stfts: A `complex64` `[..., frames, fft_unique_bins]` `Tensor` of STFT bins
		    representing a batch of `fft_length`-point STFTs where `fft_unique_bins`
		    is `fft_length // 2 + 1`
		  frame_length: An integer scalar `Tensor`. The window length in samples.
		  frame_step: An integer scalar `Tensor`. The number of samples to step.
		  fft_length: An integer scalar `Tensor`. The size of the FFT that produced
		    `stfts`. If not provided, uses the smallest power of 2 enclosing
		    `frame_length`.
		  window_fn: A callable that takes a window length and a `dtype` keyword
		    argument and returns a `[window_length]` `Tensor` of samples in the
		    provided datatype. If set to `None`, no windowing is used.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `Tensor` of `float32` signals representing the inverse
		  STFT for each input STFT in `stfts`.
		
		Raises:
		  ValueError: If `stfts` is not at least rank 2, `frame_length` is not scalar,
		    `frame_step` is not scalar, or `fft_length` is not scalar.
		
		[stft]: https://en.wikipedia.org/wiki/Short-time_Fourier_transform
	**/
	static public function inverse_stft(stfts:Dynamic, frame_length:Dynamic, frame_step:Dynamic, ?fft_length:Dynamic, ?window_fn:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates a window function that can be used in `inverse_stft`.
		
		Constructs a window that is equal to the forward window with a further
		pointwise amplitude correction.  `inverse_stft_window_fn` is equivalent to
		`forward_window_fn` in the case where it would produce an exact inverse.
		
		See examples in `inverse_stft` documentation for usage.
		
		Args:
		  frame_step: An integer scalar `Tensor`. The number of samples to step.
		  forward_window_fn: window_fn used in the forward transform, `stft`.
		  name: An optional name for the operation.
		
		Returns:
		  A callable that takes a window length and a `dtype` keyword argument and
		    returns a `[window_length]` `Tensor` of samples in the provided datatype.
		    The returned window is suitable for reconstructing original waveform in
		    inverse_stft.
	**/
	static public function inverse_stft_window_fn(frame_step:Dynamic, ?forward_window_fn:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the [Short-time Fourier Transform][stft] of `signals`.
		
		Implemented with GPU-compatible ops and supports gradients.
		
		Args:
		  signals: A `[..., samples]` `float32` `Tensor` of real-valued signals.
		  frame_length: An integer scalar `Tensor`. The window length in samples.
		  frame_step: An integer scalar `Tensor`. The number of samples to step.
		  fft_length: An integer scalar `Tensor`. The size of the FFT to apply.
		    If not provided, uses the smallest power of 2 enclosing `frame_length`.
		  window_fn: A callable that takes a window length and a `dtype` keyword
		    argument and returns a `[window_length]` `Tensor` of samples in the
		    provided datatype. If set to `None`, no windowing is used.
		  pad_end: Whether to pad the end of `signals` with zeros when the provided
		    frame length and step produces a frame that lies partially past its end.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., frames, fft_unique_bins]` `Tensor` of `complex64` STFT values where
		  `fft_unique_bins` is `fft_length // 2 + 1` (the unique components of the
		  FFT).
		
		Raises:
		  ValueError: If `signals` is not at least rank 1, `frame_length` is
		    not scalar, or `frame_step` is not scalar.
		
		[stft]: https://en.wikipedia.org/wiki/Short-time_Fourier_transform
	**/
	static public function stft(signals:Dynamic, frame_length:Dynamic, frame_step:Dynamic, ?fft_length:Dynamic, ?window_fn:Dynamic, ?pad_end:Dynamic, ?name:Dynamic):Dynamic;
}