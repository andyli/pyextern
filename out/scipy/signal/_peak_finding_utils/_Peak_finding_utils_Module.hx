/* This file is generated, do not edit! */
package scipy.signal._peak_finding_utils;
@:pythonImport("scipy.signal._peak_finding_utils") extern class _Peak_finding_utils_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Find indices of local maxima in a 1D array.
		
		This function finds all local maxima in a 1D array and returns their
		indices. For maxima who are wider than one sample the index of the center
		sample is returned (rounded down in case the number of samples is even).
		
		Parameters
		----------
		x : ndarray
		    The array to search for local maxima.
		
		Returns
		-------
		maxima : ndarray
		    Indices of local maxima in `x`.
		
		See Also
		--------
		argrelmax
		
		Notes
		-----
		- Compared to `argrelmax` this function is significantly faster and can
		  detect maxima that are more than one sample wide. However this comes at
		  the cost of being only applicable to 1D arrays.
		- A maxima is defined as one or more samples of equal value that are
		  surrounded on both sides by atleast one smaller sample.
		
		.. versionadded:: 1.1.0
	**/
	static public function _argmaxima1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the prominence of each peak in a signal.
		
		Parameters
		----------
		x : ndarray
		    A signal with peaks.
		peaks : ndarray
		    Indices of peaks in `x`.
		wlen : np.intp
		    A window length in samples (see `peak_prominences`) which is rounded up
		    to the nearest odd integer. If smaller than 2 the entire signal `x` is
		    used.
		
		Returns
		-------
		prominences : ndarray
		    The calculated prominences for each peak in `peaks`.
		left_bases, right_bases : ndarray
		    The peaks' bases as indices in `x` to the left and right of each peak.
		
		Raises
		------
		ValueError
		    If an index in `peaks` doesn't point to a local maximum in `x`.
		
		Notes
		-----
		This is the inner function to `peak_prominences`.
		
		.. versionadded:: 1.1.0
	**/
	static public function _peak_prominences(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the width of each each peak in a signal.
		
		Parameters
		----------
		x : ndarray
		    A signal with peaks.
		peaks : ndarray
		    Indices of peaks in `x`.
		rel_height : np.float64
		    Chooses the relative height at which the peak width is measured as a
		    percentage of its prominence (see `peak_widths`).
		prominences : ndarray
		    Prominences of each peak in `peaks` as returned by `peak_prominences`.
		left_bases, right_bases : ndarray
		    Left and right bases of each peak in `peaks` as returned by
		    `peak_prominences`.
		
		Returns
		-------
		widths : ndarray
		    The widths for each peak in samples.
		width_heights : ndarray
		    The height of the contour lines at which the `widths` where evaluated.
		left_ips, right_ips : ndarray
		    Interpolated positions of left and right intersection points of a
		    horizontal line at the respective evaluation height.
		
		Raises
		------
		ValueError
		    If the supplied prominence data doesn't satisfy the condition
		    ``0 <= left_base <= peak <= right_base < x.shape[0]`` for each peak or
		    if `peaks`, `left_bases` and `right_bases` don't share the same shape.
		
		Notes
		-----
		This is the inner function to `peak_widths`.
		
		.. versionadded:: 1.1.0
	**/
	static public function _peak_widths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evaluate which peaks fulfill the distance condition.
		
		Parameters
		----------
		peaks : ndarray
		    Indices of peaks in `vector`.
		priority : ndarray
		    An array matching `peaks` used to determine priority of each peak. A
		    peak with a higher priority value is kept over one with a lower one.
		distance : np.float64
		    Minimal distance that peaks must be spaced.
		
		Returns
		-------
		keep : ndarray[bool]
		    A boolean mask evaluating to true where `peaks` fulfill the distance
		    condition.
		
		Notes
		-----
		Declaring the input arrays as C-contiguous doesn't seem to have performance
		advantages.
		
		.. versionadded:: 1.1.0
	**/
	static public function _select_by_peak_distance(args:haxe.extern.Rest<Dynamic>):Dynamic;
}