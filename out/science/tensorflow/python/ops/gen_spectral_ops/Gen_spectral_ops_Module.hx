/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_spectral_ops;
@:pythonImport("tensorflow.python.ops.gen_spectral_ops") extern class Gen_spectral_ops_Module {
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchFFT(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchFFT2D(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchFFT3D(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchIFFT(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchIFFT2D(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function BatchIFFT3D(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function FFT(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function FFT2D(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function FFT3D(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function IFFT(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function IFFT2D(input:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function IFFT3D(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function IRFFT(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function IRFFT2D(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function IRFFT3D(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function RFFT(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function RFFT2D(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function RFFT3D(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_fft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_fft2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_fft3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_ifft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_ifft2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_ifft3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_fft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_fft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_fft2d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_fft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_fft3d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function batch_fft_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_ifft(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_ifft2d(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_ifft2d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input: A `Tensor` of type `complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `complex64`.
	**/
	static public function batch_ifft3d(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function batch_ifft3d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function batch_ifft_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function fft2d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function fft3d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function fft_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function ifft2d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function ifft3d_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function ifft_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft2d(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
	static public function irfft2d_eager_fallback(input:Dynamic, fft_length:Dynamic, Treal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  Treal: An optional `tf.DType` from: `tf.float32, tf.float64`. Defaults to `tf.float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Treal`.
	**/
	static public function irfft3d(input:Dynamic, fft_length:Dynamic, ?Treal:Dynamic, ?name:Dynamic):Dynamic;
	static public function irfft3d_eager_fallback(input:Dynamic, fft_length:Dynamic, Treal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function irfft_eager_fallback(input:Dynamic, fft_length:Dynamic, Treal:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft2d(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
	static public function rfft2d_eager_fallback(input:Dynamic, fft_length:Dynamic, Tcomplex:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		  Tcomplex: An optional `tf.DType` from: `tf.complex64, tf.complex128`. Defaults to `tf.complex64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `Tcomplex`.
	**/
	static public function rfft3d(input:Dynamic, fft_length:Dynamic, ?Tcomplex:Dynamic, ?name:Dynamic):Dynamic;
	static public function rfft3d_eager_fallback(input:Dynamic, fft_length:Dynamic, Tcomplex:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function rfft_eager_fallback(input:Dynamic, fft_length:Dynamic, Tcomplex:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}