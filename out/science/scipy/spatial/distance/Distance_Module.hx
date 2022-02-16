/* This file is generated, do not edit! */
package scipy.spatial.distance;
@:pythonImport("scipy.spatial.distance") extern class Distance_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _METRICS : Dynamic;
	static public var _METRICS_NAMES : Dynamic;
	static public var _METRIC_ALIAS : Dynamic;
	static public var _METRIC_INFOS : Dynamic;
	static public var _TEST_METRICS : Dynamic;
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
		Helper function for SciPy argument validation.
		
		Many SciPy linear algebra functions do support arbitrary array-like
		input arguments. Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	static public function _cdist_callable(XA:Dynamic, XB:Dynamic, out:Dynamic, metric:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _convert_to_bool(X:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function _convert_to_double(X:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function _convert_to_type(X:Dynamic, out_type:Dynamic):Dynamic;
	/**
		Copy the array if its base points to a parent array.
	**/
	static public function _copy_array_if_base_present(a:Dynamic):Dynamic;
	static public function _correlation_cdist_wrap(XA:Dynamic, XB:Dynamic, dm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _correlation_pdist_wrap(X:Dynamic, dm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _nbool_correspond_all(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	static public function _nbool_correspond_ft_tf(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	static public function _pdist_callable(X:Dynamic, out:Dynamic, metric:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _prepare_out_argument(out:Dynamic, dtype:Dynamic, expected_shape:Dynamic):Dynamic;
	static public function _validate_cdist_input(XA:Dynamic, XB:Dynamic, mA:Dynamic, mB:Dynamic, n:Dynamic, metric_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_hamming_kwargs(X:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_mahalanobis_kwargs(X:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_minkowski_kwargs(X:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_pdist_input(X:Dynamic, m:Dynamic, n:Dynamic, metric_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_seuclidean_kwargs(X:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_vector(u:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _validate_weight_with_size(X:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _validate_weights(w:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Compute the Bray-Curtis distance between two 1-D arrays.
		
		Bray-Curtis distance is defined as
		
		.. math::
		
		   \sum{|u_i-v_i|} / \sum{|u_i+v_i|}
		
		The Bray-Curtis distance is in the range [0, 1] if all coordinates are
		positive, and is undefined if the inputs are of length zero.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		braycurtis : double
		    The Bray-Curtis distance between 1-D arrays `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.braycurtis([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.braycurtis([1, 1, 0], [0, 1, 0])
		0.33333333333333331
	**/
	static public function braycurtis(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Canberra distance between two 1-D arrays.
		
		The Canberra distance is defined as
		
		.. math::
		
		     d(u,v) = \sum_i \frac{|u_i-v_i|}
		                          {|u_i|+|v_i|}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		canberra : double
		    The Canberra distance between vectors `u` and `v`.
		
		Notes
		-----
		When `u[i]` and `v[i]` are 0 for given i, then the fraction 0/0 = 0 is
		used in the calculation.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.canberra([1, 0, 0], [0, 1, 0])
		2.0
		>>> distance.canberra([1, 1, 0], [0, 1, 0])
		1.0
	**/
	static public function canberra(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
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
		Compute the Chebyshev distance.
		
		Computes the Chebyshev distance between two 1-D arrays `u` and `v`,
		which is defined as
		
		.. math::
		
		   \max_i {|u_i-v_i|}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input vector.
		v : (N,) array_like
		    Input vector.
		w : (N,) array_like, optional
		    Unused, as 'max' is a weightless operation. Here for API consistency.
		
		Returns
		-------
		chebyshev : double
		    The Chebyshev distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.chebyshev([1, 0, 0], [0, 1, 0])
		1
		>>> distance.chebyshev([1, 1, 0], [0, 1, 0])
		1
	**/
	static public function chebyshev(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the City Block (Manhattan) distance.
		
		Computes the Manhattan distance between two 1-D arrays `u` and `v`,
		which is defined as
		
		.. math::
		
		   \sum_i {\left| u_i - v_i \right|}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		cityblock : double
		    The City Block (Manhattan) distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.cityblock([1, 0, 0], [0, 1, 0])
		2
		>>> distance.cityblock([1, 0, 0], [0, 2, 0])
		3
		>>> distance.cityblock([1, 0, 0], [1, 1, 0])
		1
	**/
	static public function cityblock(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the correlation distance between two 1-D arrays.
		
		The correlation distance between `u` and `v`, is
		defined as
		
		.. math::
		
		    1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		              {{\|(u - \bar{u})\|}_2 {\|(v - \bar{v})\|}_2}
		
		where :math:`\bar{u}` is the mean of the elements of `u`
		and :math:`x \cdot y` is the dot product of :math:`x` and :math:`y`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		centered : bool, optional
		    If True, `u` and `v` will be centered. Default is True.
		
		Returns
		-------
		correlation : double
		    The correlation distance between 1-D array `u` and `v`.
	**/
	static public function correlation(u:Dynamic, v:Dynamic, ?w:Dynamic, ?centered:Dynamic):Dynamic;
	/**
		Compute the Cosine distance between 1-D arrays.
		
		The Cosine distance between `u` and `v`, is defined as
		
		.. math::
		
		    1 - \frac{u \cdot v}
		              {\|u\|_2 \|v\|_2}.
		
		where :math:`u \cdot v` is the dot product of :math:`u` and
		:math:`v`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		cosine : double
		    The Cosine distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.cosine([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.cosine([100, 0, 0], [0, 1, 0])
		1.0
		>>> distance.cosine([1, 1, 0], [0, 1, 0])
		0.29289321881345254
	**/
	static public function cosine(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Dice dissimilarity between two boolean 1-D arrays.
		
		The Dice dissimilarity between `u` and `v`, is
		
		.. math::
		
		     \frac{c_{TF} + c_{FT}}
		          {2c_{TT} + c_{FT} + c_{TF}}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input 1-D array.
		v : (N,) array_like, bool
		    Input 1-D array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		dice : double
		    The Dice dissimilarity between 1-D arrays `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.dice([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.dice([1, 0, 0], [1, 1, 0])
		0.3333333333333333
		>>> distance.dice([1, 0, 0], [2, 0, 0])
		-0.3333333333333333
	**/
	static public function dice(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the directed Hausdorff distance between two 2-D arrays.
		
		Distances between pairs are calculated using a Euclidean metric.
		
		Parameters
		----------
		u : (M,N) array_like
		    Input array.
		v : (O,N) array_like
		    Input array.
		seed : int or None
		    Local `numpy.random.RandomState` seed. Default is 0, a random
		    shuffling of u and v that guarantees reproducibility.
		
		Returns
		-------
		d : double
		    The directed Hausdorff distance between arrays `u` and `v`,
		
		index_1 : int
		    index of point contributing to Hausdorff pair in `u`
		
		index_2 : int
		    index of point contributing to Hausdorff pair in `v`
		
		Raises
		------
		ValueError
		    An exception is thrown if `u` and `v` do not have
		    the same number of columns.
		
		Notes
		-----
		Uses the early break technique and the random sampling approach
		described by [1]_. Although worst-case performance is ``O(m * o)``
		(as with the brute force algorithm), this is unlikely in practice
		as the input data would have to require the algorithm to explore
		every single point interaction, and after the algorithm shuffles
		the input points at that. The best case performance is O(m), which
		is satisfied by selecting an inner loop distance that is less than
		cmax and leads to an early break as often as possible. The authors
		have formally shown that the average runtime is closer to O(m).
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] A. A. Taha and A. Hanbury, "An efficient algorithm for
		       calculating the exact Hausdorff distance." IEEE Transactions On
		       Pattern Analysis And Machine Intelligence, vol. 37 pp. 2153-63,
		       2015.
		
		See Also
		--------
		scipy.spatial.procrustes : Another similarity test for two data sets
		
		Examples
		--------
		Find the directed Hausdorff distance between two 2-D arrays of
		coordinates:
		
		>>> from scipy.spatial.distance import directed_hausdorff
		>>> u = np.array([(1.0, 0.0),
		...               (0.0, 1.0),
		...               (-1.0, 0.0),
		...               (0.0, -1.0)])
		>>> v = np.array([(2.0, 0.0),
		...               (0.0, 2.0),
		...               (-2.0, 0.0),
		...               (0.0, -4.0)])
		
		>>> directed_hausdorff(u, v)[0]
		2.23606797749979
		>>> directed_hausdorff(v, u)[0]
		3.0
		
		Find the general (symmetric) Hausdorff distance between two 2-D
		arrays of coordinates:
		
		>>> max(directed_hausdorff(u, v)[0], directed_hausdorff(v, u)[0])
		3.0
		
		Find the indices of the points that generate the Hausdorff distance
		(the Hausdorff pair):
		
		>>> directed_hausdorff(v, u)[1:]
		(3, 3)
	**/
	static public function directed_hausdorff(u:Dynamic, v:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Computes the Euclidean distance between two 1-D arrays.
		
		The Euclidean distance between 1-D arrays `u` and `v`, is defined as
		
		.. math::
		
		   {\|u-v\|}_2
		
		   \left(\sum{(w_i |(u_i - v_i)|^2)}\right)^{1/2}
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		euclidean : double
		    The Euclidean distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.euclidean([1, 0, 0], [0, 1, 0])
		1.4142135623730951
		>>> distance.euclidean([1, 1, 0], [0, 1, 0])
		1.0
	**/
	static public function euclidean(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Hamming distance between two 1-D arrays.
		
		The Hamming distance between 1-D arrays `u` and `v`, is simply the
		proportion of disagreeing components in `u` and `v`. If `u` and `v` are
		boolean vectors, the Hamming distance is
		
		.. math::
		
		   \frac{c_{01} + c_{10}}{n}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		hamming : double
		    The Hamming distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.hamming([1, 0, 0], [0, 1, 0])
		0.66666666666666663
		>>> distance.hamming([1, 0, 0], [1, 1, 0])
		0.33333333333333331
		>>> distance.hamming([1, 0, 0], [2, 0, 0])
		0.33333333333333331
		>>> distance.hamming([1, 0, 0], [3, 0, 0])
		0.33333333333333331
	**/
	static public function hamming(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Return True if input array is a valid distance matrix.
		
		Distance matrices must be 2-dimensional numpy arrays.
		They must have a zero-diagonal, and they must be symmetric.
		
		Parameters
		----------
		D : array_like
		    The candidate object to test for validity.
		tol : float, optional
		    The distance matrix should be symmetric. `tol` is the maximum
		    difference between entries ``ij`` and ``ji`` for the distance
		    metric to be considered symmetric.
		throw : bool, optional
		    An exception is thrown if the distance matrix passed is not valid.
		name : str, optional
		    The name of the variable to checked. This is useful if
		    throw is set to True so the offending variable can be identified
		    in the exception message when an exception is thrown.
		warning : bool, optional
		    Instead of throwing an exception, a warning message is
		    raised.
		
		Returns
		-------
		valid : bool
		    True if the variable `D` passed is a valid distance matrix.
		
		Notes
		-----
		Small numerical differences in `D` and `D.T` and non-zeroness of
		the diagonal are ignored if they are within the tolerance specified
		by `tol`.
	**/
	static public function is_valid_dm(D:Dynamic, ?tol:Dynamic, ?_throw:Dynamic, ?name:Dynamic, ?warning:Dynamic):Bool;
	/**
		Return True if the input array is a valid condensed distance matrix.
		
		Condensed distance matrices must be 1-dimensional numpy arrays.
		Their length must be a binomial coefficient :math:`{n \choose 2}`
		for some positive integer n.
		
		Parameters
		----------
		y : array_like
		    The condensed distance matrix.
		warning : bool, optional
		    Invokes a warning if the variable passed is not a valid
		    condensed distance matrix. The warning message explains why
		    the distance matrix is not valid.  `name` is used when
		    referencing the offending variable.
		throw : bool, optional
		    Throws an exception if the variable passed is not a valid
		    condensed distance matrix.
		name : bool, optional
		    Used when referencing the offending variable in the
		    warning or exception message.
	**/
	static public function is_valid_y(y:Dynamic, ?warning:Dynamic, ?_throw:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Jaccard-Needham dissimilarity between two boolean 1-D arrays.
		
		The Jaccard-Needham dissimilarity between 1-D boolean arrays `u` and `v`,
		is defined as
		
		.. math::
		
		   \frac{c_{TF} + c_{FT}}
		        {c_{TT} + c_{FT} + c_{TF}}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		jaccard : double
		    The Jaccard distance between vectors `u` and `v`.
		
		Notes
		-----
		When both `u` and `v` lead to a `0/0` division i.e. there is no overlap
		between the items in the vectors the returned distance is 0. See the
		Wikipedia page on the Jaccard index [1]_, and this paper [2]_.
		
		.. versionchanged:: 1.2.0
		    Previously, when `u` and `v` lead to a `0/0` division, the function
		    would return NaN. This was changed to return 0 instead.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Jaccard_index
		.. [2] S. Kosub, "A note on the triangle inequality for the Jaccard
		   distance", 2016, :arxiv:`1612.02696`
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.jaccard([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.jaccard([1, 0, 0], [1, 1, 0])
		0.5
		>>> distance.jaccard([1, 0, 0], [1, 2, 0])
		0.5
		>>> distance.jaccard([1, 0, 0], [1, 1, 1])
		0.66666666666666663
	**/
	static public function jaccard(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Jensen-Shannon distance (metric) between
		two probability arrays. This is the square root
		of the Jensen-Shannon divergence.
		
		The Jensen-Shannon distance between two probability
		vectors `p` and `q` is defined as,
		
		.. math::
		
		   \sqrt{\frac{D(p \parallel m) + D(q \parallel m)}{2}}
		
		where :math:`m` is the pointwise mean of :math:`p` and :math:`q`
		and :math:`D` is the Kullback-Leibler divergence.
		
		This routine will normalize `p` and `q` if they don't sum to 1.0.
		
		Parameters
		----------
		p : (N,) array_like
		    left probability vector
		q : (N,) array_like
		    right probability vector
		base : double, optional
		    the base of the logarithm used to compute the output
		    if not given, then the routine uses the default base of
		    scipy.stats.entropy.
		axis : int, optional
		    Axis along which the Jensen-Shannon distances are computed. The default
		    is 0.
		
		    .. versionadded:: 1.7.0
		keepdims : bool, optional
		    If this is set to `True`, the reduced axes are left in the
		    result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		    Default is False.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		js : double or ndarray
		    The Jensen-Shannon distances between `p` and `q` along the `axis`.
		
		Notes
		-----
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.jensenshannon([1.0, 0.0, 0.0], [0.0, 1.0, 0.0], 2.0)
		1.0
		>>> distance.jensenshannon([1.0, 0.0], [0.5, 0.5])
		0.46450140402245893
		>>> distance.jensenshannon([1.0, 0.0, 0.0], [1.0, 0.0, 0.0])
		0.0
		>>> a = np.array([[1, 2, 3, 4],
		...               [5, 6, 7, 8],
		...               [9, 10, 11, 12]])
		>>> b = np.array([[13, 14, 15, 16],
		...               [17, 18, 19, 20],
		...               [21, 22, 23, 24]])
		>>> distance.jensenshannon(a, b, axis=0)
		array([0.1954288, 0.1447697, 0.1138377, 0.0927636])
		>>> distance.jensenshannon(a, b, axis=1)
		array([0.1402339, 0.0399106, 0.0201815])
	**/
	static public function jensenshannon(p:Dynamic, q:Dynamic, ?base:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the Kulczynski 1 dissimilarity between two boolean 1-D arrays.
		
		The Kulczynski 1 dissimilarity between two boolean 1-D arrays `u` and `v`
		of length ``n``, is defined as
		
		.. math::
		
		     \frac{c_{11}}
		          {c_{01} + c_{10}}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k \in {0, 1, ..., n-1}`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		kulczynski1 : float
		    The Kulczynski 1 distance between vectors `u` and `v`.
		
		See Also
		--------
		
		kulsinski
		
		Notes
		-----
		This measure has a minimum value of 0 and no upper limit.
		It is un-defined when there are no non-matches.
		
		.. versionadded:: 1.8.0
		
		References
		----------
		.. [1] Kulczynski S. et al. Bulletin
		       International de l'Academie Polonaise des Sciences
		       et des Lettres, Classe des Sciences Mathematiques
		       et Naturelles, Serie B (Sciences Naturelles). 1927;
		       Supplement II: 57-203.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.kulczynski1([1, 0, 0], [0, 1, 0])
		0.0
		>>> distance.kulczynski1([True, False, False], [True, True, False])
		1.0
		>>> distance.kulczynski1([True, False, False], True)
		0.5
		>>> distance.kulczynski1([1, 0, 0], [3, 1, 0])
		-3.0
	**/
	static public function kulczynski1(u:Dynamic, v:Dynamic, ?w:Dynamic):Float;
	/**
		Compute the Kulsinski dissimilarity between two boolean 1-D arrays.
		
		The Kulsinski dissimilarity between two boolean 1-D arrays `u` and `v`,
		is defined as
		
		.. math::
		
		     \frac{c_{TF} + c_{FT} - c_{TT} + n}
		          {c_{FT} + c_{TF} + n}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		kulsinski : double
		    The Kulsinski distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.kulsinski([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.kulsinski([1, 0, 0], [1, 1, 0])
		0.75
		>>> distance.kulsinski([1, 0, 0], [2, 1, 0])
		0.33333333333333331
		>>> distance.kulsinski([1, 0, 0], [3, 1, 0])
		-0.5
	**/
	static public function kulsinski(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Mahalanobis distance between two 1-D arrays.
		
		The Mahalanobis distance between 1-D arrays `u` and `v`, is defined as
		
		.. math::
		
		   \sqrt{ (u-v) V^{-1} (u-v)^T }
		
		where ``V`` is the covariance matrix.  Note that the argument `VI`
		is the inverse of ``V``.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		VI : array_like
		    The inverse of the covariance matrix.
		
		Returns
		-------
		mahalanobis : double
		    The Mahalanobis distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> iv = [[1, 0.5, 0.5], [0.5, 1, 0.5], [0.5, 0.5, 1]]
		>>> distance.mahalanobis([1, 0, 0], [0, 1, 0], iv)
		1.0
		>>> distance.mahalanobis([0, 2, 0], [0, 1, 0], iv)
		1.0
		>>> distance.mahalanobis([2, 0, 0], [0, 1, 0], iv)
		1.7320508075688772
	**/
	static public function mahalanobis(u:Dynamic, v:Dynamic, VI:Dynamic):Dynamic;
	/**
		`matching` is deprecated!
		spatial.distance.matching is deprecated in scipy 1.0.0; use spatial.distance.hamming instead.
		
		Compute the Hamming distance between two boolean 1-D arrays.
		
		This is a deprecated synonym for :func:`hamming`.
	**/
	static public function matching(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the Minkowski distance between two 1-D arrays.
		
		The Minkowski distance between 1-D arrays `u` and `v`,
		is defined as
		
		.. math::
		
		   {\|u-v\|}_p = (\sum{|u_i - v_i|^p})^{1/p}.
		
		
		   \left(\sum{w_i(|(u_i - v_i)|^p)}\right)^{1/p}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		p : scalar
		    The order of the norm of the difference :math:`{\|u-v\|}_p`. Note
		    that for :math:`0 < p < 1`, the triangle inequality only holds with
		    an additional multiplicative factor, i.e. it is only a quasi-metric.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		minkowski : double
		    The Minkowski distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.minkowski([1, 0, 0], [0, 1, 0], 1)
		2.0
		>>> distance.minkowski([1, 0, 0], [0, 1, 0], 2)
		1.4142135623730951
		>>> distance.minkowski([1, 0, 0], [0, 1, 0], 3)
		1.2599210498948732
		>>> distance.minkowski([1, 1, 0], [0, 1, 0], 1)
		1.0
		>>> distance.minkowski([1, 1, 0], [0, 1, 0], 2)
		1.0
		>>> distance.minkowski([1, 1, 0], [0, 1, 0], 3)
		1.0
	**/
	static public function minkowski(u:Dynamic, v:Dynamic, ?p:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter. For tensors with rank different from
		1 or 2, only `ord=None` is supported.
		
		Parameters
		----------
		a : array_like
		    Input array. If `axis` is None, `a` must be 1-D or 2-D, unless `ord`
		    is None. If both `axis` and `ord` are None, the 2-norm of
		    ``a.ravel`` will be returned.
		ord : {int, inf, -inf, 'fro', 'nuc', None}, optional
		    Order of the norm (see table under ``Notes``). inf means NumPy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms. If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed. If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one. With this option the result will
		    broadcast correctly against the original `a`.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(a), axis=1))      max(abs(a))
		-inf   min(sum(abs(a), axis=1))      min(abs(a))
		0      --                            sum(a != 0)
		1      max(sum(abs(a), axis=0))      as below
		-1     min(sum(abs(a), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(a)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		Both the Frobenius and nuclear norm orders are only defined for
		matrices.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return the number of original observations that correspond to a
		square, redundant distance matrix.
		
		Parameters
		----------
		d : array_like
		    The target distance matrix.
		
		Returns
		-------
		num_obs_dm : int
		    The number of observations in the redundant distance matrix.
	**/
	static public function num_obs_dm(d:Dynamic):Int;
	/**
		Return the number of original observations that correspond to a
		condensed distance matrix.
		
		Parameters
		----------
		Y : array_like
		    Condensed distance matrix.
		
		Returns
		-------
		n : int
		    The number of observations in the condensed distance matrix `Y`.
	**/
	static public function num_obs_y(Y:Dynamic):Int;
	/**
		Pairwise distances between observations in n-dimensional space.
		
		See Notes for common calling conventions.
		
		Parameters
		----------
		X : array_like
		    An m by n array of m original observations in an
		    n-dimensional space.
		metric : str or function, optional
		    The distance metric to use. The distance function can
		    be 'braycurtis', 'canberra', 'chebyshev', 'cityblock',
		    'correlation', 'cosine', 'dice', 'euclidean', 'hamming',
		    'jaccard', 'jensenshannon', 'kulsinski', 'kulczynski1',
		    'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto',
		    'russellrao', 'seuclidean', 'sokalmichener', 'sokalsneath',
		    'sqeuclidean', 'yule'.
		**kwargs : dict, optional
		    Extra arguments to `metric`: refer to each metric documentation for a
		    list of all possible arguments.
		
		    Some possible arguments:
		
		    p : scalar
		    The p-norm to apply for Minkowski, weighted and unweighted.
		    Default: 2.
		
		    w : ndarray
		    The weight vector for metrics that support weights (e.g., Minkowski).
		
		    V : ndarray
		    The variance vector for standardized Euclidean.
		    Default: var(X, axis=0, ddof=1)
		
		    VI : ndarray
		    The inverse of the covariance matrix for Mahalanobis.
		    Default: inv(cov(X.T)).T
		
		    out : ndarray.
		    The output array
		    If not None, condensed distance matrix Y is stored in this array.
		
		Returns
		-------
		Y : ndarray
		    Returns a condensed distance matrix Y. For each :math:`i` and :math:`j`
		    (where :math:`i<j<m`),where m is the number of original observations.
		    The metric ``dist(u=X[i], v=X[j])`` is computed and stored in entry ``m
		    * i + j - ((i + 2) * (i + 1)) // 2``.
		
		See Also
		--------
		squareform : converts between condensed distance matrices and
		             square distance matrices.
		
		Notes
		-----
		See ``squareform`` for information on how to calculate the index of
		this entry or to convert the condensed distance matrix to a
		redundant square matrix.
		
		The following are common calling conventions.
		
		1. ``Y = pdist(X, 'euclidean')``
		
		   Computes the distance between m points using Euclidean distance
		   (2-norm) as the distance metric between the points. The points
		   are arranged as m n-dimensional row vectors in the matrix X.
		
		2. ``Y = pdist(X, 'minkowski', p=2.)``
		
		   Computes the distances using the Minkowski distance
		   :math:`\|u-v\|_p` (:math:`p`-norm) where :math:`p > 0` (note
		   that this is only a quasi-metric if :math:`0 < p < 1`).
		
		3. ``Y = pdist(X, 'cityblock')``
		
		   Computes the city block or Manhattan distance between the
		   points.
		
		4. ``Y = pdist(X, 'seuclidean', V=None)``
		
		   Computes the standardized Euclidean distance. The standardized
		   Euclidean distance between two n-vectors ``u`` and ``v`` is
		
		   .. math::
		
		      \sqrt{\sum {(u_i-v_i)^2 / V[x_i]}}
		
		
		   V is the variance vector; V[i] is the variance computed over all
		   the i'th components of the points.  If not passed, it is
		   automatically computed.
		
		5. ``Y = pdist(X, 'sqeuclidean')``
		
		   Computes the squared Euclidean distance :math:`\|u-v\|_2^2` between
		   the vectors.
		
		6. ``Y = pdist(X, 'cosine')``
		
		   Computes the cosine distance between vectors u and v,
		
		   .. math::
		
		      1 - \frac{u \cdot v}
		               {{\|u\|}_2 {\|v\|}_2}
		
		   where :math:`\|*\|_2` is the 2-norm of its argument ``*``, and
		   :math:`u \cdot v` is the dot product of ``u`` and ``v``.
		
		7. ``Y = pdist(X, 'correlation')``
		
		   Computes the correlation distance between vectors u and v. This is
		
		   .. math::
		
		      1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		               {{\|(u - \bar{u})\|}_2 {\|(v - \bar{v})\|}_2}
		
		   where :math:`\bar{v}` is the mean of the elements of vector v,
		   and :math:`x \cdot y` is the dot product of :math:`x` and :math:`y`.
		
		8. ``Y = pdist(X, 'hamming')``
		
		   Computes the normalized Hamming distance, or the proportion of
		   those vector elements between two n-vectors ``u`` and ``v``
		   which disagree. To save memory, the matrix ``X`` can be of type
		   boolean.
		
		9. ``Y = pdist(X, 'jaccard')``
		
		   Computes the Jaccard distance between the points. Given two
		   vectors, ``u`` and ``v``, the Jaccard distance is the
		   proportion of those elements ``u[i]`` and ``v[i]`` that
		   disagree.
		
		10. ``Y = pdist(X, 'jensenshannon')``
		
		    Computes the Jensen-Shannon distance between two probability arrays.
		    Given two probability vectors, :math:`p` and :math:`q`, the
		    Jensen-Shannon distance is
		
		    .. math::
		
		       \sqrt{\frac{D(p \parallel m) + D(q \parallel m)}{2}}
		
		    where :math:`m` is the pointwise mean of :math:`p` and :math:`q`
		    and :math:`D` is the Kullback-Leibler divergence.
		
		11. ``Y = pdist(X, 'chebyshev')``
		
		    Computes the Chebyshev distance between the points. The
		    Chebyshev distance between two n-vectors ``u`` and ``v`` is the
		    maximum norm-1 distance between their respective elements. More
		    precisely, the distance is given by
		
		    .. math::
		
		       d(u,v) = \max_i {|u_i-v_i|}
		
		12. ``Y = pdist(X, 'canberra')``
		
		    Computes the Canberra distance between the points. The
		    Canberra distance between two points ``u`` and ``v`` is
		
		    .. math::
		
		      d(u,v) = \sum_i \frac{|u_i-v_i|}
		                           {|u_i|+|v_i|}
		
		
		13. ``Y = pdist(X, 'braycurtis')``
		
		    Computes the Bray-Curtis distance between the points. The
		    Bray-Curtis distance between two points ``u`` and ``v`` is
		
		
		    .. math::
		
		         d(u,v) = \frac{\sum_i {|u_i-v_i|}}
		                        {\sum_i {|u_i+v_i|}}
		
		14. ``Y = pdist(X, 'mahalanobis', VI=None)``
		
		    Computes the Mahalanobis distance between the points. The
		    Mahalanobis distance between two points ``u`` and ``v`` is
		    :math:`\sqrt{(u-v)(1/V)(u-v)^T}` where :math:`(1/V)` (the ``VI``
		    variable) is the inverse covariance. If ``VI`` is not None,
		    ``VI`` will be used as the inverse covariance matrix.
		
		15. ``Y = pdist(X, 'yule')``
		
		    Computes the Yule distance between each pair of boolean
		    vectors. (see yule function documentation)
		
		16. ``Y = pdist(X, 'matching')``
		
		    Synonym for 'hamming'.
		
		17. ``Y = pdist(X, 'dice')``
		
		    Computes the Dice distance between each pair of boolean
		    vectors. (see dice function documentation)
		
		18. ``Y = pdist(X, 'kulsinski')``
		
		    Computes the Kulsinski distance between each pair of
		    boolean vectors. (see kulsinski function documentation)
		
		19. ``Y = pdist(X, 'rogerstanimoto')``
		
		    Computes the Rogers-Tanimoto distance between each pair of
		    boolean vectors. (see rogerstanimoto function documentation)
		
		20. ``Y = pdist(X, 'russellrao')``
		
		    Computes the Russell-Rao distance between each pair of
		    boolean vectors. (see russellrao function documentation)
		
		21. ``Y = pdist(X, 'sokalmichener')``
		
		    Computes the Sokal-Michener distance between each pair of
		    boolean vectors. (see sokalmichener function documentation)
		
		22. ``Y = pdist(X, 'sokalsneath')``
		
		    Computes the Sokal-Sneath distance between each pair of
		    boolean vectors. (see sokalsneath function documentation)
		
		23. ``Y = pdist(X, 'kulczynski1')``
		
		    Computes the Kulczynski 1 distance between each pair of
		    boolean vectors. (see kulczynski1 function documentation)
		
		24. ``Y = pdist(X, f)``
		
		    Computes the distance between all pairs of vectors in X
		    using the user supplied 2-arity function f. For example,
		    Euclidean distance between the vectors could be computed
		    as follows::
		
		      dm = pdist(X, lambda u, v: np.sqrt(((u-v)**2).sum()))
		
		    Note that you should avoid passing a reference to one of
		    the distance functions defined in this library. For example,::
		
		      dm = pdist(X, sokalsneath)
		
		    would calculate the pair-wise distances between the vectors in
		    X using the Python function sokalsneath. This would result in
		    sokalsneath being called :math:`{n \choose 2}` times, which
		    is inefficient. Instead, the optimized C version is more
		    efficient, and we call it using the following syntax.::
		
		      dm = pdist(X, 'sokalsneath')
	**/
	static public function pdist(X:Dynamic, ?metric:Dynamic, ?out:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rel_entr(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		rel_entr(x, y, out=None)
		
		Elementwise function for computing relative entropy.
		
		.. math::
		
		    \mathrm{rel\_entr}(x, y) =
		        \begin{cases}
		            x \log(x / y) & x > 0, y > 0 \\
		            0 & x = 0, y \ge 0 \\
		            \infty & \text{otherwise}
		        \end{cases}
		
		Parameters
		----------
		x, y : array_like
		    Input arrays
		out : ndarray, optional
		    Optional output array for the function results
		
		Returns
		-------
		scalar or ndarray
		    Relative entropy of the inputs
		
		See Also
		--------
		entr, kl_div
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		This function is jointly convex in x and y.
		
		The origin of this function is in convex programming; see
		[1]_. Given two discrete probability distributions :math:`p_1,
		\ldots, p_n` and :math:`q_1, \ldots, q_n`, to get the relative
		entropy of statistics compute the sum
		
		.. math::
		
		    \sum_{i = 1}^n \mathrm{rel\_entr}(p_i, q_i).
		
		See [2]_ for details.
		
		References
		----------
		.. [1] Grant, Boyd, and Ye, "CVX: Matlab Software for Disciplined Convex
		    Programming", http://cvxr.com/cvx/
		.. [2] Kullback-Leibler divergence,
		    https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
	**/
	static public function rel_entr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the Rogers-Tanimoto dissimilarity between two boolean 1-D arrays.
		
		The Rogers-Tanimoto dissimilarity between two boolean 1-D arrays
		`u` and `v`, is defined as
		
		.. math::
		   \frac{R}
		        {c_{TT} + c_{FF} + R}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n` and :math:`R = 2(c_{TF} + c_{FT})`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		rogerstanimoto : double
		    The Rogers-Tanimoto dissimilarity between vectors
		    `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.rogerstanimoto([1, 0, 0], [0, 1, 0])
		0.8
		>>> distance.rogerstanimoto([1, 0, 0], [1, 1, 0])
		0.5
		>>> distance.rogerstanimoto([1, 0, 0], [2, 0, 0])
		-1.0
	**/
	static public function rogerstanimoto(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Russell-Rao dissimilarity between two boolean 1-D arrays.
		
		The Russell-Rao dissimilarity between two boolean 1-D arrays, `u` and
		`v`, is defined as
		
		.. math::
		
		  \frac{n - c_{TT}}
		       {n}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		russellrao : double
		    The Russell-Rao dissimilarity between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.russellrao([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.russellrao([1, 0, 0], [1, 1, 0])
		0.6666666666666666
		>>> distance.russellrao([1, 0, 0], [2, 0, 0])
		0.3333333333333333
	**/
	static public function russellrao(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Return the standardized Euclidean distance between two 1-D arrays.
		
		The standardized Euclidean distance between `u` and `v`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		V : (N,) array_like
		    `V` is an 1-D array of component variances. It is usually computed
		    among a larger collection vectors.
		
		Returns
		-------
		seuclidean : double
		    The standardized Euclidean distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.seuclidean([1, 0, 0], [0, 1, 0], [0.1, 0.1, 0.1])
		4.4721359549995796
		>>> distance.seuclidean([1, 0, 0], [0, 1, 0], [1, 0.1, 0.1])
		3.3166247903553998
		>>> distance.seuclidean([1, 0, 0], [0, 1, 0], [10, 0.1, 0.1])
		3.1780497164141406
	**/
	static public function seuclidean(u:Dynamic, v:Dynamic, V:Dynamic):Dynamic;
	/**
		Compute the Sokal-Michener dissimilarity between two boolean 1-D arrays.
		
		The Sokal-Michener dissimilarity between boolean 1-D arrays `u` and `v`,
		is defined as
		
		.. math::
		
		   \frac{R}
		        {S + R}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`, :math:`R = 2 * (c_{TF} + c_{FT})` and
		:math:`S = c_{FF} + c_{TT}`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		sokalmichener : double
		    The Sokal-Michener dissimilarity between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.sokalmichener([1, 0, 0], [0, 1, 0])
		0.8
		>>> distance.sokalmichener([1, 0, 0], [1, 1, 0])
		0.5
		>>> distance.sokalmichener([1, 0, 0], [2, 0, 0])
		-1.0
	**/
	static public function sokalmichener(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the Sokal-Sneath dissimilarity between two boolean 1-D arrays.
		
		The Sokal-Sneath dissimilarity between `u` and `v`,
		
		.. math::
		
		   \frac{R}
		        {c_{TT} + R}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n` and :math:`R = 2(c_{TF} + c_{FT})`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		sokalsneath : double
		    The Sokal-Sneath dissimilarity between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.sokalsneath([1, 0, 0], [0, 1, 0])
		1.0
		>>> distance.sokalsneath([1, 0, 0], [1, 1, 0])
		0.66666666666666663
		>>> distance.sokalsneath([1, 0, 0], [2, 1, 0])
		0.0
		>>> distance.sokalsneath([1, 0, 0], [3, 1, 0])
		-2.0
	**/
	static public function sokalsneath(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Compute the squared Euclidean distance between two 1-D arrays.
		
		The squared Euclidean distance between `u` and `v` is defined as
		
		.. math::
		
		   {\|u-v\|}_2^2
		
		   \left(\sum{(w_i |(u_i - v_i)|^2)}\right)
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		sqeuclidean : double
		    The squared Euclidean distance between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.sqeuclidean([1, 0, 0], [0, 1, 0])
		2.0
		>>> distance.sqeuclidean([1, 1, 0], [0, 1, 0])
		1.0
	**/
	static public function sqeuclidean(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Convert a vector-form distance vector to a square-form distance
		matrix, and vice-versa.
		
		Parameters
		----------
		X : array_like
		    Either a condensed or redundant distance matrix.
		force : str, optional
		    As with MATLAB(TM), if force is equal to ``'tovector'`` or
		    ``'tomatrix'``, the input will be treated as a distance matrix or
		    distance vector respectively.
		checks : bool, optional
		    If set to False, no checks will be made for matrix
		    symmetry nor zero diagonals. This is useful if it is known that
		    ``X - X.T1`` is small and ``diag(X)`` is close to zero.
		    These values are ignored any way so they do not disrupt the
		    squareform transformation.
		
		Returns
		-------
		Y : ndarray
		    If a condensed distance matrix is passed, a redundant one is
		    returned, or if a redundant one is passed, a condensed distance
		    matrix is returned.
		
		Notes
		-----
		1. ``v = squareform(X)``
		
		   Given a square n-by-n symmetric distance matrix ``X``,
		   ``v = squareform(X)`` returns a ``n * (n-1) / 2``
		   (i.e. binomial coefficient n choose 2) sized vector `v`
		   where :math:`v[{n \choose 2} - {n-i \choose 2} + (j-i-1)]`
		   is the distance between distinct points ``i`` and ``j``.
		   If ``X`` is non-square or asymmetric, an error is raised.
		
		2. ``X = squareform(v)``
		
		   Given a ``n * (n-1) / 2`` sized vector ``v``
		   for some integer ``n >= 1`` encoding distances as described,
		   ``X = squareform(v)`` returns a n-by-n distance matrix ``X``.
		   The ``X[i, j]`` and ``X[j, i]`` values are set to
		   :math:`v[{n \choose 2} - {n-i \choose 2} + (j-i-1)]`
		   and all diagonal elements are zero.
		
		In SciPy 0.19.0, ``squareform`` stopped casting all input types to
		float64, and started returning arrays of the same dtype as the input.
	**/
	static public function squareform(X:Dynamic, ?force:Dynamic, ?checks:Dynamic):Dynamic;
	/**
		Compute the Yule dissimilarity between two boolean 1-D arrays.
		
		The Yule dissimilarity is defined as
		
		.. math::
		
		     \frac{R}{c_{TT} * c_{FF} + \frac{R}{2}}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n` and :math:`R = 2.0 * c_{TF} * c_{FT}`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		w : (N,) array_like, optional
		    The weights for each value in `u` and `v`. Default is None,
		    which gives each value a weight of 1.0
		
		Returns
		-------
		yule : double
		    The Yule dissimilarity between vectors `u` and `v`.
		
		Examples
		--------
		>>> from scipy.spatial import distance
		>>> distance.yule([1, 0, 0], [0, 1, 0])
		2.0
		>>> distance.yule([1, 1, 0], [0, 1, 0])
		0.0
	**/
	static public function yule(u:Dynamic, v:Dynamic, ?w:Dynamic):Dynamic;
}