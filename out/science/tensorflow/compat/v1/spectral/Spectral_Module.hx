/* This file is generated, do not edit! */
package tensorflow.compat.v1.spectral;
@:pythonImport("tensorflow.compat.v1.spectral") extern class Spectral_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the 1D [Discrete Cosine Transform (DCT)][dct] of `input`.
		
		Types I, II, III and IV are supported.
		Type I is implemented using a length `2N` padded `tf.signal.rfft`.
		Type II is implemented using a length `2N` padded `tf.signal.rfft`, as
		 described here: [Type 2 DCT using 2N FFT padded (Makhoul)]
		 (https://dsp.stackexchange.com/a/10606).
		Type III is a fairly straightforward inverse of Type II
		 (i.e. using a length `2N` padded `tf.signal.irfft`).
		 Type IV is calculated through 2N length DCT2 of padded signal and
		picking the odd indices.
		
		@compatibility(scipy)
		Equivalent to [scipy.fftpack.dct]
		 (https://docs.scipy.org/doc/scipy-1.4.0/reference/generated/scipy.fftpack.dct.html)
		 for Type-I, Type-II, Type-III and Type-IV DCT.
		@end_compatibility
		
		Args:
		  input: A `[..., samples]` `float32`/`float64` `Tensor` containing the
		    signals to take the DCT of.
		  type: The DCT type to perform. Must be 1, 2, 3 or 4.
		  n: The length of the transform. If length is less than sequence length,
		    only the first n elements of the sequence are considered for the DCT.
		    If n is greater than the sequence length, zeros are padded and then
		    the DCT is computed as usual.
		  axis: For future expansion. The axis to compute the DCT along. Must be `-1`.
		  norm: The normalization to apply. `None` for no normalization or `'ortho'`
		    for orthonormal normalization.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `float32`/`float64` `Tensor` containing the DCT of
		  `input`.
		
		Raises:
		  ValueError: If `type` is not `1`, `2`, `3` or `4`, `axis` is
		    not `-1`, `n` is not `None` or greater than 0,
		    or `norm` is not `None` or `'ortho'`.
		  ValueError: If `type` is `1` and `norm` is `ortho`.
		
		[dct]: https://en.wikipedia.org/wiki/Discrete_cosine_transform
	**/
	static public function dct(input:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform over the inner-most
		dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D fast Fourier transform.
		
		Computes the 2-dimensional discrete Fourier transform over the inner-most
		2 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		3D fast Fourier transform.
		
		Computes the 3-dimensional discrete Fourier transform over the inner-most 3
		dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the 1D [Inverse Discrete Cosine Transform (DCT)][idct] of `input`.
		
		Currently Types I, II, III, IV are supported. Type III is the inverse of
		Type II, and vice versa.
		
		Note that you must re-normalize by 1/(2n) to obtain an inverse if `norm` is
		not `'ortho'`. That is:
		`signal == idct(dct(signal)) * 0.5 / signal.shape[-1]`.
		When `norm='ortho'`, we have:
		`signal == idct(dct(signal, norm='ortho'), norm='ortho')`.
		
		@compatibility(scipy)
		Equivalent to [scipy.fftpack.idct]
		 (https://docs.scipy.org/doc/scipy-1.4.0/reference/generated/scipy.fftpack.idct.html)
		 for Type-I, Type-II, Type-III and Type-IV DCT.
		@end_compatibility
		
		Args:
		  input: A `[..., samples]` `float32`/`float64` `Tensor` containing the
		    signals to take the DCT of.
		  type: The IDCT type to perform. Must be 1, 2, 3 or 4.
		  n: For future expansion. The length of the transform. Must be `None`.
		  axis: For future expansion. The axis to compute the DCT along. Must be `-1`.
		  norm: The normalization to apply. `None` for no normalization or `'ortho'`
		    for orthonormal normalization.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `float32`/`float64` `Tensor` containing the IDCT of
		  `input`.
		
		Raises:
		  ValueError: If `type` is not `1`, `2` or `3`, `n` is not `None, `axis` is
		    not `-1`, or `norm` is not `None` or `'ortho'`.
		
		[idct]:
		https://en.wikipedia.org/wiki/Discrete_cosine_transform#Inverse_transforms
	**/
	static public function idct(input:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse fast Fourier transform.
		
		Computes the inverse 1-dimensional discrete Fourier transform over the
		inner-most dimension of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 2D fast Fourier transform.
		
		Computes the inverse 2-dimensional discrete Fourier transform over the
		inner-most 2 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 3D fast Fourier transform.
		
		Computes the inverse 3-dimensional discrete Fourier transform over the
		inner-most 3 dimensions of `input`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse real-valued fast Fourier transform.
		
		Computes the inverse 1-dimensional discrete Fourier transform of a real-valued
		signal over the inner-most dimension of `input`.
		
		The inner-most dimension of `input` is assumed to be the result of `RFFT`: the
		`fft_length / 2 + 1` unique components of the DFT of a real-valued signal. If
		`fft_length` is not provided, it is computed from the size of the inner-most
		dimension of `input` (`fft_length = 2 * (inner - 1)`). If the FFT length used to
		compute `input` is odd, it should be provided since it cannot be inferred
		properly.
		
		Along the axis `IRFFT` is computed on, if `fft_length / 2 + 1` is smaller
		than the corresponding dimension of `input`, the dimension is cropped. If it is
		larger, the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 2D real-valued fast Fourier transform.
		
		Computes the inverse 2-dimensional discrete Fourier transform of a real-valued
		signal over the inner-most 2 dimensions of `input`.
		
		The inner-most 2 dimensions of `input` are assumed to be the result of `RFFT2D`:
		The inner-most dimension contains the `fft_length / 2 + 1` unique components of
		the DFT of a real-valued signal. If `fft_length` is not provided, it is computed
		from the size of the inner-most 2 dimensions of `input`. If the FFT length used
		to compute `input` is odd, it should be provided since it cannot be inferred
		properly.
		
		Along each axis `IRFFT2D` is computed on, if `fft_length` (or
		`fft_length / 2 + 1` for the inner-most dimension) is smaller than the
		corresponding dimension of `input`, the dimension is cropped. If it is larger,
		the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft2d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 3D real-valued fast Fourier transform.
		
		Computes the inverse 3-dimensional discrete Fourier transform of a real-valued
		signal over the inner-most 3 dimensions of `input`.
		
		The inner-most 3 dimensions of `input` are assumed to be the result of `RFFT3D`:
		The inner-most dimension contains the `fft_length / 2 + 1` unique components of
		the DFT of a real-valued signal. If `fft_length` is not provided, it is computed
		from the size of the inner-most 3 dimensions of `input`. If the FFT length used
		to compute `input` is odd, it should be provided since it cannot be inferred
		properly.
		
		Along each axis `IRFFT3D` is computed on, if `fft_length` (or
		`fft_length / 2 + 1` for the inner-most dimension) is smaller than the
		corresponding dimension of `input`, the dimension is cropped. If it is larger,
		the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `complex64`, `complex128`.
		    A complex tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft3d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Real-valued fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most dimension of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT` only returns the
		`fft_length / 2 + 1` unique components of the FFT: the zero-frequency term,
		followed by the `fft_length / 2` positive-frequency terms.
		
		Along the axis `RFFT` is computed on, if `fft_length` is smaller than the
		corresponding dimension of `input`, the dimension is cropped. If it is larger,
		the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D real-valued fast Fourier transform.
		
		Computes the 2-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most 2 dimensions of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT2D` only returns the
		`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
		of `output`: the zero-frequency term, followed by the `fft_length / 2`
		positive-frequency terms.
		
		Along each axis `RFFT2D` is computed on, if `fft_length` is smaller than the
		corresponding dimension of `input`, the dimension is cropped. If it is larger,
		the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft2d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		3D real-valued fast Fourier transform.
		
		Computes the 3-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most 3 dimensions of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT3D` only returns the
		`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
		of `output`: the zero-frequency term, followed by the `fft_length / 2`
		positive-frequency terms.
		
		Along each axis `RFFT3D` is computed on, if `fft_length` is smaller than the
		corresponding dimension of `input`, the dimension is cropped. If it is larger,
		the dimension is padded with zeros.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft3d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
}