/* This file is generated, do not edit! */
package scipy.ndimage;
@:pythonImport("scipy.ndimage.fourier") extern class Fourier {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_output_fourier(output:Dynamic, input:Dynamic):Dynamic;
	static public function _get_output_fourier_complex(output:Dynamic, input:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Multi-dimensional ellipsoid fourier filter.
		
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
		fourier_ellipsoid : ndarray or None
		    The filtered input. If `output` is given as a parameter, None is
		    returned.
		
		Notes
		-----
		This function is implemented for arrays of rank 1, 2, or 3.
	**/
	static public function fourier_ellipsoid(input:Dynamic, size:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multi-dimensional Gaussian fourier filter.
		
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
		fourier_gaussian : ndarray or None
		    The filtered input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function fourier_gaussian(input:Dynamic, sigma:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multi-dimensional fourier shift filter.
		
		The array is multiplied with the fourier transform of a shift operation.
		
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
		fourier_shift : ndarray or None
		    The shifted input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function fourier_shift(input:Dynamic, shift:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Multi-dimensional uniform fourier filter.
		
		The array is multiplied with the fourier transform of a box of given
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
		fourier_uniform : ndarray or None
		    The filtered input. If `output` is given as a parameter, None is
		    returned.
	**/
	static public function fourier_uniform(input:Dynamic, size:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?output:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}