/* This file is generated, do not edit! */
package scipy.fftpack;
@:pythonImport("scipy.fftpack.realtransforms") extern class Realtransforms {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __fix_shape(x:Dynamic, n:Dynamic, axis:Dynamic, dct_or_dst:Dynamic):Dynamic;
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
	/**
		Return Discrete Cosine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    input array.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the dct is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		z : ndarray
	**/
	static public function _dct(x:Dynamic, type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Return Discrete Sine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    input array.
		n : int, optional
		    Length of the transform.
		axis : int, optional
		    Axis along which the dst is computed. (default=-1)
		overwrite_x : bool, optional
		    If True the contents of x can be destroyed. (default=False)
		
		Returns
		-------
		z : real ndarray
	**/
	static public function _dst(x:Dynamic, type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic, ?normalize:Dynamic):Dynamic;
	static public function _eval_fun(f:Dynamic, tmp:Dynamic, n:Dynamic, axis:Dynamic, nm:Dynamic, overwrite_x:Dynamic):Dynamic;
	/**
		Internal auxiliary function for _raw_fft, _raw_fftnd.
	**/
	static public function _fix_shape(x:Dynamic, n:Dynamic, axis:Dynamic):Dynamic;
	static public function _get_dct_fun(type:Dynamic, dtype:Dynamic):Dynamic;
	static public function _get_dst_fun(type:Dynamic, dtype:Dynamic):Dynamic;
	static public function _get_norm_mode(normalize:Dynamic):Dynamic;
	static public function _raw_dct(x0:Dynamic, type:Dynamic, n:Dynamic, axis:Dynamic, nm:Dynamic, overwrite_x:Dynamic):Dynamic;
	static public function _raw_dst(x0:Dynamic, type:Dynamic, n:Dynamic, axis:Dynamic, nm:Dynamic, overwrite_x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the Discrete Cosine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the dct is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		y : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		idct : Inverse DCT
		
		Notes
		-----
		For a single dimension array ``x``, ``dct(x, norm='ortho')`` is equal to
		MATLAB ``dct(x)``.
		
		There are theoretically 8 types of the DCT, only the first 3 types are
		implemented in scipy. 'The' DCT generally refers to DCT type 2, and 'the'
		Inverse DCT generally refers to DCT type 3.
		
		**Type I**
		
		There are several definitions of the DCT-I; we use the following
		(for ``norm=None``)::
		
		                                     N-2
		  y[k] = x[0] + (-1)**k x[N-1] + 2 * sum x[n]*cos(pi*k*n/(N-1))
		                                     n=1
		
		Only None is supported as normalization mode for DCT-I. Note also that the
		DCT-I is only supported for input size > 1
		
		**Type II**
		
		There are several definitions of the DCT-II; we use the following
		(for ``norm=None``)::
		
		
		            N-1
		  y[k] = 2* sum x[n]*cos(pi*k*(2n+1)/(2*N)), 0 <= k < N.
		            n=0
		
		If ``norm='ortho'``, ``y[k]`` is multiplied by a scaling factor `f`::
		
		  f = sqrt(1/(4*N)) if k = 0,
		  f = sqrt(1/(2*N)) otherwise.
		
		Which makes the corresponding matrix of coefficients orthonormal
		(``OO' = Id``).
		
		**Type III**
		
		There are several definitions, we use the following
		(for ``norm=None``)::
		
		                    N-1
		  y[k] = x[0] + 2 * sum x[n]*cos(pi*(k+0.5)*n/N), 0 <= k < N.
		                    n=1
		
		or, for ``norm='ortho'`` and 0 <= k < N::
		
		                                      N-1
		  y[k] = x[0] / sqrt(N) + sqrt(2/N) * sum x[n]*cos(pi*(k+0.5)*n/N)
		                                      n=1
		
		The (unnormalized) DCT-III is the inverse of the (unnormalized) DCT-II, up
		to a factor `2N`. The orthonormalized DCT-III is exactly the inverse of
		the orthonormalized DCT-II.
		
		References
		----------
		.. [1] 'A Fast Cosine Transform in One and Two Dimensions', by J.
		       Makhoul, `IEEE Transactions on acoustics, speech and signal
		       processing` vol. 28(1), pp. 27-34,
		       http://dx.doi.org/10.1109/TASSP.1980.1163351 (1980).
		.. [2] Wikipedia, "Discrete cosine transform",
		       http://en.wikipedia.org/wiki/Discrete_cosine_transform
		
		Examples
		--------
		The Type 1 DCT is equivalent to the FFT (though faster) for real,
		even-symmetrical inputs.  The output is also real and even-symmetrical.
		Half of the FFT input is used to generate half of the FFT output:
		
		>>> from scipy.fftpack import fft, dct
		>>> fft(np.array([4., 3., 5., 10., 5., 3.])).real
		array([ 30.,  -8.,   6.,  -2.,   6.,  -8.])
		>>> dct(np.array([4., 3., 5., 10.]), 1)
		array([ 30.,  -8.,   6.,  -2.])
	**/
	static public function dct(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the Discrete Sine Transform of arbitrary type sequence x.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DST (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the dst is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		dst : ndarray of reals
		    The transformed input array.
		
		See Also
		--------
		idst : Inverse DST
		
		Notes
		-----
		For a single dimension array ``x``.
		
		There are theoretically 8 types of the DST for different combinations of
		even/odd boundary conditions and boundary off sets [1]_, only the first
		3 types are implemented in scipy.
		
		**Type I**
		
		There are several definitions of the DST-I; we use the following
		for ``norm=None``.  DST-I assumes the input is odd around n=-1 and n=N. ::
		
		             N-1
		  y[k] = 2 * sum x[n]*sin(pi*(k+1)*(n+1)/(N+1))
		             n=0
		
		Only None is supported as normalization mode for DCT-I. Note also that the
		DCT-I is only supported for input size > 1
		The (unnormalized) DCT-I is its own inverse, up to a factor `2(N+1)`.
		
		**Type II**
		
		There are several definitions of the DST-II; we use the following
		for ``norm=None``.  DST-II assumes the input is odd around n=-1/2 and
		n=N-1/2; the output is odd around k=-1 and even around k=N-1 ::
		
		            N-1
		  y[k] = 2* sum x[n]*sin(pi*(k+1)*(n+0.5)/N), 0 <= k < N.
		            n=0
		
		if ``norm='ortho'``, ``y[k]`` is multiplied by a scaling factor `f` ::
		
		    f = sqrt(1/(4*N)) if k == 0
		    f = sqrt(1/(2*N)) otherwise.
		
		**Type III**
		
		There are several definitions of the DST-III, we use the following
		(for ``norm=None``).  DST-III assumes the input is odd around n=-1
		and even around n=N-1 ::
		
		                             N-2
		  y[k] = x[N-1]*(-1)**k + 2* sum x[n]*sin(pi*(k+0.5)*(n+1)/N), 0 <= k < N.
		                             n=0
		
		The (unnormalized) DCT-III is the inverse of the (unnormalized) DCT-II, up
		to a factor `2N`.  The orthonormalized DST-III is exactly the inverse of
		the orthonormalized DST-II.
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] Wikipedia, "Discrete sine transform",
		       http://en.wikipedia.org/wiki/Discrete_sine_transform
	**/
	static public function dst(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return the Inverse Discrete Cosine Transform of an arbitrary type sequence.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DCT (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the idct is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		idct : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dct : Forward DCT
		
		Notes
		-----
		For a single dimension array `x`, ``idct(x, norm='ortho')`` is equal to
		MATLAB ``idct(x)``.
		
		'The' IDCT is the IDCT of type 2, which is the same as DCT of type 3.
		
		IDCT of type 1 is the DCT of type 1, IDCT of type 2 is the DCT of type
		3, and IDCT of type 3 is the DCT of type 2. For the definition of these
		types, see `dct`.
		
		Examples
		--------
		The Type 1 DCT is equivalent to the DFT for real, even-symmetrical
		inputs.  The output is also real and even-symmetrical.  Half of the IFFT
		input is used to generate half of the IFFT output:
		
		>>> from scipy.fftpack import ifft, idct
		>>> ifft(np.array([ 30.,  -8.,   6.,  -2.,   6.,  -8.])).real
		array([  4.,   3.,   5.,  10.,   5.,   3.])
		>>> idct(np.array([ 30.,  -8.,   6.,  -2.]), 1) / 6
		array([  4.,   3.,   5.,  10.])
	**/
	static public function idct(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return the Inverse Discrete Sine Transform of an arbitrary type sequence.
		
		Parameters
		----------
		x : array_like
		    The input array.
		type : {1, 2, 3}, optional
		    Type of the DST (see Notes). Default type is 2.
		n : int, optional
		    Length of the transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the idst is computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		norm : {None, 'ortho'}, optional
		    Normalization mode (see Notes). Default is None.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		idst : ndarray of real
		    The transformed input array.
		
		See Also
		--------
		dst : Forward DST
		
		Notes
		-----
		'The' IDST is the IDST of type 2, which is the same as DST of type 3.
		
		IDST of type 1 is the DST of type 1, IDST of type 2 is the DST of type
		3, and IDST of type 3 is the DST of type 2. For the definition of these
		types, see `dst`.
		
		.. versionadded:: 0.11.0
	**/
	static public function idst(x:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}