/* This file is generated, do not edit! */
package numpy.fft.fftpack;
@:pythonImport("numpy.fft.fftpack") extern class Fftpack_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cook_nd_args(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?invreal:Dynamic):Dynamic;
	static public var _fft_cache : Dynamic;
	static public function _raw_fft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?init_function:Dynamic, ?work_function:Dynamic, ?fft_cache:Dynamic):Dynamic;
	static public function _raw_fftnd(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?_function:Dynamic, ?norm:Dynamic):Dynamic;
	static public var _real_fft_cache : Dynamic;
	static public function _unitary(norm:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) with the efficient Fast Fourier Transform (FFT)
		algorithm [CT].
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT.  If not given, the last axis is
		    used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    if `axes` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : for definition of the DFT and conventions used.
		ifft : The inverse of `fft`.
		fft2 : The two-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		fftfreq : Frequency bins for given FFT parameters.
		
		Notes
		-----
		FFT (Fast Fourier Transform) refers to a way the discrete Fourier
		Transform (DFT) can be calculated efficiently, by using symmetries in the
		calculated terms.  The symmetry is highest when `n` is a power of 2, and
		the transform is therefore most efficient for these sizes.
		
		The DFT is defined, with the conventions used in this implementation, in
		the documentation for the `numpy.fft` module.
		
		References
		----------
		.. [CT] Cooley, James W., and John W. Tukey, 1965, "An algorithm for the
		        machine calculation of complex Fourier series," *Math. Comput.*
		        19: 297-301.
		
		Examples
		--------
		>>> np.fft.fft(np.exp(2j * np.pi * np.arange(8) / 8))
		array([ -3.44505240e-16 +1.14383329e-17j,
		         8.00000000e+00 -5.71092652e-15j,
		         2.33482938e-16 +1.22460635e-16j,
		         1.64863782e-15 +1.77635684e-15j,
		         9.95839695e-17 +2.33482938e-16j,
		         0.00000000e+00 +1.66837030e-15j,
		         1.14383329e-17 +1.22460635e-16j,
		         -1.64863782e-15 +1.77635684e-15j])
		
		In this example, real input has an FFT which is Hermitian, i.e., symmetric
		in the real part and anti-symmetric in the imaginary part, as described in
		the `numpy.fft` documentation:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(256)
		>>> sp = np.fft.fft(np.sin(t))
		>>> freq = np.fft.fftfreq(t.shape[-1])
		>>> plt.plot(freq, sp.real, freq, sp.imag)
		[<matplotlib.lines.Line2D object at 0x...>, <matplotlib.lines.Line2D object at 0x...>]
		>>> plt.show()
	**/
	static public function fft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional discrete Fourier Transform
		
		This function computes the *n*-dimensional discrete Fourier Transform
		over any axes in an *M*-dimensional array by means of the
		Fast Fourier Transform (FFT).  By default, the transform is computed over
		the last two axes of the input array, i.e., a 2-dimensional FFT.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		ifft2 : The inverse two-dimensional FFT.
		fft : The one-dimensional FFT.
		fftn : The *n*-dimensional FFT.
		fftshift : Shifts zero-frequency terms to the center of the array.
		    For two-dimensional input, swaps first and third quadrants, and second
		    and fourth quadrants.
		
		Notes
		-----
		`fft2` is just `fftn` with a different default for `axes`.
		
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of the transformed axes, the positive frequency terms
		in the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		the axes, in order of decreasingly negative frequency.
		
		See `fftn` for details and a plotting example, and `numpy.fft` for
		definitions and conventions used.
		
		
		Examples
		--------
		>>> a = np.mgrid[:5, :5][0]
		>>> np.fft.fft2(a)
		array([[ 50.0 +0.j        ,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5+17.20477401j,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5 +4.0614962j ,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5 -4.0614962j ,   0.0 +0.j        ,   0.0 +0.j        ,
		            0.0 +0.j        ,   0.0 +0.j        ],
		       [-12.5-17.20477401j,   0.0 +0.j        ,   0.0 +0.j        ,
		          0.0 +0.j        ,   0.0 +0.j        ]])
	**/
	static public function fft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the N-dimensional discrete Fourier Transform.
		
		This function computes the *N*-dimensional discrete Fourier Transform over
		any number of axes in an *M*-dimensional array by means of the Fast Fourier
		Transform (FFT).
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``fft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the transform over that axis is
		    performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` and `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		    and conventions used.
		ifftn : The inverse of `fftn`, the inverse *n*-dimensional FFT.
		fft : The one-dimensional FFT, with definitions and conventions used.
		rfftn : The *n*-dimensional FFT of real input.
		fft2 : The two-dimensional FFT.
		fftshift : Shifts zero-frequency terms to centre of array
		
		Notes
		-----
		The output, analogously to `fft`, contains the term for zero frequency in
		the low-order corner of all axes, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		See `numpy.fft` for details, definitions and conventions used.
		
		Examples
		--------
		>>> a = np.mgrid[:3, :3, :3][0]
		>>> np.fft.fftn(a, axes=(1, 2))
		array([[[  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]],
		       [[  9.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]],
		       [[ 18.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j],
		        [  0.+0.j,   0.+0.j,   0.+0.j]]])
		>>> np.fft.fftn(a, (2, 2), axes=(0, 1))
		array([[[ 2.+0.j,  2.+0.j,  2.+0.j],
		        [ 0.+0.j,  0.+0.j,  0.+0.j]],
		       [[-2.+0.j, -2.+0.j, -2.+0.j],
		        [ 0.+0.j,  0.+0.j,  0.+0.j]]])
		
		>>> import matplotlib.pyplot as plt
		>>> [X, Y] = np.meshgrid(2 * np.pi * np.arange(200) / 12,
		...                      2 * np.pi * np.arange(200) / 34)
		>>> S = np.sin(X) + np.cos(Y) + np.random.uniform(0, 1, X.shape)
		>>> FS = np.fft.fftn(S)
		>>> plt.imshow(np.log(np.abs(np.fft.fftshift(FS))**2))
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function fftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the FFT of a signal that has Hermitian symmetry, i.e., a real
		spectrum.
		
		Parameters
		----------
		a : array_like
		    The input array.
		n : int, optional
		    Length of the transformed axis of the output. For `n` output
		    points, ``n//2 + 1`` input points are necessary.  If the input is
		    longer than this, it is cropped.  If it is shorter than this, it is
		    padded with zeros.  If `n` is not given, it is determined from the
		    length of the input along the axis specified by `axis`.
		axis : int, optional
		    Axis over which to compute the FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    Normalization mode (see `numpy.fft`). Default is None.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is `n`, or, if `n` is not given,
		    ``2*m - 2`` where ``m`` is the length of the transformed axis of
		    the input. To get an odd number of output points, `n` must be
		    specified, for instance as ``2*m - 1`` in the typical case,
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See also
		--------
		rfft : Compute the one-dimensional FFT for real input.
		ihfft : The inverse of `hfft`.
		
		Notes
		-----
		`hfft`/`ihfft` are a pair analogous to `rfft`/`irfft`, but for the
		opposite case: here the signal has Hermitian symmetry in the time
		domain and is real in the frequency domain. So here it's `hfft` for
		which you must supply the length of the result if it is to be odd.
		
		* even: ``ihfft(hfft(a, 2*len(a) - 2) == a``, within roundoff error,
		* odd: ``ihfft(hfft(a, 2*len(a) - 1) == a``, within roundoff error.
		
		Examples
		--------
		>>> signal = np.array([1, 2, 3, 4, 3, 2])
		>>> np.fft.fft(signal)
		array([ 15.+0.j,  -4.+0.j,   0.+0.j,  -1.-0.j,   0.+0.j,  -4.+0.j])
		>>> np.fft.hfft(signal[:4]) # Input first half of signal
		array([ 15.,  -4.,   0.,  -1.,   0.,  -4.])
		>>> np.fft.hfft(signal, 6)  # Input entire signal and truncate
		array([ 15.,  -4.,   0.,  -1.,   0.,  -4.])
		
		
		>>> signal = np.array([[1, 1.j], [-1.j, 2]])
		>>> np.conj(signal.T) - signal   # check Hermitian symmetry
		array([[ 0.-0.j,  0.+0.j],
		       [ 0.+0.j,  0.-0.j]])
		>>> freq_spectrum = np.fft.hfft(signal)
		>>> freq_spectrum
		array([[ 1.,  1.],
		       [ 2., -2.]])
	**/
	static public function hfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the one-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier transform computed by `fft`.  In other words,
		``ifft(fft(a)) == a`` to within numerical accuracy.
		For a general description of the algorithm and definitions,
		see `numpy.fft`.
		
		The input should be ordered in the same way as is returned by `fft`,
		i.e.,
		
		* ``a[0]`` should contain the zero frequency term,
		* ``a[1:n//2]`` should contain the positive-frequency terms,
		* ``a[n//2 + 1:]`` should contain the negative-frequency terms, in
		  increasing order starting from the most negative frequency.
		
		For an even number of input points, ``A[n//2]`` represents the sum of
		the values at the positive and negative Nyquist frequencies, as the two
		are aliased together. See `numpy.fft` for details.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		n : int, optional
		    Length of the transformed axis of the output.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros.  If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		    See notes about padding issues.
		axis : int, optional
		    Axis over which to compute the inverse DFT.  If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		
		Raises
		------
		IndexError
		    If `axes` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : An introduction, with definitions and general explanations.
		fft : The one-dimensional (forward) FFT, of which `ifft` is the inverse
		ifft2 : The two-dimensional inverse FFT.
		ifftn : The n-dimensional inverse FFT.
		
		Notes
		-----
		If the input parameter `n` is larger than the size of the input, the input
		is padded by appending zeros at the end.  Even though this is the common
		approach, it might lead to surprising results.  If a different padding is
		desired, it must be performed before calling `ifft`.
		
		Examples
		--------
		>>> np.fft.ifft([0, 4, 0, 0])
		array([ 1.+0.j,  0.+1.j, -1.+0.j,  0.-1.j])
		
		Create and plot a band-limited signal with random phases:
		
		>>> import matplotlib.pyplot as plt
		>>> t = np.arange(400)
		>>> n = np.zeros((400,), dtype=complex)
		>>> n[40:60] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20,)))
		>>> s = np.fft.ifft(n)
		>>> plt.plot(t, s.real, 'b-', t, s.imag, 'r--')
		...
		>>> plt.legend(('real', 'imaginary'))
		...
		>>> plt.show()
	**/
	static public function ifft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the 2-dimensional discrete Fourier
		Transform over any number of axes in an M-dimensional array by means of
		the Fast Fourier Transform (FFT).  In other words, ``ifft2(fft2(a)) == a``
		to within numerical accuracy.  By default, the inverse transform is
		computed over the last two axes of the input array.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fft2`, i.e. it should have the term for zero frequency
		in the low-order corner of the two axes, the positive frequency terms in
		the first half of these axes, the term for the Nyquist frequency in the
		middle of the axes and the negative frequency terms in the second half of
		both axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each axis) of the output (``s[0]`` refers to axis 0,
		    ``s[1]`` to axis 1, etc.).  This corresponds to `n` for ``ifft(x, n)``.
		    Along each axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last two
		    axes are used.  A repeated index in `axes` means the transform over
		    that axis is performed multiple times.  A one-element sequence means
		    that a one-dimensional FFT is performed.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or the last two axes if `axes` is not given.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length, or `axes` not given and
		    ``len(s) != 2``.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fft2 : The forward 2-dimensional FFT, of which `ifft2` is the inverse.
		ifftn : The inverse of the *n*-dimensional FFT.
		fft : The one-dimensional FFT.
		ifft : The one-dimensional inverse FFT.
		
		Notes
		-----
		`ifft2` is just `ifftn` with a different default for `axes`.
		
		See `ifftn` for details and a plotting example, and `numpy.fft` for
		definition and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifft2` is called.
		
		Examples
		--------
		>>> a = 4 * np.eye(4)
		>>> np.fft.ifft2(a)
		array([[ 1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j],
		       [ 0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j]])
	**/
	static public function ifft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the N-dimensional inverse discrete Fourier Transform.
		
		This function computes the inverse of the N-dimensional discrete
		Fourier Transform over any number of axes in an M-dimensional array by
		means of the Fast Fourier Transform (FFT).  In other words,
		``ifftn(fftn(a)) == a`` to within numerical accuracy.
		For a description of the definitions and conventions used, see `numpy.fft`.
		
		The input, analogously to `ifft`, should be ordered in the same way as is
		returned by `fftn`, i.e. it should have the term for zero frequency
		in all axes in the low-order corner, the positive frequency terms in the
		first half of all axes, the term for the Nyquist frequency in the middle
		of all axes and the negative frequency terms in the second half of all
		axes, in order of decreasingly negative frequency.
		
		Parameters
		----------
		a : array_like
		    Input array, can be complex.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    This corresponds to ``n`` for ``ifft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.  See notes for issue on `ifft` zero padding.
		axes : sequence of ints, optional
		    Axes over which to compute the IFFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the inverse transform over that
		    axis is performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` or `a`,
		    as explained in the parameters section above.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		numpy.fft : Overall view of discrete Fourier transforms, with definitions
		     and conventions used.
		fftn : The forward *n*-dimensional FFT, of which `ifftn` is the inverse.
		ifft : The one-dimensional inverse FFT.
		ifft2 : The two-dimensional inverse FFT.
		ifftshift : Undoes `fftshift`, shifts zero-frequency terms to beginning
		    of array.
		
		Notes
		-----
		See `numpy.fft` for definitions and conventions used.
		
		Zero-padding, analogously with `ifft`, is performed by appending zeros to
		the input along the specified dimension.  Although this is the common
		approach, it might lead to surprising results.  If another form of zero
		padding is desired, it must be performed before `ifftn` is called.
		
		Examples
		--------
		>>> a = np.eye(4)
		>>> np.fft.ifftn(np.fft.fftn(a, axes=(0,)), axes=(1,))
		array([[ 1.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  1.+0.j,  0.+0.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  1.+0.j]])
		
		
		Create and plot an image with band-limited frequency content:
		
		>>> import matplotlib.pyplot as plt
		>>> n = np.zeros((200,200), dtype=complex)
		>>> n[60:80, 20:40] = np.exp(1j*np.random.uniform(0, 2*np.pi, (20, 20)))
		>>> im = np.fft.ifftn(n).real
		>>> plt.imshow(im)
		<matplotlib.image.AxesImage object at 0x...>
		>>> plt.show()
	**/
	static public function ifftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the inverse FFT of a signal that has Hermitian symmetry.
		
		Parameters
		----------
		a : array_like
		    Input array.
		n : int, optional
		    Length of the inverse FFT, the number of points along
		    transformation axis in the input to use.  If `n` is smaller than
		    the length of the input, the input is cropped.  If it is larger,
		    the input is padded with zeros. If `n` is not given, the length of
		    the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    Normalization mode (see `numpy.fft`). Default is None.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is ``n//2 + 1``.
		
		See also
		--------
		hfft, irfft
		
		Notes
		-----
		`hfft`/`ihfft` are a pair analogous to `rfft`/`irfft`, but for the
		opposite case: here the signal has Hermitian symmetry in the time
		domain and is real in the frequency domain. So here it's `hfft` for
		which you must supply the length of the result if it is to be odd:
		
		* even: ``ihfft(hfft(a, 2*len(a) - 2) == a``, within roundoff error,
		* odd: ``ihfft(hfft(a, 2*len(a) - 1) == a``, within roundoff error.
		
		Examples
		--------
		>>> spectrum = np.array([ 15, -4, 0, -1, 0, -4])
		>>> np.fft.ifft(spectrum)
		array([ 1.+0.j,  2.-0.j,  3.+0.j,  4.+0.j,  3.+0.j,  2.-0.j])
		>>> np.fft.ihfft(spectrum)
		array([ 1.-0.j,  2.-0.j,  3.-0.j,  4.-0.j])
	**/
	static public function ihfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the inverse of the n-point DFT for real input.
		
		This function computes the inverse of the one-dimensional *n*-point
		discrete Fourier Transform of real input computed by `rfft`.
		In other words, ``irfft(rfft(a), len(a)) == a`` to within numerical
		accuracy. (See Notes below for why ``len(a)`` is necessary here.)
		
		The input is expected to be in the form returned by `rfft`, i.e. the
		real zero-frequency term followed by the complex positive frequency terms
		in order of increasing frequency.  Since the discrete Fourier Transform of
		real input is Hermitian-symmetric, the negative frequency terms are taken
		to be the complex conjugates of the corresponding positive frequency terms.
		
		Parameters
		----------
		a : array_like
		    The input array.
		n : int, optional
		    Length of the transformed axis of the output.
		    For `n` output points, ``n//2+1`` input points are necessary.  If the
		    input is longer than this, it is cropped.  If it is shorter than this,
		    it is padded with zeros.  If `n` is not given, it is determined from
		    the length of the input along the axis specified by `axis`.
		axis : int, optional
		    Axis over which to compute the inverse FFT. If not given, the last
		    axis is used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    The length of the transformed axis is `n`, or, if `n` is not given,
		    ``2*(m-1)`` where ``m`` is the length of the transformed axis of the
		    input. To get an odd number of output points, `n` must be specified.
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : For definition of the DFT and conventions used.
		rfft : The one-dimensional FFT of real input, of which `irfft` is inverse.
		fft : The one-dimensional FFT.
		irfft2 : The inverse of the two-dimensional FFT of real input.
		irfftn : The inverse of the *n*-dimensional FFT of real input.
		
		Notes
		-----
		Returns the real valued `n`-point inverse discrete Fourier transform
		of `a`, where `a` contains the non-negative frequency terms of a
		Hermitian-symmetric sequence. `n` is the length of the result, not the
		input.
		
		If you specify an `n` such that `a` must be zero-padded or truncated, the
		extra/removed values will be added/removed at high frequencies. One can
		thus resample a series to `m` points via Fourier interpolation by:
		``a_resamp = irfft(rfft(a), m)``.
		
		Examples
		--------
		>>> np.fft.ifft([1, -1j, -1, 1j])
		array([ 0.+0.j,  1.+0.j,  0.+0.j,  0.+0.j])
		>>> np.fft.irfft([1, -1j, -1])
		array([ 0.,  1.,  0.,  0.])
		
		Notice how the last term in the input to the ordinary `ifft` is the
		complex conjugate of the second term, and the output has zero imaginary
		part everywhere.  When calling `irfft`, the negative frequencies are not
		specified, and the output array is purely real.
	**/
	static public function irfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the 2-dimensional inverse FFT of a real array.
		
		Parameters
		----------
		a : array_like
		    The input array
		s : sequence of ints, optional
		    Shape of the inverse FFT.
		axes : sequence of ints, optional
		    The axes over which to compute the inverse fft.
		    Default is the last two axes.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The result of the inverse real 2-D FFT.
		
		See Also
		--------
		irfftn : Compute the inverse of the N-dimensional FFT of real input.
		
		Notes
		-----
		This is really `irfftn` with different defaults.
		For more details see `irfftn`.
	**/
	static public function irfft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the inverse of the N-dimensional FFT of real input.
		
		This function computes the inverse of the N-dimensional discrete
		Fourier Transform for real input over any number of axes in an
		M-dimensional array by means of the Fast Fourier Transform (FFT).  In
		other words, ``irfftn(rfftn(a), a.shape) == a`` to within numerical
		accuracy. (The ``a.shape`` is necessary like ``len(a)`` is for `irfft`,
		and for the same reason.)
		
		The input should be ordered in the same way as is returned by `rfftn`,
		i.e. as for `irfft` for the final transformation axis, and as for `ifftn`
		along all the other axes.
		
		Parameters
		----------
		a : array_like
		    Input array.
		s : sequence of ints, optional
		    Shape (length of each transformed axis) of the output
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.). `s` is also the
		    number of input points used along this axis, except for the last axis,
		    where ``s[-1]//2+1`` points of the input are used.
		    Along any axis, if the shape indicated by `s` is smaller than that of
		    the input, the input is cropped.  If it is larger, the input is padded
		    with zeros. If `s` is not given, the shape of the input along the
		    axes specified by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the inverse FFT. If not given, the last
		    `len(s)` axes are used, or all axes if `s` is also not specified.
		    Repeated indices in `axes` means that the inverse transform over that
		    axis is performed multiple times.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` or `a`,
		    as explained in the parameters section above.
		    The length of each transformed axis is as given by the corresponding
		    element of `s`, or the length of the input in every axis except for the
		    last one if `s` is not given.  In the final transformed axis the length
		    of the output when `s` is not given is ``2*(m-1)`` where ``m`` is the
		    length of the final transformed axis of the input.  To get an odd
		    number of output points in the final axis, `s` must be specified.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		rfftn : The forward n-dimensional FFT of real input,
		        of which `ifftn` is the inverse.
		fft : The one-dimensional FFT, with definitions and conventions used.
		irfft : The inverse of the one-dimensional FFT of real input.
		irfft2 : The inverse of the two-dimensional FFT of real input.
		
		Notes
		-----
		See `fft` for definitions and conventions used.
		
		See `rfft` for definitions and conventions used for real input.
		
		Examples
		--------
		>>> a = np.zeros((3, 2, 2))
		>>> a[0, 0, 0] = 3 * 2 * 2
		>>> np.fft.irfftn(a)
		array([[[ 1.,  1.],
		        [ 1.,  1.]],
		       [[ 1.,  1.],
		        [ 1.,  1.]],
		       [[ 1.,  1.],
		        [ 1.,  1.]]])
	**/
	static public function irfftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
	/**
		Compute the one-dimensional discrete Fourier Transform for real input.
		
		This function computes the one-dimensional *n*-point discrete Fourier
		Transform (DFT) of a real-valued array by means of an efficient algorithm
		called the Fast Fourier Transform (FFT).
		
		Parameters
		----------
		a : array_like
		    Input array
		n : int, optional
		    Number of points along transformation axis in the input to use.
		    If `n` is smaller than the length of the input, the input is cropped.
		    If it is larger, the input is padded with zeros. If `n` is not given,
		    the length of the input along the axis specified by `axis` is used.
		axis : int, optional
		    Axis over which to compute the FFT. If not given, the last axis is
		    used.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axis
		    indicated by `axis`, or the last one if `axis` is not specified.
		    If `n` is even, the length of the transformed axis is ``(n/2)+1``.
		    If `n` is odd, the length is ``(n+1)/2``.
		
		Raises
		------
		IndexError
		    If `axis` is larger than the last axis of `a`.
		
		See Also
		--------
		numpy.fft : For definition of the DFT and conventions used.
		irfft : The inverse of `rfft`.
		fft : The one-dimensional FFT of general (complex) input.
		fftn : The *n*-dimensional FFT.
		rfftn : The *n*-dimensional FFT of real input.
		
		Notes
		-----
		When the DFT is computed for purely real input, the output is
		Hermitian-symmetric, i.e. the negative frequency terms are just the complex
		conjugates of the corresponding positive-frequency terms, and the
		negative-frequency terms are therefore redundant.  This function does not
		compute the negative frequency terms, and the length of the transformed
		axis of the output is therefore ``n//2 + 1``.
		
		When ``A = rfft(a)`` and fs is the sampling frequency, ``A[0]`` contains
		the zero-frequency term 0*fs, which is real due to Hermitian symmetry.
		
		If `n` is even, ``A[-1]`` contains the term representing both positive
		and negative Nyquist frequency (+fs/2 and -fs/2), and must also be purely
		real. If `n` is odd, there is no term at fs/2; ``A[-1]`` contains
		the largest positive frequency (fs/2*(n-1)/n), and is complex in the
		general case.
		
		If the input `a` contains an imaginary part, it is silently discarded.
		
		Examples
		--------
		>>> np.fft.fft([0, 1, 0, 0])
		array([ 1.+0.j,  0.-1.j, -1.+0.j,  0.+1.j])
		>>> np.fft.rfft([0, 1, 0, 0])
		array([ 1.+0.j,  0.-1.j, -1.+0.j])
		
		Notice how the final element of the `fft` output is the complex conjugate
		of the second element, for real input. For `rfft`, this symmetry is
		exploited to compute only the non-negative frequency terms.
	**/
	static public function rfft(a:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Compute the 2-dimensional FFT of a real array.
		
		Parameters
		----------
		a : array
		    Input array, taken to be real.
		s : sequence of ints, optional
		    Shape of the FFT.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : ndarray
		    The result of the real 2-D FFT.
		
		See Also
		--------
		rfftn : Compute the N-dimensional discrete Fourier Transform for real
		        input.
		
		Notes
		-----
		This is really just `rfftn` with different default behavior.
		For more details see `rfftn`.
	**/
	static public function rfft2(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):numpy.Ndarray;
	/**
		Compute the N-dimensional discrete Fourier Transform for real input.
		
		This function computes the N-dimensional discrete Fourier Transform over
		any number of axes in an M-dimensional real array by means of the Fast
		Fourier Transform (FFT).  By default, all axes are transformed, with the
		real transform performed over the last axis, while the remaining
		transforms are complex.
		
		Parameters
		----------
		a : array_like
		    Input array, taken to be real.
		s : sequence of ints, optional
		    Shape (length along each transformed axis) to use from the input.
		    (``s[0]`` refers to axis 0, ``s[1]`` to axis 1, etc.).
		    The final element of `s` corresponds to `n` for ``rfft(x, n)``, while
		    for the remaining axes, it corresponds to `n` for ``fft(x, n)``.
		    Along any axis, if the given shape is smaller than that of the input,
		    the input is cropped.  If it is larger, the input is padded with zeros.
		    if `s` is not given, the shape of the input along the axes specified
		    by `axes` is used.
		axes : sequence of ints, optional
		    Axes over which to compute the FFT.  If not given, the last ``len(s)``
		    axes are used, or all axes if `s` is also not specified.
		norm : {None, "ortho"}, optional
		    .. versionadded:: 1.10.0
		
		    Normalization mode (see `numpy.fft`). Default is None.
		
		Returns
		-------
		out : complex ndarray
		    The truncated or zero-padded input, transformed along the axes
		    indicated by `axes`, or by a combination of `s` and `a`,
		    as explained in the parameters section above.
		    The length of the last axis transformed will be ``s[-1]//2+1``,
		    while the remaining transformed axes will have lengths according to
		    `s`, or unchanged from the input.
		
		Raises
		------
		ValueError
		    If `s` and `axes` have different length.
		IndexError
		    If an element of `axes` is larger than than the number of axes of `a`.
		
		See Also
		--------
		irfftn : The inverse of `rfftn`, i.e. the inverse of the n-dimensional FFT
		     of real input.
		fft : The one-dimensional FFT, with definitions and conventions used.
		rfft : The one-dimensional FFT of real input.
		fftn : The n-dimensional FFT.
		rfft2 : The two-dimensional FFT of real input.
		
		Notes
		-----
		The transform for real input is performed over the last transformation
		axis, as by `rfft`, then the transform over the remaining axes is
		performed as by `fftn`.  The order of the output is as for `rfft` for the
		final transformation axis, and as for `fftn` for the remaining
		transformation axes.
		
		See `fft` for details, definitions and conventions used.
		
		Examples
		--------
		>>> a = np.ones((2, 2, 2))
		>>> np.fft.rfftn(a)
		array([[[ 8.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]],
		       [[ 0.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]]])
		
		>>> np.fft.rfftn(a, axes=(2, 0))
		array([[[ 4.+0.j,  0.+0.j],
		        [ 4.+0.j,  0.+0.j]],
		       [[ 0.+0.j,  0.+0.j],
		        [ 0.+0.j,  0.+0.j]]])
	**/
	static public function rfftn(a:Dynamic, ?s:Dynamic, ?axes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function swapaxes(a:Dynamic, axis1:Dynamic, axis2:Dynamic):numpy.Ndarray;
	/**
		Take elements from an array along an axis.
		
		When axis is not None, this function does the same thing as "fancy"
		indexing (indexing arrays using arrays); however, it can be easier to use
		if you need elements along a given axis. A call such as
		``np.take(arr, indices, axis=3)`` is equivalent to
		``arr[:,:,:,indices,...]``.
		
		Explained without fancy indexing, this is equivalent to the following use
		of `ndindex`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of
		indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    Nj = indices.shape
		    for ii in ndindex(Ni):
		        for jj in ndindex(Nj):
		            for kk in ndindex(Nk):
		                out[ii + jj + kk] = a[ii + (indices[jj],) + kk]
		
		Parameters
		----------
		a : array_like (Ni..., M, Nk...)
		    The source array.
		indices : array_like (Nj...)
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional (Ni..., Nj..., Nk...)
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		out : ndarray (Ni..., Nj..., Nk...)
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		take_along_axis : Take elements by matching the array and the index arrays
		
		Notes
		-----
		
		By eliminating the inner loop in the description above, and using `s_` to
		build simple slice objects, `take` can be expressed  in terms of applying
		fancy indexing to each 1-d slice::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nj):
		            out[ii + s_[...,] + kk] = a[ii + s_[:,] + kk][indices]
		
		For this reason, it is equivalent to (but faster than) the following use
		of `apply_along_axis`::
		
		    out = np.apply_along_axis(lambda a_1d: a_1d[indices], axis, a)
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
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