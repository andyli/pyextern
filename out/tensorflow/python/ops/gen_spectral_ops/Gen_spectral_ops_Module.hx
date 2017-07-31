/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_spectral_ops;
@:pythonImport("tensorflow.python.ops.gen_spectral_ops") extern class Gen_spectral_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function _batch_ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform over the inner-most
		dimension of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most
		    dimension of `input` is replaced with its 1D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.fft
		  @end_compatibility
	**/
	static public function fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D fast Fourier transform.
		
		Computes the 2-dimensional discrete Fourier transform over the inner-most
		2 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 2
		    dimensions of `input` are replaced with their 2D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.fft2
		  @end_compatibility
	**/
	static public function fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		3D fast Fourier transform.
		
		Computes the 3-dimensional discrete Fourier transform over the inner-most 3
		dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 3
		    dimensions of `input` are replaced with their 3D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.fftn with 3 dimensions.
		  @end_compatibility
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse fast Fourier transform.
		
		Computes the inverse 1-dimensional discrete Fourier transform over the
		inner-most dimension of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most
		    dimension of `input` is replaced with its inverse 1D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.ifft
		  @end_compatibility
	**/
	static public function ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 2D fast Fourier transform.
		
		Computes the inverse 2-dimensional discrete Fourier transform over the
		inner-most 2 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 2
		    dimensions of `input` are replaced with their inverse 2D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.ifft2
		  @end_compatibility
	**/
	static public function ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Inverse 3D fast Fourier transform.
		
		Computes the inverse 3-dimensional discrete Fourier transform over the
		inner-most 3 dimensions of `input`.
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same shape as `input`. The inner-most 3
		    dimensions of `input` are replaced with their inverse 3D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.ifftn with 3 dimensions.
		  @end_compatibility
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
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float32 tensor of the same rank as `input`. The inner-most
		    dimension of `input` is replaced with the `fft_length` samples of its inverse
		    1D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.irfft
		  @end_compatibility
	**/
	static public function irfft(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float32 tensor of the same rank as `input`. The inner-most 2
		    dimensions of `input` are replaced with the `fft_length` samples of their
		    inverse 2D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.irfft2
		  @end_compatibility
	**/
	static public function irfft2d(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Args:
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
		  A float32 tensor of the same rank as `input`. The inner-most 3
		    dimensions of `input` are replaced with the `fft_length` samples of their
		    inverse 3D real Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.irfftn with 3 dimensions.
		  @end_compatibility
	**/
	static public function irfft3d(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Real-valued fast Fourier transform.
		
		Computes the 1-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most dimension of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT` only returns the
		`fft_length / 2 + 1` unique components of the FFT: the zero-frequency term,
		followed by the `fft_length / 2` positive-frequency terms.
		
		Args:
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same rank as `input`. The inner-most
		    dimension of `input` is replaced with the `fft_length / 2 + 1` unique
		    frequency components of its 1D Fourier transform.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.rfft
		  @end_compatibility
	**/
	static public function rfft(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2D real-valued fast Fourier transform.
		
		Computes the 2-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most 2 dimensions of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT2D` only returns the
		`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
		of `output`: the zero-frequency term, followed by the `fft_length / 2`
		positive-frequency terms.
		
		Args:
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same rank as `input`. The inner-most 2
		    dimensions of `input` are replaced with their 2D Fourier transform. The
		    inner-most dimension contains `fft_length / 2 + 1` unique frequency
		    components.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.rfft2
		  @end_compatibility
	**/
	static public function rfft2d(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		3D real-valued fast Fourier transform.
		
		Computes the 3-dimensional discrete Fourier transform of a real-valued signal
		over the inner-most 3 dimensions of `input`.
		
		Since the DFT of a real signal is Hermitian-symmetric, `RFFT3D` only returns the
		`fft_length / 2 + 1` unique components of the FFT for the inner-most dimension
		of `output`: the zero-frequency term, followed by the `fft_length / 2`
		positive-frequency terms.
		
		Args:
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
		  A complex64 tensor of the same rank as `input`. The inner-most 3
		    dimensions of `input` are replaced with the their 3D Fourier transform. The
		    inner-most dimension contains `fft_length / 2 + 1` unique frequency
		    components.
		
		  @compatibility(numpy)
		  Equivalent to np.fft.rfftn with 3 dimensions.
		  @end_compatibility
	**/
	static public function rfft3d(input:Dynamic, fft_length:Dynamic, ?name:Dynamic):Dynamic;
}