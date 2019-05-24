/* This file is generated, do not edit! */
package scipy.fftpack.basic;
@:pythonImport("scipy.fftpack.basic") extern class Basic_Module {
	static public var _DTYPE_TO_FFT : Dynamic;
	static public var _DTYPE_TO_FFTN : Dynamic;
	static public var _DTYPE_TO_RFFT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Like numpy asfarray, except that it does not modify x dtype if x is
		already an array with a float dtype, and do not cast complex types to
		real.
	**/
	static public function _asfarray(x:Dynamic):Dynamic;
	/**
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public function _fake_cfft(x:Dynamic, n:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function _fake_cfftnd(x:Dynamic, shape:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function _fake_crfft(x:Dynamic, n:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function _fake_rfft(x:Dynamic, n:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Internal auxiliary function for _raw_fft, _raw_fftnd.
	**/
	static public function _fix_shape(x:Dynamic, n:Dynamic, axis:Dynamic):Dynamic;
	/**
		Handle and sort shape and axes arguments for n-dimensional transforms.
		
		This is identical to `_init_nd_shape_and_axes`, except the axes are
		returned in sorted order and the shape is reordered to match.
		
		Parameters
		----------
		x : array_like
		    The input array.
		shape : int or array_like of ints or None
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If `shape` is -1, the size of the corresponding dimension of `x` is
		    used.
		axes : int or array_like of ints or None
		    Axes along which the calculation is computed.
		    The default is over all axes.
		    Negative indices are automatically converted to their positive
		    counterpart.
		
		Returns
		-------
		shape : array
		    The shape of the result. It is a 1D integer array.
		axes : array
		    The shape of the result. It is a 1D integer array.
	**/
	static public function _init_nd_shape_and_axes_sorted(x:Dynamic, shape:Dynamic, axes:Dynamic):Array<Dynamic>;
	/**
		Is the size of FFT such that FFTPACK can handle it in single precision
		with sufficient accuracy?
		
		Composite numbers of 2, 3, and 5 are accepted, as FFTPACK has those
	**/
	static public function _is_safe_size(n:Dynamic):Dynamic;
	/**
		Internal auxiliary function for fft, ifft, rfft, irfft.
	**/
	static public function _raw_fft(x:Dynamic, n:Dynamic, axis:Dynamic, direction:Dynamic, overwrite_x:Dynamic, work_function:Dynamic):Dynamic;
	static public function _raw_fftn_dispatch(x:Dynamic, shape:Dynamic, axes:Dynamic, overwrite_x:Dynamic, direction:Dynamic):Dynamic;
	/**
		Internal auxiliary function for fftnd, ifftnd.
	**/
	static public function _raw_fftnd(x:Dynamic, s:Dynamic, axes:Dynamic, direction:Dynamic, overwrite_x:Dynamic, work_function:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return discrete Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(-2*pi*sqrt(-1)*j*np.arange(n)/n)).sum()``.
		
		Parameters
		----------
		x : array_like
		    Array to Fourier transform.
		n : int, optional
		    Length of the Fourier transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the fft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		z : complex ndarray
		    with the elements::
		
		        [y(0),y(1),..,y(n/2),y(1-n/2),...,y(-1)]        if n is even
		        [y(0),y(1),..,y((n-1)/2),y(-(n-1)/2),...,y(-1)]  if n is odd
		
		    where::
		
		        y(j) = sum[k=0..n-1] x[k] * exp(-sqrt(-1)*j*k* 2*pi/n), j = 0..n-1
		
		See Also
		--------
		ifft : Inverse FFT
		rfft : FFT of a real sequence
		
		Notes
		-----
		The packing of the result is "standard": If ``A = fft(a, n)``, then
		``A[0]`` contains the zero-frequency term, ``A[1:n/2]`` contains the
		positive-frequency terms, and ``A[n/2:]`` contains the negative-frequency
		terms, in order of decreasingly negative frequency. So for an 8-point
		transform, the frequencies of the result are [0, 1, 2, 3, -4, -3, -2, -1].
		To rearrange the fft output so that the zero-frequency component is
		centered, like [-4, -3, -2, -1,  0,  1,  2,  3], use `fftshift`.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		Note that if ``x`` is real-valued then ``A[j] == A[n-j].conjugate()``.
		If ``x`` is real-valued and ``n`` is even then ``A[n/2]`` is real.
		
		If the data type of `x` is real, a "real FFT" algorithm is automatically
		used, which roughly halves the computation time.  To increase efficiency
		a little further, use `rfft`, which does the same calculation, but only
		outputs half of the symmetrical spectrum.  If the data is both real and
		symmetrical, the `dct` can again double the efficiency, by generating
		half of the spectrum from half of the signal.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> x = np.arange(5)
		>>> np.allclose(fft(ifft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function fft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete Fourier transform.
		
		Return the two-dimensional discrete Fourier transform of the 2-D argument
		`x`.
		
		See Also
		--------
		fftn : for detailed information.
	**/
	static public function fft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional discrete Fourier transform.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(-sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where d = len(x.shape) and n = x.shape.
		
		Parameters
		----------
		x : array_like
		    The (n-dimensional) array to transform.
		shape : int or array_like of ints or None, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		    If any element of `shape` is -1, the size of the corresponding
		    dimension of `x` is used.
		axes : int or array_like of ints or None, optional
		    The axes of `x` (`y` if `shape` is not None) along which the
		    transform is applied.
		    The default is over all axes.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed.  Default is False.
		
		Returns
		-------
		y : complex-valued n-dimensional numpy array
		    The (n-dimensional) DFT of the input array.
		
		See Also
		--------
		ifftn
		
		Notes
		-----
		If ``x`` is real-valued, then
		``y[..., j_i, ...] == y[..., n_i-j_i, ...].conjugate()``.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, fftn(ifftn(y)))
		True
	**/
	static public function fftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return discrete inverse Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(2*pi*sqrt(-1)*j*np.arange(n)/n)).mean()``.
		
		Parameters
		----------
		x : array_like
		    Transformed data to invert.
		n : int, optional
		    Length of the inverse Fourier transform.  If ``n < x.shape[axis]``,
		    `x` is truncated.  If ``n > x.shape[axis]``, `x` is zero-padded.
		    The default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the ifft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		ifft : ndarray of floats
		    The inverse discrete Fourier transform.
		
		See Also
		--------
		fft : Forward FFT
		
		Notes
		-----
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		If the data type of `x` is real, a "real IFFT" algorithm is automatically
		used, which roughly halves the computation time.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> import numpy as np
		>>> x = np.arange(5)
		>>> np.allclose(ifft(fft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function ifft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete inverse Fourier transform of real or complex sequence.
		
		Return inverse two-dimensional discrete Fourier transform of
		arbitrary type sequence x.
		
		See `ifft` for more information.
		
		See also
		--------
		fft2, ifft
	**/
	static public function ifft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return inverse multi-dimensional discrete Fourier transform.
		
		The sequence can be of an arbitrary type.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = 1/p * sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where ``d = len(x.shape)``, ``n = x.shape``, and ``p = prod[i=1..d] n_i``.
		
		For description of parameters see `fftn`.
		
		See Also
		--------
		fftn : for detailed information.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> import numpy as np
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, ifftn(fftn(y)))
		True
	**/
	static public function ifftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return inverse discrete Fourier transform of real sequence x.
		
		The contents of `x` are interpreted as the output of the `rfft`
		function.
		
		Parameters
		----------
		x : array_like
		    Transformed data to invert.
		n : int, optional
		    Length of the inverse Fourier transform.
		    If n < x.shape[axis], x is truncated.
		    If n > x.shape[axis], x is zero-padded.
		    The default results in n = x.shape[axis].
		axis : int, optional
		    Axis along which the ifft's are computed; the default is over
		    the last axis (i.e., axis=-1).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		irfft : ndarray of floats
		    The inverse discrete Fourier transform.
		
		See Also
		--------
		rfft, ifft, numpy.fft.irfft
		
		Notes
		-----
		The returned real array contains::
		
		    [y(0),y(1),...,y(n-1)]
		
		where for n is even::
		
		    y(j) = 1/n (sum[k=1..n/2-1] (x[2*k-1]+sqrt(-1)*x[2*k])
		                                 * exp(sqrt(-1)*j*k* 2*pi/n)
		                + c.c. + x[0] + (-1)**(j) x[n-1])
		
		and for n is odd::
		
		    y(j) = 1/n (sum[k=1..(n-1)/2] (x[2*k-1]+sqrt(-1)*x[2*k])
		                                 * exp(sqrt(-1)*j*k* 2*pi/n)
		                + c.c. + x[0])
		
		c.c. denotes complex conjugate of preceding expression.
		
		For details on input parameters, see `rfft`.
		
		To process (conjugate-symmetric) frequency-domain data with a complex
		datatype, consider using the related function `numpy.fft.irfft`.
		
		Examples
		--------
		>>> from scipy.fftpack import rfft, irfft
		>>> a = [1.0, 2.0, 3.0, 4.0, 5.0]
		>>> irfft(a)
		array([ 2.6       , -3.16405192,  1.24398433, -1.14955713,  1.46962473])
		>>> irfft(rfft(a))
		array([1., 2., 3., 4., 5.])
	**/
	static public function irfft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	static public function istype(arr:Dynamic, typeclass:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Discrete Fourier transform of a real sequence.
		
		Parameters
		----------
		x : array_like, real-valued
		    The data to transform.
		n : int, optional
		    Defines the length of the Fourier transform.  If `n` is not specified
		    (the default) then ``n = x.shape[axis]``.  If ``n < x.shape[axis]``,
		    `x` is truncated, if ``n > x.shape[axis]``, `x` is zero-padded.
		axis : int, optional
		    The axis along which the transform is applied.  The default is the
		    last axis.
		overwrite_x : bool, optional
		    If set to true, the contents of `x` can be overwritten. Default is
		    False.
		
		Returns
		-------
		z : real ndarray
		    The returned real array contains::
		
		      [y(0),Re(y(1)),Im(y(1)),...,Re(y(n/2))]              if n is even
		      [y(0),Re(y(1)),Im(y(1)),...,Re(y(n/2)),Im(y(n/2))]   if n is odd
		
		    where::
		
		      y(j) = sum[k=0..n-1] x[k] * exp(-sqrt(-1)*j*k*2*pi/n)
		      j = 0..n-1
		
		See Also
		--------
		fft, irfft, numpy.fft.rfft
		
		Notes
		-----
		Within numerical accuracy, ``y == rfft(irfft(y))``.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		To get an output with a complex datatype, consider using the related
		function `numpy.fft.rfft`.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, rfft
		>>> a = [9, -9, 1, 3]
		>>> fft(a)
		array([  4. +0.j,   8.+12.j,  16. +0.j,   8.-12.j])
		>>> rfft(a)
		array([  4.,   8.,  12.,  16.])
	**/
	static public function rfft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Interchange two axes of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis1 : int
		    First axis.
		axis2 : int
		    Second axis.
		
		Returns
		-------
		a_swapped : ndarray
		    For NumPy >= 1.10.0, if `a` is an ndarray, then a view of `a` is
		    returned; otherwise a new array is created. For earlier NumPy
		    versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> np.swapaxes(x,0,1)
		array([[1],
		       [2],
		       [3]])
		
		>>> x = np.array([[[0,1],[2,3]],[[4,5],[6,7]]])
		>>> x
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		
		>>> np.swapaxes(x,0,2)
		array([[[0, 4],
		        [2, 6]],
		       [[1, 5],
		        [3, 7]]])
	**/
	static public function swapaxes(a:Dynamic, axis1:Dynamic, axis2:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
}