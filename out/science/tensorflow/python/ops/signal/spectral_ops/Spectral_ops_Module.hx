/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.spectral_ops;
@:pythonImport("tensorflow.python.ops.signal.spectral_ops") extern class Spectral_ops_Module {
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
		Computes the inverse modified DCT of `mdcts`.
		
		To reconstruct an original waveform, the same window function should
		be used with `mdct` and `inverse_mdct`.
		
		Example usage:
		
		>>> @tf.function
		... def compare_round_trip():
		...   samples = 1000
		...   frame_length = 400
		...   halflen = frame_length // 2
		...   waveform = tf.random.normal(dtype=tf.float32, shape=[samples])
		...   waveform_pad = tf.pad(waveform, [[halflen, 0],])
		...   mdct = tf.signal.mdct(waveform_pad, frame_length, pad_end=True,
		...                         window_fn=tf.signal.vorbis_window)
		...   inverse_mdct = tf.signal.inverse_mdct(mdct,
		...                                         window_fn=tf.signal.vorbis_window)
		...   inverse_mdct = inverse_mdct[halflen: halflen + samples]
		...   return waveform, inverse_mdct
		>>> waveform, inverse_mdct = compare_round_trip()
		>>> np.allclose(waveform.numpy(), inverse_mdct.numpy(), rtol=1e-3, atol=1e-4)
		True
		
		Implemented with TPU/GPU-compatible ops and supports gradients.
		
		Args:
		  mdcts: A `float32`/`float64` `[..., frames, frame_length // 2]`
		    `Tensor` of MDCT bins representing a batch of `frame_length // 2`-point
		    MDCTs.
		  window_fn: A callable that takes a frame_length and a `dtype` keyword
		    argument and returns a `[frame_length]` `Tensor` of samples in the
		    provided datatype. If set to `None`, a rectangular window with a scale of
		    1/sqrt(2) is used. For perfect reconstruction of a signal from `mdct`
		    followed by `inverse_mdct`, please use `tf.signal.vorbis_window`,
		    `tf.signal.kaiser_bessel_derived_window` or `None`. If using another
		    window function, make sure that w[n]^2 + w[n + frame_length // 2]^2 = 1
		    and w[n] = w[frame_length - n - 1] for n = 0,...,frame_length // 2 - 1 to
		    achieve perfect reconstruction.
		  norm: If "ortho", orthonormal inverse DCT4 is performed, if it is None,
		    a regular dct4 followed by scaling of `1/frame_length` is performed.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `Tensor` of `float32`/`float64` signals representing
		  the inverse MDCT for each input MDCT in `mdcts` where `samples` is
		  `(frames - 1) * (frame_length // 2) + frame_length`.
		
		Raises:
		  ValueError: If `mdcts` is not at least rank 2.
		
		[mdct]: https://en.wikipedia.org/wiki/Modified_discrete_cosine_transform
	**/
	static public function inverse_mdct(mdcts:Dynamic, ?window_fn:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the inverse [Short-time Fourier Transform][stft] of `stfts`.
		
		To reconstruct an original waveform, a complementary window function should
		be used with `inverse_stft`. Such a window function can be constructed with
		`tf.signal.inverse_stft_window_fn`.
		Example:
		
		```python
		frame_length = 400
		frame_step = 160
		waveform = tf.random.normal(dtype=tf.float32, shape=[1000])
		stft = tf.signal.stft(waveform, frame_length, frame_step)
		inverse_stft = tf.signal.inverse_stft(
		    stft, frame_length, frame_step,
		    window_fn=tf.signal.inverse_stft_window_fn(frame_step))
		```
		
		If a custom `window_fn` is used with `tf.signal.stft`, it must be passed to
		`tf.signal.inverse_stft_window_fn`:
		
		```python
		frame_length = 400
		frame_step = 160
		window_fn = tf.signal.hamming_window
		waveform = tf.random.normal(dtype=tf.float32, shape=[1000])
		stft = tf.signal.stft(
		    waveform, frame_length, frame_step, window_fn=window_fn)
		inverse_stft = tf.signal.inverse_stft(
		    stft, frame_length, frame_step,
		    window_fn=tf.signal.inverse_stft_window_fn(
		       frame_step, forward_window_fn=window_fn))
		```
		
		Implemented with TPU/GPU-compatible ops and supports gradients.
		
		Args:
		  stfts: A `complex64`/`complex128` `[..., frames, fft_unique_bins]`
		    `Tensor` of STFT bins representing a batch of `fft_length`-point STFTs
		    where `fft_unique_bins` is `fft_length // 2 + 1`
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
		  A `[..., samples]` `Tensor` of `float32`/`float64` signals representing
		  the inverse STFT for each input STFT in `stfts`.
		
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
	/**
		Computes the [Modified Discrete Cosine Transform][mdct] of `signals`.
		
		Implemented with TPU/GPU-compatible ops and supports gradients.
		
		Args:
		  signals: A `[..., samples]` `float32`/`float64` `Tensor` of real-valued
		    signals.
		  frame_length: An integer scalar `Tensor`. The window length in samples
		    which must be divisible by 4.
		  window_fn: A callable that takes a frame_length and a `dtype` keyword
		    argument and returns a `[frame_length]` `Tensor` of samples in the
		    provided datatype. If set to `None`, a rectangular window with a scale of
		    1/sqrt(2) is used. For perfect reconstruction of a signal from `mdct`
		    followed by `inverse_mdct`, please use `tf.signal.vorbis_window`,
		    `tf.signal.kaiser_bessel_derived_window` or `None`. If using another
		    window function, make sure that w[n]^2 + w[n + frame_length // 2]^2 = 1
		    and w[n] = w[frame_length - n - 1] for n = 0,...,frame_length // 2 - 1 to
		    achieve perfect reconstruction.
		  pad_end: Whether to pad the end of `signals` with zeros when the provided
		    frame length and step produces a frame that lies partially past its end.
		  norm: If it is None, unnormalized dct4 is used, if it is "ortho"
		    orthonormal dct4 is used.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., frames, frame_length // 2]` `Tensor` of `float32`/`float64`
		  MDCT values where `frames` is roughly `samples // (frame_length // 2)`
		  when `pad_end=False`.
		
		Raises:
		  ValueError: If `signals` is not at least rank 1, `frame_length` is
		    not scalar, or `frame_length` is not a multiple of `4`.
		
		[mdct]: https://en.wikipedia.org/wiki/Modified_discrete_cosine_transform
	**/
	static public function mdct(signals:Dynamic, frame_length:Dynamic, ?window_fn:Dynamic, ?pad_end:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the [Short-time Fourier Transform][stft] of `signals`.
		
		Implemented with TPU/GPU-compatible ops and supports gradients.
		
		Args:
		  signals: A `[..., samples]` `float32`/`float64` `Tensor` of real-valued
		    signals.
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
		  A `[..., frames, fft_unique_bins]` `Tensor` of `complex64`/`complex128`
		  STFT values where `fft_unique_bins` is `fft_length // 2 + 1` (the unique
		  components of the FFT).
		
		Raises:
		  ValueError: If `signals` is not at least rank 1, `frame_length` is
		    not scalar, or `frame_step` is not scalar.
		
		[stft]: https://en.wikipedia.org/wiki/Short-time_Fourier_transform
	**/
	static public function stft(signals:Dynamic, frame_length:Dynamic, frame_step:Dynamic, ?fft_length:Dynamic, ?window_fn:Dynamic, ?pad_end:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}