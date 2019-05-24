/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.fft_ops;
@:pythonImport("tensorflow.python.ops.signal.fft_ops") extern class Fft_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _fft2d_grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _fft3d_grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _fft_grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _fft_size_for_grad(grad:Dynamic, rank:Dynamic):Dynamic;
	static public function _ifft2d_grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _ifft3d_grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _ifft_grad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Infers the `fft_length` argument for a `rank` IRFFT from `input_tensor`.
	**/
	static public function _infer_fft_length_for_irfft(input_tensor:Dynamic, fft_rank:Dynamic):Dynamic;
	/**
		Infers the `fft_length` argument for a `rank` RFFT from `input_tensor`.
	**/
	static public function _infer_fft_length_for_rfft(input_tensor:Dynamic, fft_rank:Dynamic):Dynamic;
	/**
		Returns a gradient function for an IRFFT of the provided rank.
	**/
	static public function _irfft_grad_helper(rank:Dynamic, rfft_fn:Dynamic):Dynamic;
	/**
		Wrapper around gen_spectral_ops.irfft* that infers fft_length argument.
	**/
	static public function _irfft_wrapper(ifft_fn:Dynamic, fft_rank:Dynamic, default_name:Dynamic):Dynamic;
	/**
		Pads `input_tensor` to `fft_length` on its inner-most `fft_rank` dims.
	**/
	static public function _maybe_pad_for_rfft(input_tensor:Dynamic, fft_rank:Dynamic, fft_length:Dynamic, ?is_reverse:Dynamic):Dynamic;
	/**
		Returns a gradient function for an RFFT of the provided rank.
	**/
	static public function _rfft_grad_helper(rank:Dynamic, irfft_fn:Dynamic):Dynamic;
	/**
		Wrapper around gen_spectral_ops.rfft* that infers fft_length argument.
	**/
	static public function _rfft_wrapper(fft_fn:Dynamic, fft_rank:Dynamic, default_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
		    A complex64 tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
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
		    A complex64 tensor.
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
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
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
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
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
		  input: A `Tensor` of type `complex64`. A complex64 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function irfft3d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [1]. The FFT length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
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
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [2]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
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
		  input: A `Tensor` of type `float32`. A float32 tensor.
		  fft_length: A `Tensor` of type `int32`.
		    An int32 tensor of shape [3]. The FFT length for each dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function rfft3d(input_tensor:Dynamic, ?fft_length:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}