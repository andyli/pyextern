/* This file is generated, do not edit! */
package scipy.stats.morestats;
@:pythonImport("scipy.stats.morestats") extern class Morestats_Module {
	static public var _Avals_expon : Dynamic;
	static public var _Avals_gumbel : Dynamic;
	static public var _Avals_logistic : Dynamic;
	static public var _Avals_norm : Dynamic;
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
		Helper function to add axes labels and a title to stats plots
	**/
	static public function _add_axis_labels_title(plot:Dynamic, xlabel:Dynamic, ylabel:Dynamic, title:Dynamic):Dynamic;
	/**
		Compute A2akN equation 7 of Scholz and Stephens.
		
		Parameters
		----------
		samples : sequence of 1-D array_like
		    Array of sample arrays.
		Z : array_like
		    Sorted array of all observations.
		Zstar : array_like
		    Sorted array of unique observations.
		k : int
		    Number of samples.
		n : array_like
		    Number of observations in each sample.
		N : int
		    Total number of observations.
		
		Returns
		-------
		A2aKN : float
		    The A2aKN statistics of Scholz and Stephens 1987.
	**/
	static public function _anderson_ksamp_midrank(samples:Dynamic, Z:Dynamic, Zstar:Dynamic, k:Dynamic, n:Dynamic, N:Dynamic):Float;
	/**
		Compute A2akN equation 6 of Scholz & Stephens.
		
		Parameters
		----------
		samples : sequence of 1-D array_like
		    Array of sample arrays.
		Z : array_like
		    Sorted array of all observations.
		Zstar : array_like
		    Sorted array of unique observations.
		k : int
		    Number of samples.
		n : array_like
		    Number of observations in each sample.
		N : int
		    Total number of observations.
		
		Returns
		-------
		A2KN : float
		    The A2KN statistics of Scholz and Stephens 1987.
	**/
	static public function _anderson_ksamp_right(samples:Dynamic, Z:Dynamic, Zstar:Dynamic, k:Dynamic, n:Dynamic, N:Dynamic):Float;
	static public function _apply_func(x:Dynamic, g:Dynamic, func:Dynamic):Dynamic;
	static public function _boxcox_conf_interval(x:Dynamic, lmax:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Approximations of uniform order statistic medians.
		
		Parameters
		----------
		n : int
		    Sample size.
		
		Returns
		-------
		v : 1d float array
		    Approximations of the order statistic medians.
		
		References
		----------
		.. [1] James J. Filliben, "The Probability Plot Correlation Coefficient
		       Test for Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		Examples
		--------
		Order statistics of the uniform distribution on the unit interval
		are marginally distributed according to beta distributions.
		The expectations of these order statistic are evenly spaced across
		the interval, but the distributions are skewed in a way that
		pushes the medians slightly towards the endpoints of the unit interval:
		
		>>> n = 4
		>>> k = np.arange(1, n+1)
		>>> from scipy.stats import beta
		>>> a = k
		>>> b = n-k+1
		>>> beta.mean(a, b)
		array([ 0.2,  0.4,  0.6,  0.8])
		>>> beta.median(a, b)
		array([ 0.15910358,  0.38572757,  0.61427243,  0.84089642])
		
		The Filliben approximation uses the exact medians of the smallest
		and greatest order statistics, and the remaining medians are approximated
		by points spread evenly across a sub-interval of the unit interval:
		
		>>> from scipy.morestats import _calc_uniform_order_statistic_medians
		>>> _calc_uniform_order_statistic_medians(n)
		array([ 0.15910358,  0.38545246,  0.61454754,  0.84089642])
		
		This plot shows the skewed distributions of the order statistics
		of a sample of size four from a uniform distribution on the unit interval:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(0.0, 1.0, num=50, endpoint=True)
		>>> pdfs = [beta.pdf(x, a[i], b[i]) for i in range(n)]
		>>> plt.figure()
		>>> plt.plot(x, pdfs[0], x, pdfs[1], x, pdfs[2], x, pdfs[3])
	**/
	static public function _calc_uniform_order_statistic_medians(n:Dynamic):Dynamic;
	static public function _circfuncs_common(samples:Dynamic, high:Dynamic, low:Dynamic):Dynamic;
	static public function _contains_nan(a:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute parameters for a Box-Cox or Yeo-Johnson normality plot,
		optionally show it. See `boxcox_normplot` or `yeojohnson_normplot` for
		details.
	**/
	static public function _normplot(method:Dynamic, x:Dynamic, la:Dynamic, lb:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Parse `dist` keyword.
		
		Parameters
		----------
		dist : str or stats.distributions instance.
		    Several functions take `dist` as a keyword, hence this utility
		    function.
		enforce_subclass : bool, optional
		    If True (default), `dist` needs to be a
		    `_distn_infrastructure.rv_generic` instance.
		    It can sometimes be useful to set this keyword to False, if a function
		    wants to accept objects that just look somewhat like such an instance
		    (for example, they have a ``ppf`` method).
	**/
	static public function _parse_dist_kw(dist:Dynamic, ?enforce_subclass:Dynamic):Dynamic;
	/**
		Return x transformed by the Yeo-Johnson power transform with given
		parameter lmbda.
	**/
	static public function _yeojohnson_transform(x:Dynamic, lmbda:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amax` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		initial : scalar, optional
		    The minimum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		
		Returns
		-------
		amax : ndarray or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		argmax :
		    Return the indices of the maximum values.
		
		nanmin, minimum, fmin
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding max value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmax.
		
		Don't use `amax` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``maximum(a[0], a[1])`` is faster than
		``amax(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amax(a)           # Maximum of the flattened array
		3
		>>> np.amax(a, axis=0)   # Maxima along the first axis
		array([2, 3])
		>>> np.amax(a, axis=1)   # Maxima along the second axis
		array([1, 3])
		
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
		
		You can use an initial value to compute the maximum of an empty slice, or
		to initialize it to a different value:
		
		>>> np.max([[-50], [10]], axis=-1, initial=0)
		array([ 0, 10])
		
		Notice that the initial value is used as one of the elements for which the
		maximum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		>>> np.max([5], initial=6)
		6
		>>> max([5], default=6)
		5
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amin` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		initial : scalar, optional
		    The maximum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		amin : ndarray or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		argmin :
		    Return the indices of the minimum values.
		
		nanmax, maximum, fmax
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding min value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmin.
		
		Don't use `amin` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``minimum(a[0], a[1])`` is faster than
		``amin(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amin(a)           # Minimum of the flattened array
		0
		>>> np.amin(a, axis=0)   # Minima along the first axis
		array([0, 1])
		>>> np.amin(a, axis=1)   # Minima along the second axis
		array([0, 2])
		
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
		
		>>> np.min([[-50], [10]], axis=-1, initial=0)
		array([-50,   0])
		
		Notice that the initial value is used as one of the elements for which the
		minimum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		Notice that this isn't the same as Python's ``default`` argument.
		
		>>> np.min([6], initial=5)
		5
		>>> min([6], default=5)
		6
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	/**
		Anderson-Darling test for data coming from a particular distribution
		
		The Anderson-Darling tests the null hypothesis that a sample is
		drawn from a population that follows a particular distribution.
		For the Anderson-Darling test, the critical values depend on
		which distribution is being tested against.  This function works
		for normal, exponential, logistic, or Gumbel (Extreme Value
		Type I) distributions.
		
		Parameters
		----------
		x : array_like
		    array of sample data
		dist : {'norm','expon','logistic','gumbel','gumbel_l', gumbel_r',
		    'extreme1'}, optional
		    the type of distribution to test against.  The default is 'norm'
		    and 'extreme1', 'gumbel_l' and 'gumbel' are synonyms.
		
		Returns
		-------
		statistic : float
		    The Anderson-Darling test statistic
		critical_values : list
		    The critical values for this distribution
		significance_level : list
		    The significance levels for the corresponding critical values
		    in percents.  The function returns critical values for a
		    differing set of significance levels depending on the
		    distribution that is being tested against.
		
		See Also
		--------
		kstest : The Kolmogorov-Smirnov test for goodness-of-fit.
		
		Notes
		-----
		Critical values provided are for the following significance levels:
		
		normal/exponenential
		    15%, 10%, 5%, 2.5%, 1%
		logistic
		    25%, 10%, 5%, 2.5%, 1%, 0.5%
		Gumbel
		    25%, 10%, 5%, 2.5%, 1%
		
		If the returned statistic is larger than these critical values then
		for the corresponding significance level, the null hypothesis that
		the data come from the chosen distribution can be rejected.
		The returned statistic is referred to as 'A2' in the references.
		
		References
		----------
		.. [1] https://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
		.. [2] Stephens, M. A. (1974). EDF Statistics for Goodness of Fit and
		       Some Comparisons, Journal of the American Statistical Association,
		       Vol. 69, pp. 730-737.
		.. [3] Stephens, M. A. (1976). Asymptotic Results for Goodness-of-Fit
		       Statistics with Unknown Parameters, Annals of Statistics, Vol. 4,
		       pp. 357-369.
		.. [4] Stephens, M. A. (1977). Goodness of Fit for the Extreme Value
		       Distribution, Biometrika, Vol. 64, pp. 583-588.
		.. [5] Stephens, M. A. (1977). Goodness of Fit with Special Reference
		       to Tests for Exponentiality , Technical Report No. 262,
		       Department of Statistics, Stanford University, Stanford, CA.
		.. [6] Stephens, M. A. (1979). Tests of Fit for the Logistic Distribution
		       Based on the Empirical Distribution Function, Biometrika, Vol. 66,
		       pp. 591-595.
	**/
	static public function anderson(x:Dynamic, ?dist:Dynamic):Float;
	/**
		The Anderson-Darling test for k-samples.
		
		The k-sample Anderson-Darling test is a modification of the
		one-sample Anderson-Darling test. It tests the null hypothesis
		that k-samples are drawn from the same population without having
		to specify the distribution function of that population. The
		critical values depend on the number of samples.
		
		Parameters
		----------
		samples : sequence of 1-D array_like
		    Array of sample data in arrays.
		midrank : bool, optional
		    Type of Anderson-Darling test which is computed. Default
		    (True) is the midrank test applicable to continuous and
		    discrete populations. If False, the right side empirical
		    distribution is used.
		
		Returns
		-------
		statistic : float
		    Normalized k-sample Anderson-Darling test statistic.
		critical_values : array
		    The critical values for significance levels 25%, 10%, 5%, 2.5%, 1%.
		significance_level : float
		    An approximate significance level at which the null hypothesis for the
		    provided samples can be rejected. The value is floored / capped at
		    1% / 25%.
		
		Raises
		------
		ValueError
		    If less than 2 samples are provided, a sample is empty, or no
		    distinct observations are in the samples.
		
		See Also
		--------
		ks_2samp : 2 sample Kolmogorov-Smirnov test
		anderson : 1 sample Anderson-Darling test
		
		Notes
		-----
		[1]_ defines three versions of the k-sample Anderson-Darling test:
		one for continuous distributions and two for discrete
		distributions, in which ties between samples may occur. The
		default of this routine is to compute the version based on the
		midrank empirical distribution function. This test is applicable
		to continuous and discrete data. If midrank is set to False, the
		right side empirical distribution is used for a test for discrete
		data. According to [1]_, the two discrete test statistics differ
		only slightly if a few collisions due to round-off errors occur in
		the test not adjusted for ties between samples.
		
		The critical values corresponding to the significance levels from 0.01
		to 0.25 are taken from [1]_. p-values are floored / capped
		at 0.1% / 25%. Since the range of critical values might be extended in
		future releases, it is recommended not to test ``p == 0.25``, but rather
		``p >= 0.25`` (analogously for the lower bound).
		
		.. versionadded:: 0.14.0
		
		References
		----------
		.. [1] Scholz, F. W and Stephens, M. A. (1987), K-Sample
		       Anderson-Darling Tests, Journal of the American Statistical
		       Association, Vol. 82, pp. 918-924.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(314159)
		
		The null hypothesis that the two random samples come from the same
		distribution can be rejected at the 5% level because the returned
		test value is greater than the critical value for 5% (1.961) but
		not at the 2.5% level. The interpolation gives an approximate
		significance level of 3.2%:
		
		>>> stats.anderson_ksamp([np.random.normal(size=50),
		... np.random.normal(loc=0.5, size=30)])
		(2.4615796189876105,
		  array([ 0.325,  1.226,  1.961,  2.718,  3.752, 4.592, 6.546]),
		  0.03176687568842282)
		
		
		The null hypothesis cannot be rejected for three samples from an
		identical distribution. The reported p-value (25%) has been capped and
		may not be very accurate (since it corresponds to the value 0.449
		whereas the statistic is -0.731):
		
		>>> stats.anderson_ksamp([np.random.normal(size=50),
		... np.random.normal(size=30), np.random.normal(size=20)])
		(-0.73091722665244196,
		  array([ 0.44925884,  1.3052767 ,  1.9434184 ,  2.57696569,  3.41634856,
		  4.07210043, 5.56419101]),
		  0.25)
	**/
	static public function anderson_ksamp(samples:Dynamic, ?midrank:Dynamic):Float;
	/**
		Perform the Ansari-Bradley test for equal scale parameters
		
		The Ansari-Bradley test is a non-parametric test for the equality
		of the scale parameter of the distributions from which two
		samples were drawn.
		
		Parameters
		----------
		x, y : array_like
		    arrays of sample data
		
		Returns
		-------
		statistic : float
		    The Ansari-Bradley test statistic
		pvalue : float
		    The p-value of the hypothesis test
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		mood : A non-parametric test for the equality of two scale parameters
		
		Notes
		-----
		The p-value given is exact when the sample sizes are both less than
		55 and there are no ties, otherwise a normal approximation for the
		p-value is used.
		
		References
		----------
		.. [1] Sprent, Peter and N.C. Smeeton.  Applied nonparametric statistical
		       methods.  3rd ed. Chapman and Hall/CRC. 2001.  Section 5.8.2.
	**/
	static public function ansari(x:Dynamic, y:Dynamic):Float;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (`axis` = `None`) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See `doc.ufuncs` (Section "Output arguments") for details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `any` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False])
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True]), array([ True]))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use `numpy.linspace` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Element-wise arc tangent of ``x1/x2`` choosing the quadrant correctly.
		
		The quadrant (i.e., branch) is chosen so that ``arctan2(x1, x2)`` is
		the signed angle in radians between the ray ending at the origin and
		passing through the point (1,0), and the ray ending at the origin and
		passing through the point (`x2`, `x1`).  (Note the role reversal: the
		"`y`-coordinate" is the first function parameter, the "`x`-coordinate"
		is the second.)  By IEEE convention, this function is defined for
		`x2` = +/-0 and for either or both of `x1` and `x2` = +/-inf (see
		Notes for specific values).
		
		This function is not defined for complex-valued arguments; for the
		so-called argument of complex values, use `angle`.
		
		Parameters
		----------
		x1 : array_like, real-valued
		    `y`-coordinates.
		x2 : array_like, real-valued
		    `x`-coordinates. `x2` must be broadcastable to match the shape of
		    `x1` or vice versa.
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
		angle : ndarray
		    Array of angles in radians, in the range ``[-pi, pi]``.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		arctan, tan, angle
		
		Notes
		-----
		*arctan2* is identical to the `atan2` function of the underlying
		C library.  The following special values are defined in the C
		standard: [1]_
		
		====== ====== ================
		`x1`   `x2`   `arctan2(x1,x2)`
		====== ====== ================
		+/- 0  +0     +/- 0
		+/- 0  -0     +/- pi
		 > 0   +/-inf +0 / +pi
		 < 0   +/-inf -0 / -pi
		+/-inf +inf   +/- (pi/4)
		+/-inf -inf   +/- (3*pi/4)
		====== ====== ================
		
		Note that +0 and -0 are distinct floating point numbers, as are +inf
		and -inf.
		
		References
		----------
		.. [1] ISO/IEC standard 9899:1999, "Programming language C."
		
		Examples
		--------
		Consider four points in different quadrants:
		
		>>> x = np.array([-1, +1, +1, -1])
		>>> y = np.array([-1, -1, +1, +1])
		>>> np.arctan2(y, x) * 180 / np.pi
		array([-135.,  -45.,   45.,  135.])
		
		Note the order of the parameters. `arctan2` is defined also when `x2` = 0
		and at several other special points, obtaining values in
		the range ``[-pi, pi]``:
		
		>>> np.arctan2([1., -1.], [0., 0.])
		array([ 1.57079633, -1.57079633])
		>>> np.arctan2([0., 0., np.inf], [+0., -0., np.inf])
		array([ 0.        ,  3.14159265,  0.78539816])
	**/
	static public function arctan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See `doc.ufuncs` (Section
		    "Output arguments") for details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc. Results may also be surprising due
		to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling
		by powers of ten.
		
		References
		----------
		.. [1] "Lecture Notes on the Status of IEEE 754", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		.. [2] "How Futile are Mindless Assessments of
		       Roundoff in Floating-Point Computation?", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/Mindless.pdf
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([ 0.,  2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([ 0.4,  1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([ 0.,  2.,  2.,  4.,  4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Perform Bartlett's test for equal variances
		
		Bartlett's test tests the null hypothesis that all input samples
		are from populations with equal variances.  For samples
		from significantly non-normal populations, Levene's test
		`levene` is more robust.
		
		Parameters
		----------
		sample1, sample2,... : array_like
		    arrays of sample data.  Only 1d arrays are accepted, they may have
		    different lengths.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value of the test.
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		levene : A robust parametric test for equality of k variances
		
		Notes
		-----
		Conover et al. (1981) examine many of the existing parametric and
		nonparametric tests by extensive simulations and they conclude that the
		tests proposed by Fligner and Killeen (1976) and Levene (1960) appear to be
		superior in terms of robustness of departures from normality and power
		([3]_).
		
		References
		----------
		.. [1]  https://www.itl.nist.gov/div898/handbook/eda/section3/eda357.htm
		
		.. [2]  Snedecor, George W. and Cochran, William G. (1989), Statistical
		          Methods, Eighth Edition, Iowa State University Press.
		
		.. [3] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		
		.. [4] Bartlett, M. S. (1937). Properties of Sufficiency and Statistical
		       Tests. Proceedings of the Royal Society of London. Series A,
		       Mathematical and Physical Sciences, Vol. 160, No.901, pp. 268-282.
	**/
	static public function bartlett(?args:python.VarArgs<Dynamic>):Float;
	/**
		Bayesian confidence intervals for the mean, var, and std.
		
		Parameters
		----------
		data : array_like
		    Input data, if multi-dimensional it is flattened to 1-D by `bayes_mvs`.
		    Requires 2 or more data points.
		alpha : float, optional
		    Probability that the returned confidence interval contains
		    the true parameter.
		
		Returns
		-------
		mean_cntr, var_cntr, std_cntr : tuple
		    The three results are for the mean, variance and standard deviation,
		    respectively.  Each result is a tuple of the form::
		
		        (center, (lower, upper))
		
		    with `center` the mean of the conditional pdf of the value given the
		    data, and `(lower, upper)` a confidence interval, centered on the
		    median, containing the estimate to a probability ``alpha``.
		
		See Also
		--------
		mvsdist
		
		Notes
		-----
		Each tuple of mean, variance, and standard deviation estimates represent
		the (center, (lower, upper)) with center the mean of the conditional pdf
		of the value given the data and (lower, upper) is a confidence interval
		centered on the median, containing the estimate to a probability
		``alpha``.
		
		Converts data to 1-D and assumes all data has the same mean and variance.
		Uses Jeffrey's prior for variance and std.
		
		Equivalent to ``tuple((x.mean(), x.interval(alpha)) for x in mvsdist(dat))``
		
		References
		----------
		T.E. Oliphant, "A Bayesian perspective on estimating mean, variance, and
		standard-deviation from data", https://scholarsarchive.byu.edu/facpub/278,
		2006.
		
		Examples
		--------
		First a basic example to demonstrate the outputs:
		
		>>> from scipy import stats
		>>> data = [6, 9, 12, 7, 8, 8, 13]
		>>> mean, var, std = stats.bayes_mvs(data)
		>>> mean
		Mean(statistic=9.0, minmax=(7.103650222612533, 10.896349777387467))
		>>> var
		Variance(statistic=10.0, minmax=(3.176724206..., 24.45910382...))
		>>> std
		Std_dev(statistic=2.9724954732045084, minmax=(1.7823367265645143, 4.945614605014631))
		
		Now we generate some normally distributed random data, and get estimates of
		mean and standard deviation with 95% confidence intervals for those
		estimates:
		
		>>> n_samples = 100000
		>>> data = stats.norm.rvs(size=n_samples)
		>>> res_mean, res_var, res_std = stats.bayes_mvs(data, alpha=0.95)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.hist(data, bins=100, density=True, label='Histogram of data')
		>>> ax.vlines(res_mean.statistic, 0, 0.5, colors='r', label='Estimated mean')
		>>> ax.axvspan(res_mean.minmax[0],res_mean.minmax[1], facecolor='r',
		...            alpha=0.2, label=r'Estimated mean (95% limits)')
		>>> ax.vlines(res_std.statistic, 0, 0.5, colors='g', label='Estimated scale')
		>>> ax.axvspan(res_std.minmax[0],res_std.minmax[1], facecolor='g', alpha=0.2,
		...            label=r'Estimated scale (95% limits)')
		
		>>> ax.legend(fontsize=10)
		>>> ax.set_xlim([-4, 4])
		>>> ax.set_ylim([0, 0.5])
		>>> plt.show()
	**/
	static public function bayes_mvs(data:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	/**
		Perform a test that the probability of success is p.
		
		This is an exact, two-sided test of the null hypothesis
		that the probability of success in a Bernoulli experiment
		is `p`.
		
		Parameters
		----------
		x : integer or array_like
		    the number of successes, or if x has length 2, it is the
		    number of successes and the number of failures.
		n : integer
		    the number of trials.  This is ignored if x gives both the
		    number of successes and failures
		p : float, optional
		    The hypothesized probability of success.  0 <= p <= 1. The
		    default value is p = 0.5
		alternative : {'two-sided', 'greater', 'less'}, optional
		    Indicates the alternative hypothesis. The default value is
		    'two-sided'.
		
		Returns
		-------
		p-value : float
		    The p-value of the hypothesis test
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Binomial_test
		
		Examples
		--------
		>>> from scipy import stats
		
		A car manufacturer claims that no more than 10% of their cars are unsafe.
		15 cars are inspected for safety, 3 were found to be unsafe. Test the
		manufacturer's claim:
		
		>>> stats.binom_test(3, n=15, p=0.1, alternative='greater')
		0.18406106910639114
		
		The null hypothesis cannot be rejected at the 5% level of significance
		because the returned p-value is greater than the critical value of 5%.
	**/
	static public function binom_test(x:Dynamic, ?n:Dynamic, ?p:Dynamic, ?alternative:Dynamic):Float;
	/**
		Return a positive dataset transformed by a Box-Cox power transformation.
		
		Parameters
		----------
		x : ndarray
		    Input array.  Should be 1-dimensional.
		lmbda : {None, scalar}, optional
		    If `lmbda` is not None, do the transformation for that value.
		
		    If `lmbda` is None, find the lambda that maximizes the log-likelihood
		    function and return it as the second output argument.
		alpha : {None, float}, optional
		    If ``alpha`` is not None, return the ``100 * (1-alpha)%`` confidence
		    interval for `lmbda` as the third output argument.
		    Must be between 0.0 and 1.0.
		
		Returns
		-------
		boxcox : ndarray
		    Box-Cox power transformed array.
		maxlog : float, optional
		    If the `lmbda` parameter is None, the second returned argument is
		    the lambda that maximizes the log-likelihood function.
		(min_ci, max_ci) : tuple of float, optional
		    If `lmbda` parameter is None and ``alpha`` is not None, this returned
		    tuple of floats represents the minimum and maximum confidence limits
		    given ``alpha``.
		
		See Also
		--------
		probplot, boxcox_normplot, boxcox_normmax, boxcox_llf
		
		Notes
		-----
		The Box-Cox transform is given by::
		
		    y = (x**lmbda - 1) / lmbda,  for lmbda > 0
		        log(x),                  for lmbda = 0
		
		`boxcox` requires the input data to be positive.  Sometimes a Box-Cox
		transformation provides a shift parameter to achieve this; `boxcox` does
		not.  Such a shift parameter is equivalent to adding a positive constant to
		`x` before calling `boxcox`.
		
		The confidence limits returned when ``alpha`` is provided give the interval
		where:
		
		.. math::
		
		    llf(\hat{\lambda}) - llf(\lambda) < \frac{1}{2}\chi^2(1 - \alpha, 1),
		
		with ``llf`` the log-likelihood function and :math:`\chi^2` the chi-squared
		function.
		
		References
		----------
		G.E.P. Box and D.R. Cox, "An Analysis of Transformations", Journal of the
		Royal Statistical Society B, 26, 211-252 (1964).
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		We generate some random variates from a non-normal distribution and make a
		probability plot for it, to show it is non-normal in the tails:
		
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(211)
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> prob = stats.probplot(x, dist=stats.norm, plot=ax1)
		>>> ax1.set_xlabel('')
		>>> ax1.set_title('Probplot against normal distribution')
		
		We now use `boxcox` to transform the data so it's closest to normal:
		
		>>> ax2 = fig.add_subplot(212)
		>>> xt, _ = stats.boxcox(x)
		>>> prob = stats.probplot(xt, dist=stats.norm, plot=ax2)
		>>> ax2.set_title('Probplot after Box-Cox transformation')
		
		>>> plt.show()
	**/
	static public function boxcox(x:Dynamic, ?lmbda:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		The boxcox log-likelihood function.
		
		Parameters
		----------
		lmb : scalar
		    Parameter for Box-Cox transformation.  See `boxcox` for details.
		data : array_like
		    Data to calculate Box-Cox log-likelihood for.  If `data` is
		    multi-dimensional, the log-likelihood is calculated along the first
		    axis.
		
		Returns
		-------
		llf : float or ndarray
		    Box-Cox log-likelihood of `data` given `lmb`.  A float for 1-D `data`,
		    an array otherwise.
		
		See Also
		--------
		boxcox, probplot, boxcox_normplot, boxcox_normmax
		
		Notes
		-----
		The Box-Cox log-likelihood function is defined here as
		
		.. math::
		
		    llf = (\lambda - 1) \sum_i(\log(x_i)) -
		          N/2 \log(\sum_i (y_i - \bar{y})^2 / N),
		
		where ``y`` is the Box-Cox transformed input data ``x``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> from mpl_toolkits.axes_grid1.inset_locator import inset_axes
		>>> np.random.seed(1245)
		
		Generate some random variates and calculate Box-Cox log-likelihood values
		for them for a range of ``lmbda`` values:
		
		>>> x = stats.loggamma.rvs(5, loc=10, size=1000)
		>>> lmbdas = np.linspace(-2, 10)
		>>> llf = np.zeros(lmbdas.shape, dtype=float)
		>>> for ii, lmbda in enumerate(lmbdas):
		...     llf[ii] = stats.boxcox_llf(lmbda, x)
		
		Also find the optimal lmbda value with `boxcox`:
		
		>>> x_most_normal, lmbda_optimal = stats.boxcox(x)
		
		Plot the log-likelihood as function of lmbda.  Add the optimal lmbda as a
		horizontal line to check that that's really the optimum:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(lmbdas, llf, 'b.-')
		>>> ax.axhline(stats.boxcox_llf(lmbda_optimal, x), color='r')
		>>> ax.set_xlabel('lmbda parameter')
		>>> ax.set_ylabel('Box-Cox log-likelihood')
		
		Now add some probability plots to show that where the log-likelihood is
		maximized the data transformed with `boxcox` looks closest to normal:
		
		>>> locs = [3, 10, 4]  # 'lower left', 'center', 'lower right'
		>>> for lmbda, loc in zip([-1, lmbda_optimal, 9], locs):
		...     xt = stats.boxcox(x, lmbda=lmbda)
		...     (osm, osr), (slope, intercept, r_sq) = stats.probplot(xt)
		...     ax_inset = inset_axes(ax, width="20%", height="20%", loc=loc)
		...     ax_inset.plot(osm, osr, 'c.', osm, slope*osm + intercept, 'k-')
		...     ax_inset.set_xticklabels([])
		...     ax_inset.set_yticklabels([])
		...     ax_inset.set_title(r'$\lambda=%1.2f$' % lmbda)
		
		>>> plt.show()
	**/
	static public function boxcox_llf(lmb:Dynamic, data:Dynamic):Dynamic;
	/**
		Compute optimal Box-Cox transform parameter for input data.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : 2-tuple, optional
		    The starting interval for a downhill bracket search with
		    `optimize.brent`.  Note that this is in most cases not critical; the
		    final result is allowed to be outside this bracket.
		method : str, optional
		    The method to determine the optimal transform parameter (`boxcox`
		    ``lmbda`` parameter). Options are:
		
		    'pearsonr'  (default)
		        Maximizes the Pearson correlation coefficient between
		        ``y = boxcox(x)`` and the expected values for ``y`` if `x` would be
		        normally-distributed.
		
		    'mle'
		        Minimizes the log-likelihood `boxcox_llf`.  This is the method used
		        in `boxcox`.
		
		    'all'
		        Use all optimization methods available, and return all results.
		        Useful to compare different methods.
		
		Returns
		-------
		maxlog : float or ndarray
		    The optimal transform parameter found.  An array instead of a scalar
		    for ``method='all'``.
		
		See Also
		--------
		boxcox, boxcox_llf, boxcox_normplot
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234)  # make this example reproducible
		
		Generate some data and determine optimal ``lmbda`` in various ways:
		
		>>> x = stats.loggamma.rvs(5, size=30) + 5
		>>> y, lmax_mle = stats.boxcox(x)
		>>> lmax_pearsonr = stats.boxcox_normmax(x)
		
		>>> lmax_mle
		7.177...
		>>> lmax_pearsonr
		7.916...
		>>> stats.boxcox_normmax(x, method='all')
		array([ 7.91667384,  7.17718692])
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.boxcox_normplot(x, -10, 10, plot=ax)
		>>> ax.axvline(lmax_mle, color='r')
		>>> ax.axvline(lmax_pearsonr, color='g', ls='--')
		
		>>> plt.show()
	**/
	static public function boxcox_normmax(x:Dynamic, ?brack:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Compute parameters for a Box-Cox normality plot, optionally show it.
		
		A Box-Cox normality plot shows graphically what the best transformation
		parameter is to use in `boxcox` to obtain a distribution that is close
		to normal.
		
		Parameters
		----------
		x : array_like
		    Input array.
		la, lb : scalar
		    The lower and upper bounds for the ``lmbda`` values to pass to `boxcox`
		    for Box-Cox transformations.  These are also the limits of the
		    horizontal axis of the plot if that is generated.
		plot : object, optional
		    If given, plots the quantiles and least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `la` to `lb`).
		
		Returns
		-------
		lmbdas : ndarray
		    The ``lmbda`` values for which a Box-Cox transform was done.
		ppcc : ndarray
		    Probability Plot Correlelation Coefficient, as obtained from `probplot`
		    when fitting the Box-Cox transformed input `x` against a normal
		    distribution.
		
		See Also
		--------
		probplot, boxcox, boxcox_normmax, boxcox_llf, ppcc_max
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by
		`boxcox_normplot`; ``plt.show()`` or ``plt.savefig('figname.png')``
		should be used after calling `probplot`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Generate some non-normally distributed data, and create a Box-Cox plot:
		
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.boxcox_normplot(x, -20, 20, plot=ax)
		
		Determine and plot the optimal ``lmbda`` to transform ``x`` and plot it in
		the same plot:
		
		>>> _, maxlog = stats.boxcox(x)
		>>> ax.axvline(maxlog, color='r')
		
		>>> plt.show()
	**/
	static public function boxcox_normplot(x:Dynamic, la:Dynamic, lb:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	/**
		ceil(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
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
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Chi-square test of independence of variables in a contingency table.
		
		This function computes the chi-square statistic and p-value for the
		hypothesis test of independence of the observed frequencies in the
		contingency table [1]_ `observed`.  The expected frequencies are computed
		based on the marginal sums under the assumption of independence; see
		`scipy.stats.contingency.expected_freq`.  The number of degrees of
		freedom is (expressed using numpy functions and attributes)::
		
		    dof = observed.size - sum(observed.shape) + observed.ndim - 1
		
		
		Parameters
		----------
		observed : array_like
		    The contingency table. The table contains the observed frequencies
		    (i.e. number of occurrences) in each category.  In the two-dimensional
		    case, the table is often described as an "R x C table".
		correction : bool, optional
		    If True, *and* the degrees of freedom is 1, apply Yates' correction
		    for continuity.  The effect of the correction is to adjust each
		    observed value by 0.5 towards the corresponding expected value.
		lambda_ : float or str, optional.
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic [2]_.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family [3]_ to be used instead.  See
		    `power_divergence` for details.
		
		Returns
		-------
		chi2 : float
		    The test statistic.
		p : float
		    The p-value of the test
		dof : int
		    Degrees of freedom
		expected : ndarray, same shape as `observed`
		    The expected frequencies, based on the marginal sums of the table.
		
		See Also
		--------
		contingency.expected_freq
		fisher_exact
		chisquare
		power_divergence
		
		Notes
		-----
		An often quoted guideline for the validity of this calculation is that
		the test should be used only if the observed and expected frequencies
		in each cell are at least 5.
		
		This is a test for the independence of different categories of a
		population. The test is only meaningful when the dimension of
		`observed` is two or more.  Applying the test to a one-dimensional
		table will always result in `expected` equal to `observed` and a
		chi-square statistic equal to 0.
		
		This function does not handle masked arrays, because the calculation
		does not make sense with missing values.
		
		Like stats.chisquare, this function computes a chi-square statistic;
		the convenience this function provides is to figure out the expected
		frequencies and degrees of freedom from the given contingency table.
		If these were already known, and if the Yates' correction was not
		required, one could use stats.chisquare.  That is, if one calls::
		
		    chi2, p, dof, ex = chi2_contingency(obs, correction=False)
		
		then the following is true::
		
		    (chi2, p) == stats.chisquare(obs.ravel(), f_exp=ex.ravel(),
		                                 ddof=obs.size - 1 - dof)
		
		The `lambda_` argument was added in version 0.13.0 of scipy.
		
		References
		----------
		.. [1] "Contingency table",
		       https://en.wikipedia.org/wiki/Contingency_table
		.. [2] "Pearson's chi-squared test",
		       https://en.wikipedia.org/wiki/Pearson%27s_chi-squared_test
		.. [3] Cressie, N. and Read, T. R. C., "Multinomial Goodness-of-Fit
		       Tests", J. Royal Stat. Soc. Series B, Vol. 46, No. 3 (1984),
		       pp. 440-464.
		
		Examples
		--------
		A two-way example (2 x 3):
		
		>>> from scipy.stats import chi2_contingency
		>>> obs = np.array([[10, 10, 20], [20, 20, 20]])
		>>> chi2_contingency(obs)
		(2.7777777777777777,
		 0.24935220877729619,
		 2,
		 array([[ 12.,  12.,  16.],
		        [ 18.,  18.,  24.]]))
		
		Perform the test using the log-likelihood ratio (i.e. the "G-test")
		instead of Pearson's chi-squared statistic.
		
		>>> g, p, dof, expctd = chi2_contingency(obs, lambda_="log-likelihood")
		>>> g, p
		(2.7688587616781319, 0.25046668010954165)
		
		A four-way example (2 x 2 x 2 x 2):
		
		>>> obs = np.array(
		...     [[[[12, 17],
		...        [11, 16]],
		...       [[11, 12],
		...        [15, 16]]],
		...      [[[23, 15],
		...        [30, 22]],
		...       [[14, 17],
		...        [15, 16]]]])
		>>> chi2_contingency(obs)
		(8.7584514426741897,
		 0.64417725029295503,
		 11,
		 array([[[[ 14.15462386,  14.15462386],
		          [ 16.49423111,  16.49423111]],
		         [[ 11.2461395 ,  11.2461395 ],
		          [ 13.10500554,  13.10500554]]],
		        [[[ 19.5591166 ,  19.5591166 ],
		          [ 22.79202844,  22.79202844]],
		         [[ 15.54012004,  15.54012004],
		          [ 18.10873492,  18.10873492]]]]))
	**/
	static public function chi2_contingency(observed:Dynamic, ?correction:Dynamic, ?lambda_:Dynamic):Float;
	/**
		Compute the circular mean for samples in a range.
		
		Parameters
		----------
		samples : array_like
		    Input array.
		high : float or int, optional
		    High boundary for circular mean range.  Default is ``2*pi``.
		low : float or int, optional
		    Low boundary for circular mean range.  Default is 0.
		axis : int, optional
		    Axis along which means are computed.  The default is to compute
		    the mean of the flattened array.
		
		Returns
		-------
		circmean : float
		    Circular mean.
		
		Examples
		--------
		>>> from scipy.stats import circmean
		>>> circmean([0.1, 2*np.pi+0.2, 6*np.pi+0.3])
		0.2
		
		>>> from scipy.stats import circmean
		>>> circmean([0.2, 1.4, 2.6], high = 1, low = 0)
		0.4
	**/
	static public function circmean(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the circular standard deviation for samples assumed to be in the
		range [low to high].
		
		Parameters
		----------
		samples : array_like
		    Input array.
		low : float or int, optional
		    Low boundary for circular standard deviation range.  Default is 0.
		high : float or int, optional
		    High boundary for circular standard deviation range.
		    Default is ``2*pi``.
		axis : int, optional
		    Axis along which standard deviations are computed.  The default is
		    to compute the standard deviation of the flattened array.
		
		Returns
		-------
		circstd : float
		    Circular standard deviation.
		
		Notes
		-----
		This uses a definition of circular standard deviation that in the limit of
		small angles returns a number close to the 'linear' standard deviation.
		
		Examples
		--------
		>>> from scipy.stats import circstd
		>>> circstd([0, 0.1*np.pi/2, 0.001*np.pi, 0.03*np.pi/2])
		0.063564063306
	**/
	static public function circstd(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the circular variance for samples assumed to be in a range
		
		Parameters
		----------
		samples : array_like
		    Input array.
		low : float or int, optional
		    Low boundary for circular variance range.  Default is 0.
		high : float or int, optional
		    High boundary for circular variance range.  Default is ``2*pi``.
		axis : int, optional
		    Axis along which variances are computed.  The default is to compute
		    the variance of the flattened array.
		
		Returns
		-------
		circvar : float
		    Circular variance.
		
		Notes
		-----
		This uses a definition of circular variance that in the limit of small
		angles returns a number close to the 'linear' variance.
		
		Examples
		--------
		>>> from scipy.stats import circvar
		>>> circvar([0, 2*np.pi/3, 5*np.pi/3])
		2.19722457734
	**/
	static public function circvar(samples:Dynamic, ?high:Dynamic, ?low:Dynamic, ?axis:Dynamic):Float;
	/**
		Return selected slices of an array along given axis.
		
		When working along a given axis, a slice along that axis is returned in
		`output` for each index where `condition` evaluates to True. When
		working on a 1-D array, `compress` is equivalent to `extract`.
		
		Parameters
		----------
		condition : 1-D array of bools
		    Array that selects which entries to return. If len(condition)
		    is less than the size of `a` along the given axis, then output is
		    truncated to the length of the condition array.
		a : array_like
		    Array from which to extract a part.
		axis : int, optional
		    Axis along which to take slices. If None (default), work on the
		    flattened array.
		out : ndarray, optional
		    Output array.  Its type is preserved and it must be of the right
		    shape to hold the output.
		
		Returns
		-------
		compressed_array : ndarray
		    A copy of `a` without the slices along axis for which `condition`
		    is false.
		
		See Also
		--------
		take, choose, diag, diagonal, select
		ndarray.compress : Equivalent method in ndarray
		np.extract: Equivalent method when working on 1-D arrays
		numpy.doc.ufuncs : Section "Output arguments"
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4], [5, 6]])
		>>> a
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.compress([0, 1], a, axis=0)
		array([[3, 4]])
		>>> np.compress([False, True, True], a, axis=0)
		array([[3, 4],
		       [5, 6]])
		>>> np.compress([False, True], a, axis=1)
		array([[2],
		       [4],
		       [6]])
		
		Working on the flattened array does not return slices along an axis but
		selects elements.
		
		>>> np.compress([False, True], a)
		array([2])
	**/
	static public function compress(condition:Dynamic, a:Dynamic, ?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
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
		    The corresponding cosine values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Counts the number of non-zero values in the array ``a``.
		
		The word "non-zero" is in reference to the Python 2.x
		built-in method ``__nonzero__()`` (renamed ``__bool__()``
		in Python 3.x) of Python objects that tests an object's
		"truthfulness". For example, any number is considered
		truthful if it is nonzero, whereas any string is considered
		truthful if it is not the empty string. Thus, this function
		(recursively) counts how many elements in ``a`` (and in
		sub-arrays thereof) have their ``__nonzero__()`` or ``__bool__()``
		method evaluated to ``True``.
		
		Parameters
		----------
		a : array_like
		    The array for which to count non-zeros.
		axis : int or tuple, optional
		    Axis or tuple of axes along which to count non-zeros.
		    Default is None, meaning that non-zeros will be counted
		    along a flattened version of ``a``.
		
		    .. versionadded:: 1.12.0
		
		Returns
		-------
		count : int or array of int
		    Number of non-zero values in the array along a given axis.
		    Otherwise, the total number of non-zero values in the array
		    is returned.
		
		See Also
		--------
		nonzero : Return the coordinates of all the non-zero values.
		
		Examples
		--------
		>>> np.count_nonzero(np.eye(4))
		4
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]])
		5
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]], axis=0)
		array([1, 1, 1, 1, 1])
		>>> np.count_nonzero([[0,1,7,0,0],[3,0,0,2,19]], axis=1)
		array([2, 3])
	**/
	static public function count_nonzero(a:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
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
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find repeats and repeat counts.
		
		Parameters
		----------
		arr : array_like
		    Input array. This is cast to float64.
		
		Returns
		-------
		values : ndarray
		    The unique values from the (flattened) input that are repeated.
		
		counts : ndarray
		    Number of times the corresponding 'value' is repeated.
		
		Notes
		-----
		In numpy >= 1.9 `numpy.unique` provides similar functionality. The main
		difference is that `find_repeats` only returns repeated values.
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.find_repeats([2, 1, 2, 3, 2, 2, 5])
		RepeatedResults(values=array([2.]), counts=array([4]))
		
		>>> stats.find_repeats([[10, 20, 1, 2], [5, 5, 4, 4]])
		RepeatedResults(values=array([4.,  5.]), counts=array([2, 2]))
	**/
	static public function find_repeats(arr:Dynamic):Dynamic;
	/**
		Perform Fligner-Killeen test for equality of variance.
		
		Fligner's test tests the null hypothesis that all input samples
		are from populations with equal variances.  Fligner-Killeen's test is
		distribution free when populations are identical [2]_.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    Arrays of sample data.  Need not be the same length.
		center : {'mean', 'median', 'trimmed'}, optional
		    Keyword argument controlling which function of the data is used in
		    computing the test statistic.  The default is 'median'.
		proportiontocut : float, optional
		    When `center` is 'trimmed', this gives the proportion of data points
		    to cut from each end. (See `scipy.stats.trim_mean`.)
		    Default is 0.05.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value for the hypothesis test.
		
		See Also
		--------
		bartlett : A parametric test for equality of k variances in normal samples
		levene : A robust parametric test for equality of k variances
		
		Notes
		-----
		As with Levene's test there are three variants of Fligner's test that
		differ by the measure of central tendency used in the test.  See `levene`
		for more information.
		
		Conover et al. (1981) examine many of the existing parametric and
		nonparametric tests by extensive simulations and they conclude that the
		tests proposed by Fligner and Killeen (1976) and Levene (1960) appear to be
		superior in terms of robustness of departures from normality and power [3]_.
		
		References
		----------
		.. [1] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		       https://cecas.clemson.edu/~cspark/cv/paper/qif/draftqif2.pdf
		
		.. [2] Fligner, M.A. and Killeen, T.J. (1976). Distribution-free two-sample
		       tests for scale. 'Journal of the American Statistical Association.'
		       71(353), 210-213.
		
		.. [3] Park, C. and Lindsay, B. G. (1999). Robust Scale Estimation and
		       Hypothesis Testing based on Quadratic Inference Function. Technical
		       Report #99-03, Center for Likelihood Studies, Pennsylvania State
		       University.
		
		.. [4] Conover, W. J., Johnson, M. E. and Johnson M. M. (1981). A
		       comparative study of tests for homogeneity of variances, with
		       applications to the outer continental shelf biding data.
		       Technometrics, 23(4), 351-361.
	**/
	static public function fligner(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
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
		y : ndarray or scalar
		    The floor of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hypot(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Given the "legs" of a right triangle, return its hypotenuse.
		
		Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
		`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
		it is broadcast for use with each element of the other argument.
		(See Examples)
		
		Parameters
		----------
		x1, x2 : array_like
		    Leg of the triangle(s).
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
		z : ndarray
		    The hypotenuse of the triangle(s).
		    This is a scalar if both `x1` and `x2` are scalars.
		
		Examples
		--------
		>>> np.hypot(3*np.ones((3, 3)), 4*np.ones((3, 3)))
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
		
		Example showing broadcast of scalar_like argument:
		
		>>> np.hypot(3*np.ones((3, 3)), [4])
		array([[ 5.,  5.,  5.],
		       [ 5.,  5.,  5.],
		       [ 5.,  5.,  5.]])
	**/
	static public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if the type of `num` is a scalar type.
		
		Parameters
		----------
		num : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `num` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		In almost all cases ``np.ndim(x) == 0`` should be used instead of this
		function, as that will also return true for 0d arrays. This is how
		numpy overloads functions in the style of the ``dx`` arguments to `gradient`
		and the ``bins`` argument to `histogram`. Some key differences:
		
		+--------------------------------------+---------------+-------------------+
		| x                                    |``isscalar(x)``|``np.ndim(x) == 0``|
		+======================================+===============+===================+
		| PEP 3141 numeric objects (including  | ``True``      | ``True``          |
		| builtins)                            |               |                   |
		+--------------------------------------+---------------+-------------------+
		| builtin string and buffer objects    | ``True``      | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other builtin objects, like          | ``False``     | ``True``          |
		| `pathlib.Path`, `Exception`,         |               |                   |
		| the result of `re.compile`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| third-party objects like             | ``False``     | ``True``          |
		| `matplotlib.figure.Figure`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| zero-dimensional numpy arrays        | ``False``     | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other numpy arrays                   | ``False``     | ``False``         |
		+--------------------------------------+---------------+-------------------+
		| `list`, `tuple`, and other sequence  | ``False``     | ``False``         |
		| objects                              |               |                   |
		+--------------------------------------+---------------+-------------------+
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar(np.array(3.1))
		False
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
		>>> np.isscalar('numpy')
		True
		
		NumPy supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> isscalar(Number())
		True
	**/
	static public function isscalar(num:Dynamic):Bool;
	/**
		Return the nth k-statistic (1<=n<=4 so far).
		
		The nth k-statistic k_n is the unique symmetric unbiased estimator of the
		nth cumulant kappa_n.
		
		Parameters
		----------
		data : array_like
		    Input array. Note that n-D input gets flattened.
		n : int, {1, 2, 3, 4}, optional
		    Default is equal to 2.
		
		Returns
		-------
		kstat : float
		    The nth k-statistic.
		
		See Also
		--------
		kstatvar: Returns an unbiased estimator of the variance of the k-statistic.
		moment: Returns the n-th central moment about the mean for a sample.
		
		Notes
		-----
		For a sample size n, the first few k-statistics are given by:
		
		.. math::
		
		    k_{1} = \mu
		    k_{2} = \frac{n}{n-1} m_{2}
		    k_{3} = \frac{ n^{2} } {(n-1) (n-2)} m_{3}
		    k_{4} = \frac{ n^{2} [(n + 1)m_{4} - 3(n - 1) m^2_{2}]} {(n-1) (n-2) (n-3)}
		
		where :math:`\mu` is the sample mean, :math:`m_2` is the sample
		variance, and :math:`m_i` is the i-th sample central moment.
		
		References
		----------
		http://mathworld.wolfram.com/k-Statistic.html
		
		http://mathworld.wolfram.com/Cumulant.html
		
		Examples
		--------
		>>> from scipy import stats
		>>> rndm = np.random.RandomState(1234)
		
		As sample size increases, n-th moment and n-th k-statistic converge to the
		same number (although they aren't identical). In the case of the normal
		distribution, they converge to zero.
		
		>>> for n in [2, 3, 4, 5, 6, 7]:
		...     x = rndm.normal(size=10**n)
		...     m, k = stats.moment(x, 3), stats.kstat(x, 3)
		...     print("%.3g %.3g %.3g" % (m, k, m-k))
		-0.631 -0.651 0.0194
		0.0282 0.0283 -8.49e-05
		-0.0454 -0.0454 1.36e-05
		7.53e-05 7.53e-05 -2.26e-09
		0.00166 0.00166 -4.99e-09
		-2.88e-06 -2.88e-06 8.63e-13
	**/
	static public function kstat(data:Dynamic, ?n:Dynamic):Float;
	/**
		Returns an unbiased estimator of the variance of the k-statistic.
		
		See `kstat` for more details of the k-statistic.
		
		Parameters
		----------
		data : array_like
		    Input array. Note that n-D input gets flattened.
		n : int, {1, 2}, optional
		    Default is equal to 2.
		
		Returns
		-------
		kstatvar : float
		    The nth k-statistic variance.
		
		See Also
		--------
		kstat: Returns the n-th k-statistic.
		moment: Returns the n-th central moment about the mean for a sample.
		
		Notes
		-----
		The variances of the first few k-statistics are given by:
		
		.. math::
		
		    var(k_{1}) = \frac{\kappa^2}{n}
		    var(k_{2}) = \frac{\kappa^4}{n} + \frac{2\kappa^2_{2}}{n - 1}
		    var(k_{3}) = \frac{\kappa^6}{n} + \frac{9 \kappa_2 \kappa_4}{n - 1} +
		                 \frac{9 \kappa^2_{3}}{n - 1} +
		                 \frac{6 n \kappa^3_{2}}{(n-1) (n-2)}
		    var(k_{4}) = \frac{\kappa^8}{n} + \frac{16 \kappa_2 \kappa_6}{n - 1} +
		                 \frac{48 \kappa_{3} \kappa_5}{n - 1} +
		                 \frac{34 \kappa^2_{4}}{n-1} + \frac{72 n \kappa^2_{2} \kappa_4}{(n - 1) (n - 2)} +
		                 \frac{144 n \kappa_{2} \kappa^2_{3}}{(n - 1) (n - 2)} +
		                 \frac{24 (n + 1) n \kappa^4_{2}}{(n - 1) (n - 2) (n - 3)}
	**/
	static public function kstatvar(data:Dynamic, ?n:Dynamic):Float;
	/**
		Perform Levene test for equal variances.
		
		The Levene test tests the null hypothesis that all input samples
		are from populations with equal variances.  Levene's test is an
		alternative to Bartlett's test `bartlett` in the case where
		there are significant deviations from normality.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample data, possibly with different lengths. Only one-dimensional
		    samples are accepted.
		center : {'mean', 'median', 'trimmed'}, optional
		    Which function of the data to use in the test.  The default
		    is 'median'.
		proportiontocut : float, optional
		    When `center` is 'trimmed', this gives the proportion of data points
		    to cut from each end. (See `scipy.stats.trim_mean`.)
		    Default is 0.05.
		
		Returns
		-------
		statistic : float
		    The test statistic.
		pvalue : float
		    The p-value for the test.
		
		Notes
		-----
		Three variations of Levene's test are possible.  The possibilities
		and their recommended usages are:
		
		  * 'median' : Recommended for skewed (non-normal) distributions>
		  * 'mean' : Recommended for symmetric, moderate-tailed distributions.
		  * 'trimmed' : Recommended for heavy-tailed distributions.
		
		The test version using the mean was proposed in the original article
		of Levene ([2]_) while the median and trimmed mean have been studied by
		Brown and Forsythe ([3]_), sometimes also referred to as Brown-Forsythe
		test.
		
		References
		----------
		.. [1]  https://www.itl.nist.gov/div898/handbook/eda/section3/eda35a.htm
		.. [2]   Levene, H. (1960). In Contributions to Probability and Statistics:
		           Essays in Honor of Harold Hotelling, I. Olkin et al. eds.,
		           Stanford University Press, pp. 278-292.
		.. [3]  Brown, M. B. and Forsythe, A. B. (1974), Journal of the American
		          Statistical Association, 69, 364-367
	**/
	static public function levene(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		log(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Natural logarithm, element-wise.
		
		The natural logarithm `log` is the inverse of the exponential function,
		so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
		`e`.
		
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
		    The natural logarithm of `x`, element-wise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		log10, log2, log1p, emath.log
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `exp(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log` always returns real output. For
		each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
		handles the floating-point negative zero as an infinitesimal negative
		number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log([1, np.e, np.e**2, 0])
		array([  0.,   1.,   2., -Inf])
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Mood's median test.
		
		Test that two or more samples come from populations with the same median.
		
		Let ``n = len(args)`` be the number of samples.  The "grand median" of
		all the data is computed, and a contingency table is formed by
		classifying the values in each sample as being above or below the grand
		median.  The contingency table, along with `correction` and `lambda_`,
		are passed to `scipy.stats.chi2_contingency` to compute the test statistic
		and p-value.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The set of samples.  There must be at least two samples.
		    Each sample must be a one-dimensional sequence containing at least
		    one value.  The samples are not required to have the same length.
		ties : str, optional
		    Determines how values equal to the grand median are classified in
		    the contingency table.  The string must be one of::
		
		        "below":
		            Values equal to the grand median are counted as "below".
		        "above":
		            Values equal to the grand median are counted as "above".
		        "ignore":
		            Values equal to the grand median are not counted.
		
		    The default is "below".
		correction : bool, optional
		    If True, *and* there are just two samples, apply Yates' correction
		    for continuity when computing the test statistic associated with
		    the contingency table.  Default is True.
		lambda_ : float or str, optional.
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family to be used instead.  See
		    `power_divergence` for details.
		    Default is 1 (Pearson's chi-squared statistic).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		stat : float
		    The test statistic.  The statistic that is returned is determined by
		    `lambda_`.  The default is Pearson's chi-squared statistic.
		p : float
		    The p-value of the test.
		m : float
		    The grand median.
		table : ndarray
		    The contingency table.  The shape of the table is (2, n), where
		    n is the number of samples.  The first row holds the counts of the
		    values above the grand median, and the second row holds the counts
		    of the values below the grand median.  The table allows further
		    analysis with, for example, `scipy.stats.chi2_contingency`, or with
		    `scipy.stats.fisher_exact` if there are two samples, without having
		    to recompute the table.  If ``nan_policy`` is "propagate" and there
		    are nans in the input, the return value for ``table`` is ``None``.
		
		See Also
		--------
		kruskal : Compute the Kruskal-Wallis H-test for independent samples.
		mannwhitneyu : Computes the Mann-Whitney rank test on samples x and y.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Mood, A. M., Introduction to the Theory of Statistics. McGraw-Hill
		    (1950), pp. 394-399.
		.. [2] Zar, J. H., Biostatistical Analysis, 5th ed. Prentice Hall (2010).
		    See Sections 8.12 and 10.15.
		
		Examples
		--------
		A biologist runs an experiment in which there are three groups of plants.
		Group 1 has 16 plants, group 2 has 15 plants, and group 3 has 17 plants.
		Each plant produces a number of seeds.  The seed counts for each group
		are::
		
		    Group 1: 10 14 14 18 20 22 24 25 31 31 32 39 43 43 48 49
		    Group 2: 28 30 31 33 34 35 36 40 44 55 57 61 91 92 99
		    Group 3:  0  3  9 22 23 25 25 33 34 34 40 45 46 48 62 67 84
		
		The following code applies Mood's median test to these samples.
		
		>>> g1 = [10, 14, 14, 18, 20, 22, 24, 25, 31, 31, 32, 39, 43, 43, 48, 49]
		>>> g2 = [28, 30, 31, 33, 34, 35, 36, 40, 44, 55, 57, 61, 91, 92, 99]
		>>> g3 = [0, 3, 9, 22, 23, 25, 25, 33, 34, 34, 40, 45, 46, 48, 62, 67, 84]
		>>> from scipy.stats import median_test
		>>> stat, p, med, tbl = median_test(g1, g2, g3)
		
		The median is
		
		>>> med
		34.0
		
		and the contingency table is
		
		>>> tbl
		array([[ 5, 10,  7],
		       [11,  5, 10]])
		
		`p` is too large to conclude that the medians are not the same:
		
		>>> p
		0.12609082774093244
		
		The "G-test" can be performed by passing ``lambda_="log-likelihood"`` to
		`median_test`.
		
		>>> g, p, med, tbl = median_test(g1, g2, g3, lambda_="log-likelihood")
		>>> p
		0.12224779737117837
		
		The median occurs several times in the data, so we'll get a different
		result if, for example, ``ties="above"`` is used:
		
		>>> stat, p, med, tbl = median_test(g1, g2, g3, ties="above")
		>>> p
		0.063873276069553273
		
		>>> tbl
		array([[ 5, 11,  9],
		       [11,  4,  8]])
		
		This example demonstrates that if the data set is not large and there
		are values equal to the median, the p-value can be sensitive to the
		choice of `ties`.
	**/
	static public function median_test(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Float;
	/**
		Perform Mood's test for equal scale parameters.
		
		Mood's two-sample test for scale parameters is a non-parametric
		test for the null hypothesis that two samples are drawn from the
		same distribution with the same scale parameter.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of sample data.
		axis : int, optional
		    The axis along which the samples are tested.  `x` and `y` can be of
		    different length along `axis`.
		    If `axis` is None, `x` and `y` are flattened and the test is done on
		    all values in the flattened arrays.
		
		Returns
		-------
		z : scalar or ndarray
		    The z-score for the hypothesis test.  For 1-D inputs a scalar is
		    returned.
		p-value : scalar ndarray
		    The p-value for the hypothesis test.
		
		See Also
		--------
		fligner : A non-parametric test for the equality of k variances
		ansari : A non-parametric test for the equality of 2 variances
		bartlett : A parametric test for equality of k variances in normal samples
		levene : A parametric test for equality of k variances
		
		Notes
		-----
		The data are assumed to be drawn from probability distributions ``f(x)``
		and ``f(x/s) / s`` respectively, for some probability density function f.
		The null hypothesis is that ``s == 1``.
		
		For multi-dimensional arrays, if the inputs are of shapes
		``(n0, n1, n2, n3)``  and ``(n0, m1, n2, n3)``, then if ``axis=1``, the
		resulting z and p values will have shape ``(n0, n2, n3)``.  Note that
		``n1`` and ``m1`` don't have to be equal, but the other dimensions do.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(1234)
		>>> x2 = np.random.randn(2, 45, 6, 7)
		>>> x1 = np.random.randn(2, 30, 6, 7)
		>>> z, p = stats.mood(x1, x2, axis=1)
		>>> p.shape
		(2, 6, 7)
		
		Find the number of points where the difference in scale is not significant:
		
		>>> (p > 0.1).sum()
		74
		
		Perform the test with different scales:
		
		>>> x1 = np.random.randn(2, 30)
		>>> x2 = np.random.randn(2, 35) * 10.0
		>>> stats.mood(x1, x2, axis=1)
		(array([-5.7178125 , -5.25342163]), array([  1.07904114e-08,   1.49299218e-07]))
	**/
	static public function mood(x:Dynamic, y:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		'Frozen' distributions for mean, variance, and standard deviation of data.
		
		Parameters
		----------
		data : array_like
		    Input array. Converted to 1-D using ravel.
		    Requires 2 or more data-points.
		
		Returns
		-------
		mdist : "frozen" distribution object
		    Distribution object representing the mean of the data
		vdist : "frozen" distribution object
		    Distribution object representing the variance of the data
		sdist : "frozen" distribution object
		    Distribution object representing the standard deviation of the data
		
		See Also
		--------
		bayes_mvs
		
		Notes
		-----
		The return values from ``bayes_mvs(data)`` is equivalent to
		``tuple((x.mean(), x.interval(0.90)) for x in mvsdist(data))``.
		
		In other words, calling ``<dist>.mean()`` and ``<dist>.interval(0.90)``
		on the three distribution objects returned from this function will give
		the same results that are returned from `bayes_mvs`.
		
		References
		----------
		T.E. Oliphant, "A Bayesian perspective on estimating mean, variance, and
		standard-deviation from data", https://scholarsarchive.byu.edu/facpub/278,
		2006.
		
		Examples
		--------
		>>> from scipy import stats
		>>> data = [6, 9, 12, 7, 8, 8, 13]
		>>> mean, var, std = stats.mvsdist(data)
		
		We now have frozen distribution objects "mean", "var" and "std" that we can
		examine:
		
		>>> mean.mean()
		9.0
		>>> mean.interval(0.95)
		(6.6120585482655692, 11.387941451734431)
		>>> mean.std()
		1.1952286093343936
	**/
	static public function mvsdist(data:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Calculate the shape parameter that maximizes the PPCC
		
		The probability plot correlation coefficient (PPCC) plot can be used to
		determine the optimal shape parameter for a one-parameter family of
		distributions.  ppcc_max returns the shape parameter that would maximize the
		probability plot correlation coefficient for the given data to a
		one-parameter family of distributions.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : tuple, optional
		    Triple (a,b,c) where (a<b<c). If bracket consists of two numbers (a, c)
		    then they are assumed to be a starting interval for a downhill bracket
		    search (see `scipy.optimize.brent`).
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name.  Objects that look enough
		    like a stats.distributions instance (i.e. they have a ``ppf`` method)
		    are also accepted.  The default is ``'tukeylambda'``.
		
		Returns
		-------
		shape_value : float
		    The shape parameter at which the probability plot correlation
		    coefficient reaches its max value.
		
		See also
		--------
		ppcc_plot, probplot, boxcox
		
		Notes
		-----
		The brack keyword serves as a starting point which is useful in corner
		cases. One can use a plot to obtain a rough visual estimate of the location
		for the maximum to start the search near it.
		
		References
		----------
		.. [1] J.J. Filliben, "The Probability Plot Correlation Coefficient Test for
		       Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		.. [2] https://www.itl.nist.gov/div898/handbook/eda/section3/ppccplot.htm
		
		Examples
		--------
		First we generate some random data from a Tukey-Lambda distribution,
		with shape parameter -0.7:
		
		>>> from scipy import stats
		>>> x = stats.tukeylambda.rvs(-0.7, loc=2, scale=0.5, size=10000,
		...                           random_state=1234567) + 1e4
		
		Now we explore this data with a PPCC plot as well as the related
		probability plot and Box-Cox normplot.  A red line is drawn where we
		expect the PPCC value to be maximal (at the shape parameter -0.7 used
		above):
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure(figsize=(8, 6))
		>>> ax = fig.add_subplot(111)
		>>> res = stats.ppcc_plot(x, -5, 5, plot=ax)
		
		We calculate the value where the shape should reach its maximum and a red
		line is drawn there. The line should coincide with the highest point in the
		ppcc_plot.
		
		>>> max = stats.ppcc_max(x)
		>>> ax.vlines(max, 0, 1, colors='r', label='Expected shape value')
		
		>>> plt.show()
	**/
	static public function ppcc_max(x:Dynamic, ?brack:Dynamic, ?dist:Dynamic):Float;
	/**
		Calculate and optionally plot probability plot correlation coefficient.
		
		The probability plot correlation coefficient (PPCC) plot can be used to
		determine the optimal shape parameter for a one-parameter family of
		distributions.  It cannot be used for distributions without shape parameters
		(like the normal distribution) or with multiple shape parameters.
		
		By default a Tukey-Lambda distribution (`stats.tukeylambda`) is used. A
		Tukey-Lambda PPCC plot interpolates from long-tailed to short-tailed
		distributions via an approximately normal one, and is therefore particularly
		useful in practice.
		
		Parameters
		----------
		x : array_like
		    Input array.
		a, b: scalar
		    Lower and upper bounds of the shape parameter to use.
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name.  Objects that look enough
		    like a stats.distributions instance (i.e. they have a ``ppf`` method)
		    are also accepted.  The default is ``'tukeylambda'``.
		plot : object, optional
		    If given, plots PPCC against the shape parameter.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `a` to `b`).
		
		Returns
		-------
		svals : ndarray
		    The shape values for which `ppcc` was calculated.
		ppcc : ndarray
		    The calculated probability plot correlation coefficient values.
		
		See also
		--------
		ppcc_max, probplot, boxcox_normplot, tukeylambda
		
		References
		----------
		J.J. Filliben, "The Probability Plot Correlation Coefficient Test for
		Normality", Technometrics, Vol. 17, pp. 111-117, 1975.
		
		Examples
		--------
		First we generate some random data from a Tukey-Lambda distribution,
		with shape parameter -0.7:
		
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234567)
		>>> x = stats.tukeylambda.rvs(-0.7, loc=2, scale=0.5, size=10000) + 1e4
		
		Now we explore this data with a PPCC plot as well as the related
		probability plot and Box-Cox normplot.  A red line is drawn where we
		expect the PPCC value to be maximal (at the shape parameter -0.7 used
		above):
		
		>>> fig = plt.figure(figsize=(12, 4))
		>>> ax1 = fig.add_subplot(131)
		>>> ax2 = fig.add_subplot(132)
		>>> ax3 = fig.add_subplot(133)
		>>> res = stats.probplot(x, plot=ax1)
		>>> res = stats.boxcox_normplot(x, -5, 5, plot=ax2)
		>>> res = stats.ppcc_plot(x, -5, 5, plot=ax3)
		>>> ax3.vlines(-0.7, 0, 1, colors='r', label='Expected shape value')
		>>> plt.show()
	**/
	static public function ppcc_plot(x:Dynamic, a:Dynamic, b:Dynamic, ?dist:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Calculate quantiles for a probability plot, and optionally show the plot.
		
		Generates a probability plot of sample data against the quantiles of a
		specified theoretical distribution (the normal distribution by default).
		`probplot` optionally calculates a best-fit line for the data and plots the
		results using Matplotlib or a given plot function.
		
		Parameters
		----------
		x : array_like
		    Sample/response data from which `probplot` creates the plot.
		sparams : tuple, optional
		    Distribution-specific shape parameters (shape parameters plus location
		    and scale).
		dist : str or stats.distributions instance, optional
		    Distribution or distribution function name. The default is 'norm' for a
		    normal probability plot.  Objects that look enough like a
		    stats.distributions instance (i.e. they have a ``ppf`` method) are also
		    accepted.
		fit : bool, optional
		    Fit a least-squares regression (best-fit) line to the sample data if
		    True (default).
		plot : object, optional
		    If given, plots the quantiles and least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		
		Returns
		-------
		(osm, osr) : tuple of ndarrays
		    Tuple of theoretical quantiles (osm, or order statistic medians) and
		    ordered responses (osr).  `osr` is simply sorted input `x`.
		    For details on how `osm` is calculated see the Notes section.
		(slope, intercept, r) : tuple of floats, optional
		    Tuple  containing the result of the least-squares fit, if that is
		    performed by `probplot`. `r` is the square root of the coefficient of
		    determination.  If ``fit=False`` and ``plot=None``, this tuple is not
		    returned.
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by `probplot`;
		``plt.show()`` or ``plt.savefig('figname.png')`` should be used after
		calling `probplot`.
		
		`probplot` generates a probability plot, which should not be confused with
		a Q-Q or a P-P plot.  Statsmodels has more extensive functionality of this
		type, see ``statsmodels.api.ProbPlot``.
		
		The formula used for the theoretical quantiles (horizontal axis of the
		probability plot) is Filliben's estimate::
		
		    quantiles = dist.ppf(val), for
		
		            0.5**(1/n),                  for i = n
		      val = (i - 0.3175) / (n + 0.365),  for i = 2, ..., n-1
		            1 - 0.5**(1/n),              for i = 1
		
		where ``i`` indicates the i-th ordered value and ``n`` is the total number
		of values.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> nsample = 100
		>>> np.random.seed(7654321)
		
		A t distribution with small degrees of freedom:
		
		>>> ax1 = plt.subplot(221)
		>>> x = stats.t.rvs(3, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		A t distribution with larger degrees of freedom:
		
		>>> ax2 = plt.subplot(222)
		>>> x = stats.t.rvs(25, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		A mixture of two normal distributions with broadcasting:
		
		>>> ax3 = plt.subplot(223)
		>>> x = stats.norm.rvs(loc=[0,5], scale=[1,1.5],
		...                    size=(nsample//2,2)).ravel()
		>>> res = stats.probplot(x, plot=plt)
		
		A standard normal distribution:
		
		>>> ax4 = plt.subplot(224)
		>>> x = stats.norm.rvs(loc=0, scale=1, size=nsample)
		>>> res = stats.probplot(x, plot=plt)
		
		Produce a new figure with a loggamma distribution, using the ``dist`` and
		``sparams`` keywords:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> x = stats.loggamma.rvs(c=2.5, size=500)
		>>> res = stats.probplot(x, dist=stats.loggamma, sparams=(2.5,), plot=ax)
		>>> ax.set_title("Probplot for loggamma dist with shape parameter 2.5")
		
		Show the results with Matplotlib:
		
		>>> plt.show()
	**/
	static public function probplot(x:Dynamic, ?sparams:Dynamic, ?dist:Dynamic, ?fit:Dynamic, ?plot:Dynamic, ?rvalue:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    y is an array of the same subtype as `a`, with shape ``(a.size,)``.
		    Note that matrices are special cased for backward compatibility, if `a`
		    is a matrix, then y is a 1-D ndarray.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> print(np.ravel(x))
		[1 2 3 4 5 6]
		
		>>> print(x.reshape(-1))
		[1 2 3 4 5 6]
		
		>>> print(np.ravel(x, order='F'))
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print(np.ravel(x.T))
		[1 4 2 5 3 6]
		>>> print(np.ravel(x.T, order='A'))
		[1 2 3 4 5 6]
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Perform the Shapiro-Wilk test for normality.
		
		The Shapiro-Wilk test tests the null hypothesis that the
		data was drawn from a normal distribution.
		
		Parameters
		----------
		x : array_like
		    Array of sample data.
		
		Returns
		-------
		W : float
		    The test statistic.
		p-value : float
		    The p-value for the hypothesis test.
		
		See Also
		--------
		anderson : The Anderson-Darling test for normality
		kstest : The Kolmogorov-Smirnov test for goodness of fit.
		
		Notes
		-----
		The algorithm used is described in [4]_ but censoring parameters as
		described are not implemented. For N > 5000 the W test statistic is accurate
		but the p-value may not be.
		
		The chance of rejecting the null hypothesis when it is true is close to 5%
		regardless of sample size.
		
		References
		----------
		.. [1] https://www.itl.nist.gov/div898/handbook/prc/section2/prc213.htm
		.. [2] Shapiro, S. S. & Wilk, M.B (1965). An analysis of variance test for
		       normality (complete samples), Biometrika, Vol. 52, pp. 591-611.
		.. [3] Razali, N. M. & Wah, Y. B. (2011) Power comparisons of Shapiro-Wilk,
		       Kolmogorov-Smirnov, Lilliefors and Anderson-Darling tests, Journal of
		       Statistical Modeling and Analytics, Vol. 2, pp. 21-33.
		.. [4] ALGORITHM AS R94 APPL. STATIST. (1995) VOL. 44, NO. 4.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		>>> x = stats.norm.rvs(loc=5, scale=3, size=100)
		>>> stats.shapiro(x)
		(0.9772805571556091, 0.08144091814756393)
	**/
	static public function shapiro(x:Dynamic):Float;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
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
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a sorted copy of an array.
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int or None, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  A single field can
		    be specified as a string, and not all fields need be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		ndarray.sort : Method to sort an array in-place.
		argsort : Indirect sort.
		lexsort : Indirect stable sort on multiple keys.
		searchsorted : Find elements in a sorted array.
		partition : Partial sort.
		
		Notes
		-----
		The various sorting algorithms are characterized by their average speed,
		worst case performance, work space size, and whether they are stable. A
		stable sort keeps items with the same key in the same relative
		order. The three available algorithms have the following
		properties:
		
		=========== ======= ============= ============ ========
		   kind      speed   worst case    work space   stable
		=========== ======= ============= ============ ========
		'quicksort'    1     O(n^2)            0          no
		'mergesort'    2     O(n*log(n))      ~n/2        yes
		'heapsort'     3     O(n*log(n))       0          no
		=========== ======= ============= ============ ========
		
		All the sort algorithms make temporary copies of the data when
		sorting along any but the last axis.  Consequently, sorting along
		the last axis is faster and uses less space than sorting along
		any other axis.
		
		The sort order for complex numbers is lexicographic. If both the real
		and imaginary parts are non-nan then the order is determined by the
		real parts except when they are equal, in which case the order is
		determined by the imaginary parts.
		
		Previous to numpy 1.4.0 sorting real and complex arrays containing nan
		values led to undefined behaviour. In numpy versions >= 1.4.0 nan
		values are sorted to the end. The extended sort order is:
		
		  * Real: [R, nan]
		  * Complex: [R + Rj, R + nanj, nan + Rj, nan + nanj]
		
		where R is a non-nan real value. Complex values with the same nan
		placements are sorted according to the non-nan part if it exists.
		Non-nan values are sorted as before.
		
		.. versionadded:: 1.12.0
		
		quicksort has been changed to an introsort which will switch
		heapsort when it does not make enough progress. This makes its
		worst case O(n*log(n)).
		
		'stable' automatically choses the best stable sorting algorithm
		for the data type being sorted. It is currently mapped to
		merge sort.
		
		Examples
		--------
		>>> a = np.array([[1,4],[3,1]])
		>>> np.sort(a)                # sort along the last axis
		array([[1, 4],
		       [1, 3]])
		>>> np.sort(a, axis=None)     # sort the flattened array
		array([1, 1, 3, 4])
		>>> np.sort(a, axis=0)        # sort along the first axis
		array([[1, 1],
		       [3, 4]])
		
		Use the `order` keyword to specify a field to use when sorting a
		structured array:
		
		>>> dtype = [('name', 'S10'), ('height', float), ('age', int)]
		>>> values = [('Arthur', 1.8, 41), ('Lancelot', 1.9, 38),
		...           ('Galahad', 1.7, 38)]
		>>> a = np.array(values, dtype=dtype)       # create a structured array
		>>> np.sort(a, order='height')                        # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Arthur', 1.8, 41),
		       ('Lancelot', 1.8999999999999999, 38)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
		
		Sort by age, then height if ages are equal:
		
		>>> np.sort(a, order=['age', 'height'])               # doctest: +SKIP
		array([('Galahad', 1.7, 38), ('Lancelot', 1.8999999999999999, 38),
		       ('Arthur', 1.8, 41)],
		      dtype=[('name', '|S10'), ('height', '<f8'), ('age', '<i4')])
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
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
	static public var string_types : Dynamic;
	/**
		Find the unique elements of an array.
		
		Returns the sorted unique elements of an array. There are three optional
		outputs in addition to the unique elements:
		
		* the indices of the input array that give the unique values
		* the indices of the unique array that reconstruct the input array
		* the number of times each unique value comes up in the input array
		
		Parameters
		----------
		ar : array_like
		    Input array. Unless `axis` is specified, this will be flattened if it
		    is not already 1-D.
		return_index : bool, optional
		    If True, also return the indices of `ar` (along the specified axis,
		    if provided, or in the flattened array) that result in the unique array.
		return_inverse : bool, optional
		    If True, also return the indices of the unique array (for the specified
		    axis, if provided) that can be used to reconstruct `ar`.
		return_counts : bool, optional
		    If True, also return the number of times each unique item appears
		    in `ar`.
		
		    .. versionadded:: 1.9.0
		
		axis : int or None, optional
		    The axis to operate on. If None, `ar` will be flattened. If an integer,
		    the subarrays indexed by the given axis will be flattened and treated
		    as the elements of a 1-D array with the dimension of the given axis,
		    see the notes for more details.  Object arrays or structured arrays
		    that contain objects are not supported if the `axis` kwarg is used. The
		    default is None.
		
		    .. versionadded:: 1.13.0
		
		Returns
		-------
		unique : ndarray
		    The sorted unique values.
		unique_indices : ndarray, optional
		    The indices of the first occurrences of the unique values in the
		    original array. Only provided if `return_index` is True.
		unique_inverse : ndarray, optional
		    The indices to reconstruct the original array from the
		    unique array. Only provided if `return_inverse` is True.
		unique_counts : ndarray, optional
		    The number of times each of the unique values comes up in the
		    original array. Only provided if `return_counts` is True.
		
		    .. versionadded:: 1.9.0
		
		See Also
		--------
		numpy.lib.arraysetops : Module with a number of other functions for
		                        performing set operations on arrays.
		
		Notes
		-----
		When an axis is specified the subarrays indexed by the axis are sorted.
		This is done by making the specified axis the first dimension of the array
		and then flattening the subarrays in C order. The flattened subarrays are
		then viewed as a structured type with each element given a label, with the
		effect that we end up with a 1-D array of structured types that can be
		treated in the same way as any other 1-D array. The result is that the
		flattened subarrays are sorted in lexicographic order starting with the
		first element.
		
		Examples
		--------
		>>> np.unique([1, 1, 2, 2, 3, 3])
		array([1, 2, 3])
		>>> a = np.array([[1, 1], [2, 3]])
		>>> np.unique(a)
		array([1, 2, 3])
		
		Return the unique rows of a 2D array
		
		>>> a = np.array([[1, 0, 0], [1, 0, 0], [2, 3, 4]])
		>>> np.unique(a, axis=0)
		array([[1, 0, 0], [2, 3, 4]])
		
		Return the indices of the original array that give the unique values:
		
		>>> a = np.array(['a', 'b', 'b', 'c', 'a'])
		>>> u, indices = np.unique(a, return_index=True)
		>>> u
		array(['a', 'b', 'c'],
		       dtype='|S1')
		>>> indices
		array([0, 1, 3])
		>>> a[indices]
		array(['a', 'b', 'c'],
		       dtype='|S1')
		
		Reconstruct the input array from the unique values:
		
		>>> a = np.array([1, 2, 6, 4, 2, 3, 2])
		>>> u, indices = np.unique(a, return_inverse=True)
		>>> u
		array([1, 2, 3, 4, 6])
		>>> indices
		array([0, 1, 4, 3, 1, 2, 1])
		>>> u[indices]
		array([1, 2, 6, 4, 2, 3, 2])
	**/
	static public function unique(ar:Dynamic, ?return_index:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculate the Wilcoxon signed-rank test.
		
		The Wilcoxon signed-rank test tests the null hypothesis that two
		related paired samples come from the same distribution. In particular,
		it tests whether the distribution of the differences x - y is symmetric
		about zero. It is a non-parametric version of the paired T-test.
		
		Parameters
		----------
		x : array_like
		    Either the first set of measurements (in which case `y` is the second
		    set of measurements), or the differences between two sets of
		    measurements (in which case `y` is not to be specified.)  Must be
		    one-dimensional.
		y : array_like, optional
		    Either the second set of measurements (if `x` is the first set of
		    measurements), or not specified (if `x` is the differences between
		    two sets of measurements.)  Must be one-dimensional.
		zero_method : {"pratt", "wilcox", "zsplit"}, optional. Default is "wilcox".
		    "pratt":
		        includes zero-differences in the ranking process,
		        but drops the ranks of the zeros, see [4]_, (more conservative)
		    "wilcox":
		        discards all zero-differences, the default
		    "zsplit":
		        includes zero-differences in the ranking process and split the
		        zero rank between positive and negative ones
		correction : bool, optional
		    If True, apply continuity correction by adjusting the Wilcoxon rank
		    statistic by 0.5 towards the mean value when computing the
		    z-statistic.  Default is False.
		alternative : {"two-sided", "greater", "less"}, optional
		    The alternative hypothesis to be tested, see Notes. Default is
		    "two-sided".
		
		Returns
		-------
		statistic : float
		    If `alternative` is "two-sided", the sum of the ranks of the
		    differences above or below zero, whichever is smaller.
		    Otherwise the sum of the ranks of the differences above zero.
		pvalue : float
		    The p-value for the test depending on `alternative`.
		
		See Also
		--------
		kruskal, mannwhitneyu
		
		Notes
		-----
		The test has been introduced in [4]_. Given n independent samples
		(xi, yi) from a bivariate distribution (i.e. paired samples),
		it computes the differences di = xi - yi. One assumption of the test
		is that the differences are symmetric, see [2]_.
		The two-sided test has the null hypothesis that the median of the
		differences is zero against the alternative that it is different from
		zero. The one-sided test has the null that the median is positive against
		the alternative that the it is negative (``alternative == 'less'``),
		or vice versa (``alternative == 'greater.'``).
		
		The test uses a normal approximation to derive the p-value (if
		``zero_method == 'pratt'``, the approximation is adjusted as in [5]_).
		A typical rule is to require that n > 20 ([2]_, p. 383). For smaller n,
		exact tables can be used to find critical values.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Wilcoxon_signed-rank_test
		.. [2] Conover, W.J., Practical Nonparametric Statistics, 1971.
		.. [3] Pratt, J.W., Remarks on Zeros and Ties in the Wilcoxon Signed
		   Rank Procedures, Journal of the American Statistical Association,
		   Vol. 54, 1959, pp. 655-667. :doi:`10.1080/01621459.1959.10501526`
		.. [4] Wilcoxon, F., Individual Comparisons by Ranking Methods,
		   Biometrics Bulletin, Vol. 1, 1945, pp. 80-83. :doi:`10.2307/3001968`
		.. [5] Cureton, E.E., The Normal Approximation to the Signed-Rank
		   Sampling Distribution When Zero Differences are Present,
		   Journal of the American Statistical Association, Vol. 62, 1967,
		   pp. 1068-1069. :doi:`10.1080/01621459.1967.10500917`
		
		Examples
		--------
		In [4]_, the differences in height between cross- and self-fertilized
		corn plants is given as follows:
		
		>>> d = [6, 8, 14, 16, 23, 24, 28, 29, 41, -48, 49, 56, 60, -67, 75]
		
		Cross-fertilized plants appear to be be higher. To test the null
		hypothesis that there is no height difference, we can apply the
		two-sided test:
		
		>>> from scipy.stats import wilcoxon
		>>> w, p = wilcoxon(d)
		>>> w, p
		(24.0, 0.04088813291185591)
		
		Hence, we would reject the null hypothesis at a confidence level of 5%,
		concluding that there is a difference in height between the groups.
		To confirm that the median of the differences can be assumed to be
		positive, we use:
		
		>>> w, p = wilcoxon(d, alternative='greater')
		>>> w, p
		(96.0, 0.020444066455927955)
		
		This shows that the null hypothesis that the median is negative can be
		rejected at a confidence level of 5% in favor of the alternative that
		the median is greater than zero. The p-value based on the approximation
		is within the range of 0.019 and 0.054 given in [2]_.
		Note that the statistic changed to 96 in the one-sided case (the sum
		of ranks of positive differences) whereas it is 24 in the two-sided
		case (the minimum of sum of ranks above and below zero).
	**/
	static public function wilcoxon(x:Dynamic, ?y:Dynamic, ?zero_method:Dynamic, ?correction:Dynamic, ?alternative:Dynamic):Float;
	/**
		Return a dataset transformed by a Yeo-Johnson power transformation.
		
		Parameters
		----------
		x : ndarray
		    Input array.  Should be 1-dimensional.
		lmbda : float, optional
		    If ``lmbda`` is ``None``, find the lambda that maximizes the
		    log-likelihood function and return it as the second output argument.
		    Otherwise the transformation is done for the given value.
		
		Returns
		-------
		yeojohnson: ndarray
		    Yeo-Johnson power transformed array.
		maxlog : float, optional
		    If the `lmbda` parameter is None, the second returned argument is
		    the lambda that maximizes the log-likelihood function.
		
		See Also
		--------
		probplot, yeojohnson_normplot, yeojohnson_normmax, yeojohnson_llf, boxcox
		
		Notes
		-----
		The Yeo-Johnson transform is given by::
		
		    y = ((x + 1)**lmbda - 1) / lmbda,                for x >= 0, lmbda != 0
		        log(x + 1),                                  for x >= 0, lmbda = 0
		        -((-x + 1)**(2 - lmbda) - 1) / (2 - lmbda),  for x < 0, lmbda != 2
		        -log(-x + 1),                                for x < 0, lmbda = 2
		
		Unlike `boxcox`, `yeojohnson` does not require the input data to be
		positive.
		
		.. versionadded:: 1.2.0
		
		
		References
		----------
		I. Yeo and R.A. Johnson, "A New Family of Power Transformations to
		Improve Normality or Symmetry", Biometrika 87.4 (2000):
		
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		We generate some random variates from a non-normal distribution and make a
		probability plot for it, to show it is non-normal in the tails:
		
		>>> fig = plt.figure()
		>>> ax1 = fig.add_subplot(211)
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> prob = stats.probplot(x, dist=stats.norm, plot=ax1)
		>>> ax1.set_xlabel('')
		>>> ax1.set_title('Probplot against normal distribution')
		
		We now use `yeojohnson` to transform the data so it's closest to normal:
		
		>>> ax2 = fig.add_subplot(212)
		>>> xt, lmbda = stats.yeojohnson(x)
		>>> prob = stats.probplot(xt, dist=stats.norm, plot=ax2)
		>>> ax2.set_title('Probplot after Yeo-Johnson transformation')
		
		>>> plt.show()
	**/
	static public function yeojohnson(x:Dynamic, ?lmbda:Dynamic):Dynamic;
	/**
		The yeojohnson log-likelihood function.
		
		Parameters
		----------
		lmb : scalar
		    Parameter for Yeo-Johnson transformation. See `yeojohnson` for
		    details.
		data : array_like
		    Data to calculate Yeo-Johnson log-likelihood for. If `data` is
		    multi-dimensional, the log-likelihood is calculated along the first
		    axis.
		
		Returns
		-------
		llf : float
		    Yeo-Johnson log-likelihood of `data` given `lmb`.
		
		See Also
		--------
		yeojohnson, probplot, yeojohnson_normplot, yeojohnson_normmax
		
		Notes
		-----
		The Yeo-Johnson log-likelihood function is defined here as
		
		.. math::
		
		    llf = N/2 \log(\hat{\sigma}^2) + (\lambda - 1)
		          \sum_i \text{ sign }(x_i)\log(|x_i| + 1)
		
		where :math:`\hat{\sigma}^2` is estimated variance of the the Yeo-Johnson
		transformed input data ``x``.
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> from mpl_toolkits.axes_grid1.inset_locator import inset_axes
		>>> np.random.seed(1245)
		
		Generate some random variates and calculate Yeo-Johnson log-likelihood
		values for them for a range of ``lmbda`` values:
		
		>>> x = stats.loggamma.rvs(5, loc=10, size=1000)
		>>> lmbdas = np.linspace(-2, 10)
		>>> llf = np.zeros(lmbdas.shape, dtype=float)
		>>> for ii, lmbda in enumerate(lmbdas):
		...     llf[ii] = stats.yeojohnson_llf(lmbda, x)
		
		Also find the optimal lmbda value with `yeojohnson`:
		
		>>> x_most_normal, lmbda_optimal = stats.yeojohnson(x)
		
		Plot the log-likelihood as function of lmbda.  Add the optimal lmbda as a
		horizontal line to check that that's really the optimum:
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(lmbdas, llf, 'b.-')
		>>> ax.axhline(stats.yeojohnson_llf(lmbda_optimal, x), color='r')
		>>> ax.set_xlabel('lmbda parameter')
		>>> ax.set_ylabel('Yeo-Johnson log-likelihood')
		
		Now add some probability plots to show that where the log-likelihood is
		maximized the data transformed with `yeojohnson` looks closest to normal:
		
		>>> locs = [3, 10, 4]  # 'lower left', 'center', 'lower right'
		>>> for lmbda, loc in zip([-1, lmbda_optimal, 9], locs):
		...     xt = stats.yeojohnson(x, lmbda=lmbda)
		...     (osm, osr), (slope, intercept, r_sq) = stats.probplot(xt)
		...     ax_inset = inset_axes(ax, width="20%", height="20%", loc=loc)
		...     ax_inset.plot(osm, osr, 'c.', osm, slope*osm + intercept, 'k-')
		...     ax_inset.set_xticklabels([])
		...     ax_inset.set_yticklabels([])
		...     ax_inset.set_title(r'$\lambda=%1.2f$' % lmbda)
		
		>>> plt.show()
	**/
	static public function yeojohnson_llf(lmb:Dynamic, data:Dynamic):Float;
	/**
		Compute optimal Yeo-Johnson transform parameter for input data, using
		maximum likelihood estimation.
		
		Parameters
		----------
		x : array_like
		    Input array.
		brack : 2-tuple, optional
		    The starting interval for a downhill bracket search with
		    `optimize.brent`. Note that this is in most cases not critical; the
		    final result is allowed to be outside this bracket.
		
		Returns
		-------
		maxlog : float
		    The optimal transform parameter found.
		
		Notes
		-----
		.. versionadded:: 1.2.0
		
		See Also
		--------
		yeojohnson, yeojohnson_llf, yeojohnson_normplot
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		>>> np.random.seed(1234)  # make this example reproducible
		
		Generate some data and determine optimal ``lmbda``
		
		>>> x = stats.loggamma.rvs(5, size=30) + 5
		>>> lmax = stats.yeojohnson_normmax(x)
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.yeojohnson_normplot(x, -10, 10, plot=ax)
		>>> ax.axvline(lmax, color='r')
		
		>>> plt.show()
	**/
	static public function yeojohnson_normmax(x:Dynamic, ?brack:Dynamic):Float;
	/**
		Compute parameters for a Yeo-Johnson normality plot, optionally show it.
		
		A Yeo-Johnson normality plot shows graphically what the best
		transformation parameter is to use in `yeojohnson` to obtain a
		distribution that is close to normal.
		
		Parameters
		----------
		x : array_like
		    Input array.
		la, lb : scalar
		    The lower and upper bounds for the ``lmbda`` values to pass to
		    `yeojohnson` for Yeo-Johnson transformations. These are also the
		    limits of the horizontal axis of the plot if that is generated.
		plot : object, optional
		    If given, plots the quantiles and least squares fit.
		    `plot` is an object that has to have methods "plot" and "text".
		    The `matplotlib.pyplot` module or a Matplotlib Axes object can be used,
		    or a custom object with the same methods.
		    Default is None, which means that no plot is created.
		N : int, optional
		    Number of points on the horizontal axis (equally distributed from
		    `la` to `lb`).
		
		Returns
		-------
		lmbdas : ndarray
		    The ``lmbda`` values for which a Yeo-Johnson transform was done.
		ppcc : ndarray
		    Probability Plot Correlelation Coefficient, as obtained from `probplot`
		    when fitting the Box-Cox transformed input `x` against a normal
		    distribution.
		
		See Also
		--------
		probplot, yeojohnson, yeojohnson_normmax, yeojohnson_llf, ppcc_max
		
		Notes
		-----
		Even if `plot` is given, the figure is not shown or saved by
		`boxcox_normplot`; ``plt.show()`` or ``plt.savefig('figname.png')``
		should be used after calling `probplot`.
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		Generate some non-normally distributed data, and create a Yeo-Johnson plot:
		
		>>> x = stats.loggamma.rvs(5, size=500) + 5
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> prob = stats.yeojohnson_normplot(x, -20, 20, plot=ax)
		
		Determine and plot the optimal ``lmbda`` to transform ``x`` and plot it in
		the same plot:
		
		>>> _, maxlog = stats.yeojohnson(x)
		>>> ax.axvline(maxlog, color='r')
		
		>>> plt.show()
	**/
	static public function yeojohnson_normplot(x:Dynamic, la:Dynamic, lb:Dynamic, ?plot:Dynamic, ?N:Dynamic):Dynamic;
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