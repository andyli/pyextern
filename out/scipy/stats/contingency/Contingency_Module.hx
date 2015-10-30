/* This file is generated, do not edit! */
package scipy.stats.contingency;
@:pythonImport("scipy.stats.contingency") extern class Contingency_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
		the test should be used only if the observed and expected frequency in
		each cell is at least 5.
		
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
		.. [1] "Contingency table", http://en.wikipedia.org/wiki/Contingency_table
		.. [2] "Pearson's chi-squared test",
		       http://en.wikipedia.org/wiki/Pearson%27s_chi-squared_test
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
	static public function chi2_contingency(observed:Dynamic, ?correction:Dynamic, ?lambda_:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the expected frequencies from a contingency table.
		
		Given an n-dimensional contingency table of observed frequencies,
		compute the expected frequencies for the table based on the marginal
		sums under the assumption that the groups associated with each
		dimension are independent.
		
		Parameters
		----------
		observed : array_like
		    The table of observed frequencies.  (While this function can handle
		    a 1-D array, that case is trivial.  Generally `observed` is at
		    least 2-D.)
		
		Returns
		-------
		expected : ndarray of float64
		    The expected frequencies, based on the marginal sums of the table.
		    Same shape as `observed`.
		
		Examples
		--------
		>>> observed = np.array([[10, 10, 20],[20, 20, 20]])
		>>> from scipy.stats import expected_freq
		>>> expected_freq(observed)
		array([[ 12.,  12.,  16.],
		       [ 18.,  18.,  24.]])
	**/
	static public function expected_freq(observed:Dynamic):Dynamic;
	/**
		Return a list of the marginal sums of the array `a`.
		
		Parameters
		----------
		a : ndarray
		    The array for which to compute the marginal sums.
		
		Returns
		-------
		margsums : list of ndarrays
		    A list of length `a.ndim`.  `margsums[k]` is the result
		    of summing `a` over all axes except `k`; it has the same
		    number of dimensions as `a`, but the length of each axis
		    except axis `k` will be 1.
		
		Examples
		--------
		>>> a = np.arange(12).reshape(2, 6)
		>>> a
		array([[ 0,  1,  2,  3,  4,  5],
		       [ 6,  7,  8,  9, 10, 11]])
		>>> m0, m1 = margins(a)
		>>> m0
		array([[15],
		       [51]])
		>>> m1
		array([[ 6,  8, 10, 12, 14, 16]])
		
		>>> b = np.arange(24).reshape(2,3,4)
		>>> m0, m1, m2 = margins(b)
		>>> m0
		array([[[ 66]],
		       [[210]]])
		>>> m1
		array([[[ 60],
		        [ 92],
		        [124]]])
		>>> m2
		array([[[60, 66, 72, 78]]])
	**/
	static public function margins(a:Dynamic):Dynamic;
	/**
		Cressie-Read power divergence statistic and goodness of fit test.
		
		This function tests the null hypothesis that the categorical data
		has the given frequencies, using the Cressie-Read power divergence
		statistic.
		
		Parameters
		----------
		f_obs : array_like
		    Observed frequencies in each category.
		f_exp : array_like, optional
		    Expected frequencies in each category.  By default the categories are
		    assumed to be equally likely.
		ddof : int, optional
		    "Delta degrees of freedom": adjustment to the degrees of freedom
		    for the p-value.  The p-value is computed using a chi-squared
		    distribution with ``k - 1 - ddof`` degrees of freedom, where `k`
		    is the number of observed frequencies.  The default value of `ddof`
		    is 0.
		axis : int or None, optional
		    The axis of the broadcast result of `f_obs` and `f_exp` along which to
		    apply the test.  If axis is None, all values in `f_obs` are treated
		    as a single data set.  Default is 0.
		lambda_ : float or str, optional
		    `lambda_` gives the power in the Cressie-Read power divergence
		    statistic.  The default is 1.  For convenience, `lambda_` may be
		    assigned one of the following strings, in which case the
		    corresponding numerical value is used::
		
		        String              Value   Description
		        "pearson"             1     Pearson's chi-squared statistic.
		                                    In this case, the function is
		                                    equivalent to `stats.chisquare`.
		        "log-likelihood"      0     Log-likelihood ratio. Also known as
		                                    the G-test [3]_.
		        "freeman-tukey"      -1/2   Freeman-Tukey statistic.
		        "mod-log-likelihood" -1     Modified log-likelihood ratio.
		        "neyman"             -2     Neyman's statistic.
		        "cressie-read"        2/3   The power recommended in [5]_.
		
		Returns
		-------
		statistic : float or ndarray
		    The Cressie-Read power divergence test statistic.  The value is
		    a float if `axis` is None or if` `f_obs` and `f_exp` are 1-D.
		pvalue : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `stat` are scalars.
		
		See Also
		--------
		chisquare
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5.
		
		When `lambda_` is less than zero, the formula for the statistic involves
		dividing by `f_obs`, so a warning or error may be generated if any value
		in `f_obs` is 0.
		
		Similarly, a warning or error may be generated if any value in `f_exp` is
		zero when `lambda_` >= 0.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not a chisquare, in which case this
		test is not appropriate.
		
		This function handles masked arrays.  If an element of `f_obs` or `f_exp`
		is masked, then data at that position is ignored, and does not count
		towards the size of the data set.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8. http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", http://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] "G-test", http://en.wikipedia.org/wiki/G-test
		.. [4] Sokal, R. R. and Rohlf, F. J. "Biometry: the principles and
		       practice of statistics in biological research", New York: Freeman
		       (1981)
		.. [5] Cressie, N. and Read, T. R. C., "Multinomial Goodness-of-Fit
		       Tests", J. Royal Stat. Soc. Series B, Vol. 46, No. 3 (1984),
		       pp. 440-464.
		
		Examples
		--------
		
		(See `chisquare` for more examples.)
		
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.  Here we
		perform a G-test (i.e. use the log-likelihood ratio statistic):
		
		>>> from scipy.stats import power_divergence
		>>> power_divergence([16, 18, 16, 14, 12, 12], lambda_='log-likelihood')
		(2.006573162632538, 0.84823476779463769)
		
		The expected frequencies can be given with the `f_exp` argument:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[16, 16, 16, 16, 16, 8],
		...                  lambda_='log-likelihood')
		(3.5, 0.62338762774958223)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> power_divergence(obs, lambda_="log-likelihood")
		(array([ 2.00657316,  6.77634498]), array([ 0.84823477,  0.23781225]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> power_divergence(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> power_divergence(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		test statistic with `ddof`.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we must use ``axis=1``:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[[16, 16, 16, 16, 16, 8],
		...                         [8, 20, 20, 16, 12, 12]],
		...                  axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function power_divergence(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic, ?lambda_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
}