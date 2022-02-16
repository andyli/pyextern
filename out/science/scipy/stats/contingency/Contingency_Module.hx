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
	/**
		Calculates degree of association between two nominal variables.
		
		The function provides the option for computing one of three measures of
		association between two nominal variables from the data given in a 2d
		contingency table: Tschuprow's T, Pearson's Contingency Coefficient
		and Cramer's V.
		
		Parameters
		----------
		observed : array-like
		    The array of observed values
		method : {"cramer", "tschuprow", "pearson"} (default = "cramer")
		    The association test statistic.
		correction : bool, optional
		    Inherited from `scipy.stats.contingency.chi2_contingency()`
		lambda_ : float or str, optional
		    Inherited from `scipy.stats.contingency.chi2_contingency()`
		
		Returns
		-------
		statistic : float
		    Value of the test statistic
		
		Notes
		-----
		Cramer's V, Tschuprow's T and Pearson's Contingency Coefficient, all
		measure the degree to which two nominal or ordinal variables are related,
		or the level of their association. This differs from correlation, although
		many often mistakenly consider them equivalent. Correlation measures in
		what way two variables are related, whereas, association measures how
		related the variables are. As such, association does not subsume
		independent variables, and is rather a test of independence. A value of
		1.0 indicates perfect association, and 0.0 means the variables have no
		association.
		
		Both the Cramer's V and Tschuprow's T are extensions of the phi
		coefficient.  Moreover, due to the close relationship between the
		Cramer's V and Tschuprow's T the returned values can often be similar
		or even equivalent.  They are likely to diverge more as the array shape
		diverges from a 2x2.
		
		References
		----------
		.. [1] "Tschuprow's T",
		       https://en.wikipedia.org/wiki/Tschuprow's_T
		.. [2] Tschuprow, A. A. (1939)
		       Principles of the Mathematical Theory of Correlation;
		       translated by M. Kantorowitsch. W. Hodge & Co.
		.. [3] "Cramer's V", https://en.wikipedia.org/wiki/Cramer's_V
		.. [4] "Nominal Association: Phi and Cramer's V",
		       http://www.people.vcu.edu/~pdattalo/702SuppRead/MeasAssoc/NominalAssoc.html
		.. [5] Gingrich, Paul, "Association Between Variables",
		       http://uregina.ca/~gingrich/ch11a.pdf
		
		Examples
		--------
		An example with a 4x2 contingency table:
		
		>>> from scipy.stats.contingency import association
		>>> obs4x2 = np.array([[100, 150], [203, 322], [420, 700], [320, 210]])
		
		Pearson's contingency coefficient
		>>> association(obs4x2, method="pearson")
		0.18303298140595667
		
		Cramer's V
		
		>>> association(obs4x2, method="cramer")
		0.18617813077483678
		
		Tschuprow's T
		
		>>> association(obs4x2, method="tschuprow")
		0.14146478765062995
	**/
	static public function association(observed:Dynamic, ?method:Dynamic, ?correction:Dynamic, ?lambda_:Dynamic):Float;
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
		lambda_ : float or str, optional
		    By default, the statistic computed in this test is Pearson's
		    chi-squared statistic [2]_.  `lambda_` allows a statistic from the
		    Cressie-Read power divergence family [3]_ to be used instead.  See
		    `scipy.stats.power_divergence` for details.
		
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
		scipy.stats.contingency.expected_freq
		scipy.stats.fisher_exact
		scipy.stats.chisquare
		scipy.stats.power_divergence
		scipy.stats.barnard_exact
		scipy.stats.boschloo_exact
		
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
		Return table of counts for each possible unique combination in ``*args``.
		
		When ``len(args) > 1``, the array computed by this function is
		often referred to as a *contingency table* [1]_.
		
		The arguments must be sequences with the same length.  The second return
		value, `count`, is an integer array with ``len(args)`` dimensions.  If
		`levels` is None, the shape of `count` is ``(n0, n1, ...)``, where ``nk``
		is the number of unique elements in ``args[k]``.
		
		Parameters
		----------
		args : sequences
		    A sequence of sequences whose unique aligned elements are to be
		    counted.  The sequences in args must all be the same length.
		levels : sequence, optional
		    If `levels` is given, it must be a sequence that is the same length as
		    `args`.  Each element in `levels` is either a sequence or None.  If it
		    is a sequence, it gives the values in the corresponding sequence in
		    `args` that are to be counted.  If any value in the sequences in `args`
		    does not occur in the corresponding sequence in `levels`, that value
		    is ignored and not counted in the returned array `count`.  The default
		    value of `levels` for ``args[i]`` is ``np.unique(args[i])``
		sparse : bool, optional
		    If True, return a sparse matrix.  The matrix will be an instance of
		    the `scipy.sparse.coo_matrix` class.  Because SciPy's sparse matrices
		    must be 2-d, only two input sequences are allowed when `sparse` is
		    True.  Default is False.
		
		Returns
		-------
		elements : tuple of numpy.ndarrays.
		    Tuple of length ``len(args)`` containing the arrays of elements that
		    are counted in `count`.  These can be interpreted as the labels of
		    the corresponding dimensions of `count`.
		    If `levels` was given, then if ``levels[i]`` is not None,
		    ``elements[i]`` will hold the values given in ``levels[i]``.
		count : numpy.ndarray or scipy.sparse.coo_matrix
		    Counts of the unique elements in ``zip(*args)``, stored in an array.
		    Also known as a *contingency table* when ``len(args) > 1``.
		
		See Also
		--------
		numpy.unique
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		References
		----------
		.. [1] "Contingency table", http://en.wikipedia.org/wiki/Contingency_table
		
		Examples
		--------
		>>> from scipy.stats.contingency import crosstab
		
		Given the lists `a` and `x`, create a contingency table that counts the
		frequencies of the corresponding pairs.
		
		>>> a = ['A', 'B', 'A', 'A', 'B', 'B', 'A', 'A', 'B', 'B']
		>>> x = ['X', 'X', 'X', 'Y', 'Z', 'Z', 'Y', 'Y', 'Z', 'Z']
		>>> (avals, xvals), count = crosstab(a, x)
		>>> avals
		array(['A', 'B'], dtype='<U1')
		>>> xvals
		array(['X', 'Y', 'Z'], dtype='<U1')
		>>> count
		array([[2, 3, 0],
		       [1, 0, 4]])
		
		So `('A', 'X')` occurs twice, `('A', 'Y')` occurs three times, etc.
		
		Higher dimensional contingency tables can be created.
		
		>>> p = [0, 0, 0, 0, 1, 1, 1, 0, 0, 1]
		>>> (avals, xvals, pvals), count = crosstab(a, x, p)
		>>> count
		array([[[2, 0],
		        [2, 1],
		        [0, 0]],
		       [[1, 0],
		        [0, 0],
		        [1, 3]]])
		>>> count.shape
		(2, 3, 2)
		
		The values to be counted can be set by using the `levels` argument.
		It allows the elements of interest in each input sequence to be
		given explicitly instead finding the unique elements of the sequence.
		
		For example, suppose one of the arguments is an array containing the
		answers to a survey question, with integer values 1 to 4.  Even if the
		value 1 does not occur in the data, we want an entry for it in the table.
		
		>>> q1 = [2, 3, 3, 2, 4, 4, 2, 3, 4, 4, 4, 3, 3, 3, 4]  # 1 does not occur.
		>>> q2 = [4, 4, 2, 2, 2, 4, 1, 1, 2, 2, 4, 2, 2, 2, 4]  # 3 does not occur.
		>>> options = [1, 2, 3, 4]
		>>> vals, count = crosstab(q1, q2, levels=(options, options))
		>>> count
		array([[0, 0, 0, 0],
		       [1, 1, 0, 1],
		       [1, 4, 0, 1],
		       [0, 3, 0, 3]])
		
		If `levels` is given, but an element of `levels` is None, the unique values
		of the corresponding argument are used. For example,
		
		>>> vals, count = crosstab(q1, q2, levels=(None, options))
		>>> vals
		[array([2, 3, 4]), [1, 2, 3, 4]]
		>>> count
		array([[1, 1, 0, 1],
		       [1, 4, 0, 1],
		       [0, 3, 0, 3]])
		
		If we want to ignore the pairs where 4 occurs in ``q2``, we can
		give just the values [1, 2] to `levels`, and the 4 will be ignored:
		
		>>> vals, count = crosstab(q1, q2, levels=(None, [1, 2]))
		>>> vals
		[array([2, 3, 4]), [1, 2]]
		>>> count
		array([[1, 1],
		       [1, 4],
		       [0, 3]])
		
		Finally, let's repeat the first example, but return a sparse matrix:
		
		>>> (avals, xvals), count = crosstab(a, x, sparse=True)
		>>> count
		<2x3 sparse matrix of type '<class 'numpy.int64'>'
		        with 4 stored elements in COOrdinate format>
		>>> count.A
		array([[2, 3, 0],
		       [1, 0, 4]])
	**/
	static public function crosstab(?args:python.VarArgs<Dynamic>, ?levels:Dynamic, ?sparse:Dynamic):Dynamic;
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
		>>> from scipy.stats.contingency import expected_freq
		>>> observed = np.array([[10, 10, 20],[20, 20, 20]])
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
		>>> from scipy.stats.contingency import margins
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
		    The power in the Cressie-Read power divergence statistic.  The default
		    is 1.  For convenience, `lambda_` may be assigned one of the following
		    strings, in which case the corresponding numerical value is used:
		
		    * ``"pearson"`` (value 1)
		        Pearson's chi-squared statistic. In this case, the function is
		        equivalent to `chisquare`.
		    * ``"log-likelihood"`` (value 0)
		        Log-likelihood ratio. Also known as the G-test [3]_.
		    * ``"freeman-tukey"`` (value -1/2)
		        Freeman-Tukey statistic.
		    * ``"mod-log-likelihood"`` (value -1)
		        Modified log-likelihood ratio.
		    * ``"neyman"`` (value -2)
		        Neyman's statistic.
		    * ``"cressie-read"`` (value 2/3)
		        The power recommended in [5]_.
		
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
		
		Also, the sum of the observed and expected frequencies must be the same
		for the test to be valid; `power_divergence` raises an error if the sums
		do not agree within a relative tolerance of ``1e-8``.
		
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
		       Statistics". Chapter 8.
		       https://web.archive.org/web/20171015035606/http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", https://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] "G-test", https://en.wikipedia.org/wiki/G-test
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
		(3.3281031458963746, 0.6495419288047497)
		
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
	/**
		Compute the relative risk (also known as the risk ratio).
		
		This function computes the relative risk associated with a 2x2
		contingency table ([1]_, section 2.2.3; [2]_, section 3.1.2). Instead
		of accepting a table as an argument, the individual numbers that are
		used to compute the relative risk are given as separate parameters.
		This is to avoid the ambiguity of which row or column of the contingency
		table corresponds to the "exposed" cases and which corresponds to the
		"control" cases.  Unlike, say, the odds ratio, the relative risk is not
		invariant under an interchange of the rows or columns.
		
		Parameters
		----------
		exposed_cases : nonnegative int
		    The number of "cases" (i.e. occurrence of disease or other event
		    of interest) among the sample of "exposed" individuals.
		exposed_total : positive int
		    The total number of "exposed" individuals in the sample.
		control_cases : nonnegative int
		    The number of "cases" among the sample of "control" or non-exposed
		    individuals.
		control_total : positive int
		    The total number of "control" individuals in the sample.
		
		Returns
		-------
		result : instance of `~scipy.stats._result_classes.RelativeRiskResult`
		    The object has the float attribute ``relative_risk``, which is::
		
		        rr = (exposed_cases/exposed_total) / (control_cases/control_total)
		
		    The object also has the method ``confidence_interval`` to compute
		    the confidence interval of the relative risk for a given confidence
		    level.
		
		Notes
		-----
		The R package epitools has the function `riskratio`, which accepts
		a table with the following layout::
		
		                    disease=0   disease=1
		    exposed=0 (ref)    n00         n01
		    exposed=1          n10         n11
		
		With a 2x2 table in the above format, the estimate of the CI is
		computed by `riskratio` when the argument method="wald" is given,
		or with the function `riskratio.wald`.
		
		For example, in a test of the incidence of lung cancer among a
		sample of smokers and nonsmokers, the "exposed" category would
		correspond to "is a smoker" and the "disease" category would
		correspond to "has or had lung cancer".
		
		To pass the same data to ``relative_risk``, use::
		
		    relative_risk(n11, n10 + n11, n01, n00 + n01)
		
		.. versionadded:: 1.7.0
		
		References
		----------
		.. [1] Alan Agresti, An Introduction to Categorical Data Analysis
		       (second edition), Wiley, Hoboken, NJ, USA (2007).
		.. [2] Hardeo Sahai and Anwer Khurshid, Statistics in Epidemiology,
		       CRC Press LLC, Boca Raton, FL, USA (1996).
		
		Examples
		--------
		>>> from scipy.stats.contingency import relative_risk
		
		This example is from Example 3.1 of [2]_.  The results of a heart
		disease study are summarized in the following table::
		
		             High CAT   Low CAT    Total
		             --------   -------    -----
		    CHD         27         44        71
		    No CHD      95        443       538
		
		    Total      122        487       609
		
		CHD is coronary heart disease, and CAT refers to the level of
		circulating catecholamine.  CAT is the "exposure" variable, and
		high CAT is the "exposed" category. So the data from the table
		to be passed to ``relative_risk`` is::
		
		    exposed_cases = 27
		    exposed_total = 122
		    control_cases = 44
		    control_total = 487
		
		>>> result = relative_risk(27, 122, 44, 487)
		>>> result.relative_risk
		2.4495156482861398
		
		Find the confidence interval for the relative risk.
		
		>>> result.confidence_interval(confidence_level=0.95)
		ConfidenceInterval(low=1.5836990926700116, high=3.7886786315466354)
		
		The interval does not contain 1, so the data supports the statement
		that high CAT is associated with greater risk of CHD.
	**/
	static public function relative_risk(exposed_cases:Dynamic, exposed_total:Dynamic, control_cases:Dynamic, control_total:Dynamic):Dynamic;
}