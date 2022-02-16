/* This file is generated, do not edit! */
package scipy.cluster.vq;
@:pythonImport("scipy.cluster.vq") extern class Vq_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
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
	/**
		"raw" version of k-means.
		
		Returns
		-------
		code_book
		    The lowest distortion codebook found.
		avg_dist
		    The average distance a observation is from a code in the book.
		    Lower means the code_book matches the data better.
		
		See Also
		--------
		kmeans : wrapper around k-means
		
		Examples
		--------
		Note: not whitened in this example.
		
		>>> from numpy import array
		>>> from scipy.cluster.vq import _kmeans
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 1.0,1.0]])
		>>> book = array((features[0],features[2]))
		>>> _kmeans(features,book)
		(array([[ 1.7       ,  2.4       ],
		       [ 0.73333333,  1.13333333]]), 0.40563916697728591)
	**/
	static public function _kmeans(obs:Dynamic, guess:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		Pick k points at random in data (one row = one observation).
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 are assumed to describe one
		    dimensional data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
		rng : `numpy.random.Generator` or `numpy.random.RandomState`
		    Random number generator.
		
		Returns
		-------
		x : ndarray
		    A 'k' by 'N' containing the initial centroids
	**/
	static public function _kpoints(data:Dynamic, k:Dynamic, rng:Dynamic):Dynamic;
	/**
		Picks k points in the data based on the kmeans++ method.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 is assumed to describe 1-D
		    data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
		rng : `numpy.random.Generator` or `numpy.random.RandomState`
		    Random number generator.
		
		Returns
		-------
		init : ndarray
		    A 'k' by 'N' containing the initial centroids.
		
		References
		----------
		.. [1] D. Arthur and S. Vassilvitskii, "k-means++: the advantages of
		   careful seeding", Proceedings of the Eighteenth Annual ACM-SIAM Symposium
		   on Discrete Algorithms, 2007.
	**/
	static public function _kpp(data:Dynamic, k:Dynamic, rng:Dynamic):Dynamic;
	/**
		Returns k samples of a random variable whose parameters depend on data.
		
		More precisely, it returns k observations sampled from a Gaussian random
		variable whose mean and covariances are the ones estimated from the data.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 is assumed to describe 1-D
		    data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
		rng : `numpy.random.Generator` or `numpy.random.RandomState`
		    Random number generator.
		
		Returns
		-------
		x : ndarray
		    A 'k' by 'N' containing the initial centroids
	**/
	static public function _krandinit(data:Dynamic, k:Dynamic, rng:Dynamic):Dynamic;
	/**
		Raise a ClusterError when called.
	**/
	static public function _missing_raise():Dynamic;
	/**
		Print a warning when called.
	**/
	static public function _missing_warn():Dynamic;
	static public var _valid_init_meth : Dynamic;
	static public var _valid_miss_meth : Dynamic;
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
		Performs k-means on a set of observation vectors forming k clusters.
		
		The k-means algorithm adjusts the classification of the observations
		into clusters and updates the cluster centroids until the position of
		the centroids is stable over successive iterations. In this
		implementation of the algorithm, the stability of the centroids is
		determined by comparing the absolute value of the change in the average
		Euclidean distance between the observations and their corresponding
		centroids against a threshold. This yields
		a code book mapping centroids to codes and vice versa.
		
		Parameters
		----------
		obs : ndarray
		   Each row of the M by N array is an observation vector. The
		   columns are the features seen during each observation.
		   The features must be whitened first with the `whiten` function.
		
		k_or_guess : int or ndarray
		   The number of centroids to generate. A code is assigned to
		   each centroid, which is also the row index of the centroid
		   in the code_book matrix generated.
		
		   The initial k centroids are chosen by randomly selecting
		   observations from the observation matrix. Alternatively,
		   passing a k by N array specifies the initial k centroids.
		
		iter : int, optional
		   The number of times to run k-means, returning the codebook
		   with the lowest distortion. This argument is ignored if
		   initial centroids are specified with an array for the
		   ``k_or_guess`` parameter. This parameter does not represent the
		   number of iterations of the k-means algorithm.
		
		thresh : float, optional
		   Terminates the k-means algorithm if the change in
		   distortion since the last k-means iteration is less than
		   or equal to threshold.
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		seed : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    Seed for initializing the pseudo-random number generator.
		    If `seed` is None (or `numpy.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		    The default is None.
		
		Returns
		-------
		codebook : ndarray
		   A k by N array of k centroids. The ith centroid
		   codebook[i] is represented with the code i. The centroids
		   and codes generated represent the lowest distortion seen,
		   not necessarily the globally minimal distortion.
		   Note that the number of centroids is not necessarily the same as the
		   ``k_or_guess`` parameter, because centroids assigned to no observations
		   are removed during iterations.
		
		distortion : float
		   The mean (non-squared) Euclidean distance between the observations
		   passed and the centroids generated. Note the difference to the standard
		   definition of distortion in the context of the k-means algorithm, which
		   is the sum of the squared distances.
		
		See Also
		--------
		kmeans2 : a different implementation of k-means clustering
		   with more methods for generating initial centroids but without
		   using a distortion change threshold as a stopping criterion.
		
		whiten : must be called prior to passing an observation matrix
		   to kmeans.
		
		Notes
		-----
		For more functionalities or optimal performance, you can use
		`sklearn.cluster.KMeans <https://scikit-learn.org/stable/modules/generated/sklearn.cluster.KMeans.html>`_.
		`This <https://hdbscan.readthedocs.io/en/latest/performance_and_scalability.html#comparison-of-high-performance-implementations>`_
		is a benchmark result of several implementations.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq, kmeans, whiten
		>>> import matplotlib.pyplot as plt
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 0.1,0.1],
		...                    [ 0.2,1.8],
		...                    [ 2.0,0.5],
		...                    [ 0.3,1.5],
		...                    [ 1.0,1.0]])
		>>> whitened = whiten(features)
		>>> book = np.array((whitened[0],whitened[2]))
		>>> kmeans(whitened,book)
		(array([[ 2.3110306 ,  2.86287398],    # random
		       [ 0.93218041,  1.24398691]]), 0.85684700941625547)
		
		>>> codes = 3
		>>> kmeans(whitened,codes)
		(array([[ 2.3110306 ,  2.86287398],    # random
		       [ 1.32544402,  0.65607529],
		       [ 0.40782893,  2.02786907]]), 0.5196582527686241)
		
		>>> # Create 50 datapoints in two clusters a and b
		>>> pts = 50
		>>> rng = np.random.default_rng()
		>>> a = rng.multivariate_normal([0, 0], [[4, 1], [1, 4]], size=pts)
		>>> b = rng.multivariate_normal([30, 10],
		...                             [[10, 2], [2, 1]],
		...                             size=pts)
		>>> features = np.concatenate((a, b))
		>>> # Whiten data
		>>> whitened = whiten(features)
		>>> # Find 2 clusters in the data
		>>> codebook, distortion = kmeans(whitened, 2)
		>>> # Plot whitened data and cluster centers in red
		>>> plt.scatter(whitened[:, 0], whitened[:, 1])
		>>> plt.scatter(codebook[:, 0], codebook[:, 1], c='r')
		>>> plt.show()
	**/
	static public function kmeans(obs:Dynamic, k_or_guess:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?check_finite:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Classify a set of observations into k clusters using the k-means algorithm.
		
		The algorithm attempts to minimize the Euclidean distance between
		observations and centroids. Several initialization methods are
		included.
		
		Parameters
		----------
		data : ndarray
		    A 'M' by 'N' array of 'M' observations in 'N' dimensions or a length
		    'M' array of 'M' 1-D observations.
		k : int or ndarray
		    The number of clusters to form as well as the number of
		    centroids to generate. If `minit` initialization string is
		    'matrix', or if a ndarray is given instead, it is
		    interpreted as initial cluster to use instead.
		iter : int, optional
		    Number of iterations of the k-means algorithm to run. Note
		    that this differs in meaning from the iters parameter to
		    the kmeans function.
		thresh : float, optional
		    (not used yet)
		minit : str, optional
		    Method for initialization. Available methods are 'random',
		    'points', '++' and 'matrix':
		
		    'random': generate k centroids from a Gaussian with mean and
		    variance estimated from the data.
		
		    'points': choose k observations (rows) at random from data for
		    the initial centroids.
		
		    '++': choose k observations accordingly to the kmeans++ method
		    (careful seeding)
		
		    'matrix': interpret the k parameter as a k by M (or length k
		    array for 1-D data) array of initial centroids.
		missing : str, optional
		    Method to deal with empty clusters. Available methods are
		    'warn' and 'raise':
		
		    'warn': give a warning and continue.
		
		    'raise': raise an ClusterError and terminate the algorithm.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		seed : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    Seed for initializing the pseudo-random number generator.
		    If `seed` is None (or `numpy.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		    The default is None.
		
		Returns
		-------
		centroid : ndarray
		    A 'k' by 'N' array of centroids found at the last iteration of
		    k-means.
		label : ndarray
		    label[i] is the code or index of the centroid the
		    ith observation is closest to.
		
		See Also
		--------
		kmeans
		
		References
		----------
		.. [1] D. Arthur and S. Vassilvitskii, "k-means++: the advantages of
		   careful seeding", Proceedings of the Eighteenth Annual ACM-SIAM Symposium
		   on Discrete Algorithms, 2007.
		
		Examples
		--------
		>>> from scipy.cluster.vq import kmeans2
		>>> import matplotlib.pyplot as plt
		
		Create z, an array with shape (100, 2) containing a mixture of samples
		from three multivariate normal distributions.
		
		>>> rng = np.random.default_rng()
		>>> a = rng.multivariate_normal([0, 6], [[2, 1], [1, 1.5]], size=45)
		>>> b = rng.multivariate_normal([2, 0], [[1, -1], [-1, 3]], size=30)
		>>> c = rng.multivariate_normal([6, 4], [[5, 0], [0, 1.2]], size=25)
		>>> z = np.concatenate((a, b, c))
		>>> rng.shuffle(z)
		
		Compute three clusters.
		
		>>> centroid, label = kmeans2(z, 3, minit='points')
		>>> centroid
		array([[ 2.22274463, -0.61666946],  # may vary
		       [ 0.54069047,  5.86541444],
		       [ 6.73846769,  4.01991898]])
		
		How many points are in each cluster?
		
		>>> counts = np.bincount(label)
		>>> counts
		array([29, 51, 20])  # may vary
		
		Plot the clusters.
		
		>>> w0 = z[label == 0]
		>>> w1 = z[label == 1]
		>>> w2 = z[label == 2]
		>>> plt.plot(w0[:, 0], w0[:, 1], 'o', alpha=0.5, label='cluster 0')
		>>> plt.plot(w1[:, 0], w1[:, 1], 'd', alpha=0.5, label='cluster 1')
		>>> plt.plot(w2[:, 0], w2[:, 1], 's', alpha=0.5, label='cluster 2')
		>>> plt.plot(centroid[:, 0], centroid[:, 1], 'k*', label='centroids')
		>>> plt.axis('equal')
		>>> plt.legend(shadow=True)
		>>> plt.show()
	**/
	static public function kmeans2(data:Dynamic, k:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?minit:Dynamic, ?missing:Dynamic, ?check_finite:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Python version of vq algorithm.
		
		The algorithm computes the Euclidean distance between each
		observation and every frame in the code_book.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (e.g., columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation; its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This function is slower than the C version but works for
		all input types. If the inputs have the wrong types for the
		C versions of the function, this one is called as a last resort.
		
		It is about 20 times slower than the C version.
	**/
	static public function py_vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		`py_vq2` is deprecated, use `py_vq` instead!
		
		 Python version of vq algorithm.
		
		The algorithm computes the Euclidean distance between each
		observation and every frame in the code_book.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (e.g., columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation; its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This function is slower than the C version but works for
		all input types. If the inputs have the wrong types for the
		C versions of the function, this one is called as a last resort.
		
		It is about 20 times slower than the C version.
	**/
	static public function py_vq2(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Assign codes from a code book to observations.
		
		Assigns a code from a code book to each observation. Each
		observation vector in the 'M' by 'N' `obs` array is compared with the
		centroids in the code book and assigned the code of the closest
		centroid.
		
		The features in `obs` should have unit variance, which can be
		achieved by passing them through the whiten function. The code
		book can be created with the k-means algorithm or a different
		encoding algorithm.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the 'M' x 'N' array is an observation. The columns are
		    the "features" seen during each observation. The features must be
		    whitened first using the whiten function or something equivalent.
		code_book : ndarray
		    The code book is usually generated using the k-means algorithm.
		    Each row of the array holds a different code, and the columns are
		    the features of the code.
		
		     >>> #              f0    f1    f2   f3
		     >>> code_book = [
		     ...             [  1.,   2.,   3.,   4.],  #c0
		     ...             [  1.,   2.,   3.,   4.],  #c1
		     ...             [  1.,   2.,   3.,   4.]]  #c2
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    A length M array holding the code book index for each observation.
		dist : ndarray
		    The distortion (distance) between the observation and its nearest
		    code.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq
		>>> code_book = array([[1.,1.,1.],
		...                    [2.,2.,2.]])
		>>> features  = array([[  1.9,2.3,1.7],
		...                    [  1.5,2.5,2.2],
		...                    [  0.8,0.6,1.7]])
		>>> vq(features,code_book)
		(array([1, 1, 0],'i'), array([ 0.43588989,  0.73484692,  0.83066239]))
	**/
	static public function vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Normalize a group of observations on a per feature basis.
		
		Before running k-means, it is beneficial to rescale each feature
		dimension of the observation set by its standard deviation (i.e. "whiten"
		it - as in "white noise" where each frequency has equal power).
		Each feature is divided by its standard deviation across all observations
		to give it unit variance.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the array is an observation.  The
		    columns are the features seen during each observation.
		
		    >>> #         f0    f1    f2
		    >>> obs = [[  1.,   1.,   1.],  #o0
		    ...        [  2.,   2.,   2.],  #o1
		    ...        [  3.,   3.,   3.],  #o2
		    ...        [  4.,   4.,   4.]]  #o3
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		result : ndarray
		    Contains the values in `obs` scaled by the standard deviation
		    of each column.
		
		Examples
		--------
		>>> from scipy.cluster.vq import whiten
		>>> features  = np.array([[1.9, 2.3, 1.7],
		...                       [1.5, 2.5, 2.2],
		...                       [0.8, 0.6, 1.7,]])
		>>> whiten(features)
		array([[ 4.17944278,  2.69811351,  7.21248917],
		       [ 3.29956009,  2.93273208,  9.33380951],
		       [ 1.75976538,  0.7038557 ,  7.21248917]])
	**/
	static public function whiten(obs:Dynamic, ?check_finite:Dynamic):Dynamic;
}