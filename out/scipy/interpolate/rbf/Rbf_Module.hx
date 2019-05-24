/* This file is generated, do not edit! */
package scipy.interpolate.rbf;
@:pythonImport("scipy.interpolate.rbf") extern class Rbf_Module {
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
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Compute distance between each pair of the two collections of inputs.
		
		See Notes for common calling conventions.
		
		Parameters
		----------
		XA : ndarray
		    An :math:`m_A` by :math:`n` array of :math:`m_A`
		    original observations in an :math:`n`-dimensional space.
		    Inputs are converted to float type.
		XB : ndarray
		    An :math:`m_B` by :math:`n` array of :math:`m_B`
		    original observations in an :math:`n`-dimensional space.
		    Inputs are converted to float type.
		metric : str or callable, optional
		    The distance metric to use.  If a string, the distance function can be
		    'braycurtis', 'canberra', 'chebyshev', 'cityblock', 'correlation',
		    'cosine', 'dice', 'euclidean', 'hamming', 'jaccard', 'jensenshannon',
		    'kulsinski', 'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto',
		    'russellrao', 'seuclidean', 'sokalmichener', 'sokalsneath', 'sqeuclidean',
		    'wminkowski', 'yule'.
		*args : tuple. Deprecated.
		    Additional arguments should be passed as keyword arguments
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
		    Default: var(vstack([XA, XB]), axis=0, ddof=1)
		
		    VI : ndarray
		    The inverse of the covariance matrix for Mahalanobis.
		    Default: inv(cov(vstack([XA, XB].T))).T
		
		    out : ndarray
		    The output array
		    If not None, the distance matrix Y is stored in this array.
		    Note: metric independent, it will become a regular keyword arg in a
		    future scipy version
		
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
		   :math:`||u-v||_p` (:math:`p`-norm) where :math:`p \geq 1`.
		
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
		
		   Computes the squared Euclidean distance :math:`||u-v||_2^2` between
		   the vectors.
		
		6. ``Y = cdist(XA, XB, 'cosine')``
		
		   Computes the cosine distance between vectors u and v,
		
		   .. math::
		
		      1 - \frac{u \cdot v}
		               {{||u||}_2 {||v||}_2}
		
		   where :math:`||*||_2` is the 2-norm of its argument ``*``, and
		   :math:`u \cdot v` is the dot product of :math:`u` and :math:`v`.
		
		7. ``Y = cdist(XA, XB, 'correlation')``
		
		   Computes the correlation distance between vectors u and v. This is
		
		   .. math::
		
		      1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		               {{||(u - \bar{u})||}_2 {||(v - \bar{v})||}_2}
		
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
		
		10. ``Y = cdist(XA, XB, 'chebyshev')``
		
		   Computes the Chebyshev distance between the points. The
		   Chebyshev distance between two n-vectors ``u`` and ``v`` is the
		   maximum norm-1 distance between their respective elements. More
		   precisely, the distance is given by
		
		   .. math::
		
		      d(u,v) = \max_i {|u_i-v_i|}.
		
		11. ``Y = cdist(XA, XB, 'canberra')``
		
		   Computes the Canberra distance between the points. The
		   Canberra distance between two points ``u`` and ``v`` is
		
		   .. math::
		
		     d(u,v) = \sum_i \frac{|u_i-v_i|}
		                          {|u_i|+|v_i|}.
		
		12. ``Y = cdist(XA, XB, 'braycurtis')``
		
		   Computes the Bray-Curtis distance between the points. The
		   Bray-Curtis distance between two points ``u`` and ``v`` is
		
		
		   .. math::
		
		        d(u,v) = \frac{\sum_i (|u_i-v_i|)}
		                      {\sum_i (|u_i+v_i|)}
		
		13. ``Y = cdist(XA, XB, 'mahalanobis', VI=None)``
		
		   Computes the Mahalanobis distance between the points. The
		   Mahalanobis distance between two points ``u`` and ``v`` is
		   :math:`\sqrt{(u-v)(1/V)(u-v)^T}` where :math:`(1/V)` (the ``VI``
		   variable) is the inverse covariance. If ``VI`` is not None,
		   ``VI`` will be used as the inverse covariance matrix.
		
		14. ``Y = cdist(XA, XB, 'yule')``
		
		   Computes the Yule distance between the boolean
		   vectors. (see `yule` function documentation)
		
		15. ``Y = cdist(XA, XB, 'matching')``
		
		   Synonym for 'hamming'.
		
		16. ``Y = cdist(XA, XB, 'dice')``
		
		   Computes the Dice distance between the boolean vectors. (see
		   `dice` function documentation)
		
		17. ``Y = cdist(XA, XB, 'kulsinski')``
		
		   Computes the Kulsinski distance between the boolean
		   vectors. (see `kulsinski` function documentation)
		
		18. ``Y = cdist(XA, XB, 'rogerstanimoto')``
		
		   Computes the Rogers-Tanimoto distance between the boolean
		   vectors. (see `rogerstanimoto` function documentation)
		
		19. ``Y = cdist(XA, XB, 'russellrao')``
		
		   Computes the Russell-Rao distance between the boolean
		   vectors. (see `russellrao` function documentation)
		
		20. ``Y = cdist(XA, XB, 'sokalmichener')``
		
		   Computes the Sokal-Michener distance between the boolean
		   vectors. (see `sokalmichener` function documentation)
		
		21. ``Y = cdist(XA, XB, 'sokalsneath')``
		
		   Computes the Sokal-Sneath distance between the vectors. (see
		   `sokalsneath` function documentation)
		
		
		22. ``Y = cdist(XA, XB, 'wminkowski', p=2., w=w)``
		
		   Computes the weighted Minkowski distance between the
		   vectors. (see `wminkowski` function documentation)
		
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
	static public function cdist(XA:Dynamic, XB:Dynamic, ?metric:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function get_function_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pairwise distances between observations in n-dimensional space.
		
		See Notes for common calling conventions.
		
		Parameters
		----------
		X : ndarray
		    An m by n array of m original observations in an
		    n-dimensional space.
		metric : str or function, optional
		    The distance metric to use. The distance function can
		    be 'braycurtis', 'canberra', 'chebyshev', 'cityblock',
		    'correlation', 'cosine', 'dice', 'euclidean', 'hamming',
		    'jaccard', 'jensenshannon', 'kulsinski', 'mahalanobis', 'matching',
		    'minkowski', 'rogerstanimoto', 'russellrao', 'seuclidean',
		    'sokalmichener', 'sokalsneath', 'sqeuclidean', 'yule'.
		*args : tuple. Deprecated.
		    Additional arguments should be passed as keyword arguments
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
		    Note: metric independent, it will become a regular keyword arg in a
		    future scipy version
		
		Returns
		-------
		Y : ndarray
		    Returns a condensed distance matrix Y.  For
		    each :math:`i` and :math:`j` (where :math:`i<j<m`),where m is the number
		    of original observations. The metric ``dist(u=X[i], v=X[j])``
		    is computed and stored in entry ``ij``.
		
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
		   :math:`||u-v||_p` (p-norm) where :math:`p \geq 1`.
		
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
		
		   Computes the squared Euclidean distance :math:`||u-v||_2^2` between
		   the vectors.
		
		6. ``Y = pdist(X, 'cosine')``
		
		   Computes the cosine distance between vectors u and v,
		
		   .. math::
		
		      1 - \frac{u \cdot v}
		               {{||u||}_2 {||v||}_2}
		
		   where :math:`||*||_2` is the 2-norm of its argument ``*``, and
		   :math:`u \cdot v` is the dot product of ``u`` and ``v``.
		
		7. ``Y = pdist(X, 'correlation')``
		
		   Computes the correlation distance between vectors u and v. This is
		
		   .. math::
		
		      1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		               {{||(u - \bar{u})||}_2 {||(v - \bar{v})||}_2}
		
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
		
		10. ``Y = pdist(X, 'chebyshev')``
		
		   Computes the Chebyshev distance between the points. The
		   Chebyshev distance between two n-vectors ``u`` and ``v`` is the
		   maximum norm-1 distance between their respective elements. More
		   precisely, the distance is given by
		
		   .. math::
		
		      d(u,v) = \max_i {|u_i-v_i|}
		
		11. ``Y = pdist(X, 'canberra')``
		
		   Computes the Canberra distance between the points. The
		   Canberra distance between two points ``u`` and ``v`` is
		
		   .. math::
		
		     d(u,v) = \sum_i \frac{|u_i-v_i|}
		                          {|u_i|+|v_i|}
		
		
		12. ``Y = pdist(X, 'braycurtis')``
		
		   Computes the Bray-Curtis distance between the points. The
		   Bray-Curtis distance between two points ``u`` and ``v`` is
		
		
		   .. math::
		
		        d(u,v) = \frac{\sum_i {|u_i-v_i|}}
		                       {\sum_i {|u_i+v_i|}}
		
		13. ``Y = pdist(X, 'mahalanobis', VI=None)``
		
		   Computes the Mahalanobis distance between the points. The
		   Mahalanobis distance between two points ``u`` and ``v`` is
		   :math:`\sqrt{(u-v)(1/V)(u-v)^T}` where :math:`(1/V)` (the ``VI``
		   variable) is the inverse covariance. If ``VI`` is not None,
		   ``VI`` will be used as the inverse covariance matrix.
		
		14. ``Y = pdist(X, 'yule')``
		
		   Computes the Yule distance between each pair of boolean
		   vectors. (see yule function documentation)
		
		15. ``Y = pdist(X, 'matching')``
		
		   Synonym for 'hamming'.
		
		16. ``Y = pdist(X, 'dice')``
		
		   Computes the Dice distance between each pair of boolean
		   vectors. (see dice function documentation)
		
		17. ``Y = pdist(X, 'kulsinski')``
		
		   Computes the Kulsinski distance between each pair of
		   boolean vectors. (see kulsinski function documentation)
		
		18. ``Y = pdist(X, 'rogerstanimoto')``
		
		   Computes the Rogers-Tanimoto distance between each pair of
		   boolean vectors. (see rogerstanimoto function documentation)
		
		19. ``Y = pdist(X, 'russellrao')``
		
		   Computes the Russell-Rao distance between each pair of
		   boolean vectors. (see russellrao function documentation)
		
		20. ``Y = pdist(X, 'sokalmichener')``
		
		   Computes the Sokal-Michener distance between each pair of
		   boolean vectors. (see sokalmichener function documentation)
		
		21. ``Y = pdist(X, 'sokalsneath')``
		
		   Computes the Sokal-Sneath distance between each pair of
		   boolean vectors. (see sokalsneath function documentation)
		
		22. ``Y = pdist(X, 'wminkowski', p=2, w=w)``
		
		   Computes the weighted Minkowski distance between each pair of
		   vectors. (see wminkowski function documentation)
		
		23. ``Y = pdist(X, f)``
		
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
	static public function pdist(X:Dynamic, ?metric:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert a vector-form distance vector to a square-form distance
		matrix, and vice-versa.
		
		Parameters
		----------
		X : ndarray
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
		1. v = squareform(X)
		
		   Given a square d-by-d symmetric distance matrix X,
		   ``v = squareform(X)`` returns a ``d * (d-1) / 2`` (or
		   :math:`{n \choose 2}`) sized vector v.
		
		  :math:`v[{n \choose 2}-{n-i \choose 2} + (j-i-1)]` is the distance
		  between points i and j. If X is non-square or asymmetric, an error
		  is returned.
		
		2. X = squareform(v)
		
		  Given a ``d*(d-1)/2`` sized v for some integer ``d >= 2`` encoding
		  distances as described, ``X = squareform(v)`` returns a d by d distance
		  matrix X.  The ``X[i, j]`` and ``X[j, i]`` values are set to
		  :math:`v[{n \choose 2}-{n-i \choose 2} + (j-i-1)]` and all
		  diagonal elements are zero.
		
		In SciPy 0.19.0, ``squareform`` stopped casting all input types to
		float64, and started returning arrays of the same dtype as the input.
	**/
	static public function squareform(X:Dynamic, ?force:Dynamic, ?checks:Dynamic):Dynamic;
	/**
		xlogy(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		xlogy(x, y)
		
		Compute ``x*log(y)`` so that the result is 0 if ``x = 0``.
		
		Parameters
		----------
		x : array_like
		    Multiplier
		y : array_like
		    Argument
		
		Returns
		-------
		z : array_like
		    Computed x*log(y)
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
	**/
	static public function xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
}