/* This file is generated, do not edit! */
package scipy.signal._upfirdn;
@:pythonImport("scipy.signal._upfirdn") extern class _Upfirdn_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _apply(data:Dynamic, h_trans_flip:Dynamic, out:Dynamic, up:Dynamic, down:Dynamic, axis:Dynamic):Dynamic;
	/**
		The output length that results from a given input
	**/
	static public function _output_len(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Store coefficients in a transposed, flipped arrangement.
		
		For example, suppose upRate is 3, and the
		input number of coefficients is 10, represented as h[0], ..., h[9].
		
		Then the internal buffer will look like this::
		
		   h[9], h[6], h[3], h[0],   // flipped phase 0 coefs
		   0,    h[7], h[4], h[1],   // flipped phase 1 coefs (zero-padded)
		   0,    h[8], h[5], h[2],   // flipped phase 2 coefs (zero-padded)
	**/
	static public function _pad_h(h:Dynamic, up:Dynamic):Dynamic;
	/**
		Upsample, FIR filter, and downsample
		
		Parameters
		----------
		h : array_like
		    1-dimensional FIR (finite-impulse response) filter coefficients.
		x : array_like
		    Input signal array.
		up : int, optional
		    Upsampling rate. Default is 1.
		down : int, optional
		    Downsampling rate. Default is 1.
		axis : int, optional
		    The axis of the input data array along which to apply the
		    linear filter. The filter is applied to each subarray along
		    this axis. Default is -1.
		
		Returns
		-------
		y : ndarray
		    The output signal array. Dimensions will be the same as `x` except
		    for along `axis`, which will change size according to the `h`,
		    `up`,  and `down` parameters.
		
		Notes
		-----
		The algorithm is an implementation of the block diagram shown on page 129
		of the Vaidyanathan text [1]_ (Figure 4.3-8d).
		
		.. [1] P. P. Vaidyanathan, Multirate Systems and Filter Banks,
		   Prentice Hall, 1993.
		
		The direct approach of upsampling by factor of P with zero insertion,
		FIR filtering of length ``N``, and downsampling by factor of Q is
		O(N*Q) per output sample. The polyphase implementation used here is
		O(N/P).
		
		.. versionadded:: 0.18
		
		Examples
		--------
		Simple operations:
		
		>>> from scipy.signal import upfirdn
		>>> upfirdn([1, 1, 1], [1, 1, 1])   # FIR filter
		array([ 1.,  2.,  3.,  2.,  1.])
		>>> upfirdn([1], [1, 2, 3], 3)  # upsampling with zeros insertion
		array([ 1.,  0.,  0.,  2.,  0.,  0.,  3.,  0.,  0.])
		>>> upfirdn([1, 1, 1], [1, 2, 3], 3)  # upsampling with sample-and-hold
		array([ 1.,  1.,  1.,  2.,  2.,  2.,  3.,  3.,  3.])
		>>> upfirdn([.5, 1, .5], [1, 1, 1], 2)  # linear interpolation
		array([ 0.5,  1. ,  1. ,  1. ,  1. ,  1. ,  0.5,  0. ])
		>>> upfirdn([1], np.arange(10), 1, 3)  # decimation by 3
		array([ 0.,  3.,  6.,  9.])
		>>> upfirdn([.5, 1, .5], np.arange(10), 2, 3)  # linear interp, rate 2/3
		array([ 0. ,  1. ,  2.5,  4. ,  5.5,  7. ,  8.5,  0. ])
		
		Apply a single filter to multiple signals:
		
		>>> x = np.reshape(np.arange(8), (4, 2))
		>>> x
		array([[0, 1],
		       [2, 3],
		       [4, 5],
		       [6, 7]])
		
		Apply along the last dimension of ``x``:
		
		>>> h = [1, 1]
		>>> upfirdn(h, x, 2)
		array([[ 0.,  0.,  1.,  1.],
		       [ 2.,  2.,  3.,  3.],
		       [ 4.,  4.,  5.,  5.],
		       [ 6.,  6.,  7.,  7.]])
		
		Apply along the 0th dimension of ``x``:
		
		>>> upfirdn(h, x, 2, axis=0)
		array([[ 0.,  1.],
		       [ 0.,  1.],
		       [ 2.,  3.],
		       [ 2.,  3.],
		       [ 4.,  5.],
		       [ 4.,  5.],
		       [ 6.,  7.],
		       [ 6.,  7.]])
	**/
	static public function upfirdn(h:Dynamic, x:Dynamic, ?up:Dynamic, ?down:Dynamic, ?axis:Dynamic):Dynamic;
}