/* This file is generated, do not edit! */
package scipy.ndimage.fourier;
@:pythonImport("scipy.ndimage.fourier") extern class Fourier_Module {
	/**
		Multidimensional ellipsoid Fourier filter.
		
		The array is multiplied with the fourier transform of a ellipsoid of
		given sizes.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : float or sequence
		    The size of the box used for filtering.
		    If a float, `size` is the same for all axes. If a sequence, `size` has
		    to contain one value for each axis.
		n : int, optional
		    If `n` is negative (default), then the input is assumed to be the
		    result of a complex fft.
		    If `n` is larger than or equal to zero, the input is assumed to be the
		    result of a real fft, and `n` gives the length of the array before
		    transformation along the real transform direction.
		axis : int, optional
		    The axis of the real transform.
		output : ndarray, optional
		    If given, the result of filtering the input is placed in this array.
		    None is returned in this case.
		
		Returns
		-------
		fourier_ellipsoid : ndarray
		    The filtered input.
		
		Notes
		-----
		This function is implemented for arrays of rank 1, 2, or 3.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import numpy.fft
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax1, ax2) = plt.subplots(1, 2)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ascent = misc.ascent()
		>>> input_ = numpy.fft.fft2(ascent)
		>>> result = ndimage.fourier_ellipsoid(input_, size=20)
		>>> result = numpy.fft.ifft2(result)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result.real)  # the imaginary part is an artifact
		>>> plt.show()
	**/
	static public function fourier_ellipsoid(input:Dynamic, size:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multidimensional Gaussian fourier filter.
		
		The array is multiplied with the fourier transform of a Gaussian
		kernel.
		
		Parameters
		----------
		input : array_like
		    The input array.
		sigma : float or sequence
		    The sigma of the Gaussian kernel. If a float, `sigma` is the same for
		    all axes. If a sequence, `sigma` has to contain one value for each
		    axis.
		n : int, optional
		    If `n` is negative (default), then the input is assumed to be the
		    result of a complex fft.
		    If `n` is larger than or equal to zero, the input is assumed to be the
		    result of a real fft, and `n` gives the length of the array before
		    transformation along the real transform direction.
		axis : int, optional
		    The axis of the real transform.
		output : ndarray, optional
		    If given, the result of filtering the input is placed in this array.
		    None is returned in this case.
		
		Returns
		-------
		fourier_gaussian : ndarray
		    The filtered input.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import numpy.fft
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax1, ax2) = plt.subplots(1, 2)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ascent = misc.ascent()
		>>> input_ = numpy.fft.fft2(ascent)
		>>> result = ndimage.fourier_gaussian(input_, sigma=4)
		>>> result = numpy.fft.ifft2(result)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result.real)  # the imaginary part is an artifact
		>>> plt.show()
	**/
	static public function fourier_gaussian(input:Dynamic, sigma:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multidimensional Fourier shift filter.
		
		The array is multiplied with the Fourier transform of a shift operation.
		
		Parameters
		----------
		input : array_like
		    The input array.
		shift : float or sequence
		    The size of the box used for filtering.
		    If a float, `shift` is the same for all axes. If a sequence, `shift`
		    has to contain one value for each axis.
		n : int, optional
		    If `n` is negative (default), then the input is assumed to be the
		    result of a complex fft.
		    If `n` is larger than or equal to zero, the input is assumed to be the
		    result of a real fft, and `n` gives the length of the array before
		    transformation along the real transform direction.
		axis : int, optional
		    The axis of the real transform.
		output : ndarray, optional
		    If given, the result of shifting the input is placed in this array.
		    None is returned in this case.
		
		Returns
		-------
		fourier_shift : ndarray
		    The shifted input.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import matplotlib.pyplot as plt
		>>> import numpy.fft
		>>> fig, (ax1, ax2) = plt.subplots(1, 2)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ascent = misc.ascent()
		>>> input_ = numpy.fft.fft2(ascent)
		>>> result = ndimage.fourier_shift(input_, shift=200)
		>>> result = numpy.fft.ifft2(result)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result.real)  # the imaginary part is an artifact
		>>> plt.show()
	**/
	static public function fourier_shift(input:Dynamic, shift:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multidimensional uniform fourier filter.
		
		The array is multiplied with the Fourier transform of a box of given
		size.
		
		Parameters
		----------
		input : array_like
		    The input array.
		size : float or sequence
		    The size of the box used for filtering.
		    If a float, `size` is the same for all axes. If a sequence, `size` has
		    to contain one value for each axis.
		n : int, optional
		    If `n` is negative (default), then the input is assumed to be the
		    result of a complex fft.
		    If `n` is larger than or equal to zero, the input is assumed to be the
		    result of a real fft, and `n` gives the length of the array before
		    transformation along the real transform direction.
		axis : int, optional
		    The axis of the real transform.
		output : ndarray, optional
		    If given, the result of filtering the input is placed in this array.
		    None is returned in this case.
		
		Returns
		-------
		fourier_uniform : ndarray
		    The filtered input.
		
		Examples
		--------
		>>> from scipy import ndimage, misc
		>>> import numpy.fft
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax1, ax2) = plt.subplots(1, 2)
		>>> plt.gray()  # show the filtered result in grayscale
		>>> ascent = misc.ascent()
		>>> input_ = numpy.fft.fft2(ascent)
		>>> result = ndimage.fourier_uniform(input_, size=20)
		>>> result = numpy.fft.ifft2(result)
		>>> ax1.imshow(ascent)
		>>> ax2.imshow(result.real)  # the imaginary part is an artifact
		>>> plt.show()
	**/
	static public function fourier_uniform(input:Dynamic, size:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		normalize_axis_index(axis, ndim, msg_prefix=None)
		
		Normalizes an axis index, `axis`, such that is a valid positive index into
		the shape of array with `ndim` dimensions. Raises an AxisError with an
		appropriate message if this is not possible.
		
		Used internally by all axis-checking logic.
		
		.. versionadded:: 1.13.0
		
		Parameters
		----------
		axis : int
		    The un-normalized index of the axis. Can be negative
		ndim : int
		    The number of dimensions of the array that `axis` should be normalized
		    against
		msg_prefix : str
		    A prefix to put before the message, typically the name of the argument
		
		Returns
		-------
		normalized_axis : int
		    The normalized axis index, such that `0 <= normalized_axis < ndim`
		
		Raises
		------
		AxisError
		    If the axis index is invalid, when `-ndim <= axis < ndim` is false.
		
		Examples
		--------
		>>> normalize_axis_index(0, ndim=3)
		0
		>>> normalize_axis_index(1, ndim=3)
		1
		>>> normalize_axis_index(-1, ndim=3)
		2
		
		>>> normalize_axis_index(3, ndim=3)
		Traceback (most recent call last):
		...
		AxisError: axis 3 is out of bounds for array of dimension 3
		>>> normalize_axis_index(-4, ndim=3, msg_prefix='axes_arg')
		Traceback (most recent call last):
		...
		AxisError: axes_arg: axis -4 is out of bounds for array of dimension 3
	**/
	static public function normalize_axis_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
}