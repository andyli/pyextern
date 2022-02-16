/* This file is generated, do not edit! */
package scipy.stats.stats;
@:pythonImport("scipy.stats.stats") extern class Stats_Module {
	/**
		Performs the Alexander Govern test.
		
		The Alexander-Govern approximation tests the equality of k independent
		means in the face of heterogeneity of variance. The test is applied to
		samples from two or more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.  There must be at least
		    two samples.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		statistic : float
		    The computed A statistic of the test.
		pvalue : float
		    The associated p-value from the chi-squared distribution.
		
		Warns
		-----
		AlexanderGovernConstantInputWarning
		    Raised if an input is a constant array.  The statistic is not defined
		    in this case, so ``np.nan`` is returned.
		
		See Also
		--------
		f_oneway : one-way ANOVA
		
		Notes
		-----
		The use of this test relies on several assumptions.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. Unlike `f_oneway`, this test does not assume on homoscedasticity,
		   instead relaxing the assumption of equal variances.
		
		Input samples must be finite, one dimensional, and with size greater than
		one.
		
		References
		----------
		.. [1] Alexander, Ralph A., and Diane M. Govern. "A New and Simpler
		       Approximation for ANOVA under Variance Heterogeneity." Journal
		       of Educational Statistics, vol. 19, no. 2, 1994, pp. 91-101.
		       JSTOR, www.jstor.org/stable/1165140. Accessed 12 Sept. 2020.
		
		Examples
		--------
		>>> from scipy.stats import alexandergovern
		
		Here are some data on annual percentage rate of interest charged on
		new car loans at nine of the largest banks in four American cities
		taken from the National Institute of Standards and Technology's
		ANOVA dataset.
		
		We use `alexandergovern` to test the null hypothesis that all cities
		have the same mean APR against the alternative that the cities do not
		all have the same mean APR. We decide that a significance level of 5%
		is required to reject the null hypothesis in favor of the alternative.
		
		>>> atlanta = [13.75, 13.75, 13.5, 13.5, 13.0, 13.0, 13.0, 12.75, 12.5]
		>>> chicago = [14.25, 13.0, 12.75, 12.5, 12.5, 12.4, 12.3, 11.9, 11.9]
		>>> houston = [14.0, 14.0, 13.51, 13.5, 13.5, 13.25, 13.0, 12.5, 12.5]
		>>> memphis = [15.0, 14.0, 13.75, 13.59, 13.25, 12.97, 12.5, 12.25,
		...           11.89]
		>>> alexandergovern(atlanta, chicago, houston, memphis)
		AlexanderGovernResult(statistic=4.65087071883494,
		                      pvalue=0.19922132490385214)
		
		The p-value is 0.1992, indicating a nearly 20% chance of observing
		such an extreme value of the test statistic under the null hypothesis.
		This exceeds 5%, so we do not reject the null hypothesis in favor of
		the alternative.
	**/
	static public function alexandergovern(?args:python.VarArgs<Dynamic>, ?nan_policy:Dynamic):Float;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
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
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		Compute the Brunner-Munzel test on samples x and y.
		
		The Brunner-Munzel test is a nonparametric test of the null hypothesis that
		when values are taken one by one from each group, the probabilities of
		getting large values in both groups are equal.
		Unlike the Wilcoxon-Mann-Whitney's U test, this does not require the
		assumption of equivariance of two groups. Note that this does not assume
		the distributions are same. This test works on two independent samples,
		which may have different sizes.
		
		Parameters
		----------
		x, y : array_like
		    Array of samples, should be one-dimensional.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		      * 'two-sided'
		      * 'less': one-sided
		      * 'greater': one-sided
		distribution : {'t', 'normal'}, optional
		    Defines how to get the p-value.
		    The following options are available (default is 't'):
		
		      * 't': get the p-value by t-distribution
		      * 'normal': get the p-value by standard normal distribution.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		statistic : float
		    The Brunner-Munzer W statistic.
		pvalue : float
		    p-value assuming an t distribution. One-sided or
		    two-sided, depending on the choice of `alternative` and `distribution`.
		
		See Also
		--------
		mannwhitneyu : Mann-Whitney rank test on two samples.
		
		Notes
		-----
		Brunner and Munzel recommended to estimate the p-value by t-distribution
		when the size of data is 50 or less. If the size is lower than 10, it would
		be better to use permuted Brunner Munzel test (see [2]_).
		
		References
		----------
		.. [1] Brunner, E. and Munzel, U. "The nonparametric Benhrens-Fisher
		       problem: Asymptotic theory and a small-sample approximation".
		       Biometrical Journal. Vol. 42(2000): 17-25.
		.. [2] Neubert, K. and Brunner, E. "A studentized permutation test for the
		       non-parametric Behrens-Fisher problem". Computational Statistics and
		       Data Analysis. Vol. 51(2007): 5192-5204.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [1,2,1,1,1,1,1,1,1,1,2,4,1,1]
		>>> x2 = [3,3,4,3,1,2,3,1,1,5,4]
		>>> w, p_value = stats.brunnermunzel(x1, x2)
		>>> w
		3.1374674823029505
		>>> p_value
		0.0057862086661515377
	**/
	static public function brunnermunzel(x:Dynamic, y:Dynamic, ?alternative:Dynamic, ?distribution:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Compute distance between each pair of the two collections of inputs.
		
		See Notes for common calling conventions.
		
		Parameters
		----------
		XA : array_like
		    An :math:`m_A` by :math:`n` array of :math:`m_A`
		    original observations in an :math:`n`-dimensional space.
		    Inputs are converted to float type.
		XB : array_like
		    An :math:`m_B` by :math:`n` array of :math:`m_B`
		    original observations in an :math:`n`-dimensional space.
		    Inputs are converted to float type.
		metric : str or callable, optional
		    The distance metric to use. If a string, the distance function can be
		    'braycurtis', 'canberra', 'chebyshev', 'cityblock', 'correlation',
		    'cosine', 'dice', 'euclidean', 'hamming', 'jaccard', 'jensenshannon',
		    'kulsinski', 'kulczynski1', 'mahalanobis', 'matching', 'minkowski',
		    'rogerstanimoto', 'russellrao', 'seuclidean', 'sokalmichener',
		    'sokalsneath', 'sqeuclidean', 'yule'.
		**kwargs : dict, optional
		    Extra arguments to `metric`: refer to each metric documentation for a
		    list of all possible arguments.
		
		    Some possible arguments:
		
		    p : scalar
		    The p-norm to apply for Minkowski, weighted and unweighted.
		    Default: 2.
		
		    w : array_like
		    The weight vector for metrics that support weights (e.g., Minkowski).
		
		    V : array_like
		    The variance vector for standardized Euclidean.
		    Default: var(vstack([XA, XB]), axis=0, ddof=1)
		
		    VI : array_like
		    The inverse of the covariance matrix for Mahalanobis.
		    Default: inv(cov(vstack([XA, XB].T))).T
		
		    out : ndarray
		    The output array
		    If not None, the distance matrix Y is stored in this array.
		
		Returns
		-------
		Y : ndarray
		    A :math:`m_A` by :math:`m_B` distance matrix is returned.
		    For each :math:`i` and :math:`j`, the metric
		    ``dist(u=XA[i], v=XB[j])`` is computed and stored in the
		    :math:`ij` th entry.
		
		Raises
		------
		ValueError
		    An exception is thrown if `XA` and `XB` do not have
		    the same number of columns.
		
		Notes
		-----
		The following are common calling conventions:
		
		1. ``Y = cdist(XA, XB, 'euclidean')``
		
		   Computes the distance between :math:`m` points using
		   Euclidean distance (2-norm) as the distance metric between the
		   points. The points are arranged as :math:`m`
		   :math:`n`-dimensional row vectors in the matrix X.
		
		2. ``Y = cdist(XA, XB, 'minkowski', p=2.)``
		
		   Computes the distances using the Minkowski distance
		   :math:`\|u-v\|_p` (:math:`p`-norm) where :math:`p > 0` (note
		   that this is only a quasi-metric if :math:`0 < p < 1`).
		
		3. ``Y = cdist(XA, XB, 'cityblock')``
		
		   Computes the city block or Manhattan distance between the
		   points.
		
		4. ``Y = cdist(XA, XB, 'seuclidean', V=None)``
		
		   Computes the standardized Euclidean distance. The standardized
		   Euclidean distance between two n-vectors ``u`` and ``v`` is
		
		   .. math::
		
		      \sqrt{\sum {(u_i-v_i)^2 / V[x_i]}}.
		
		   V is the variance vector; V[i] is the variance computed over all
		   the i'th components of the points. If not passed, it is
		   automatically computed.
		
		5. ``Y = cdist(XA, XB, 'sqeuclidean')``
		
		   Computes the squared Euclidean distance :math:`\|u-v\|_2^2` between
		   the vectors.
		
		6. ``Y = cdist(XA, XB, 'cosine')``
		
		   Computes the cosine distance between vectors u and v,
		
		   .. math::
		
		      1 - \frac{u \cdot v}
		               {{\|u\|}_2 {\|v\|}_2}
		
		   where :math:`\|*\|_2` is the 2-norm of its argument ``*``, and
		   :math:`u \cdot v` is the dot product of :math:`u` and :math:`v`.
		
		7. ``Y = cdist(XA, XB, 'correlation')``
		
		   Computes the correlation distance between vectors u and v. This is
		
		   .. math::
		
		      1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		               {{\|(u - \bar{u})\|}_2 {\|(v - \bar{v})\|}_2}
		
		   where :math:`\bar{v}` is the mean of the elements of vector v,
		   and :math:`x \cdot y` is the dot product of :math:`x` and :math:`y`.
		
		
		8. ``Y = cdist(XA, XB, 'hamming')``
		
		   Computes the normalized Hamming distance, or the proportion of
		   those vector elements between two n-vectors ``u`` and ``v``
		   which disagree. To save memory, the matrix ``X`` can be of type
		   boolean.
		
		9. ``Y = cdist(XA, XB, 'jaccard')``
		
		   Computes the Jaccard distance between the points. Given two
		   vectors, ``u`` and ``v``, the Jaccard distance is the
		   proportion of those elements ``u[i]`` and ``v[i]`` that
		   disagree where at least one of them is non-zero.
		
		10. ``Y = cdist(XA, XB, 'jensenshannon')``
		
		    Computes the Jensen-Shannon distance between two probability arrays.
		    Given two probability vectors, :math:`p` and :math:`q`, the
		    Jensen-Shannon distance is
		
		    .. math::
		
		       \sqrt{\frac{D(p \parallel m) + D(q \parallel m)}{2}}
		
		    where :math:`m` is the pointwise mean of :math:`p` and :math:`q`
		    and :math:`D` is the Kullback-Leibler divergence.
		
		11. ``Y = cdist(XA, XB, 'chebyshev')``
		
		    Computes the Chebyshev distance between the points. The
		    Chebyshev distance between two n-vectors ``u`` and ``v`` is the
		    maximum norm-1 distance between their respective elements. More
		    precisely, the distance is given by
		
		    .. math::
		
		       d(u,v) = \max_i {|u_i-v_i|}.
		
		12. ``Y = cdist(XA, XB, 'canberra')``
		
		    Computes the Canberra distance between the points. The
		    Canberra distance between two points ``u`` and ``v`` is
		
		    .. math::
		
		      d(u,v) = \sum_i \frac{|u_i-v_i|}
		                           {|u_i|+|v_i|}.
		
		13. ``Y = cdist(XA, XB, 'braycurtis')``
		
		    Computes the Bray-Curtis distance between the points. The
		    Bray-Curtis distance between two points ``u`` and ``v`` is
		
		
		    .. math::
		
		         d(u,v) = \frac{\sum_i (|u_i-v_i|)}
		                       {\sum_i (|u_i+v_i|)}
		
		14. ``Y = cdist(XA, XB, 'mahalanobis', VI=None)``
		
		    Computes the Mahalanobis distance between the points. The
		    Mahalanobis distance between two points ``u`` and ``v`` is
		    :math:`\sqrt{(u-v)(1/V)(u-v)^T}` where :math:`(1/V)` (the ``VI``
		    variable) is the inverse covariance. If ``VI`` is not None,
		    ``VI`` will be used as the inverse covariance matrix.
		
		15. ``Y = cdist(XA, XB, 'yule')``
		
		    Computes the Yule distance between the boolean
		    vectors. (see `yule` function documentation)
		
		16. ``Y = cdist(XA, XB, 'matching')``
		
		    Synonym for 'hamming'.
		
		17. ``Y = cdist(XA, XB, 'dice')``
		
		    Computes the Dice distance between the boolean vectors. (see
		    `dice` function documentation)
		
		18. ``Y = cdist(XA, XB, 'kulsinski')``
		
		    Computes the Kulsinski distance between the boolean
		    vectors. (see `kulsinski` function documentation)
		
		19. ``Y = cdist(XA, XB, 'rogerstanimoto')``
		
		    Computes the Rogers-Tanimoto distance between the boolean
		    vectors. (see `rogerstanimoto` function documentation)
		
		20. ``Y = cdist(XA, XB, 'russellrao')``
		
		    Computes the Russell-Rao distance between the boolean
		    vectors. (see `russellrao` function documentation)
		
		21. ``Y = cdist(XA, XB, 'sokalmichener')``
		
		    Computes the Sokal-Michener distance between the boolean
		    vectors. (see `sokalmichener` function documentation)
		
		22. ``Y = cdist(XA, XB, 'sokalsneath')``
		
		    Computes the Sokal-Sneath distance between the vectors. (see
		    `sokalsneath` function documentation)
		
		23. ``Y = cdist(XA, XB, f)``
		
		    Computes the distance between all pairs of vectors in X
		    using the user supplied 2-arity function f. For example,
		    Euclidean distance between the vectors could be computed
		    as follows::
		
		      dm = cdist(XA, XB, lambda u, v: np.sqrt(((u-v)**2).sum()))
		
		    Note that you should avoid passing a reference to one of
		    the distance functions defined in this library. For example,::
		
		      dm = cdist(XA, XB, sokalsneath)
		
		    would calculate the pair-wise distances between the vectors in
		    X using the Python function `sokalsneath`. This would result in
		    sokalsneath being called :math:`{n \choose 2}` times, which
		    is inefficient. Instead, the optimized C version is more
		    efficient, and we call it using the following syntax::
		
		      dm = cdist(XA, XB, 'sokalsneath')
		
		Examples
		--------
		Find the Euclidean distances between four 2-D coordinates:
		
		>>> from scipy.spatial import distance
		>>> coords = [(35.0456, -85.2672),
		...           (35.1174, -89.9711),
		...           (35.9728, -83.9422),
		...           (36.1667, -86.7833)]
		>>> distance.cdist(coords, coords, 'euclidean')
		array([[ 0.    ,  4.7044,  1.6172,  1.8856],
		       [ 4.7044,  0.    ,  6.0893,  3.3561],
		       [ 1.6172,  6.0893,  0.    ,  2.8477],
		       [ 1.8856,  3.3561,  2.8477,  0.    ]])
		
		
		Find the Manhattan distance from a 3-D point to the corners of the unit
		cube:
		
		>>> a = np.array([[0, 0, 0],
		...               [0, 0, 1],
		...               [0, 1, 0],
		...               [0, 1, 1],
		...               [1, 0, 0],
		...               [1, 0, 1],
		...               [1, 1, 0],
		...               [1, 1, 1]])
		>>> b = np.array([[ 0.1,  0.2,  0.4]])
		>>> distance.cdist(a, b, 'cityblock')
		array([[ 0.7],
		       [ 0.9],
		       [ 1.3],
		       [ 1.5],
		       [ 1.5],
		       [ 1.7],
		       [ 2.1],
		       [ 2.3]])
	**/
	static public function cdist(XA:Dynamic, XB:Dynamic, ?metric:Dynamic, ?out:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Turn `seed` into a `np.random.RandomState` instance.
		
		Parameters
		----------
		seed : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Returns
		-------
		seed : {`numpy.random.Generator`, `numpy.random.RandomState`}
		    Random number generator.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	/**
		Calculate a one-way chi-square test.
		
		The chi-square test tests the null hypothesis that the categorical data
		has the given frequencies.
		
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
		
		Returns
		-------
		chisq : float or ndarray
		    The chi-squared test statistic.  The value is a float if `axis` is
		    None or `f_obs` and `f_exp` are 1-D.
		p : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `chisq` are scalars.
		
		See Also
		--------
		scipy.stats.power_divergence
		scipy.stats.fisher_exact : Fisher exact test on a 2x2 contingency table.
		scipy.stats.barnard_exact : An unconditional exact test. An alternative
		    to chi-squared test for small sample sizes.
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5. According to [3]_, the
		total number of samples is recommended to be greater than 13,
		otherwise exact tests (such as Barnard's Exact test) should be used
		because they do not overreject.
		
		Also, the sum of the observed and expected frequencies must be the same
		for the test to be valid; `chisquare` raises an error if the sums do not
		agree within a relative tolerance of ``1e-8``.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not chi-square, in which case this test
		is not appropriate.
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8.
		       https://web.archive.org/web/20171022032306/http://vassarstats.net:80/textbook/ch8pt1.html
		.. [2] "Chi-squared test", https://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] Pearson, Karl. "On the criterion that a given system of deviations from the probable
		       in the case of a correlated system of variables is such that it can be reasonably
		       supposed to have arisen from random sampling", Philosophical Magazine. Series 5. 50
		       (1900), pp. 157-175.
		
		Examples
		--------
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.
		
		>>> from scipy.stats import chisquare
		>>> chisquare([16, 18, 16, 14, 12, 12])
		(2.0, 0.84914503608460956)
		
		With `f_exp` the expected frequencies can be given.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], f_exp=[16, 16, 16, 16, 16, 8])
		(3.5, 0.62338762774958223)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> chisquare(obs)
		(array([ 2.        ,  6.66666667]), array([ 0.84914504,  0.24663415]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> chisquare(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> chisquare(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		chi-squared statistic with `ddof`.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we use ``axis=1``:
		
		>>> chisquare([16, 18, 16, 14, 12, 12],
		...           f_exp=[[16, 16, 16, 16, 16, 8], [8, 20, 20, 16, 12, 12]],
		...           axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function chisquare(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Combine p-values from independent tests bearing upon the same hypothesis.
		
		Parameters
		----------
		pvalues : array_like, 1-D
		    Array of p-values assumed to come from independent tests.
		method : {'fisher', 'pearson', 'tippett', 'stouffer',
		          'mudholkar_george'}, optional
		
		    Name of method to use to combine p-values.
		    The following methods are available (default is 'fisher'):
		
		      * 'fisher': Fisher's method (Fisher's combined probability test), the
		        sum of the logarithm of the p-values
		      * 'pearson': Pearson's method (similar to Fisher's but uses sum of the
		        complement of the p-values inside the logarithms)
		      * 'tippett': Tippett's method (minimum of p-values)
		      * 'stouffer': Stouffer's Z-score method
		      * 'mudholkar_george': the difference of Fisher's and Pearson's methods
		        divided by 2
		weights : array_like, 1-D, optional
		    Optional array of weights used only for Stouffer's Z-score method.
		
		Returns
		-------
		statistic: float
		    The statistic calculated by the specified method.
		pval: float
		    The combined p-value.
		
		Notes
		-----
		Fisher's method (also known as Fisher's combined probability test) [1]_ uses
		a chi-squared statistic to compute a combined p-value. The closely related
		Stouffer's Z-score method [2]_ uses Z-scores rather than p-values. The
		advantage of Stouffer's method is that it is straightforward to introduce
		weights, which can make Stouffer's method more powerful than Fisher's
		method when the p-values are from studies of different size [6]_ [7]_.
		The Pearson's method uses :math:`log(1-p_i)` inside the sum whereas Fisher's
		method uses :math:`log(p_i)` [4]_. For Fisher's and Pearson's method, the
		sum of the logarithms is multiplied by -2 in the implementation. This
		quantity has a chi-square distribution that determines the p-value. The
		`mudholkar_george` method is the difference of the Fisher's and Pearson's
		test statistics, each of which include the -2 factor [4]_. However, the
		`mudholkar_george` method does not include these -2 factors. The test
		statistic of `mudholkar_george` is the sum of logisitic random variables and
		equation 3.6 in [3]_ is used to approximate the p-value based on Student's
		t-distribution.
		
		Fisher's method may be extended to combine p-values from dependent tests
		[5]_. Extensions such as Brown's method and Kost's method are not currently
		implemented.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Fisher%27s_method
		.. [2] https://en.wikipedia.org/wiki/Fisher%27s_method#Relation_to_Stouffer.27s_Z-score_method
		.. [3] George, E. O., and G. S. Mudholkar. "On the convolution of logistic
		       random variables." Metrika 30.1 (1983): 1-13.
		.. [4] Heard, N. and Rubin-Delanchey, P. "Choosing between methods of
		       combining p-values."  Biometrika 105.1 (2018): 239-246.
		.. [5] Whitlock, M. C. "Combining probability from independent tests: the
		       weighted Z-method is superior to Fisher's approach." Journal of
		       Evolutionary Biology 18, no. 5 (2005): 1368-1373.
		.. [6] Zaykin, Dmitri V. "Optimally weighted Z-test is a powerful method
		       for combining probabilities in meta-analysis." Journal of
		       Evolutionary Biology 24, no. 8 (2011): 1836-1841.
		.. [7] https://en.wikipedia.org/wiki/Extensions_of_Fisher%27s_method
	**/
	static public function combine_pvalues(pvalues:Dynamic, ?method:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Return a cumulative frequency histogram, using the histogram function.
		
		A cumulative histogram is a mapping that counts the cumulative number of
		observations in all of the bins up to the specified bin.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in `a` is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		cumcount : ndarray
		    Binned values of cumulative frequency.
		lowerlimit : float
		    Lower real limit
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from numpy.random import default_rng
		>>> from scipy import stats
		>>> rng = default_rng()
		>>> x = [1, 4, 2, 1, 3, 1]
		>>> res = stats.cumfreq(x, numbins=4, defaultreallimits=(1.5, 5))
		>>> res.cumcount
		array([ 1.,  2.,  3.,  3.])
		>>> res.extrapoints
		3
		
		Create a normal distribution with 1000 random values
		
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate cumulative frequencies
		
		>>> res = stats.cumfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.cumcount.size,
		...                                  res.cumcount.size)
		
		Plot histogram and cumulative histogram
		
		>>> fig = plt.figure(figsize=(10, 4))
		>>> ax1 = fig.add_subplot(1, 2, 1)
		>>> ax2 = fig.add_subplot(1, 2, 2)
		>>> ax1.hist(samples, bins=25)
		>>> ax1.set_title('Histogram')
		>>> ax2.bar(x, res.cumcount, width=res.binsize)
		>>> ax2.set_title('Cumulative histogram')
		>>> ax2.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function cumfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute several descriptive statistics of the passed array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int or None, optional
		    Axis along which statistics are calculated. Default is 0.
		    If None, compute over the whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom (only for variance).  Default is 1.
		bias : bool, optional
		    If False, then the skewness and kurtosis calculations are corrected
		    for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		nobs : int or ndarray of ints
		    Number of observations (length of data along `axis`).
		    When 'omit' is chosen as nan_policy, the length along each axis
		    slice is counted separately.
		minmax: tuple of ndarrays or floats
		    Minimum and maximum value of `a` along the given axis.
		mean : ndarray or float
		    Arithmetic mean of `a` along the given axis.
		variance : ndarray or float
		    Unbiased variance of `a` along the given axis; denominator is number
		    of observations minus one.
		skewness : ndarray or float
		    Skewness of `a` along the given axis, based on moment calculations
		    with denominator equal to the number of observations, i.e. no degrees
		    of freedom correction.
		kurtosis : ndarray or float
		    Kurtosis (Fisher) of `a` along the given axis.  The kurtosis is
		    normalized so that it is zero for the normal distribution.  No
		    degrees of freedom are used.
		
		See Also
		--------
		skew, kurtosis
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(10)
		>>> stats.describe(a)
		DescribeResult(nobs=10, minmax=(0, 9), mean=4.5,
		               variance=9.166666666666666, skewness=0.0,
		               kurtosis=-1.2242424242424244)
		>>> b = [[1, 2], [3, 4]]
		>>> stats.describe(b)
		DescribeResult(nobs=2, minmax=(array([1, 2]), array([3, 4])),
		               mean=array([2., 3.]), variance=array([2., 2.]),
		               skewness=array([0., 0.]), kurtosis=array([-2., -2.]))
	**/
	static public function describe(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the energy distance between two 1D distributions.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The energy distance between two distributions :math:`u` and :math:`v`, whose
		respective CDFs are :math:`U` and :math:`V`, equals to:
		
		.. math::
		
		    D(u, v) = \left( 2\mathbb E|X - Y| - \mathbb E|X - X'| -
		    \mathbb E|Y - Y'| \right)^{1/2}
		
		where :math:`X` and :math:`X'` (resp. :math:`Y` and :math:`Y'`) are
		independent random variables whose probability distribution is :math:`u`
		(resp. :math:`v`).
		
		As shown in [2]_, for one-dimensional real-valued variables, the energy
		distance is linked to the non-distribution-free version of the Cramér-von
		Mises distance:
		
		.. math::
		
		    D(u, v) = \sqrt{2} l_2(u, v) = \left( 2 \int_{-\infty}^{+\infty} (U-V)^2
		    \right)^{1/2}
		
		Note that the common Cramér-von Mises criterion uses the distribution-free
		version of the distance. See [2]_ (section 2), for more details about both
		versions of the distance.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Energy distance", https://en.wikipedia.org/wiki/Energy_distance
		.. [2] Szekely "E-statistics: The energy of statistical samples." Bowling
		       Green State University, Department of Mathematics and Statistics,
		       Technical Report 02-16 (2002).
		.. [3] Rizzo, Szekely "Energy distance." Wiley Interdisciplinary Reviews:
		       Computational Statistics, 8(1):27-38 (2015).
		.. [4] Bellemare, Danihelka, Dabney, Mohamed, Lakshminarayanan, Hoyer,
		       Munos "The Cramer Distance as a Solution to Biased Wasserstein
		       Gradients" (2017). :arXiv:`1705.10743`.
		
		Examples
		--------
		>>> from scipy.stats import energy_distance
		>>> energy_distance([0], [2])
		2.0000000000000004
		>>> energy_distance([0, 8], [0, 8], [3, 1], [2, 2])
		1.0000000000000002
		>>> energy_distance([0.7, 7.4, 2.4, 6.8], [1.4, 8. ],
		...                 [2.1, 4.2, 7.4, 8. ], [7.6, 8.8])
		0.88003340976158217
	**/
	static public function energy_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Perform one-way ANOVA.
		
		The one-way ANOVA tests the null hypothesis that two or more groups have
		the same population mean.  The test is applied to samples from two or
		more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.  There must be at least
		    two arguments.  If the arrays are multidimensional, then all the
		    dimensions of the array must be the same except for `axis`.
		axis : int, optional
		    Axis of the input arrays along which the test is applied.
		    Default is 0.
		
		Returns
		-------
		statistic : float
		    The computed F statistic of the test.
		pvalue : float
		    The associated p-value from the F distribution.
		
		Warns
		-----
		F_onewayConstantInputWarning
		    Raised if each of the input arrays is constant array.
		    In this case the F statistic is either infinite or isn't defined,
		    so ``np.inf`` or ``np.nan`` is returned.
		
		F_onewayBadInputSizesWarning
		    Raised if the length of any input array is 0, or if all the input
		    arrays have length 1.  ``np.nan`` is returned for the F statistic
		    and the p-value in these cases.
		
		Notes
		-----
		The ANOVA test has important assumptions that must be satisfied in order
		for the associated p-value to be valid.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. The population standard deviations of the groups are all equal.  This
		   property is known as homoscedasticity.
		
		If these assumptions are not true for a given set of data, it may still
		be possible to use the Kruskal-Wallis H-test (`scipy.stats.kruskal`) or
		the Alexander-Govern test (`scipy.stats.alexandergovern`) although with
		some loss of power.
		
		The length of each group must be at least one, and there must be at
		least one group with length greater than one.  If these conditions
		are not satisfied, a warning is generated and (``np.nan``, ``np.nan``)
		is returned.
		
		If each group contains constant values, and there exist at least two
		groups with different values, the function generates a warning and
		returns (``np.inf``, 0).
		
		If all values in all groups are the same, function generates a warning
		and returns (``np.nan``, ``np.nan``).
		
		The algorithm is from Heiman [2]_, pp.394-7.
		
		References
		----------
		.. [1] R. Lowry, "Concepts and Applications of Inferential Statistics",
		       Chapter 14, 2014, http://vassarstats.net/textbook/
		
		.. [2] G.W. Heiman, "Understanding research methods and statistics: An
		       integrated introduction for psychology", Houghton, Mifflin and
		       Company, 2001.
		
		.. [3] G.H. McDonald, "Handbook of Biological Statistics", One-way ANOVA.
		       http://www.biostathandbook.com/onewayanova.html
		
		Examples
		--------
		>>> from scipy.stats import f_oneway
		
		Here are some data [3]_ on a shell measurement (the length of the anterior
		adductor muscle scar, standardized by dividing by length) in the mussel
		Mytilus trossulus from five locations: Tillamook, Oregon; Newport, Oregon;
		Petersburg, Alaska; Magadan, Russia; and Tvarminne, Finland, taken from a
		much larger data set used in McDonald et al. (1991).
		
		>>> tillamook = [0.0571, 0.0813, 0.0831, 0.0976, 0.0817, 0.0859, 0.0735,
		...              0.0659, 0.0923, 0.0836]
		>>> newport = [0.0873, 0.0662, 0.0672, 0.0819, 0.0749, 0.0649, 0.0835,
		...            0.0725]
		>>> petersburg = [0.0974, 0.1352, 0.0817, 0.1016, 0.0968, 0.1064, 0.105]
		>>> magadan = [0.1033, 0.0915, 0.0781, 0.0685, 0.0677, 0.0697, 0.0764,
		...            0.0689]
		>>> tvarminne = [0.0703, 0.1026, 0.0956, 0.0973, 0.1039, 0.1045]
		>>> f_oneway(tillamook, newport, petersburg, magadan, tvarminne)
		F_onewayResult(statistic=7.121019471642447, pvalue=0.0002812242314534544)
		
		`f_oneway` accepts multidimensional input arrays.  When the inputs
		are multidimensional and `axis` is not given, the test is performed
		along the first axis of the input arrays.  For the following data, the
		test is performed three times, once for each column.
		
		>>> a = np.array([[9.87, 9.03, 6.81],
		...               [7.18, 8.35, 7.00],
		...               [8.39, 7.58, 7.68],
		...               [7.45, 6.33, 9.35],
		...               [6.41, 7.10, 9.33],
		...               [8.00, 8.24, 8.44]])
		>>> b = np.array([[6.35, 7.30, 7.16],
		...               [6.65, 6.68, 7.63],
		...               [5.72, 7.73, 6.72],
		...               [7.01, 9.19, 7.41],
		...               [7.75, 7.87, 8.30],
		...               [6.90, 7.97, 6.97]])
		>>> c = np.array([[3.31, 8.77, 1.01],
		...               [8.25, 3.24, 3.62],
		...               [6.32, 8.81, 5.19],
		...               [7.48, 8.83, 8.91],
		...               [8.59, 6.01, 6.07],
		...               [3.07, 9.72, 7.48]])
		>>> F, p = f_oneway(a, b, c)
		>>> F
		array([1.75676344, 0.03701228, 3.76439349])
		>>> p
		array([0.20630784, 0.96375203, 0.04733157])
	**/
	static public function f_oneway(?args:python.VarArgs<Dynamic>, ?axis:Dynamic):Float;
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
		Perform a Fisher exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements must be non-negative integers.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided'
		    * 'less': one-sided
		    * 'greater': one-sided
		
		    See the Notes for more details.
		
		Returns
		-------
		oddsratio : float
		    This is prior odds ratio and not a posterior estimate.
		p_value : float
		    P-value, the probability of obtaining a distribution at least as
		    extreme as the one that was actually observed, assuming that the
		    null hypothesis is true.
		
		See Also
		--------
		chi2_contingency : Chi-square test of independence of variables in a
		    contingency table.  This can be used as an alternative to
		    `fisher_exact` when the numbers in the table are large.
		barnard_exact : Barnard's exact test, which is a more powerful alternative
		    than Fisher's exact test for 2x2 contingency tables.
		boschloo_exact : Boschloo's exact test, which is a more powerful alternative
		    than Fisher's exact test for 2x2 contingency tables.
		
		Notes
		-----
		*Null hypothesis and p-values*
		
		The null hypothesis is that the input table is from the hypergeometric
		distribution with parameters (as used in `hypergeom`)
		``M = a + b + c + d``, ``n = a + b`` and ``N = a + c``, where the
		input table is ``[[a, b], [c, d]]``.  This distribution has support
		``max(0, N + n - M) <= x <= min(N, n)``, or, in terms of the values
		in the input table, ``min(0, a - d) <= x <= a + min(b, c)``.  ``x``
		can be interpreted as the upper-left element of a 2x2 table, so the
		tables in the distribution have form::
		
		    [  x           n - x     ]
		    [N - x    M - (n + N) + x]
		
		For example, if::
		
		    table = [6  2]
		            [1  4]
		
		then the support is ``2 <= x <= 7``, and the tables in the distribution
		are::
		
		    [2 6]   [3 5]   [4 4]   [5 3]   [6 2]  [7 1]
		    [5 0]   [4 1]   [3 2]   [2 3]   [1 4]  [0 5]
		
		The probability of each table is given by the hypergeometric distribution
		``hypergeom.pmf(x, M, n, N)``.  For this example, these are (rounded to
		three significant digits)::
		
		    x       2      3      4      5       6        7
		    p  0.0163  0.163  0.408  0.326  0.0816  0.00466
		
		These can be computed with::
		
		    >>> from scipy.stats import hypergeom
		    >>> table = np.array([[6, 2], [1, 4]])
		    >>> M = table.sum()
		    >>> n = table[0].sum()
		    >>> N = table[:, 0].sum()
		    >>> start, end = hypergeom.support(M, n, N)
		    >>> hypergeom.pmf(np.arange(start, end+1), M, n, N)
		    array([0.01631702, 0.16317016, 0.40792541, 0.32634033, 0.08158508,
		           0.004662  ])
		
		The two-sided p-value is the probability that, under the null hypothesis,
		a random table would have a probability equal to or less than the
		probability of the input table.  For our example, the probability of
		the input table (where ``x = 6``) is 0.0816.  The x values where the
		probability does not exceed this are 2, 6 and 7, so the two-sided p-value
		is ``0.0163 + 0.0816 + 0.00466 ~= 0.10256``::
		
		    >>> from scipy.stats import fisher_exact
		    >>> oddsr, p = fisher_exact(table, alternative='two-sided')
		    >>> p
		    0.10256410256410257
		
		The one-sided p-value for ``alternative='greater'`` is the probability
		that a random table has ``x >= a``, which in our example is ``x >= 6``,
		or ``0.0816 + 0.00466 ~= 0.08626``::
		
		    >>> oddsr, p = fisher_exact(table, alternative='greater')
		    >>> p
		    0.08624708624708627
		
		This is equivalent to computing the survival function of the
		distribution at ``x = 5`` (one less than ``x`` from the input table,
		because we want to include the probability of ``x = 6`` in the sum)::
		
		    >>> hypergeom.sf(5, M, n, N)
		    0.08624708624708627
		
		For ``alternative='less'``, the one-sided p-value is the probability
		that a random table has ``x <= a``, (i.e. ``x <= 6`` in our example),
		or ``0.0163 + 0.163 + 0.408 + 0.326 + 0.0816 ~= 0.9949``::
		
		    >>> oddsr, p = fisher_exact(table, alternative='less')
		    >>> p
		    0.9953379953379957
		
		This is equivalent to computing the cumulative distribution function
		of the distribution at ``x = 6``:
		
		    >>> hypergeom.cdf(6, M, n, N)
		    0.9953379953379957
		
		*Odds ratio*
		
		The calculated odds ratio is different from the one R uses. This SciPy
		implementation returns the (more common) "unconditional Maximum
		Likelihood Estimate", while R uses the "conditional Maximum Likelihood
		Estimate".
		
		Examples
		--------
		Say we spend a few days counting whales and sharks in the Atlantic and
		Indian oceans. In the Atlantic ocean we find 8 whales and 1 shark, in the
		Indian ocean 2 whales and 5 sharks. Then our contingency table is::
		
		            Atlantic  Indian
		    whales     8        2
		    sharks     1        5
		
		We use this table to find the p-value:
		
		>>> from scipy.stats import fisher_exact
		>>> oddsratio, pvalue = fisher_exact([[8, 2], [1, 5]])
		>>> pvalue
		0.0349...
		
		The probability that we would observe this or an even more imbalanced ratio
		by chance is about 3.5%.  A commonly used significance level is 5%--if we
		adopt that, we can therefore conclude that our observed imbalance is
		statistically significant; whales prefer the Atlantic while sharks prefer
		the Indian ocean.
	**/
	static public function fisher_exact(table:Dynamic, ?alternative:Dynamic):Float;
	/**
		Compute the factorial and return as a float
		
		Returns infinity when result is too large for a double
	**/
	static public function float_factorial(n:Dynamic):Dynamic;
	/**
		Compute the Friedman test for repeated measurements.
		
		The Friedman test tests the null hypothesis that repeated measurements of
		the same individuals have the same distribution.  It is often used
		to test for consistency among measurements obtained in different ways.
		For example, if two measurement techniques are used on the same set of
		individuals, the Friedman test can be used to determine if the two
		measurement techniques are consistent.
		
		Parameters
		----------
		measurements1, measurements2, measurements3... : array_like
		    Arrays of measurements.  All of the arrays must have the same number
		    of elements.  At least 3 sets of measurements must be given.
		
		Returns
		-------
		statistic : float
		    The test statistic, correcting for ties.
		pvalue : float
		    The associated p-value assuming that the test statistic has a chi
		    squared distribution.
		
		Notes
		-----
		Due to the assumption that the test statistic has a chi squared
		distribution, the p-value is only reliable for n > 10 and more than
		6 repeated measurements.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Friedman_test
	**/
	static public function friedmanchisquare(?args:python.VarArgs<Dynamic>):Float;
	/**
		greatest common divisor of x and y
	**/
	static public function gcd(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Compute the geometric mean along the specified axis.
		
		Return the geometric average of the array elements.
		That is:  n-th root of (x1 * x2 * ... * xn)
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the geometric mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If dtype is not specified, it defaults to the
		    dtype of a, unless a has an integer dtype with a precision less than
		    that of the default platform integer. In that case, the default
		    platform integer is used.
		weights : array_like, optional
		    The weights array can either be 1-D (in which case its length must be
		    the size of `a` along the given `axis`) or of the same shape as `a`.
		    Default is None, which gives each value a weight of 1.0.
		
		Returns
		-------
		gmean : ndarray
		    See `dtype` parameter above.
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		hmean : Harmonic mean
		
		Notes
		-----
		The geometric average is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity because masked
		arrays automatically mask any non-finite values.
		
		References
		----------
		.. [1] "Weighted Geometric Mean", *Wikipedia*, https://en.wikipedia.org/wiki/Weighted_geometric_mean.
		
		Examples
		--------
		>>> from scipy.stats import gmean
		>>> gmean([1, 4])
		2.0
		>>> gmean([1, 2, 3, 4, 5, 6, 7])
		3.3800151591412964
	**/
	static public function gmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Calculate the geometric standard deviation of an array.
		
		The geometric standard deviation describes the spread of a set of numbers
		where the geometric mean is preferred. It is a multiplicative factor, and
		so a dimensionless quantity.
		
		It is defined as the exponent of the standard deviation of ``log(a)``.
		Mathematically the population geometric standard deviation can be
		evaluated as::
		
		    gstd = exp(std(log(a)))
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		a : array_like
		    An array like object containing the sample data.
		axis : int, tuple or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degree of freedom correction in the calculation of the
		    geometric standard deviation. Default is 1.
		
		Returns
		-------
		ndarray or float
		    An array of the geometric standard deviation. If `axis` is None or `a`
		    is a 1d array a float is returned.
		
		Notes
		-----
		As the calculation requires the use of logarithms the geometric standard
		deviation only supports strictly positive values. Any non-positive or
		infinite values will raise a `ValueError`.
		The geometric standard deviation is sometimes confused with the exponent of
		the standard deviation, ``exp(std(a))``. Instead the geometric standard
		deviation is ``exp(std(log(a)))``.
		The default value for `ddof` is different to the default value (0) used
		by other ddof containing functions, such as ``np.std`` and ``np.nanstd``.
		
		Examples
		--------
		Find the geometric standard deviation of a log-normally distributed sample.
		Note that the standard deviation of the distribution is one, on a
		log scale this evaluates to approximately ``exp(1)``.
		
		>>> from scipy.stats import gstd
		>>> rng = np.random.default_rng()
		>>> sample = rng.lognormal(mean=0, sigma=1, size=1000)
		>>> gstd(sample)
		2.810010162475324
		
		Compute the geometric standard deviation of a multidimensional array and
		of a given axis.
		
		>>> a = np.arange(1, 25).reshape(2, 3, 4)
		>>> gstd(a, axis=None)
		2.2944076136018947
		>>> gstd(a, axis=2)
		array([[1.82424757, 1.22436866, 1.13183117],
		       [1.09348306, 1.07244798, 1.05914985]])
		>>> gstd(a, axis=(1,2))
		array([2.12939215, 1.22120169])
		
		The geometric standard deviation further handles masked arrays.
		
		>>> a = np.arange(1, 25).reshape(2, 3, 4)
		>>> ma = np.ma.masked_where(a > 16, a)
		>>> ma
		masked_array(
		  data=[[[1, 2, 3, 4],
		         [5, 6, 7, 8],
		         [9, 10, 11, 12]],
		        [[13, 14, 15, 16],
		         [--, --, --, --],
		         [--, --, --, --]]],
		  mask=[[[False, False, False, False],
		         [False, False, False, False],
		         [False, False, False, False]],
		        [[False, False, False, False],
		         [ True,  True,  True,  True],
		         [ True,  True,  True,  True]]],
		  fill_value=999999)
		>>> gstd(ma, axis=2)
		masked_array(
		  data=[[1.8242475707663655, 1.2243686572447428, 1.1318311657788478],
		        [1.0934830582350938, --, --]],
		  mask=[[False, False, False],
		        [False,  True,  True]],
		  fill_value=999999)
	**/
	static public function gstd(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Compute the geometric standard score.
		
		Compute the geometric z score of each strictly positive value in the
		sample, relative to the geometric mean and standard deviation.
		Mathematically the geometric z score can be evaluated as::
		
		    gzscore = log(a/gmu) / log(gsigma)
		
		where ``gmu`` (resp. ``gsigma``) is the geometric mean (resp. standard
		deviation).
		
		Parameters
		----------
		a : array_like
		    Sample data.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.  Note that when the value is 'omit',
		    nans in the input also propagate to the output, but they do not affect
		    the geometric z scores computed for the non-nan values.
		
		Returns
		-------
		gzscore : array_like
		    The geometric z scores, standardized by geometric mean and geometric
		    standard deviation of input array `a`.
		
		See Also
		--------
		gmean : Geometric mean
		gstd : Geometric standard deviation
		zscore : Standard score
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses ``asanyarray`` instead of
		``asarray`` for parameters).
		
		.. versionadded:: 1.8
		
		Examples
		--------
		Draw samples from a log-normal distribution:
		
		>>> from scipy.stats import zscore, gzscore
		>>> import matplotlib.pyplot as plt
		
		>>> rng = np.random.default_rng()
		>>> mu, sigma = 3., 1.  # mean and standard deviation
		>>> x = rng.lognormal(mu, sigma, size=500)
		
		Display the histogram of the samples:
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(x, 50)
		>>> plt.show()
		
		Display the histogram of the samples standardized by the classical zscore.
		Distribution is rescaled but its shape is unchanged.
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(zscore(x), 50)
		>>> plt.show()
		
		Demonstrate that the distribution of geometric zscores is rescaled and
		quasinormal:
		
		>>> fig, ax = plt.subplots()
		>>> ax.hist(gzscore(x), 50)
		>>> plt.show()
	**/
	static public function gzscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculate the harmonic mean along the specified axis.
		
		That is:  n / (1/x1 + 1/x2 + ... + 1/xn)
		
		Parameters
		----------
		a : array_like
		    Input array, masked array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the harmonic mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If `dtype` is not specified, it defaults to the
		    dtype of `a`, unless `a` has an integer `dtype` with a precision less
		    than that of the default platform integer. In that case, the default
		    platform integer is used.
		
		Returns
		-------
		hmean : ndarray
		    See `dtype` parameter above.
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		gmean : Geometric mean
		
		Notes
		-----
		The harmonic mean is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity.
		
		Examples
		--------
		>>> from scipy.stats import hmean
		>>> hmean([1, 4])
		1.6000000000000001
		>>> hmean([1, 2, 3, 4, 5, 6, 7])
		2.6997245179063363
	**/
	static public function hmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Compute the interquartile range of the data along the specified axis.
		
		The interquartile range (IQR) is the difference between the 75th and
		25th percentile of the data. It is a measure of the dispersion
		similar to standard deviation or variance, but is much more robust
		against outliers [2]_.
		
		The ``rng`` parameter allows this function to compute other
		percentile ranges than the actual IQR. For example, setting
		``rng=(0, 100)`` is equivalent to `numpy.ptp`.
		
		The IQR of an empty array is `np.nan`.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or sequence of int, optional
		    Axis along which the range is computed. The default is to
		    compute the IQR for the entire array.
		rng : Two-element sequence containing floats in range of [0,100] optional
		    Percentiles over which to compute the range. Each must be
		    between 0 and 100, inclusive. The default is the true IQR:
		    ``(25, 75)``. The order of the elements is not important.
		scale : scalar or str, optional
		    The numerical value of scale will be divided out of the final
		    result. The following string values are recognized:
		
		      * 'raw' : No scaling, just return the raw IQR.
		        **Deprecated!**  Use ``scale=1`` instead.
		      * 'normal' : Scale by
		        :math:`2 \sqrt{2} erf^{-1}(\frac{1}{2}) \approx 1.349`.
		
		    The default is 1.0. The use of ``scale='raw'`` is deprecated.
		    Array-like `scale` is also allowed, as long
		    as it broadcasts correctly to the output such that
		    ``out / scale`` is a valid operation. The output dimensions
		    depend on the input array, `x`, the `axis` argument, and the
		    `keepdims` flag.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		interpolation : str, optional
		
		    Specifies the interpolation method to use when the percentile
		    boundaries lie between two data points ``i`` and ``j``.
		    The following options are available (default is 'linear'):
		
		      * 'linear': ``i + (j - i)*fraction``, where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``.
		      * 'lower': ``i``.
		      * 'higher': ``j``.
		      * 'nearest': ``i`` or ``j`` whichever is nearest.
		      * 'midpoint': ``(i + j)/2``.
		
		    For NumPy >= 1.22.0, the additional options provided by the ``method``
		    keyword of `numpy.percentile` are also valid.
		
		keepdims : bool, optional
		    If this is set to True, the reduced axes are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array `x`.
		
		Returns
		-------
		iqr : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var
		
		References
		----------
		.. [1] "Interquartile range" https://en.wikipedia.org/wiki/Interquartile_range
		.. [2] "Robust measures of scale" https://en.wikipedia.org/wiki/Robust_measures_of_scale
		.. [3] "Quantile" https://en.wikipedia.org/wiki/Quantile
		
		Examples
		--------
		>>> from scipy.stats import iqr
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> iqr(x)
		4.0
		>>> iqr(x, axis=0)
		array([ 3.5,  2.5,  1.5])
		>>> iqr(x, axis=1)
		array([ 3.,  1.])
		>>> iqr(x, axis=1, keepdims=True)
		array([[ 3.],
		       [ 1.]])
	**/
	static public function iqr(x:Dynamic, ?axis:Dynamic, ?rng:Dynamic, ?scale:Dynamic, ?nan_policy:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		`itemfreq` is deprecated!
		`itemfreq` is deprecated and will be removed in a future version. Use instead `np.unique(..., return_counts=True)`
		
		Return a 2-D array of item frequencies.
		
		Parameters
		----------
		a : (N,) array_like
		    Input array.
		
		Returns
		-------
		itemfreq : (K, 2) ndarray
		    A 2-D frequency table.  Column 1 contains sorted, unique values from
		    `a`, column 2 contains their respective counts.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([1, 1, 5, 0, 1, 2, 2, 0, 1, 4])
		>>> stats.itemfreq(a)
		array([[ 0.,  2.],
		       [ 1.,  4.],
		       [ 2.,  2.],
		       [ 4.,  1.],
		       [ 5.,  1.]])
		>>> np.bincount(a)
		array([2, 4, 2, 0, 1, 1])
		
		>>> stats.itemfreq(a/10.)
		array([[ 0. ,  2. ],
		       [ 0.1,  4. ],
		       [ 0.2,  2. ],
		       [ 0.4,  1. ],
		       [ 0.5,  1. ]])
	**/
	static public function itemfreq(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Jarque-Bera goodness of fit test on sample data.
		
		The Jarque-Bera test tests whether the sample data has the skewness and
		kurtosis matching a normal distribution.
		
		Note that this test only works for a large enough number of data samples
		(>2000) as the test statistic asymptotically has a Chi-squared distribution
		with 2 degrees of freedom.
		
		Parameters
		----------
		x : array_like
		    Observations of a random variable.
		
		Returns
		-------
		jb_value : float
		    The test statistic.
		p : float
		    The p-value for the hypothesis test.
		
		References
		----------
		.. [1] Jarque, C. and Bera, A. (1980) "Efficient tests for normality,
		       homoscedasticity and serial independence of regression residuals",
		       6 Econometric Letters 255-259.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> x = rng.normal(0, 1, 100000)
		>>> jarque_bera_test = stats.jarque_bera(x)
		>>> jarque_bera_test
		Jarque_beraResult(statistic=3.3415184718131554, pvalue=0.18810419594996775)
		>>> jarque_bera_test.statistic
		3.3415184718131554
		>>> jarque_bera_test.pvalue
		0.18810419594996775
	**/
	static public function jarque_bera(x:Dynamic):Float;
	/**
		Calculate Kendall's tau, a correlation measure for ordinal data.
		
		Kendall's tau is a measure of the correspondence between two rankings.
		Values close to 1 indicate strong agreement, and values close to -1
		indicate strong disagreement. This implements two variants of Kendall's
		tau: tau-b (the default) and tau-c (also known as Stuart's tau-c). These
		differ only in how they are normalized to lie within the range -1 to 1;
		the hypothesis tests (their p-values) are identical. Kendall's original
		tau-a is not implemented separately because both tau-b and tau-c reduce
		to tau-a in the absence of ties.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of rankings, of the same shape. If arrays are not 1-D, they
		    will be flattened to 1-D.
		initial_lexsort : bool, optional
		    Unused (deprecated).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		method : {'auto', 'asymptotic', 'exact'}, optional
		    Defines which method is used to calculate the p-value [5]_.
		    The following options are available (default is 'auto'):
		
		      * 'auto': selects the appropriate method based on a trade-off
		        between speed and accuracy
		      * 'asymptotic': uses a normal approximation valid for large samples
		      * 'exact': computes the exact p-value, but can only be used if no ties
		        are present. As the sample size increases, the 'exact' computation
		        time may grow and the result may lose some precision.
		
		variant: {'b', 'c'}, optional
		    Defines which variant of Kendall's tau is returned. Default is 'b'.
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the rank correlation is nonzero
		    * 'less': the rank correlation is negative (less than zero)
		    * 'greater':  the rank correlation is positive (greater than zero)
		
		Returns
		-------
		correlation : float
		   The tau statistic.
		pvalue : float
		   The p-value for a hypothesis test whose null hypothesis is
		   an absence of association, tau = 0.
		
		See Also
		--------
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		weightedtau : Computes a weighted version of Kendall's tau.
		
		Notes
		-----
		The definition of Kendall's tau that is used is [2]_::
		
		  tau_b = (P - Q) / sqrt((P + Q + T) * (P + Q + U))
		
		  tau_c = 2 (P - Q) / (n**2 * (m - 1) / m)
		
		where P is the number of concordant pairs, Q the number of discordant
		pairs, T the number of ties only in `x`, and U the number of ties only in
		`y`.  If a tie occurs for the same pair in both `x` and `y`, it is not
		added to either T or U. n is the total number of samples, and m is the
		number of unique values in either `x` or `y`, whichever is smaller.
		
		References
		----------
		.. [1] Maurice G. Kendall, "A New Measure of Rank Correlation", Biometrika
		       Vol. 30, No. 1/2, pp. 81-93, 1938.
		.. [2] Maurice G. Kendall, "The treatment of ties in ranking problems",
		       Biometrika Vol. 33, No. 3, pp. 239-251. 1945.
		.. [3] Gottfried E. Noether, "Elements of Nonparametric Statistics", John
		       Wiley & Sons, 1967.
		.. [4] Peter M. Fenwick, "A new data structure for cumulative frequency
		       tables", Software: Practice and Experience, Vol. 24, No. 3,
		       pp. 327-336, 1994.
		.. [5] Maurice G. Kendall, "Rank Correlation Methods" (4th Edition),
		       Charles Griffin & Co., 1970.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [12, 2, 1, 12, 2]
		>>> x2 = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.kendalltau(x1, x2)
		>>> tau
		-0.47140452079103173
		>>> p_value
		0.2827454599327748
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?initial_lexsort:Dynamic, ?nan_policy:Dynamic, ?method:Dynamic, ?variant:Dynamic, ?alternative:Dynamic):Float;
	/**
		Compute the Kruskal-Wallis H-test for independent samples.
		
		The Kruskal-Wallis H-test tests the null hypothesis that the population
		median of all of the groups are equal.  It is a non-parametric version of
		ANOVA.  The test works on 2 or more independent samples, which may have
		different sizes.  Note that rejecting the null hypothesis does not
		indicate which of the groups differs.  Post hoc comparisons between
		groups are required to determine which groups are different.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    Two or more arrays with the sample measurements can be given as
		    arguments. Samples must be one-dimensional.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		
		Returns
		-------
		statistic : float
		    The Kruskal-Wallis H statistic, corrected for ties.
		pvalue : float
		    The p-value for the test using the assumption that H has a chi
		    square distribution. The p-value returned is the survival function of
		    the chi square distribution evaluated at H.
		
		See Also
		--------
		
		:func:`f_oneway`
		    1-way ANOVA.
		:func:`mannwhitneyu`
		    Mann-Whitney rank test on two samples.
		:func:`friedmanchisquare`
		    Friedman test for repeated measurements.
		
		
		Notes
		-----
		Due to the assumption that H has a chi square distribution, the number
		of samples in each group must not be too small.  A typical rule is
		that each sample must have at least 5 measurements.
		
		References
		----------
		.. [1] W. H. Kruskal & W. W. Wallis, "Use of Ranks in
		   One-Criterion Variance Analysis", Journal of the American Statistical
		   Association, Vol. 47, Issue 260, pp. 583-621, 1952.
		.. [2] https://en.wikipedia.org/wiki/Kruskal-Wallis_one-way_analysis_of_variance
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [1, 3, 5, 7, 9]
		>>> y = [2, 4, 6, 8, 10]
		>>> stats.kruskal(x, y)
		KruskalResult(statistic=0.2727272727272734, pvalue=0.6015081344405895)
		
		>>> x = [1, 1, 1]
		>>> y = [2, 2, 2]
		>>> z = [2, 2]
		>>> stats.kruskal(x, y, z)
		KruskalResult(statistic=7.0, pvalue=0.0301973834223185)
	**/
	static public function kruskal(?args:python.VarArgs<Dynamic>, ?nan_policy:Dynamic, ?axis:Dynamic):Float;
	/**
		Performs the one-sample Kolmogorov-Smirnov test for goodness of fit.
		
		This test compares the underlying distribution F(x) of a sample
		against a given continuous distribution G(x). See Notes for a description
		of the available null and alternative hypotheses.
		
		Parameters
		----------
		x : array_like
		    a 1-D array of observations of iid random variables.
		cdf : callable
		    callable used to calculate the cdf.
		args : tuple, sequence, optional
		    Distribution parameters, used with `cdf`.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'approx', 'asymp'}, optional
		    Defines the distribution used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : selects one of the other options.
		      * 'exact' : uses the exact distribution of test statistic.
		      * 'approx' : approximates the two-sided probability with twice
		        the one-sided probability
		      * 'asymp': uses asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D- (depending on the value
		    of 'alternative')
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		ks_2samp, kstest
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.ks_1samp(x, stats.norm.cdf)
		(0.44435602715924361, 0.038850142705171065)
		
		>>> stats.ks_1samp(stats.norm.rvs(size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.165471391799..., pvalue=0.007331283245...)
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that `` CDF(x) < norm.cdf(x)``:
		
		>>> x = stats.norm.rvs(loc=0.2, size=100, random_state=rng)
		>>> stats.ks_1samp(x, stats.norm.cdf, alternative='less')
		KstestResult(statistic=0.100203351482..., pvalue=0.125544644447...)
		
		Reject null hypothesis in favor of alternative hypothesis: less
		
		>>> stats.ks_1samp(x, stats.norm.cdf, alternative='greater')
		KstestResult(statistic=0.018749806388..., pvalue=0.920581859791...)
		
		Reject null hypothesis in favor of alternative hypothesis: greater
		
		>>> stats.ks_1samp(x, stats.norm.cdf)
		KstestResult(statistic=0.100203351482..., pvalue=0.250616879765...)
		
		Don't reject null hypothesis in favor of alternative hypothesis: two-sided
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> stats.ks_1samp(stats.t.rvs(100,size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.064273776544..., pvalue=0.778737758305...)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> stats.ks_1samp(stats.t.rvs(3,size=100, random_state=rng),
		...                stats.norm.cdf)
		KstestResult(statistic=0.128678487493..., pvalue=0.066569081515...)
	**/
	static public function ks_1samp(x:Dynamic, cdf:Dynamic, ?args:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Performs the two-sample Kolmogorov-Smirnov test for goodness of fit.
		
		This test compares the underlying continuous distributions F(x) and G(x)
		of two independent samples.  See Notes for a description
		of the available null and alternative hypotheses.
		
		Parameters
		----------
		data1, data2 : array_like, 1-Dimensional
		    Two arrays of sample observations assumed to be drawn from a continuous
		    distribution, sample sizes can be different.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'asymp'}, optional
		    Defines the method used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : use 'exact' for small size arrays, 'asymp' for large
		      * 'exact' : use exact distribution of test statistic
		      * 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS statistic.
		pvalue : float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		kstest, ks_1samp, epps_singleton_2samp, anderson_ksamp
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		
		If the KS statistic is small or the p-value is high, then we cannot
		reject the null hypothesis in favor of the alternative.
		
		If the mode is 'auto', the computation is exact if the sample sizes are
		less than 10000.  For larger sizes, the computation uses the
		Kolmogorov-Smirnov distributions to compute an approximate value.
		
		The 'two-sided' 'exact' computation computes the complementary probability
		and then subtracts from 1.  As such, the minimum probability it can return
		is about 1e-16.  While the algorithm itself is exact, numerical
		errors may accumulate for large sample sizes.   It is most suited to
		situations in which one of the sample sizes is only a few thousand.
		
		We generally follow Hodges' treatment of Drion/Gnedenko/Korolyuk [1]_.
		
		References
		----------
		.. [1] Hodges, J.L. Jr.,  "The Significance Probability of the Smirnov
		       Two-Sample Test," Arkiv fiur Matematik, 3, No. 43 (1958), 469-86.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> n1 = 200  # size of first sample
		>>> n2 = 300  # size of second sample
		
		For a different distribution, we can reject the null hypothesis since the
		pvalue is below 1%:
		
		>>> rvs1 = stats.norm.rvs(size=n1, loc=0., scale=1, random_state=rng)
		>>> rvs2 = stats.norm.rvs(size=n2, loc=0.5, scale=1.5, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs2)
		 KstestResult(statistic=0.24833333333333332, pvalue=5.846586728086578e-07)
		
		For a slightly different distribution, we cannot reject the null hypothesis
		at a 10% or lower alpha since the p-value at 0.144 is higher than 10%
		
		>>> rvs3 = stats.norm.rvs(size=n2, loc=0.01, scale=1.0, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs3)
		KstestResult(statistic=0.07833333333333334, pvalue=0.4379658456442945)
		
		For an identical distribution, we cannot reject the null hypothesis since
		the p-value is high, 41%:
		
		>>> rvs4 = stats.norm.rvs(size=n2, loc=0.0, scale=1.0, random_state=rng)
		>>> stats.ks_2samp(rvs1, rvs4)
		KstestResult(statistic=0.12166666666666667, pvalue=0.05401863039081145)
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Performs the (one-sample or two-sample) Kolmogorov-Smirnov test for
		goodness of fit.
		
		The one-sample test compares the underlying distribution F(x) of a sample
		against a given distribution G(x). The two-sample test compares the
		underlying distributions of two independent samples. Both tests are valid
		only for continuous distributions.
		
		Parameters
		----------
		rvs : str, array_like, or callable
		    If an array, it should be a 1-D array of observations of random
		    variables.
		    If a callable, it should be a function to generate random variables;
		    it is required to have a keyword argument `size`.
		    If a string, it should be the name of a distribution in `scipy.stats`,
		    which will be used to generate random variables.
		cdf : str, array_like or callable
		    If array_like, it should be a 1-D array of observations of random
		    variables, and the two-sample test is performed
		    (and rvs must be array_like).
		    If a callable, that callable is used to calculate the cdf.
		    If a string, it should be the name of a distribution in `scipy.stats`,
		    which will be used as the cdf function.
		args : tuple, sequence, optional
		    Distribution parameters, used if `rvs` or `cdf` are strings or
		    callables.
		N : int, optional
		    Sample size if `rvs` is string or callable.  Default is 20.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the null and alternative hypotheses. Default is 'two-sided'.
		    Please see explanations in the Notes below.
		mode : {'auto', 'exact', 'approx', 'asymp'}, optional
		    Defines the distribution used for calculating the p-value.
		    The following options are available (default is 'auto'):
		
		      * 'auto' : selects one of the other options.
		      * 'exact' : uses the exact distribution of test statistic.
		      * 'approx' : approximates the two-sided probability with twice the
		        one-sided probability
		      * 'asymp': uses asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D-.
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		See Also
		--------
		ks_2samp
		
		Notes
		-----
		There are three options for the null and corresponding alternative
		hypothesis that can be selected using the `alternative` parameter.
		
		- `two-sided`: The null hypothesis is that the two distributions are
		  identical, F(x)=G(x) for all x; the alternative is that they are not
		  identical.
		
		- `less`: The null hypothesis is that F(x) >= G(x) for all x; the
		  alternative is that F(x) < G(x) for at least one x.
		
		- `greater`: The null hypothesis is that F(x) <= G(x) for all x; the
		  alternative is that F(x) > G(x) for at least one x.
		
		Note that the alternative hypotheses describe the *CDFs* of the
		underlying distributions, not the observed values. For example,
		suppose x1 ~ F and x2 ~ G. If F(x) > G(x) for all x, the values in
		x1 tend to be less than those in x2.
		
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.kstest(x, 'norm')
		KstestResult(statistic=0.444356027159..., pvalue=0.038850140086...)
		
		>>> stats.kstest(stats.norm.rvs(size=100, random_state=rng), stats.norm.cdf)
		KstestResult(statistic=0.165471391799..., pvalue=0.007331283245...)
		
		The above lines are equivalent to:
		
		>>> stats.kstest(stats.norm.rvs, 'norm', N=100)
		KstestResult(statistic=0.113810164200..., pvalue=0.138690052319...)  # may vary
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that ``CDF(x) < norm.cdf(x)``:
		
		>>> x = stats.norm.rvs(loc=0.2, size=100, random_state=rng)
		>>> stats.kstest(x, 'norm', alternative='less')
		KstestResult(statistic=0.1002033514..., pvalue=0.1255446444...)
		
		Reject null hypothesis in favor of alternative hypothesis: less
		
		>>> stats.kstest(x, 'norm', alternative='greater')
		KstestResult(statistic=0.018749806388..., pvalue=0.920581859791...)
		
		Don't reject null hypothesis in favor of alternative hypothesis: greater
		
		>>> stats.kstest(x, 'norm')
		KstestResult(statistic=0.100203351482..., pvalue=0.250616879765...)
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> stats.kstest(stats.t.rvs(100, size=100, random_state=rng), 'norm')
		KstestResult(statistic=0.064273776544..., pvalue=0.778737758305...)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> stats.kstest(stats.t.rvs(3, size=100, random_state=rng), 'norm')
		KstestResult(statistic=0.128678487493..., pvalue=0.066569081515...)
	**/
	static public function kstest(rvs:Dynamic, cdf:Dynamic, ?args:Dynamic, ?N:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Compute the kurtosis (Fisher or Pearson) of a dataset.
		
		Kurtosis is the fourth central moment divided by the square of the
		variance. If Fisher's definition is used, then 3.0 is subtracted from
		the result to give 0.0 for a normal distribution.
		
		If bias is False then the kurtosis is calculated using k statistics to
		eliminate bias coming from biased moment estimators
		
		Use `kurtosistest` to see if result is close enough to normal.
		
		Parameters
		----------
		a : array
		    Data for which the kurtosis is calculated.
		axis : int or None, optional
		    Axis along which the kurtosis is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		fisher : bool, optional
		    If True, Fisher's definition is used (normal ==> 0.0). If False,
		    Pearson's definition is used (normal ==> 3.0).
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		kurtosis : array
		    The kurtosis of values along an axis. If all values are equal,
		    return -3 for Fisher's definition and 0 for Pearson's definition.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		
		Examples
		--------
		In Fisher's definiton, the kurtosis of the normal distribution is zero.
		In the following example, the kurtosis is close to zero, because it was
		calculated from the dataset, not from the continuous distribution.
		
		>>> from scipy.stats import norm, kurtosis
		>>> data = norm.rvs(size=1000, random_state=3)
		>>> kurtosis(data)
		-0.06928694200380558
		
		The distribution with a higher kurtosis has a heavier tail.
		The zero valued kurtosis of the normal distribution in Fisher's definition
		can serve as a reference point.
		
		>>> import matplotlib.pyplot as plt
		>>> import scipy.stats as stats
		>>> from scipy.stats import kurtosis
		
		>>> x = np.linspace(-5, 5, 100)
		>>> ax = plt.subplot()
		>>> distnames = ['laplace', 'norm', 'uniform']
		
		>>> for distname in distnames:
		...     if distname == 'uniform':
		...         dist = getattr(stats, distname)(loc=-2, scale=4)
		...     else:
		...         dist = getattr(stats, distname)
		...     data = dist.rvs(size=1000)
		...     kur = kurtosis(data, fisher=True)
		...     y = dist.pdf(x)
		...     ax.plot(x, y, label="{}, {}".format(distname, round(kur, 3)))
		...     ax.legend()
		
		The Laplace distribution has a heavier tail than the normal distribution.
		The uniform distribution (which has negative kurtosis) has the thinnest
		tail.
	**/
	static public function kurtosis(a:Dynamic, ?axis:Dynamic, ?fisher:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Array<Dynamic>;
	/**
		Test whether a dataset has normal kurtosis.
		
		This function tests the null hypothesis that the kurtosis
		of the population from which the sample was drawn is that
		of the normal distribution.
		
		Parameters
		----------
		a : array
		    Array of the sample data.
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the kurtosis of the distribution underlying the sample
		      is different from that of the normal distribution
		    * 'less': the kurtosis of the distribution underlying the sample
		      is less than that of the normal distribution
		    * 'greater': the kurtosis of the distribution underlying the sample
		      is greater than that of the normal distribution
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The p-value for the hypothesis test.
		
		Notes
		-----
		Valid only for n>20. This function uses the method described in [1]_.
		
		References
		----------
		.. [1] see e.g. F. J. Anscombe, W. J. Glynn, "Distribution of the kurtosis
		   statistic b2 for normal samples", Biometrika, vol. 70, pp. 227-234, 1983.
		
		Examples
		--------
		>>> from scipy.stats import kurtosistest
		>>> kurtosistest(list(range(20)))
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.08804338332528348)
		>>> kurtosistest(list(range(20)), alternative='less')
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.04402169166264174)
		>>> kurtosistest(list(range(20)), alternative='greater')
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.9559783083373583)
		
		>>> rng = np.random.default_rng()
		>>> s = rng.normal(0, 1, 1000)
		>>> kurtosistest(s)
		KurtosistestResult(statistic=-1.475047944490622, pvalue=0.14019965402996987)
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Float;
	/**
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.  If
		    only `x` is given (and ``y=None``), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension. In
		    the case where ``y=None`` and `x` is a 2x2 array, ``linregress(x)`` is
		    equivalent to ``linregress(x[0], x[1])``.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the slope of the regression line is nonzero
		    * 'less': the slope of the regression line is less than zero
		    * 'greater':  the slope of the regression line is greater than zero
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		result : ``LinregressResult`` instance
		    The return value is an object with the following attributes:
		
		    slope : float
		        Slope of the regression line.
		    intercept : float
		        Intercept of the regression line.
		    rvalue : float
		        The Pearson correlation coefficient. The square of ``rvalue``
		        is equal to the coefficient of determination.
		    pvalue : float
		        The p-value for a hypothesis test whose null hypothesis is
		        that the slope is zero, using Wald Test with t-distribution of
		        the test statistic. See `alternative` above for alternative
		        hypotheses.
		    stderr : float
		        Standard error of the estimated slope (gradient), under the
		        assumption of residual normality.
		    intercept_stderr : float
		        Standard error of the estimated intercept, under the assumption
		        of residual normality.
		
		See Also
		--------
		scipy.optimize.curve_fit :
		    Use non-linear least squares to fit a function to data.
		scipy.optimize.leastsq :
		    Minimize the sum of squares of a set of equations.
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in `x`,
		the corresponding value in `y` is masked.
		
		For compatibility with older versions of SciPy, the return value acts
		like a ``namedtuple`` of length 5, with fields ``slope``, ``intercept``,
		``rvalue``, ``pvalue`` and ``stderr``, so one can continue to write::
		
		    slope, intercept, r, p, se = linregress(x, y)
		
		With that style, however, the standard error of the intercept is not
		available.  To have access to all the computed values, including the
		standard error of the intercept, use the return value as an object
		with attributes, e.g.::
		
		    result = linregress(x, y)
		    print(result.intercept, result.intercept_stderr)
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		Generate some data:
		
		>>> x = rng.random(10)
		>>> y = 1.6*x + rng.random(10)
		
		Perform the linear regression:
		
		>>> res = stats.linregress(x, y)
		
		Coefficient of determination (R-squared):
		
		>>> print(f"R-squared: {res.rvalue**2:.6f}")
		R-squared: 0.717533
		
		Plot the data along with the fitted line:
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, res.intercept + res.slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
		
		Calculate 95% confidence interval on slope and intercept:
		
		>>> # Two-sided inverse Students t-distribution
		>>> # p - probability, df - degrees of freedom
		>>> from scipy.stats import t
		>>> tinv = lambda p, df: abs(t.ppf(p/2, df))
		
		>>> ts = tinv(0.05, len(x)-2)
		>>> print(f"slope (95%): {res.slope:.6f} +/- {ts*res.stderr:.6f}")
		slope (95%): 1.453392 +/- 0.743465
		>>> print(f"intercept (95%): {res.intercept:.6f}"
		...       f" +/- {ts*res.intercept_stderr:.6f}")
		intercept (95%): 0.616950 +/- 0.544475
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Return a new dynamically created dataclass.
		
		The dataclass name will be 'cls_name'.  'fields' is an iterable
		of either (name), (name, type) or (name, type, Field) objects. If type is
		omitted, use the string 'typing.Any'.  Field objects are created by
		the equivalent of calling 'field(name, type [, Field-info])'.
		
		  C = make_dataclass('C', ['x', ('y', int), ('z', int, field(init=False))], bases=(Base,))
		
		is equivalent to:
		
		  @dataclass
		  class C(Base):
		      x: 'typing.Any'
		      y: int
		      z: int = field(init=False)
		
		For the bases and namespace parameters, see the builtin type() function.
		
		The parameters init, repr, eq, order, unsafe_hash, and frozen are passed to
		dataclass().
	**/
	static public function make_dataclass(cls_name:Dynamic, fields:Dynamic, ?bases:Dynamic, ?namespace:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Compute the median absolute deviation of the data along the given axis.
		
		The median absolute deviation (MAD, [1]_) computes the median over the
		absolute deviations from the median. It is a measure of dispersion
		similar to the standard deviation but more robust to outliers [2]_.
		
		The MAD of an empty array is ``np.nan``.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the range is computed. Default is 0. If None, compute
		    the MAD over the entire array.
		center : callable, optional
		    A function that will return the central value. The default is to use
		    np.median. Any user defined function used will need to have the
		    function signature ``func(arr, axis)``.
		scale : scalar or str, optional
		    The numerical value of scale will be divided out of the final
		    result. The default is 1.0. The string "normal" is also accepted,
		    and results in `scale` being the inverse of the standard normal
		    quantile function at 0.75, which is approximately 0.67449.
		    Array-like scale is also allowed, as long as it broadcasts correctly
		    to the output such that ``out / scale`` is a valid operation. The
		    output dimensions depend on the input array, `x`, and the `axis`
		    argument.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mad : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var, numpy.median, scipy.stats.iqr, scipy.stats.tmean,
		scipy.stats.tstd, scipy.stats.tvar
		
		Notes
		-----
		The `center` argument only affects the calculation of the central value
		around which the MAD is calculated. That is, passing in ``center=np.mean``
		will calculate the MAD around the mean - it will not calculate the *mean*
		absolute deviation.
		
		The input array may contain `inf`, but if `center` returns `inf`, the
		corresponding MAD for that data will be `nan`.
		
		References
		----------
		.. [1] "Median absolute deviation",
		       https://en.wikipedia.org/wiki/Median_absolute_deviation
		.. [2] "Robust measures of scale",
		       https://en.wikipedia.org/wiki/Robust_measures_of_scale
		
		Examples
		--------
		When comparing the behavior of `median_abs_deviation` with ``np.std``,
		the latter is affected when we change a single value of an array to have an
		outlier value while the MAD hardly changes:
		
		>>> from scipy import stats
		>>> x = stats.norm.rvs(size=100, scale=1, random_state=123456)
		>>> x.std()
		0.9973906394005013
		>>> stats.median_abs_deviation(x)
		0.82832610097857
		>>> x[0] = 345.6
		>>> x.std()
		34.42304872314415
		>>> stats.median_abs_deviation(x)
		0.8323442311590675
		
		Axis handling example:
		
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> stats.median_abs_deviation(x)
		array([3.5, 2.5, 1.5])
		>>> stats.median_abs_deviation(x, axis=None)
		2.0
		
		Scale normal example:
		
		>>> x = stats.norm.rvs(size=1000000, scale=2, random_state=123456)
		>>> stats.median_abs_deviation(x)
		1.3487398527041636
		>>> stats.median_abs_deviation(x, scale='normal')
		1.9996446978061115
	**/
	static public function median_abs_deviation(x:Dynamic, ?axis:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		`median_absolute_deviation` is deprecated, use `median_abs_deviation` instead!
		
		To preserve the existing default behavior, use
		`scipy.stats.median_abs_deviation(..., scale=1/1.4826)`.
		The value 1.4826 is not numerically precise for scaling
		with a normal distribution. For a numerically precise value, use
		`scipy.stats.median_abs_deviation(..., scale='normal')`.
		
		
		Compute the median absolute deviation of the data along the given axis.
		
		The median absolute deviation (MAD, [1]_) computes the median over the
		absolute deviations from the median. It is a measure of dispersion
		similar to the standard deviation but more robust to outliers [2]_.
		
		The MAD of an empty array is ``np.nan``.
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the range is computed. Default is 0. If None, compute
		    the MAD over the entire array.
		center : callable, optional
		    A function that will return the central value. The default is to use
		    np.median. Any user defined function used will need to have the function
		    signature ``func(arr, axis)``.
		scale : int, optional
		    The scaling factor applied to the MAD. The default scale (1.4826)
		    ensures consistency with the standard deviation for normally distributed
		    data.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mad : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var, numpy.median, scipy.stats.iqr, scipy.stats.tmean,
		scipy.stats.tstd, scipy.stats.tvar
		
		Notes
		-----
		The `center` argument only affects the calculation of the central value
		around which the MAD is calculated. That is, passing in ``center=np.mean``
		will calculate the MAD around the mean - it will not calculate the *mean*
		absolute deviation.
		
		References
		----------
		.. [1] "Median absolute deviation",
		       https://en.wikipedia.org/wiki/Median_absolute_deviation
		.. [2] "Robust measures of scale",
		       https://en.wikipedia.org/wiki/Robust_measures_of_scale
		
		Examples
		--------
		When comparing the behavior of `median_absolute_deviation` with ``np.std``,
		the latter is affected when we change a single value of an array to have an
		outlier value while the MAD hardly changes:
		
		>>> from scipy import stats
		>>> x = stats.norm.rvs(size=100, scale=1, random_state=123456)
		>>> x.std()
		0.9973906394005013
		>>> stats.median_absolute_deviation(x)
		1.2280762773108278
		>>> x[0] = 345.6
		>>> x.std()
		34.42304872314415
		>>> stats.median_absolute_deviation(x)
		1.2340335571164334
		
		Axis handling example:
		
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> stats.median_absolute_deviation(x)
		array([5.1891, 3.7065, 2.2239])
		>>> stats.median_absolute_deviation(x, axis=None)
		2.9652
	**/
	static public function median_absolute_deviation(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an array of the modal (most common) value in the passed array.
		
		If there is more than one such value, only the smallest is returned.
		The bin-count for the modal bins is also returned.
		
		Parameters
		----------
		a : array_like
		    n-dimensional array of which to find mode(s).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		mode : ndarray
		    Array of modal values.
		count : ndarray
		    Array of counts for each mode.
		
		Examples
		--------
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 2, 1, 7],
		...               [8, 1, 8, 4],
		...               [5, 3, 0, 5],
		...               [4, 7, 5, 9]])
		>>> from scipy import stats
		>>> stats.mode(a)
		ModeResult(mode=array([[3, 1, 0, 0]]), count=array([[1, 1, 1, 1]]))
		
		To get mode of whole array, specify ``axis=None``:
		
		>>> stats.mode(a, axis=None)
		ModeResult(mode=array([3]), count=array([3]))
	**/
	static public function mode(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculate the nth moment about the mean for a sample.
		
		A moment is a specific quantitative measure of the shape of a set of
		points. It is often used to calculate coefficients of skewness and kurtosis
		due to its close relationship with them.
		
		Parameters
		----------
		a : array_like
		   Input array.
		moment : int or array_like of ints, optional
		   Order of central moment that is returned. Default is 1.
		axis : int or None, optional
		   Axis along which the central moment is computed. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		n-th central moment : ndarray or float
		   The appropriate moment along the given axis or over all values if axis
		   is None. The denominator for the moment calculation is the number of
		   observations, no degrees of freedom correction is done.
		
		See Also
		--------
		kurtosis, skew, describe
		
		Notes
		-----
		The k-th central moment of a data sample is:
		
		.. math::
		
		    m_k = \frac{1}{n} \sum_{i = 1}^n (x_i - \bar{x})^k
		
		Where n is the number of samples and x-bar is the mean. This function uses
		exponentiation by squares [1]_ for efficiency.
		
		References
		----------
		.. [1] https://eli.thegreenplace.net/2009/03/21/efficient-integer-exponentiation-algorithms
		
		Examples
		--------
		>>> from scipy.stats import moment
		>>> moment([1, 2, 3, 4, 5], moment=1)
		0.0
		>>> moment([1, 2, 3, 4, 5], moment=2)
		2.0
	**/
	static public function moment(a:Dynamic, ?moment:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Computes the Multiscale Graph Correlation (MGC) test statistic.
		
		Specifically, for each point, MGC finds the :math:`k`-nearest neighbors for
		one property (e.g. cloud density), and the :math:`l`-nearest neighbors for
		the other property (e.g. grass wetness) [1]_. This pair :math:`(k, l)` is
		called the "scale". A priori, however, it is not know which scales will be
		most informative. So, MGC computes all distance pairs, and then efficiently
		computes the distance correlations for all scales. The local correlations
		illustrate which scales are relatively informative about the relationship.
		The key, therefore, to successfully discover and decipher relationships
		between disparate data modalities is to adaptively determine which scales
		are the most informative, and the geometric implication for the most
		informative scales. Doing so not only provides an estimate of whether the
		modalities are related, but also provides insight into how the
		determination was made. This is especially important in high-dimensional
		data, where simple visualizations do not reveal relationships to the
		unaided human eye. Characterizations of this implementation in particular
		have been derived from and benchmarked within in [2]_.
		
		Parameters
		----------
		x, y : ndarray
		    If ``x`` and ``y`` have shapes ``(n, p)`` and ``(n, q)`` where `n` is
		    the number of samples and `p` and `q` are the number of dimensions,
		    then the MGC independence test will be run.  Alternatively, ``x`` and
		    ``y`` can have shapes ``(n, n)`` if they are distance or similarity
		    matrices, and ``compute_distance`` must be sent to ``None``. If ``x``
		    and ``y`` have shapes ``(n, p)`` and ``(m, p)``, an unpaired
		    two-sample MGC test will be run.
		compute_distance : callable, optional
		    A function that computes the distance or similarity among the samples
		    within each data matrix. Set to ``None`` if ``x`` and ``y`` are
		    already distance matrices. The default uses the euclidean norm metric.
		    If you are calling a custom function, either create the distance
		    matrix before-hand or create a function of the form
		    ``compute_distance(x)`` where `x` is the data matrix for which
		    pairwise distances are calculated.
		reps : int, optional
		    The number of replications used to estimate the null when using the
		    permutation test. The default is ``1000``.
		workers : int or map-like callable, optional
		    If ``workers`` is an int the population is subdivided into ``workers``
		    sections and evaluated in parallel (uses ``multiprocessing.Pool
		    <multiprocessing>``). Supply ``-1`` to use all cores available to the
		    Process. Alternatively supply a map-like callable, such as
		    ``multiprocessing.Pool.map`` for evaluating the p-value in parallel.
		    This evaluation is carried out as ``workers(func, iterable)``.
		    Requires that `func` be pickleable. The default is ``1``.
		is_twosamp : bool, optional
		    If `True`, a two sample test will be run. If ``x`` and ``y`` have
		    shapes ``(n, p)`` and ``(m, p)``, this optional will be overridden and
		    set to ``True``. Set to ``True`` if ``x`` and ``y`` both have shapes
		    ``(n, p)`` and a two sample test is desired. The default is ``False``.
		    Note that this will not run if inputs are distance matrices.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Returns
		-------
		stat : float
		    The sample MGC test statistic within `[-1, 1]`.
		pvalue : float
		    The p-value obtained via permutation.
		mgc_dict : dict
		    Contains additional useful additional returns containing the following
		    keys:
		
		        - mgc_map : ndarray
		            A 2D representation of the latent geometry of the relationship.
		            of the relationship.
		        - opt_scale : (int, int)
		            The estimated optimal scale as a `(x, y)` pair.
		        - null_dist : list
		            The null distribution derived from the permuted matrices
		
		See Also
		--------
		pearsonr : Pearson correlation coefficient and p-value for testing
		           non-correlation.
		kendalltau : Calculates Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		
		Notes
		-----
		A description of the process of MGC and applications on neuroscience data
		can be found in [1]_. It is performed using the following steps:
		
		#. Two distance matrices :math:`D^X` and :math:`D^Y` are computed and
		   modified to be mean zero columnwise. This results in two
		   :math:`n \times n` distance matrices :math:`A` and :math:`B` (the
		   centering and unbiased modification) [3]_.
		
		#. For all values :math:`k` and :math:`l` from :math:`1, ..., n`,
		
		   * The :math:`k`-nearest neighbor and :math:`l`-nearest neighbor graphs
		     are calculated for each property. Here, :math:`G_k (i, j)` indicates
		     the :math:`k`-smallest values of the :math:`i`-th row of :math:`A`
		     and :math:`H_l (i, j)` indicates the :math:`l` smallested values of
		     the :math:`i`-th row of :math:`B`
		
		   * Let :math:`\circ` denotes the entry-wise matrix product, then local
		     correlations are summed and normalized using the following statistic:
		
		.. math::
		
		    c^{kl} = \frac{\sum_{ij} A G_k B H_l}
		                  {\sqrt{\sum_{ij} A^2 G_k \times \sum_{ij} B^2 H_l}}
		
		#. The MGC test statistic is the smoothed optimal local correlation of
		   :math:`\{ c^{kl} \}`. Denote the smoothing operation as :math:`R(\cdot)`
		   (which essentially set all isolated large correlations) as 0 and
		   connected large correlations the same as before, see [3]_.) MGC is,
		
		.. math::
		
		    MGC_n (x, y) = \max_{(k, l)} R \left(c^{kl} \left( x_n, y_n \right)
		                                                \right)
		
		The test statistic returns a value between :math:`(-1, 1)` since it is
		normalized.
		
		The p-value returned is calculated using a permutation test. This process
		is completed by first randomly permuting :math:`y` to estimate the null
		distribution and then calculating the probability of observing a test
		statistic, under the null, at least as extreme as the observed test
		statistic.
		
		MGC requires at least 5 samples to run with reliable results. It can also
		handle high-dimensional data sets.
		In addition, by manipulating the input data matrices, the two-sample
		testing problem can be reduced to the independence testing problem [4]_.
		Given sample data :math:`U` and :math:`V` of sizes :math:`p \times n`
		:math:`p \times m`, data matrix :math:`X` and :math:`Y` can be created as
		follows:
		
		.. math::
		
		    X = [U | V] \in \mathcal{R}^{p \times (n + m)}
		    Y = [0_{1 \times n} | 1_{1 \times m}] \in \mathcal{R}^{(n + m)}
		
		Then, the MGC statistic can be calculated as normal. This methodology can
		be extended to similar tests such as distance correlation [4]_.
		
		.. versionadded:: 1.4.0
		
		References
		----------
		.. [1] Vogelstein, J. T., Bridgeford, E. W., Wang, Q., Priebe, C. E.,
		       Maggioni, M., & Shen, C. (2019). Discovering and deciphering
		       relationships across disparate data modalities. ELife.
		.. [2] Panda, S., Palaniappan, S., Xiong, J., Swaminathan, A.,
		       Ramachandran, S., Bridgeford, E. W., ... Vogelstein, J. T. (2019).
		       mgcpy: A Comprehensive High Dimensional Independence Testing Python
		       Package. :arXiv:`1907.02088`
		.. [3] Shen, C., Priebe, C.E., & Vogelstein, J. T. (2019). From distance
		       correlation to multiscale graph correlation. Journal of the American
		       Statistical Association.
		.. [4] Shen, C. & Vogelstein, J. T. (2018). The Exact Equivalence of
		       Distance and Kernel Methods for Hypothesis Testing.
		       :arXiv:`1806.05514`
		
		Examples
		--------
		>>> from scipy.stats import multiscale_graphcorr
		>>> x = np.arange(100)
		>>> y = x
		>>> stat, pvalue, _ = multiscale_graphcorr(x, y, workers=-1)
		>>> '%.1f, %.3f' % (stat, pvalue)
		'1.0, 0.001'
		
		Alternatively,
		
		>>> x = np.arange(100)
		>>> y = x
		>>> mgc = multiscale_graphcorr(x, y)
		>>> '%.1f, %.3f' % (mgc.stat, mgc.pvalue)
		'1.0, 0.001'
		
		To run an unpaired two-sample test,
		
		>>> x = np.arange(100)
		>>> y = np.arange(79)
		>>> mgc = multiscale_graphcorr(x, y)
		>>> '%.3f, %.2f' % (mgc.stat, mgc.pvalue)  # doctest: +SKIP
		'0.033, 0.02'
		
		or, if shape of the inputs are the same,
		
		>>> x = np.arange(100)
		>>> y = x
		>>> mgc = multiscale_graphcorr(x, y, is_twosamp=True)
		>>> '%.3f, %.1f' % (mgc.stat, mgc.pvalue)  # doctest: +SKIP
		'-0.008, 1.0'
	**/
	static public function multiscale_graphcorr(x:Dynamic, y:Dynamic, ?compute_distance:Dynamic, ?reps:Dynamic, ?workers:Dynamic, ?is_twosamp:Dynamic, ?random_state:Dynamic):Float;
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Test whether a sample differs from a normal distribution.
		
		This function tests the null hypothesis that a sample comes
		from a normal distribution.  It is based on D'Agostino and
		Pearson's [1]_, [2]_ test that combines skew and kurtosis to
		produce an omnibus test of normality.
		
		Parameters
		----------
		a : array_like
		    The array containing the sample to be tested.
		axis : int or None, optional
		    Axis along which to compute test. Default is 0. If None,
		    compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		statistic : float or array
		    ``s^2 + k^2``, where ``s`` is the z-score returned by `skewtest` and
		    ``k`` is the z-score returned by `kurtosistest`.
		pvalue : float or array
		   A 2-sided chi squared probability for the hypothesis test.
		
		References
		----------
		.. [1] D'Agostino, R. B. (1971), "An omnibus test of normality for
		       moderate and large sample size", Biometrika, 58, 341-348
		
		.. [2] D'Agostino, R. and Pearson, E. S. (1973), "Tests for departure from
		       normality", Biometrika, 60, 613-622
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> pts = 1000
		>>> a = rng.normal(0, 1, size=pts)
		>>> b = rng.normal(2, 1, size=pts)
		>>> x = np.concatenate((a, b))
		>>> k2, p = stats.normaltest(x)
		>>> alpha = 1e-3
		>>> print("p = {:g}".format(p))
		p = 8.4713e-19
		>>> if p < alpha:  # null hypothesis: x comes from a normal distribution
		...     print("The null hypothesis can be rejected")
		... else:
		...     print("The null hypothesis cannot be rejected")
		The null hypothesis can be rejected
	**/
	static public function normaltest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the O'Brien transform on input data (any number of arrays).
		
		Used to test for homogeneity of variance prior to running one-way stats.
		Each array in ``*args`` is one level of a factor.
		If `f_oneway` is run on the transformed data and found significant,
		the variances are unequal.  From Maxwell and Delaney [1]_, p.112.
		
		Parameters
		----------
		args : tuple of array_like
		    Any number of arrays.
		
		Returns
		-------
		obrientransform : ndarray
		    Transformed data for use in an ANOVA.  The first dimension
		    of the result corresponds to the sequence of transformed
		    arrays.  If the arrays given are all 1-D of the same length,
		    the return value is a 2-D array; otherwise it is a 1-D array
		    of type object, with each element being an ndarray.
		
		References
		----------
		.. [1] S. E. Maxwell and H. D. Delaney, "Designing Experiments and
		       Analyzing Data: A Model Comparison Perspective", Wadsworth, 1990.
		
		Examples
		--------
		We'll test the following data sets for differences in their variance.
		
		>>> x = [10, 11, 13, 9, 7, 12, 12, 9, 10]
		>>> y = [13, 21, 5, 10, 8, 14, 10, 12, 7, 15]
		
		Apply the O'Brien transform to the data.
		
		>>> from scipy.stats import obrientransform
		>>> tx, ty = obrientransform(x, y)
		
		Use `scipy.stats.f_oneway` to apply a one-way ANOVA test to the
		transformed data.
		
		>>> from scipy.stats import f_oneway
		>>> F, p = f_oneway(tx, ty)
		>>> p
		0.1314139477040335
		
		If we require that ``p < 0.05`` for significance, we cannot conclude
		that the variances are different.
	**/
	static public function obrientransform(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Pearson correlation coefficient and p-value for testing non-correlation.
		
		The Pearson correlation coefficient [1]_ measures the linear relationship
		between two datasets.  The calculation of the p-value relies on the
		assumption that each dataset is normally distributed.  (See Kowalski [3]_
		for a discussion of the effects of non-normality of the input on the
		distribution of the correlation coefficient.)  Like other correlation
		coefficients, this one varies between -1 and +1 with 0 implying no
		correlation. Correlations of -1 or +1 imply an exact linear relationship.
		
		Parameters
		----------
		x : (N,) array_like
		    Input array.
		y : (N,) array_like
		    Input array.
		
		Returns
		-------
		r : float
		    Pearson's correlation coefficient.
		p-value : float
		    Two-tailed p-value.
		
		Warns
		-----
		PearsonRConstantInputWarning
		    Raised if an input is a constant array.  The correlation coefficient
		    is not defined in this case, so ``np.nan`` is returned.
		
		PearsonRNearConstantInputWarning
		    Raised if an input is "nearly" constant.  The array ``x`` is considered
		    nearly constant if ``norm(x - mean(x)) < 1e-13 * abs(mean(x))``.
		    Numerical errors in the calculation ``x - mean(x)`` in this case might
		    result in an inaccurate calculation of r.
		
		See Also
		--------
		spearmanr : Spearman rank-order correlation coefficient.
		kendalltau : Kendall's tau, a correlation measure for ordinal data.
		
		Notes
		-----
		The correlation coefficient is calculated as follows:
		
		.. math::
		
		    r = \frac{\sum (x - m_x) (y - m_y)}
		             {\sqrt{\sum (x - m_x)^2 \sum (y - m_y)^2}}
		
		where :math:`m_x` is the mean of the vector x and :math:`m_y` is
		the mean of the vector y.
		
		Under the assumption that x and y are drawn from
		independent normal distributions (so the population correlation coefficient
		is 0), the probability density function of the sample correlation
		coefficient r is ([1]_, [2]_):
		
		.. math::
		
		    f(r) = \frac{{(1-r^2)}^{n/2-2}}{\mathrm{B}(\frac{1}{2},\frac{n}{2}-1)}
		
		where n is the number of samples, and B is the beta function.  This
		is sometimes referred to as the exact distribution of r.  This is
		the distribution that is used in `pearsonr` to compute the p-value.
		The distribution is a beta distribution on the interval [-1, 1],
		with equal shape parameters a = b = n/2 - 1.  In terms of SciPy's
		implementation of the beta distribution, the distribution of r is::
		
		    dist = scipy.stats.beta(n/2 - 1, n/2 - 1, loc=-1, scale=2)
		
		The p-value returned by `pearsonr` is a two-sided p-value. The p-value
		roughly indicates the probability of an uncorrelated system
		producing datasets that have a Pearson correlation at least as extreme
		as the one computed from these datasets. More precisely, for a
		given sample with correlation coefficient r, the p-value is
		the probability that abs(r') of a random sample x' and y' drawn from
		the population with zero correlation would be greater than or equal
		to abs(r). In terms of the object ``dist`` shown above, the p-value
		for a given r and length n can be computed as::
		
		    p = 2*dist.cdf(-abs(r))
		
		When n is 2, the above continuous distribution is not well-defined.
		One can interpret the limit of the beta distribution as the shape
		parameters a and b approach a = b = 0 as a discrete distribution with
		equal probability masses at r = 1 and r = -1.  More directly, one
		can observe that, given the data x = [x1, x2] and y = [y1, y2], and
		assuming x1 != x2 and y1 != y2, the only possible values for r are 1
		and -1.  Because abs(r') for any sample x' and y' with length 2 will
		be 1, the two-sided p-value for a sample of length 2 is always 1.
		
		References
		----------
		.. [1] "Pearson correlation coefficient", Wikipedia,
		       https://en.wikipedia.org/wiki/Pearson_correlation_coefficient
		.. [2] Student, "Probable error of a correlation coefficient",
		       Biometrika, Volume 6, Issue 2-3, 1 September 1908, pp. 302-310.
		.. [3] C. J. Kowalski, "On the Effects of Non-Normality on the Distribution
		       of the Sample Product-Moment Correlation Coefficient"
		       Journal of the Royal Statistical Society. Series C (Applied
		       Statistics), Vol. 21, No. 1 (1972), pp. 1-12.
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.pearsonr([1, 2, 3, 4, 5], [10, 9, 2.5, 6, 4])
		(-0.7426106572325057, 0.1505558088534455)
		
		There is a linear dependence between x and y if y = a + b*x + e, where
		a,b are constants and e is a random error term, assumed to be independent
		of x. For simplicity, assume that x is standard normal, a=0, b=1 and let
		e follow a normal distribution with mean zero and standard deviation s>0.
		
		>>> s = 0.5
		>>> x = stats.norm.rvs(size=500)
		>>> e = stats.norm.rvs(scale=s, size=500)
		>>> y = x + e
		>>> stats.pearsonr(x, y)
		(0.9029601878969703, 8.428978827629898e-185) # may vary
		
		This should be close to the exact value given by
		
		>>> 1/np.sqrt(1 + s**2)
		0.8944271909999159
		
		For s=0.5, we observe a high level of correlation. In general, a large
		variance of the noise reduces the correlation, while the correlation
		approaches one as the variance of the error goes to zero.
		
		It is important to keep in mind that no correlation does not imply
		independence unless (x, y) is jointly normal. Correlation can even be zero
		when there is a very simple dependence structure: if X follows a
		standard normal distribution, let y = abs(x). Note that the correlation
		between x and y is zero. Indeed, since the expectation of x is zero,
		cov(x, y) = E[x*y]. By definition, this equals E[x*abs(x)] which is zero
		by symmetry. The following lines of code illustrate this observation:
		
		>>> y = np.abs(x)
		>>> stats.pearsonr(x, y)
		(-0.016172891856853524, 0.7182823678751942) # may vary
		
		A non-zero correlation coefficient can be misleading. For example, if X has
		a standard normal distribution, define y = x if x < 0 and y = 0 otherwise.
		A simple calculation shows that corr(x, y) = sqrt(2/Pi) = 0.797...,
		implying a high level of correlation:
		
		>>> y = np.where(x < 0, x, 0)
		>>> stats.pearsonr(x, y)
		(0.8537091583771509, 3.183461621422181e-143) # may vary
		
		This is unintuitive since there is no dependence of x and y if x is larger
		than zero which happens in about half of the cases if we sample x and y.
	**/
	static public function pearsonr(x:Dynamic, y:Dynamic):Float;
	/**
		Compute the percentile rank of a score relative to a list of scores.
		
		A `percentileofscore` of, for example, 80% means that 80% of the
		scores in `a` are below the given score. In the case of gaps or
		ties, the exact definition depends on the optional keyword, `kind`.
		
		Parameters
		----------
		a : array_like
		    Array of scores to which `score` is compared.
		score : int or float
		    Score that is compared to the elements in `a`.
		kind : {'rank', 'weak', 'strict', 'mean'}, optional
		    Specifies the interpretation of the resulting score.
		    The following options are available (default is 'rank'):
		
		      * 'rank': Average percentage ranking of score.  In case of multiple
		        matches, average the percentage rankings of all matching scores.
		      * 'weak': This kind corresponds to the definition of a cumulative
		        distribution function.  A percentileofscore of 80% means that 80%
		        of values are less than or equal to the provided score.
		      * 'strict': Similar to "weak", except that only values that are
		        strictly less than the given score are counted.
		      * 'mean': The average of the "weak" and "strict" scores, often used
		        in testing.  See https://en.wikipedia.org/wiki/Percentile_rank
		
		Returns
		-------
		pcos : float
		    Percentile-position of score (0-100) relative to `a`.
		
		See Also
		--------
		numpy.percentile
		
		Examples
		--------
		Three-quarters of the given values lie below a given score:
		
		>>> from scipy import stats
		>>> stats.percentileofscore([1, 2, 3, 4], 3)
		75.0
		
		With multiple matches, note how the scores of the two matches, 0.6
		and 0.8 respectively, are averaged:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3)
		70.0
		
		Only 2/5 values are strictly less than 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='strict')
		40.0
		
		But 4/5 values are less than or equal to 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='weak')
		80.0
		
		The average between the weak and the strict scores is:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='mean')
		60.0
	**/
	static public function percentileofscore(a:Dynamic, score:Dynamic, ?kind:Dynamic):Float;
	/**
		Calculate a point biserial correlation coefficient and its p-value.
		
		The point biserial correlation is used to measure the relationship
		between a binary variable, x, and a continuous variable, y. Like other
		correlation coefficients, this one varies between -1 and +1 with 0
		implying no correlation. Correlations of -1 or +1 imply a determinative
		relationship.
		
		This function uses a shortcut formula but produces the same result as
		`pearsonr`.
		
		Parameters
		----------
		x : array_like of bools
		    Input array.
		y : array_like
		    Input array.
		
		Returns
		-------
		correlation : float
		    R value.
		pvalue : float
		    Two-sided p-value.
		
		Notes
		-----
		`pointbiserialr` uses a t-test with ``n-1`` degrees of freedom.
		It is equivalent to `pearsonr`.
		
		The value of the point-biserial correlation can be calculated from:
		
		.. math::
		
		    r_{pb} = \frac{\overline{Y_{1}} -
		             \overline{Y_{0}}}{s_{y}}\sqrt{\frac{N_{1} N_{2}}{N (N - 1))}}
		
		Where :math:`Y_{0}` and :math:`Y_{1}` are means of the metric
		observations coded 0 and 1 respectively; :math:`N_{0}` and :math:`N_{1}`
		are number of observations coded 0 and 1 respectively; :math:`N` is the
		total number of observations and :math:`s_{y}` is the standard
		deviation of all the metric observations.
		
		A value of :math:`r_{pb}` that is significantly different from zero is
		completely equivalent to a significant difference in means between the two
		groups. Thus, an independent groups t Test with :math:`N-2` degrees of
		freedom may be used to test whether :math:`r_{pb}` is nonzero. The
		relation between the t-statistic for comparing two independent groups and
		:math:`r_{pb}` is given by:
		
		.. math::
		
		    t = \sqrt{N - 2}\frac{r_{pb}}{\sqrt{1 - r^{2}_{pb}}}
		
		References
		----------
		.. [1] J. Lev, "The Point Biserial Coefficient of Correlation", Ann. Math.
		       Statist., Vol. 20, no.1, pp. 125-126, 1949.
		
		.. [2] R.F. Tate, "Correlation Between a Discrete and a Continuous
		       Variable. Point-Biserial Correlation.", Ann. Math. Statist., Vol. 25,
		       np. 3, pp. 603-607, 1954.
		
		.. [3] D. Kornbrot "Point Biserial Correlation", In Wiley StatsRef:
		       Statistics Reference Online (eds N. Balakrishnan, et al.), 2014.
		       :doi:`10.1002/9781118445112.stat06227`
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([0, 0, 0, 1, 1, 1, 1])
		>>> b = np.arange(7)
		>>> stats.pointbiserialr(a, b)
		(0.8660254037844386, 0.011724811003954652)
		>>> stats.pearsonr(a, b)
		(0.86602540378443871, 0.011724811003954626)
		>>> np.corrcoef(a, b)
		array([[ 1.       ,  0.8660254],
		       [ 0.8660254,  1.       ]])
	**/
	static public function pointbiserialr(x:Dynamic, y:Dynamic):Float;
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
		Assign ranks to data, dealing with ties appropriately.
		
		By default (``axis=None``), the data array is first flattened, and a flat
		array of ranks is returned. Separately reshape the rank array to the
		shape of the data array if desired (see Examples).
		
		Ranks begin at 1.  The `method` argument controls how ranks are assigned
		to equal values.  See [1]_ for further discussion of ranking methods.
		
		Parameters
		----------
		a : array_like
		    The array of values to be ranked.
		method : {'average', 'min', 'max', 'dense', 'ordinal'}, optional
		    The method used to assign ranks to tied elements.
		    The following methods are available (default is 'average'):
		
		      * 'average': The average of the ranks that would have been assigned to
		        all the tied values is assigned to each value.
		      * 'min': The minimum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.  (This is also
		        referred to as "competition" ranking.)
		      * 'max': The maximum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.
		      * 'dense': Like 'min', but the rank of the next highest element is
		        assigned the rank immediately after those assigned to the tied
		        elements.
		      * 'ordinal': All values are given a distinct rank, corresponding to
		        the order that the values occur in `a`.
		axis : {None, int}, optional
		    Axis along which to perform the ranking. If ``None``, the data array
		    is first flattened.
		
		Returns
		-------
		ranks : ndarray
		     An array of size equal to the size of `a`, containing rank
		     scores.
		
		References
		----------
		.. [1] "Ranking", https://en.wikipedia.org/wiki/Ranking
		
		Examples
		--------
		>>> from scipy.stats import rankdata
		>>> rankdata([0, 2, 3, 2])
		array([ 1. ,  2.5,  4. ,  2.5])
		>>> rankdata([0, 2, 3, 2], method='min')
		array([ 1,  2,  4,  2])
		>>> rankdata([0, 2, 3, 2], method='max')
		array([ 1,  3,  4,  3])
		>>> rankdata([0, 2, 3, 2], method='dense')
		array([ 1,  2,  3,  2])
		>>> rankdata([0, 2, 3, 2], method='ordinal')
		array([ 1,  2,  4,  3])
		>>> rankdata([[0, 2], [3, 2]]).reshape(2,2)
		array([[1. , 2.5],
		      [4. , 2.5]])
		>>> rankdata([[0, 2, 2], [3, 2, 5]], axis=1)
		array([[1. , 2.5, 2.5],
		       [2. , 1. , 3. ]])
	**/
	static public function rankdata(a:Dynamic, ?method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the Wilcoxon rank-sum statistic for two samples.
		
		The Wilcoxon rank-sum test tests the null hypothesis that two sets
		of measurements are drawn from the same distribution.  The alternative
		hypothesis is that values in one sample are more likely to be
		larger than the values in the other sample.
		
		This test should be used to compare two samples from continuous
		distributions.  It does not handle ties between measurements
		in x and y.  For tie-handling and an optional continuity correction
		see `scipy.stats.mannwhitneyu`.
		
		Parameters
		----------
		x,y : array_like
		    The data from the two samples.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		    
		    * 'two-sided': one of the distributions (underlying `x` or `y`) is
		      stochastically greater than the other.
		    * 'less': the distribution underlying `x` is stochastically less
		      than the distribution underlying `y`.
		    * 'greater': the distribution underlying `x` is stochastically greater
		      than the distribution underlying `y`.
		    
		    .. versionadded:: 1.7.0
		axis : int or None, default: 0
		    If an int, the axis of the input along which to compute the statistic.
		    The statistic of each axis-slice (e.g. row) of the input will appear in a
		    corresponding element of the output.
		    If ``None``, the input will be raveled before computing the statistic.
		nan_policy : {'propagate', 'omit', 'raise'}
		    Defines how to handle input NaNs.
		    
		    - ``propagate``: if a NaN is present in the axis slice (e.g. row) along
		      which the  statistic is computed, the corresponding entry of the output
		      will be NaN.
		    - ``omit``: NaNs will be omitted when performing the calculation.
		      If insufficient data remains in the axis slice along which the
		      statistic is computed, the corresponding entry of the output will be
		      NaN.
		    - ``raise``: if a NaN is present, a ``ValueError`` will be raised.
		
		Returns
		-------
		statistic : float
		    The test statistic under the large-sample approximation that the
		    rank sum statistic is normally distributed.
		pvalue : float
		    The p-value of the test.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Wilcoxon_rank-sum_test
		
		Examples
		--------
		We can test the hypothesis that two independent unequal-sized samples are
		drawn from the same distribution with computing the Wilcoxon rank-sum
		statistic.
		
		>>> from scipy.stats import ranksums
		>>> rng = np.random.default_rng()
		>>> sample1 = rng.uniform(-1, 1, 200)
		>>> sample2 = rng.uniform(-0.5, 1.5, 300) # a shifted distribution
		>>> ranksums(sample1, sample2)
		RanksumsResult(statistic=-7.887059, pvalue=3.09390448e-15)  # may vary
		>>> ranksums(sample1, sample2, alternative='less')
		RanksumsResult(statistic=-7.750585297581713, pvalue=4.573497606342543e-15) # may vary
		>>> ranksums(sample1, sample2, alternative='greater')
		RanksumsResult(statistic=-7.750585297581713, pvalue=0.9999999999999954) # may vary
		
		The p-value of less than ``0.05`` indicates that this test rejects the
		hypothesis at the 5% significance level.
	**/
	static public function ranksums(x:Dynamic, y:Dynamic, ?alternative:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Return a relative frequency histogram, using the histogram function.
		
		A relative frequency  histogram is a mapping of the number of
		observations in each of the bins relative to the total of observations.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in a is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		frequency : ndarray
		    Binned values of relative frequency.
		lowerlimit : float
		    Lower real limit.
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from numpy.random import default_rng
		>>> from scipy import stats
		>>> rng = default_rng()
		>>> a = np.array([2, 4, 1, 2, 3, 2])
		>>> res = stats.relfreq(a, numbins=4)
		>>> res.frequency
		array([ 0.16666667, 0.5       , 0.16666667,  0.16666667])
		>>> np.sum(res.frequency)  # relative frequencies should add up to 1
		1.0
		
		Create a normal distribution with 1000 random values
		
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate relative frequencies
		
		>>> res = stats.relfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.frequency.size,
		...                                  res.frequency.size)
		
		Plot relative frequency histogram
		
		>>> fig = plt.figure(figsize=(5, 4))
		>>> ax = fig.add_subplot(1, 1, 1)
		>>> ax.bar(x, res.frequency, width=res.binsize)
		>>> ax.set_title('Relative frequency histogram')
		>>> ax.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function relfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Return random integers from low (inclusive) to high (exclusive), or if
		endpoint=True, low (inclusive) to high (inclusive). Replaces
		`RandomState.randint` (with endpoint=False) and
		`RandomState.random_integers` (with endpoint=True).
		
		Return random integers from the "discrete uniform" distribution of the
		specified dtype. If high is None (the default), then results are from
		0 to low.
		
		Parameters
		----------
		gen : {None, np.random.RandomState, np.random.Generator}
		    Random number generator. If None, then the np.random.RandomState
		    singleton is used.
		low : int or array-like of ints
		    Lowest (signed) integers to be drawn from the distribution (unless
		    high=None, in which case this parameter is 0 and this value is used
		    for high).
		high : int or array-like of ints
		    If provided, one above the largest (signed) integer to be drawn from
		    the distribution (see above for behavior if high=None). If array-like,
		    must contain integer values.
		size : array-like of ints, optional
		    Output shape. If the given shape is, e.g., (m, n, k), then m * n * k
		    samples are drawn. Default is None, in which case a single value is
		    returned.
		dtype : {str, dtype}, optional
		    Desired dtype of the result. All dtypes are determined by their name,
		    i.e., 'int64', 'int', etc, so byteorder is not available and a specific
		    precision may have different C types depending on the platform.
		    The default value is np.int_.
		endpoint : bool, optional
		    If True, sample from the interval [low, high] instead of the default
		    [low, high) Defaults to False.
		
		Returns
		-------
		out: int or ndarray of ints
		    size-shaped array of random integers from the appropriate distribution,
		    or a single such random int if size not provided.
	**/
	static public function rng_integers(gen:Dynamic, low:Dynamic, ?high:Dynamic, ?size:Dynamic, ?dtype:Dynamic, ?endpoint:Dynamic):Dynamic;
	/**
		Calculate the score at a given percentile of the input sequence.
		
		For example, the score at `per=50` is the median. If the desired quantile
		lies between two data points, we interpolate between them, according to
		the value of `interpolation`. If the parameter `limit` is provided, it
		should be a tuple (lower, upper) of two values.
		
		Parameters
		----------
		a : array_like
		    A 1-D array of values from which to extract score.
		per : array_like
		    Percentile(s) at which to extract score.  Values should be in range
		    [0,100].
		limit : tuple, optional
		    Tuple of two scalars, the lower and upper limits within which to
		    compute the percentile. Values of `a` outside
		    this (closed) interval will be ignored.
		interpolation_method : {'fraction', 'lower', 'higher'}, optional
		    Specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`
		    The following options are available (default is 'fraction'):
		
		      * 'fraction': ``i + (j - i) * fraction`` where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``
		      * 'lower': ``i``
		      * 'higher': ``j``
		
		axis : int, optional
		    Axis along which the percentiles are computed. Default is None. If
		    None, compute over the whole array `a`.
		
		Returns
		-------
		score : float or ndarray
		    Score at percentile(s).
		
		See Also
		--------
		percentileofscore, numpy.percentile
		
		Notes
		-----
		This function will become obsolete in the future.
		For NumPy 1.9 and higher, `numpy.percentile` provides all the functionality
		that `scoreatpercentile` provides.  And it's significantly faster.
		Therefore it's recommended to use `numpy.percentile` for users that have
		numpy >= 1.9.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(100)
		>>> stats.scoreatpercentile(a, 50)
		49.5
	**/
	static public function scoreatpercentile(a:Dynamic, per:Dynamic, ?limit:Dynamic, ?interpolation_method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute standard error of the mean.
		
		Calculate the standard error of the mean (or standard error of
		measurement) of the values in the input array.
		
		Parameters
		----------
		a : array_like
		    An array containing the values for which the standard error is
		    returned.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Delta degrees-of-freedom. How many degrees of freedom to adjust
		    for bias in limited samples relative to the population estimate
		    of variance. Defaults to 1.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		s : ndarray or float
		    The standard error of the mean in the sample(s), along the input axis.
		
		Notes
		-----
		The default value for `ddof` is different to the default (0) used by other
		ddof containing routines, such as np.std and np.nanstd.
		
		Examples
		--------
		Find standard error along the first axis:
		
		>>> from scipy import stats
		>>> a = np.arange(20).reshape(5,4)
		>>> stats.sem(a)
		array([ 2.8284,  2.8284,  2.8284,  2.8284])
		
		Find standard error across the whole array, using n degrees of freedom:
		
		>>> stats.sem(a, axis=None, ddof=0)
		1.2893796958227628
	**/
	static public function sem(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Computes the Siegel estimator for a set of points (x, y).
		
		`siegelslopes` implements a method for robust linear regression
		using repeated medians (see [1]_) to fit a line to the points (x, y).
		The method is robust to outliers with an asymptotic breakdown point
		of 50%.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		method : {'hierarchical', 'separate'}
		    If 'hierarchical', estimate the intercept using the estimated
		    slope ``medslope`` (default option).
		    If 'separate', estimate the intercept independent of the estimated
		    slope. See Notes for details.
		
		Returns
		-------
		medslope : float
		    Estimate of the slope of the regression line.
		medintercept : float
		    Estimate of the intercept of the regression line.
		
		See also
		--------
		theilslopes : a similar technique without repeated medians
		
		Notes
		-----
		With ``n = len(y)``, compute ``m_j`` as the median of
		the slopes from the point ``(x[j], y[j])`` to all other `n-1` points.
		``medslope`` is then the median of all slopes ``m_j``.
		Two ways are given to estimate the intercept in [1]_ which can be chosen
		via the parameter ``method``.
		The hierarchical approach uses the estimated slope ``medslope``
		and computes ``medintercept`` as the median of ``y - medslope*x``.
		The other approach estimates the intercept separately as follows: for
		each point ``(x[j], y[j])``, compute the intercepts of all the `n-1`
		lines through the remaining points and take the median ``i_j``.
		``medintercept`` is the median of the ``i_j``.
		
		The implementation computes `n` times the median of a vector of size `n`
		which can be slow for large vectors. There are more efficient algorithms
		(see [2]_) which are not implemented here.
		
		References
		----------
		.. [1] A. Siegel, "Robust Regression Using Repeated Medians",
		       Biometrika, Vol. 69, pp. 242-244, 1982.
		
		.. [2] A. Stein and M. Werman, "Finding the repeated median regression
		       line", Proceedings of the Third Annual ACM-SIAM Symposium on
		       Discrete Algorithms, pp. 409-413, 1992.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope and intercept.  For comparison, also compute the
		least-squares fit with `linregress`:
		
		>>> res = stats.siegelslopes(y, x)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Siegel regression line is shown in red. The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function siegelslopes(y:Dynamic, ?x:Dynamic, ?method:Dynamic):Float;
	/**
		Perform iterative sigma-clipping of array elements.
		
		Starting from the full sample, all elements outside the critical range are
		removed, i.e. all elements of the input array `c` that satisfy either of
		the following conditions::
		
		    c < mean(c) - std(c)*low
		    c > mean(c) + std(c)*high
		
		The iteration continues with the updated sample until no
		elements are outside the (updated) range.
		
		Parameters
		----------
		a : array_like
		    Data array, will be raveled if not 1-D.
		low : float, optional
		    Lower bound factor of sigma clipping. Default is 4.
		high : float, optional
		    Upper bound factor of sigma clipping. Default is 4.
		
		Returns
		-------
		clipped : ndarray
		    Input array with clipped elements removed.
		lower : float
		    Lower threshold value use for clipping.
		upper : float
		    Upper threshold value use for clipping.
		
		Examples
		--------
		>>> from scipy.stats import sigmaclip
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 31),
		...                     np.linspace(0, 20, 5)))
		>>> fact = 1.5
		>>> c, low, upp = sigmaclip(a, fact, fact)
		>>> c
		array([  9.96666667,  10.        ,  10.03333333,  10.        ])
		>>> c.var(), c.std()
		(0.00055555555555555165, 0.023570226039551501)
		>>> low, c.mean() - fact*c.std(), c.min()
		(9.9646446609406727, 9.9646446609406727, 9.9666666666666668)
		>>> upp, c.mean() + fact*c.std(), c.max()
		(10.035355339059327, 10.035355339059327, 10.033333333333333)
		
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 11),
		...                     np.linspace(-100, -50, 3)))
		>>> c, low, upp = sigmaclip(a, 1.8, 1.8)
		>>> (c == np.linspace(9.5, 10.5, 11)).all()
		True
	**/
	static public function sigmaclip(a:Dynamic, ?low:Dynamic, ?high:Dynamic):Dynamic;
	/**
		Compute the sample skewness of a data set.
		
		For normally distributed data, the skewness should be about zero. For
		unimodal continuous distributions, a skewness value greater than zero means
		that there is more weight in the right tail of the distribution. The
		function `skewtest` can be used to determine if the skewness value
		is close enough to zero, statistically speaking.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int or None, optional
		    Axis along which skewness is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		skewness : ndarray
		    The skewness of values along an axis, returning 0 where all values are
		    equal.
		
		Notes
		-----
		The sample skewness is computed as the Fisher-Pearson coefficient
		of skewness, i.e.
		
		.. math::
		
		    g_1=\frac{m_3}{m_2^{3/2}}
		
		where
		
		.. math::
		
		    m_i=\frac{1}{N}\sum_{n=1}^N(x[n]-\bar{x})^i
		
		is the biased sample :math:`i\texttt{th}` central moment, and
		:math:`\bar{x}` is
		the sample mean.  If ``bias`` is False, the calculations are
		corrected for bias and the value computed is the adjusted
		Fisher-Pearson standardized moment coefficient, i.e.
		
		.. math::
		
		    G_1=\frac{k_3}{k_2^{3/2}}=
		        \frac{\sqrt{N(N-1)}}{N-2}\frac{m_3}{m_2^{3/2}}.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section 2.2.24.1
		
		Examples
		--------
		>>> from scipy.stats import skew
		>>> skew([1, 2, 3, 4, 5])
		0.0
		>>> skew([2, 8, 0, 4, 1, 9, 9, 0])
		0.2650554122698573
	**/
	static public function skew(a:Dynamic, ?axis:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Test whether the skew is different from the normal distribution.
		
		This function tests the null hypothesis that the skewness of
		the population that the sample was drawn from is the same
		as that of a corresponding normal distribution.
		
		Parameters
		----------
		a : array
		    The data to be tested.
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the skewness of the distribution underlying the sample
		      is different from that of the normal distribution (i.e. 0)
		    * 'less': the skewness of the distribution underlying the sample
		      is less than that of the normal distribution
		    * 'greater': the skewness of the distribution underlying the sample
		      is greater than that of the normal distribution
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The p-value for the hypothesis test.
		
		Notes
		-----
		The sample size must be at least 8.
		
		References
		----------
		.. [1] R. B. D'Agostino, A. J. Belanger and R. B. D'Agostino Jr.,
		        "A suggestion for using powerful and informative tests of
		        normality", American Statistician 44, pp. 316-321, 1990.
		
		Examples
		--------
		>>> from scipy.stats import skewtest
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8])
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.3121098361421897)
		>>> skewtest([2, 8, 0, 4, 1, 9, 9, 0])
		SkewtestResult(statistic=0.44626385374196975, pvalue=0.6554066631275459)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8000])
		SkewtestResult(statistic=3.571773510360407, pvalue=0.0003545719905823133)
		>>> skewtest([100, 100, 100, 100, 100, 100, 100, 101])
		SkewtestResult(statistic=3.5717766638478072, pvalue=0.000354567720281634)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8], alternative='less')
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.8439450819289052)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8], alternative='greater')
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.15605491807109484)
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Float;
	/**
		Calculate a Spearman correlation coefficient with associated p-value.
		
		The Spearman rank-order correlation coefficient is a nonparametric measure
		of the monotonicity of the relationship between two datasets. Unlike the
		Pearson correlation, the Spearman correlation does not assume that both
		datasets are normally distributed. Like other correlation coefficients,
		this one varies between -1 and +1 with 0 implying no correlation.
		Correlations of -1 or +1 imply an exact monotonic relationship. Positive
		correlations imply that as x increases, so does y. Negative correlations
		imply that as x increases, y decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Spearman correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		a, b : 1D or 2D array_like, b is optional
		    One or two 1-D or 2-D arrays containing multiple variables and
		    observations. When these are 1-D, each represents a vector of
		    observations of a single variable. For the behavior in the 2-D case,
		    see under ``axis``, below.
		    Both arrays need to have the same length in the ``axis`` dimension.
		axis : int or None, optional
		    If axis=0 (default), then each column represents a variable, with
		    observations in the rows. If axis=1, the relationship is transposed:
		    each row represents a variable, while the columns contain observations.
		    If axis=None, then both arrays will be raveled.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		    * 'propagate': returns nan
		    * 'raise': throws an error
		    * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis. Default is 'two-sided'.
		    The following options are available:
		
		    * 'two-sided': the correlation is nonzero
		    * 'less': the correlation is negative (less than zero)
		    * 'greater':  the correlation is positive (greater than zero)
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		correlation : float or ndarray (2-D square)
		    Spearman correlation matrix or correlation coefficient (if only 2
		    variables are given as parameters. Correlation matrix is square with
		    length equal to total number of variables (columns or rows) in ``a``
		    and ``b`` combined.
		pvalue : float
		    The p-value for a hypothesis test whose null hypotheisis
		    is that two sets of data are uncorrelated. See `alternative` above
		    for alternative hypotheses. `pvalue` has the same
		    shape as `correlation`.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section  14.7
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.spearmanr([1,2,3,4,5], [5,6,7,8,7])
		SpearmanrResult(correlation=0.82078..., pvalue=0.08858...)
		>>> rng = np.random.default_rng()
		>>> x2n = rng.standard_normal((100, 2))
		>>> y2n = rng.standard_normal((100, 2))
		>>> stats.spearmanr(x2n)
		SpearmanrResult(correlation=-0.07960396039603959, pvalue=0.4311168705769747)
		>>> stats.spearmanr(x2n[:,0], x2n[:,1])
		SpearmanrResult(correlation=-0.07960396039603959, pvalue=0.4311168705769747)
		>>> rho, pval = stats.spearmanr(x2n, y2n)
		>>> rho
		array([[ 1.        , -0.07960396, -0.08314431,  0.09662166],
		       [-0.07960396,  1.        , -0.14448245,  0.16738074],
		       [-0.08314431, -0.14448245,  1.        ,  0.03234323],
		       [ 0.09662166,  0.16738074,  0.03234323,  1.        ]])
		>>> pval
		array([[0.        , 0.43111687, 0.41084066, 0.33891628],
		       [0.43111687, 0.        , 0.15151618, 0.09600687],
		       [0.41084066, 0.15151618, 0.        , 0.74938561],
		       [0.33891628, 0.09600687, 0.74938561, 0.        ]])
		>>> rho, pval = stats.spearmanr(x2n.T, y2n.T, axis=1)
		>>> rho
		array([[ 1.        , -0.07960396, -0.08314431,  0.09662166],
		       [-0.07960396,  1.        , -0.14448245,  0.16738074],
		       [-0.08314431, -0.14448245,  1.        ,  0.03234323],
		       [ 0.09662166,  0.16738074,  0.03234323,  1.        ]])
		>>> stats.spearmanr(x2n, y2n, axis=None)
		SpearmanrResult(correlation=0.044981624540613524, pvalue=0.5270803651336189)
		>>> stats.spearmanr(x2n.ravel(), y2n.ravel())
		SpearmanrResult(correlation=0.044981624540613524, pvalue=0.5270803651336189)
		
		>>> rng = np.random.default_rng()
		>>> xint = rng.integers(10, size=(100, 2))
		>>> stats.spearmanr(xint)
		SpearmanrResult(correlation=0.09800224850707953, pvalue=0.3320271757932076)
	**/
	static public function spearmanr(a:Dynamic, ?b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Computes the Theil-Sen estimator for a set of points (x, y).
		
		`theilslopes` implements a method for robust linear regression.  It
		computes the slope as the median of all slopes between paired values.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		alpha : float, optional
		    Confidence degree between 0 and 1. Default is 95% confidence.
		    Note that `alpha` is symmetric around 0.5, i.e. both 0.1 and 0.9 are
		    interpreted as "find the 90% confidence interval".
		method : {'joint', 'separate'}, optional
		    Method to be used for computing estimate for intercept.
		    Following methods are supported,
		
		        * 'joint': Uses np.median(y - medslope * x) as intercept.
		        * 'separate': Uses np.median(y) - medslope * np.median(x)
		                      as intercept.
		
		    The default is 'separate'.
		
		    .. versionadded:: 1.8.0
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line.
		lo_slope : float
		    Lower bound of the confidence interval on `medslope`.
		up_slope : float
		    Upper bound of the confidence interval on `medslope`.
		
		See also
		--------
		siegelslopes : a similar technique using repeated medians
		
		Notes
		-----
		The implementation of `theilslopes` follows [1]_. The intercept is
		not defined in [1]_, and here it is defined as ``median(y) -
		medslope*median(x)``, which is given in [3]_. Other definitions of
		the intercept exist in the literature such as  ``median(y - medslope*x)``
		in [4]_. The approach to compute the intercept can be determined by the
		parameter ``method``. A confidence interval for the intercept is not
		given as this question is not addressed in [1]_.
		
		References
		----------
		.. [1] P.K. Sen, "Estimates of the regression coefficient based on
		       Kendall's tau", J. Am. Stat. Assoc., Vol. 63, pp. 1379-1389, 1968.
		.. [2] H. Theil, "A rank-invariant method of linear and polynomial
		       regression analysis I, II and III",  Nederl. Akad. Wetensch., Proc.
		       53:, pp. 386-392, pp. 521-525, pp. 1397-1412, 1950.
		.. [3] W.L. Conover, "Practical nonparametric statistics", 2nd ed.,
		       John Wiley and Sons, New York, pp. 493.
		.. [4] https://en.wikipedia.org/wiki/Theil%E2%80%93Sen_estimator
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope, intercept and 90% confidence interval.  For comparison,
		also compute the least-squares fit with `linregress`:
		
		>>> res = stats.theilslopes(y, x, 0.90, method='separate')
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Theil-Sen regression line is shown in red, with the
		dashed red lines illustrating the confidence interval of the slope (note
		that the dashed red lines are not the confidence interval of the regression
		as the confidence interval of the intercept is not included). The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, res[1] + res[2] * x, 'r--')
		>>> ax.plot(x, res[1] + res[3] * x, 'r--')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic, ?method:Dynamic):Float;
	/**
		Tie correction factor for Mann-Whitney U and Kruskal-Wallis H tests.
		
		Parameters
		----------
		rankvals : array_like
		    A 1-D sequence of ranks.  Typically this will be the array
		    returned by `~scipy.stats.rankdata`.
		
		Returns
		-------
		factor : float
		    Correction factor for U or H.
		
		See Also
		--------
		rankdata : Assign ranks to the data
		mannwhitneyu : Mann-Whitney rank test
		kruskal : Kruskal-Wallis H test
		
		References
		----------
		.. [1] Siegel, S. (1956) Nonparametric Statistics for the Behavioral
		       Sciences.  New York: McGraw-Hill.
		
		Examples
		--------
		>>> from scipy.stats import tiecorrect, rankdata
		>>> tiecorrect([1, 2.5, 2.5, 4])
		0.9
		>>> ranks = rankdata([1, 3, 2, 4, 5, 7, 2, 8, 4])
		>>> ranks
		array([ 1. ,  4. ,  2.5,  5.5,  7. ,  8. ,  2.5,  9. ,  5.5])
		>>> tiecorrect(ranks)
		0.9833333333333333
	**/
	static public function tiecorrect(rankvals:Dynamic):Float;
	/**
		Compute the trimmed maximum.
		
		This function computes the maximum value of an array along a given axis,
		while ignoring values larger than a specified upper limit.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		upperlimit : None or float, optional
		    Values in the input array greater than the given limit will be ignored.
		    When upperlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the upper limit
		    are included.  The default value is True.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		tmax : float, int or ndarray
		    Trimmed maximum.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmax(x)
		19
		
		>>> stats.tmax(x, 13)
		13
		
		>>> stats.tmax(x, 13, inclusive=False)
		12
	**/
	static public function tmax(a:Dynamic, ?upperlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the trimmed mean.
		
		This function finds the arithmetic mean of given values, ignoring values
		outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored.  When limits is None (default), then all
		    values are used.  Either of the limit values in the tuple can also be
		    None representing a half-open interval.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to compute test. Default is None.
		
		Returns
		-------
		tmean : ndarray
		    Trimmed mean.
		
		See Also
		--------
		trim_mean : Returns mean after trimming a proportion from both tails.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmean(x)
		9.5
		>>> stats.tmean(x, (3,17))
		10.0
	**/
	static public function tmean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed minimum.
		
		This function finds the miminum value of an array `a` along the
		specified axis, but only considering values greater than a specified
		lower limit.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		lowerlimit : None or float, optional
		    Values in the input array less than the given limit will be ignored.
		    When lowerlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the lower limit
		    are included.  The default value is True.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		Returns
		-------
		tmin : float, int or ndarray
		    Trimmed minimum.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmin(x)
		0
		
		>>> stats.tmin(x, 13)
		13
		
		>>> stats.tmin(x, 13, inclusive=False)
		14
	**/
	static public function tmin(a:Dynamic, ?lowerlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Slice off a proportion from ONE end of the passed array distribution.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' or 'rightmost'
		10% of scores. The lowest or highest values are trimmed (depending on
		the tail).
		Slice off less if proportion results in a non-integer slice index
		(i.e. conservatively slices off `proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array.
		proportiontocut : float
		    Fraction to cut off of 'left' or 'right' of distribution.
		tail : {'left', 'right'}, optional
		    Defaults to 'right'.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		trim1 : ndarray
		    Trimmed version of array `a`. The order of the trimmed content is
		    undefined.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(20)
		>>> b = stats.trim1(a, 0.5, 'left')
		>>> b
		array([10, 11, 12, 13, 14, 16, 15, 17, 18, 19])
	**/
	static public function trim1(a:Dynamic, proportiontocut:Dynamic, ?tail:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return mean of array after trimming distribution from both tails.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' and 'rightmost' 10% of
		scores. The input is sorted before slicing. Slices off less if proportion
		results in a non-integer slice index (i.e., conservatively slices off
		`proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array.
		proportiontocut : float
		    Fraction to cut off of both tails of the distribution.
		axis : int or None, optional
		    Axis along which the trimmed means are computed. Default is 0.
		    If None, compute over the whole array `a`.
		
		Returns
		-------
		trim_mean : ndarray
		    Mean of trimmed array.
		
		See Also
		--------
		trimboth
		tmean : Compute the trimmed mean ignoring values outside given `limits`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.trim_mean(x, 0.1)
		9.5
		>>> x2 = x.reshape(5, 4)
		>>> x2
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15],
		       [16, 17, 18, 19]])
		>>> stats.trim_mean(x2, 0.25)
		array([  8.,   9.,  10.,  11.])
		>>> stats.trim_mean(x2, 0.25, axis=1)
		array([  1.5,   5.5,   9.5,  13.5,  17.5])
	**/
	static public function trim_mean(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Slice off a proportion of items from both ends of an array.
		
		Slice off the passed proportion of items from both ends of the passed
		array (i.e., with `proportiontocut` = 0.1, slices leftmost 10% **and**
		rightmost 10% of scores). The trimmed values are the lowest and
		highest ones.
		Slice off less if proportion results in a non-integer slice index (i.e.
		conservatively slices off `proportiontocut`).
		
		Parameters
		----------
		a : array_like
		    Data to trim.
		proportiontocut : float
		    Proportion (in range 0-1) of total data set to trim of each end.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		out : ndarray
		    Trimmed version of array `a`. The order of the trimmed content
		    is undefined.
		
		See Also
		--------
		trim_mean
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(20)
		>>> b = stats.trimboth(a, 0.1)
		>>> b.shape
		(16,)
	**/
	static public function trimboth(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed standard error of the mean.
		
		This function finds the standard error of the mean for given
		values, ignoring values outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tsem : float
		    Trimmed standard error of the mean.
		
		Notes
		-----
		`tsem` uses unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tsem(x)
		1.3228756555322954
		>>> stats.tsem(x, (3,17))
		1.1547005383792515
	**/
	static public function tsem(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Compute the trimmed sample standard deviation.
		
		This function finds the sample standard deviation of given values,
		ignoring values outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tstd : float
		    Trimmed sample standard deviation.
		
		Notes
		-----
		`tstd` computes the unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tstd(x)
		5.9160797830996161
		>>> stats.tstd(x, (3,17))
		4.4721359549995796
	**/
	static public function tstd(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Calculate the T-test for the mean of ONE group of scores.
		
		This is a test for the null hypothesis that the expected value
		(mean) of a sample of independent observations `a` is equal to the given
		population mean, `popmean`.
		
		Parameters
		----------
		a : array_like
		    Sample observation.
		popmean : float or array_like
		    Expected value in null hypothesis. If array_like, then it must have the
		    same shape as `a` excluding the axis dimension.
		axis : int or None, optional
		    Axis along which to compute test; default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the mean of the underlying distribution of the sample
		      is different than the given population mean (`popmean`)
		    * 'less': the mean of the underlying distribution of the sample is
		      less than the given population mean (`popmean`)
		    * 'greater': the mean of the underlying distribution of the sample is
		      greater than the given population mean (`popmean`)
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic.
		pvalue : float or array
		    Two-sided p-value.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		>>> rvs = stats.norm.rvs(loc=5, scale=10, size=(50, 2), random_state=rng)
		
		Test if mean of random sample is equal to true mean, and different mean.
		We reject the null hypothesis in the second case and don't reject it in
		the first case.
		
		>>> stats.ttest_1samp(rvs, 5.0)
		Ttest_1sampResult(statistic=array([-2.09794637, -1.75977004]), pvalue=array([0.04108952, 0.08468867]))
		>>> stats.ttest_1samp(rvs, 0.0)
		Ttest_1sampResult(statistic=array([1.64495065, 1.62095307]), pvalue=array([0.10638103, 0.11144602]))
		
		Examples using axis and non-scalar dimension for population mean.
		
		>>> result = stats.ttest_1samp(rvs, [5.0, 0.0])
		>>> result.statistic
		array([-2.09794637,  1.62095307])
		>>> result.pvalue
		array([0.04108952, 0.11144602])
		
		>>> result = stats.ttest_1samp(rvs.T, [5.0, 0.0], axis=1)
		>>> result.statistic
		array([-2.09794637,  1.62095307])
		>>> result.pvalue
		array([0.04108952, 0.11144602])
		
		>>> result = stats.ttest_1samp(rvs, [[5.0], [0.0]])
		>>> result.statistic
		array([[-2.09794637, -1.75977004],
		       [ 1.64495065,  1.62095307]])
		>>> result.pvalue
		array([[0.04108952, 0.08468867],
		       [0.10638103, 0.11144602]])
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculate the T-test for the means of *two independent* samples of scores.
		
		This is a test for the null hypothesis that 2 independent samples
		have identical average (expected) values. This test assumes that the
		populations have identical variances by default.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		
		    .. versionadded:: 0.11.0
		
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		
		    The 'omit' option is not currently available for permutation tests or
		    one-sided asympyotic tests.
		
		permutations : non-negative int, np.inf, or None (default), optional
		    If 0 or None (default), use the t-distribution to calculate p-values.
		    Otherwise, `permutations` is  the number of random permutations that
		    will be used to estimate p-values using a permutation test. If
		    `permutations` equals or exceeds the number of distinct partitions of
		    the pooled data, an exact test is performed instead (i.e. each
		    distinct partition is used exactly once). See Notes for details.
		
		    .. versionadded:: 1.7.0
		
		random_state : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		    Pseudorandom number generator state used to generate permutations
		    (used only when `permutations` is not None).
		
		    .. versionadded:: 1.7.0
		
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions underlying the samples
		      are unequal.
		    * 'less': the mean of the distribution underlying the first sample
		      is less than the mean of the distribution underlying the second
		      sample.
		    * 'greater': the mean of the distribution underlying the first
		      sample is greater than the mean of the distribution underlying
		      the second sample.
		
		    .. versionadded:: 1.6.0
		
		trim : float, optional
		    If nonzero, performs a trimmed (Yuen's) t-test.
		    Defines the fraction of elements to be trimmed from each end of the
		    input samples. If 0 (default), no elements will be trimmed from either
		    side. The number of trimmed elements from each tail is the floor of the
		    trim times the number of elements. Valid range is [0, .5).
		
		    .. versionadded:: 1.7
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The p-value.
		
		Notes
		-----
		Suppose we observe two independent samples, e.g. flower petal lengths, and
		we are considering whether the two samples were drawn from the same
		population (e.g. the same species of flower or two species with similar
		petal characteristics) or two different populations.
		
		The t-test quantifies the difference between the arithmetic means
		of the two samples. The p-value quantifies the probability of observing
		as or more extreme values assuming the null hypothesis, that the
		samples are drawn from populations with the same population means, is true.
		A p-value larger than a chosen threshold (e.g. 5% or 1%) indicates that
		our observation is not so unlikely to have occurred by chance. Therefore,
		we do not reject the null hypothesis of equal population means.
		If the p-value is smaller than our threshold, then we have evidence
		against the null hypothesis of equal population means.
		
		By default, the p-value is determined by comparing the t-statistic of the
		observed data against a theoretical t-distribution.
		When ``1 < permutations < binom(n, k)``, where
		
		* ``k`` is the number of observations in `a`,
		* ``n`` is the total number of observations in `a` and `b`, and
		* ``binom(n, k)`` is the binomial coefficient (``n`` choose ``k``),
		
		the data are pooled (concatenated), randomly assigned to either group `a`
		or `b`, and the t-statistic is calculated. This process is performed
		repeatedly (`permutation` times), generating a distribution of the
		t-statistic under the null hypothesis, and the t-statistic of the observed
		data is compared to this distribution to determine the p-value. When
		``permutations >= binom(n, k)``, an exact test is performed: the data are
		partitioned between the groups in each distinct way exactly once.
		
		The permutation test can be computationally expensive and not necessarily
		more accurate than the analytical test, but it does not make strong
		assumptions about the shape of the underlying distribution.
		
		Use of trimming is commonly referred to as the trimmed t-test. At times
		called Yuen's t-test, this is an extension of Welch's t-test, with the
		difference being the use of winsorized means in calculation of the variance
		and the trimmed sample size in calculation of the statistic. Trimming is
		recommended if the underlying distribution is long-tailed or contaminated
		with outliers [4]_.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] https://en.wikipedia.org/wiki/Welch%27s_t-test
		
		.. [3] http://en.wikipedia.org/wiki/Resampling_%28statistics%29
		
		.. [4] Yuen, Karen K. "The Two-Sample Trimmed t for Unequal Population
		       Variances." Biometrika, vol. 61, no. 1, 1974, pp. 165-170. JSTOR,
		       www.jstor.org/stable/2334299. Accessed 30 Mar. 2021.
		
		.. [5] Yuen, Karen K., and W. J. Dixon. "The Approximate Behaviour and
		       Performance of the Two-Sample Trimmed t." Biometrika, vol. 60,
		       no. 2, 1973, pp. 369-374. JSTOR, www.jstor.org/stable/2334550.
		       Accessed 30 Mar. 2021.
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		Test with sample with identical means:
		
		>>> rvs1 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> rvs2 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs2)
		Ttest_indResult(statistic=-0.4390847099199348, pvalue=0.6606952038870015)
		>>> stats.ttest_ind(rvs1, rvs2, equal_var=False)
		Ttest_indResult(statistic=-0.4390847099199348, pvalue=0.6606952553131064)
		
		`ttest_ind` underestimates p for unequal variances:
		
		>>> rvs3 = stats.norm.rvs(loc=5, scale=20, size=500, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs3)
		Ttest_indResult(statistic=-1.6370984482905417, pvalue=0.1019251574705033)
		>>> stats.ttest_ind(rvs1, rvs3, equal_var=False)
		Ttest_indResult(statistic=-1.637098448290542, pvalue=0.10202110497954867)
		
		When ``n1 != n2``, the equal variance t-statistic is no longer equal to the
		unequal variance t-statistic:
		
		>>> rvs4 = stats.norm.rvs(loc=5, scale=20, size=100, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs4)
		Ttest_indResult(statistic=-1.9481646859513422, pvalue=0.05186270935842703)
		>>> stats.ttest_ind(rvs1, rvs4, equal_var=False)
		Ttest_indResult(statistic=-1.3146566100751664, pvalue=0.1913495266513811)
		
		T-test with different means, variance, and n:
		
		>>> rvs5 = stats.norm.rvs(loc=8, scale=20, size=100, random_state=rng)
		>>> stats.ttest_ind(rvs1, rvs5)
		Ttest_indResult(statistic=-2.8415950600298774, pvalue=0.0046418707568707885)
		>>> stats.ttest_ind(rvs1, rvs5, equal_var=False)
		Ttest_indResult(statistic=-1.8686598649188084, pvalue=0.06434714193919686)
		
		When performing a permutation test, more permutations typically yields
		more accurate results. Use a ``np.random.Generator`` to ensure
		reproducibility:
		
		>>> stats.ttest_ind(rvs1, rvs5, permutations=10000,
		...                 random_state=rng)
		Ttest_indResult(statistic=-2.8415950600298774, pvalue=0.0052)
		
		Take these two samples, one of which has an extreme tail.
		
		>>> a = (56, 128.6, 12, 123.8, 64.34, 78, 763.3)
		>>> b = (1.1, 2.9, 4.2)
		
		Use the `trim` keyword to perform a trimmed (Yuen) t-test. For example,
		using 20% trimming, ``trim=.2``, the test will reduce the impact of one
		(``np.floor(trim*len(a))``) element from each tail of sample `a`. It will
		have no effect on sample `b` because ``np.floor(trim*len(b))`` is 0.
		
		>>> stats.ttest_ind(a, b, trim=.2)
		Ttest_indResult(statistic=3.4463884028073513,
		                pvalue=0.01369338726499547)
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic, ?nan_policy:Dynamic, ?permutations:Dynamic, ?random_state:Dynamic, ?alternative:Dynamic, ?trim:Dynamic):Dynamic;
	/**
		T-test for means of two independent samples from descriptive statistics.
		
		This is a test for the null hypothesis that two independent
		samples have identical average (expected) values.
		
		Parameters
		----------
		mean1 : array_like
		    The mean(s) of sample 1.
		std1 : array_like
		    The standard deviation(s) of sample 1.
		nobs1 : array_like
		    The number(s) of observations of sample 1.
		mean2 : array_like
		    The mean(s) of sample 2.
		std2 : array_like
		    The standard deviations(s) of sample 2.
		nobs2 : array_like
		    The number(s) of observations of sample 2.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions are unequal.
		    * 'less': the mean of the first distribution is less than the
		      mean of the second distribution.
		    * 'greater': the mean of the first distribution is greater than the
		      mean of the second distribution.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistics.
		pvalue : float or array
		    The two-tailed p-value.
		
		See Also
		--------
		scipy.stats.ttest_ind
		
		Notes
		-----
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] https://en.wikipedia.org/wiki/Welch%27s_t-test
		
		Examples
		--------
		Suppose we have the summary data for two samples, as follows::
		
		                     Sample   Sample
		               Size   Mean   Variance
		    Sample 1    13    15.0     87.5
		    Sample 2    11    12.0     39.0
		
		Apply the t-test to this data (with the assumption that the population
		variances are equal):
		
		>>> from scipy.stats import ttest_ind_from_stats
		>>> ttest_ind_from_stats(mean1=15.0, std1=np.sqrt(87.5), nobs1=13,
		...                      mean2=12.0, std2=np.sqrt(39.0), nobs2=11)
		Ttest_indResult(statistic=0.9051358093310269, pvalue=0.3751996797581487)
		
		For comparison, here is the data from which those summary statistics
		were taken.  With this data, we can compute the same result using
		`scipy.stats.ttest_ind`:
		
		>>> a = np.array([1, 3, 4, 6, 11, 13, 15, 19, 22, 24, 25, 26, 26])
		>>> b = np.array([2, 4, 6, 9, 11, 13, 14, 15, 18, 19, 21])
		>>> from scipy.stats import ttest_ind
		>>> ttest_ind(a, b)
		Ttest_indResult(statistic=0.905135809331027, pvalue=0.3751996797581486)
		
		Suppose we instead have binary data and would like to apply a t-test to
		compare the proportion of 1s in two independent groups::
		
		                      Number of    Sample     Sample
		                Size    ones        Mean     Variance
		    Sample 1    150      30         0.2        0.16
		    Sample 2    200      45         0.225      0.174375
		
		The sample mean :math:`\hat{p}` is the proportion of ones in the sample
		and the variance for a binary observation is estimated by
		:math:`\hat{p}(1-\hat{p})`.
		
		>>> ttest_ind_from_stats(mean1=0.2, std1=np.sqrt(0.16), nobs1=150,
		...                      mean2=0.225, std2=np.sqrt(0.17437), nobs2=200)
		Ttest_indResult(statistic=-0.564327545549774, pvalue=0.5728947691244874)
		
		For comparison, we could compute the t statistic and p-value using
		arrays of 0s and 1s and `scipy.stat.ttest_ind`, as above.
		
		>>> group1 = np.array([1]*30 + [0]*(150-30))
		>>> group2 = np.array([1]*45 + [0]*(200-45))
		>>> ttest_ind(group1, group2)
		Ttest_indResult(statistic=-0.5627179589855622, pvalue=0.573989277115258)
	**/
	static public function ttest_ind_from_stats(mean1:Dynamic, std1:Dynamic, nobs1:Dynamic, mean2:Dynamic, std2:Dynamic, nobs2:Dynamic, ?equal_var:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Calculate the t-test on TWO RELATED samples of scores, a and b.
		
		This is a test for the null hypothesis that two related or
		repeated samples have identical average (expected) values.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan.
		    The following options are available (default is 'propagate'):
		
		      * 'propagate': returns nan
		      * 'raise': throws an error
		      * 'omit': performs the calculations ignoring nan values
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Defines the alternative hypothesis.
		    The following options are available (default is 'two-sided'):
		
		    * 'two-sided': the means of the distributions underlying the samples
		      are unequal.
		    * 'less': the mean of the distribution underlying the first sample
		      is less than the mean of the distribution underlying the second
		      sample.
		    * 'greater': the mean of the distribution underlying the first
		      sample is greater than the mean of the distribution underlying
		      the second sample.
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		statistic : float or array
		    t-statistic.
		pvalue : float or array
		    The p-value.
		
		Notes
		-----
		Examples for use are scores of the same set of student in
		different exams, or repeated sampling from the same units. The
		test measures whether the average score differs significantly
		across samples (e.g. exams). If we observe a large p-value, for
		example greater than 0.05 or 0.1 then we cannot reject the null
		hypothesis of identical average scores. If the p-value is smaller
		than the threshold, e.g. 1%, 5% or 10%, then we reject the null
		hypothesis of equal averages. Small p-values are associated with
		large t-statistics.
		
		References
		----------
		https://en.wikipedia.org/wiki/T-test#Dependent_t-test_for_paired_samples
		
		Examples
		--------
		>>> from scipy import stats
		>>> rng = np.random.default_rng()
		
		>>> rvs1 = stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		>>> rvs2 = (stats.norm.rvs(loc=5, scale=10, size=500, random_state=rng)
		...         + stats.norm.rvs(scale=0.2, size=500, random_state=rng))
		>>> stats.ttest_rel(rvs1, rvs2)
		Ttest_relResult(statistic=-0.4549717054410304, pvalue=0.6493274702088672)
		>>> rvs3 = (stats.norm.rvs(loc=8, scale=10, size=500, random_state=rng)
		...         + stats.norm.rvs(scale=0.2, size=500, random_state=rng))
		>>> stats.ttest_rel(rvs1, rvs3)
		Ttest_relResult(statistic=-5.879467544540889, pvalue=7.540777129099917e-09)
	**/
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic, ?alternative:Dynamic):Dynamic;
	/**
		Compute the trimmed variance.
		
		This function computes the sample variance of an array of values,
		while ignoring values which are outside of given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tvar : float
		    Trimmed variance.
		
		Notes
		-----
		`tvar` computes the unbiased sample variance, i.e. it uses a correction
		factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tvar(x)
		35.0
		>>> stats.tvar(x, (3,17))
		20.0
	**/
	static public function tvar(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Compute the first Wasserstein distance between two 1D distributions.
		
		This distance is also known as the earth mover's distance, since it can be
		seen as the minimum amount of "work" required to transform :math:`u` into
		:math:`v`, where "work" is measured as the amount of distribution weight
		that must be moved, multiplied by the distance it has to be moved.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The first Wasserstein distance between the distributions :math:`u` and
		:math:`v` is:
		
		.. math::
		
		    l_1 (u, v) = \inf_{\pi \in \Gamma (u, v)} \int_{\mathbb{R} \times
		    \mathbb{R}} |x-y| \mathrm{d} \pi (x, y)
		
		where :math:`\Gamma (u, v)` is the set of (probability) distributions on
		:math:`\mathbb{R} \times \mathbb{R}` whose marginals are :math:`u` and
		:math:`v` on the first and second factors respectively.
		
		If :math:`U` and :math:`V` are the respective CDFs of :math:`u` and
		:math:`v`, this distance also equals to:
		
		.. math::
		
		    l_1(u, v) = \int_{-\infty}^{+\infty} |U-V|
		
		See [2]_ for a proof of the equivalence of both definitions.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Wasserstein metric", https://en.wikipedia.org/wiki/Wasserstein_metric
		.. [2] Ramdas, Garcia, Cuturi "On Wasserstein Two Sample Testing and Related
		       Families of Nonparametric Tests" (2015). :arXiv:`1509.02237`.
		
		Examples
		--------
		>>> from scipy.stats import wasserstein_distance
		>>> wasserstein_distance([0, 1, 3], [5, 6, 8])
		5.0
		>>> wasserstein_distance([0, 1], [0, 1], [3, 1], [2, 2])
		0.25
		>>> wasserstein_distance([3.4, 3.9, 7.5, 7.8], [4.5, 1.4],
		...                      [1.4, 0.9, 3.1, 7.2], [3.2, 3.5])
		4.0781331438047861
	**/
	static public function wasserstein_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Compute a weighted version of Kendall's :math:`\tau`.
		
		The weighted :math:`\tau` is a weighted version of Kendall's
		:math:`\tau` in which exchanges of high weight are more influential than
		exchanges of low weight. The default parameters compute the additive
		hyperbolic version of the index, :math:`\tau_\mathrm h`, which has
		been shown to provide the best balance between important and
		unimportant elements [1]_.
		
		The weighting is defined by means of a rank array, which assigns a
		nonnegative rank to each element (higher importance ranks being
		associated with smaller values, e.g., 0 is the highest possible rank),
		and a weigher function, which assigns a weight based on the rank to
		each element. The weight of an exchange is then the sum or the product
		of the weights of the ranks of the exchanged elements. The default
		parameters compute :math:`\tau_\mathrm h`: an exchange between
		elements with rank :math:`r` and :math:`s` (starting from zero) has
		weight :math:`1/(r+1) + 1/(s+1)`.
		
		Specifying a rank array is meaningful only if you have in mind an
		external criterion of importance. If, as it usually happens, you do
		not have in mind a specific rank, the weighted :math:`\tau` is
		defined by averaging the values obtained using the decreasing
		lexicographical rank by (`x`, `y`) and by (`y`, `x`). This is the
		behavior with default parameters. Note that the convention used
		here for ranking (lower values imply higher importance) is opposite
		to that used by other SciPy statistical functions.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of scores, of the same shape. If arrays are not 1-D, they will
		    be flattened to 1-D.
		rank : array_like of ints or bool, optional
		    A nonnegative rank assigned to each element. If it is None, the
		    decreasing lexicographical rank by (`x`, `y`) will be used: elements of
		    higher rank will be those with larger `x`-values, using `y`-values to
		    break ties (in particular, swapping `x` and `y` will give a different
		    result). If it is False, the element indices will be used
		    directly as ranks. The default is True, in which case this
		    function returns the average of the values obtained using the
		    decreasing lexicographical rank by (`x`, `y`) and by (`y`, `x`).
		weigher : callable, optional
		    The weigher function. Must map nonnegative integers (zero
		    representing the most important element) to a nonnegative weight.
		    The default, None, provides hyperbolic weighing, that is,
		    rank :math:`r` is mapped to weight :math:`1/(r+1)`.
		additive : bool, optional
		    If True, the weight of an exchange is computed by adding the
		    weights of the ranks of the exchanged elements; otherwise, the weights
		    are multiplied. The default is True.
		
		Returns
		-------
		correlation : float
		   The weighted :math:`\tau` correlation index.
		pvalue : float
		   Presently ``np.nan``, as the null statistics is unknown (even in the
		   additive hyperbolic case).
		
		See Also
		--------
		kendalltau : Calculates Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		
		Notes
		-----
		This function uses an :math:`O(n \log n)`, mergesort-based algorithm
		[1]_ that is a weighted extension of Knight's algorithm for Kendall's
		:math:`\tau` [2]_. It can compute Shieh's weighted :math:`\tau` [3]_
		between rankings without ties (i.e., permutations) by setting
		`additive` and `rank` to False, as the definition given in [1]_ is a
		generalization of Shieh's.
		
		NaNs are considered the smallest possible score.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Sebastiano Vigna, "A weighted correlation index for rankings with
		       ties", Proceedings of the 24th international conference on World
		       Wide Web, pp. 1166-1176, ACM, 2015.
		.. [2] W.R. Knight, "A Computer Method for Calculating Kendall's Tau with
		       Ungrouped Data", Journal of the American Statistical Association,
		       Vol. 61, No. 314, Part 1, pp. 436-439, 1966.
		.. [3] Grace S. Shieh. "A weighted Kendall's tau statistic", Statistics &
		       Probability Letters, Vol. 39, No. 1, pp. 17-24, 1998.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		>>> p_value
		nan
		>>> tau, p_value = stats.weightedtau(x, y, additive=False)
		>>> tau
		-0.62205716951801038
		
		NaNs are considered the smallest possible score:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, np.nan]
		>>> tau, _ = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		
		This is exactly Kendall's tau:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, _ = stats.weightedtau(x, y, weigher=lambda x: 1)
		>>> tau
		-0.47140452079103173
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> stats.weightedtau(x, y, rank=None)
		WeightedTauResult(correlation=-0.4157652301037516, pvalue=nan)
		>>> stats.weightedtau(y, x, rank=None)
		WeightedTauResult(correlation=-0.7181341329699028, pvalue=nan)
	**/
	static public function weightedtau(x:Dynamic, y:Dynamic, ?rank:Dynamic, ?weigher:Dynamic, ?additive:Dynamic):Float;
	/**
		Calculate the relative z-scores.
		
		Return an array of z-scores, i.e., scores that are standardized to
		zero mean and unit variance, where mean and variance are calculated
		from the comparison array.
		
		Parameters
		----------
		scores : array_like
		    The input for which z-scores are calculated.
		compare : array_like
		    The input from which the mean and standard deviation of the
		    normalization are taken; assumed to have the same dimension as
		    `scores`.
		axis : int or None, optional
		    Axis over which mean and variance of `compare` are calculated.
		    Default is 0. If None, compute over the whole array `scores`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle the occurrence of nans in `compare`.
		    'propagate' returns nan, 'raise' raises an exception, 'omit'
		    performs the calculations ignoring nan values. Default is
		    'propagate'. Note that when the value is 'omit', nans in `scores`
		    also propagate to the output, but they do not affect the z-scores
		    computed for the non-nan values.
		
		Returns
		-------
		zscore : array_like
		    Z-scores, in the same shape as `scores`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> from scipy.stats import zmap
		>>> a = [0.5, 2.0, 2.5, 3]
		>>> b = [0, 1, 2, 3, 4]
		>>> zmap(a, b)
		array([-1.06066017,  0.        ,  0.35355339,  0.70710678])
	**/
	static public function zmap(scores:Dynamic, compare:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the z score.
		
		Compute the z score of each value in the sample, relative to the
		sample mean and standard deviation.
		
		Parameters
		----------
		a : array_like
		    An array like object containing the sample data.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.  Note that when the value is 'omit',
		    nans in the input also propagate to the output, but they do not affect
		    the z-scores computed for the non-nan values.
		
		Returns
		-------
		zscore : array_like
		    The z-scores, standardized by mean and standard deviation of
		    input array `a`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> a = np.array([ 0.7972,  0.0767,  0.4383,  0.7866,  0.8091,
		...                0.1954,  0.6307,  0.6599,  0.1065,  0.0508])
		>>> from scipy import stats
		>>> stats.zscore(a)
		array([ 1.1273, -1.247 , -0.0552,  1.0923,  1.1664, -0.8559,  0.5786,
		        0.6748, -1.1488, -1.3324])
		
		Computing along a specified axis, using n-1 degrees of freedom
		(``ddof=1``) to calculate the standard deviation:
		
		>>> b = np.array([[ 0.3148,  0.0478,  0.6243,  0.4608],
		...               [ 0.7149,  0.0775,  0.6072,  0.9656],
		...               [ 0.6341,  0.1403,  0.9759,  0.4064],
		...               [ 0.5918,  0.6948,  0.904 ,  0.3721],
		...               [ 0.0921,  0.2481,  0.1188,  0.1366]])
		>>> stats.zscore(b, axis=1, ddof=1)
		array([[-0.19264823, -1.28415119,  1.07259584,  0.40420358],
		       [ 0.33048416, -1.37380874,  0.04251374,  1.00081084],
		       [ 0.26796377, -1.12598418,  1.23283094, -0.37481053],
		       [-0.22095197,  0.24468594,  1.19042819, -1.21416216],
		       [-0.82780366,  1.4457416 , -0.43867764, -0.1792603 ]])
		
		An example with `nan_policy='omit'`:
		
		>>> x = np.array([[25.11, 30.10, np.nan, 32.02, 43.15],
		...               [14.95, 16.06, 121.25, 94.35, 29.81]])
		>>> stats.zscore(x, axis=1, nan_policy='omit')
		array([[-1.13490897, -0.37830299,         nan, -0.08718406,  1.60039602],
		       [-0.91611681, -0.89090508,  1.4983032 ,  0.88731639, -0.5785977 ]])
	**/
	static public function zscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
}