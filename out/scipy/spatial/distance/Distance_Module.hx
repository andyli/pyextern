/* This file is generated, do not edit! */
package scipy.spatial.distance;
@:pythonImport("scipy.spatial.distance") extern class Distance_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_to_bool(X:Dynamic):Dynamic;
	static public function _convert_to_double(X:Dynamic):Dynamic;
	/**
		Copies the array if its base points to a parent array.
	**/
	static public function _copy_array_if_base_present(a:Dynamic):Dynamic;
	/**
		Accepts a tuple of arrays T. Copies the array T[i] if its base array
		points to an actual array. Otherwise, the reference is just copied.
		This is useful if the arrays are being passed to a C function that
		does not do proper striding.
	**/
	static public function _copy_arrays_if_base_present(T:Dynamic):Dynamic;
	static public function _cosine_cdist(XA:Dynamic, XB:Dynamic, dm:Dynamic):Dynamic;
	static public function _nbool_correspond_all(u:Dynamic, v:Dynamic):Dynamic;
	static public function _nbool_correspond_ft_tf(u:Dynamic, v:Dynamic):Dynamic;
	static public function _row_norms(X:Dynamic):Dynamic;
	static public function _validate_vector(u:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the Bray-Curtis distance between two 1-D arrays.
		
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
		
		Returns
		-------
		braycurtis : double
		    The Bray-Curtis distance between 1-D arrays `u` and `v`.
	**/
	static public function braycurtis(u:Dynamic, v:Dynamic):Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Computes the Canberra distance between two 1-D arrays.
		
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
		
		Returns
		-------
		canberra : double
		    The Canberra distance between vectors `u` and `v`.
		
		Notes
		-----
		When `u[i]` and `v[i]` are 0 for given i, then the fraction 0/0 = 0 is
		used in the calculation.
	**/
	static public function canberra(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes distance between each pair of the two collections of inputs.
		
		The following are common calling conventions:
		
		1. ``Y = cdist(XA, XB, 'euclidean')``
		
		   Computes the distance between :math:`m` points using
		   Euclidean distance (2-norm) as the distance metric between the
		   points. The points are arranged as :math:`m`
		   :math:`n`-dimensional row vectors in the matrix X.
		
		2. ``Y = cdist(XA, XB, 'minkowski', p)``
		
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
		
		        d(u,v) = \frac{\sum_i (u_i-v_i)}
		                      {\sum_i (u_i+v_i)}
		
		13. ``Y = cdist(XA, XB, 'mahalanobis', VI=None)``
		
		   Computes the Mahalanobis distance between the points. The
		   Mahalanobis distance between two points ``u`` and ``v`` is
		   :math:`(u-v)(1/V)(u-v)^T` where :math:`(1/V)` (the ``VI``
		   variable) is the inverse covariance. If ``VI`` is not None,
		   ``VI`` will be used as the inverse covariance matrix.
		
		14. ``Y = cdist(XA, XB, 'yule')``
		
		   Computes the Yule distance between the boolean
		   vectors. (see `yule` function documentation)
		
		15. ``Y = cdist(XA, XB, 'matching')``
		
		   Computes the matching distance between the boolean
		   vectors. (see `matching` function documentation)
		
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
		
		
		22. ``Y = cdist(XA, XB, 'wminkowski')``
		
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
		    'cosine', 'dice', 'euclidean', 'hamming', 'jaccard', 'kulsinski',
		    'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto', 'russellrao',
		    'seuclidean', 'sokalmichener', 'sokalsneath', 'sqeuclidean',
		    'wminkowski', 'yule'.
		w : ndarray, optional
		    The weight vector (for weighted Minkowski).
		p : scalar, optional
		    The p-norm to apply (for Minkowski, weighted and unweighted)
		V : ndarray, optional
		    The variance vector (for standardized Euclidean).
		VI : ndarray, optional
		    The inverse of the covariance matrix (for Mahalanobis).
		
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
	static public function cdist(XA:Dynamic, XB:Dynamic, ?metric:Dynamic, ?p:Dynamic, ?V:Dynamic, ?VI:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Computes the Chebyshev distance.
		
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
		
		Returns
		-------
		chebyshev : double
		    The Chebyshev distance between vectors `u` and `v`.
	**/
	static public function chebyshev(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the City Block (Manhattan) distance.
		
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
		
		Returns
		-------
		cityblock : double
		    The City Block (Manhattan) distance between vectors `u` and `v`.
	**/
	static public function cityblock(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the correlation distance between two 1-D arrays.
		
		The correlation distance between `u` and `v`, is
		defined as
		
		.. math::
		
		   1 - \frac{(u - \bar{u}) \cdot (v - \bar{v})}
		           {{||(u - \bar{u})||}_2 {||(v - \bar{v})||}_2}
		
		where :math:`\bar{u}` is the mean of the elements of `u`
		and :math:`x \cdot y` is the dot product of :math:`x` and :math:`y`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		
		Returns
		-------
		correlation : double
		    The correlation distance between 1-D array `u` and `v`.
	**/
	static public function correlation(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Cosine distance between 1-D arrays.
		
		The Cosine distance between `u` and `v`, is defined as
		
		.. math::
		
		   1 - \frac{u \cdot v}
		            {||u||_2 ||v||_2}.
		
		where :math:`u \cdot v` is the dot product of :math:`u` and
		:math:`v`.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		
		Returns
		-------
		cosine : double
		    The Cosine distance between vectors `u` and `v`.
	**/
	static public function cosine(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Dice dissimilarity between two boolean 1-D arrays.
		
		The Dice dissimilarity between `u` and `v`, is
		
		.. math::
		
		     \frac{c_{TF} + c_{FT}}
		          {2c_{TT} + c_{FT} + c_{TF}}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) ndarray, bool
		    Input 1-D array.
		v : (N,) ndarray, bool
		    Input 1-D array.
		
		Returns
		-------
		dice : double
		    The Dice dissimilarity between 1-D arrays `u` and `v`.
	**/
	static public function dice(u:Dynamic, v:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the Euclidean distance between two 1-D arrays.
		
		The Euclidean distance between 1-D arrays `u` and `v`, is defined as
		
		.. math::
		
		   {||u-v||}_2
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		
		Returns
		-------
		euclidean : double
		    The Euclidean distance between vectors `u` and `v`.
	**/
	static public function euclidean(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Hamming distance between two 1-D arrays.
		
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
		
		Returns
		-------
		hamming : double
		    The Hamming distance between vectors `u` and `v`.
	**/
	static public function hamming(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Returns True if input array is a valid distance matrix.
		
		Distance matrices must be 2-dimensional numpy arrays containing
		doubles. They must have a zero-diagonal, and they must be symmetric.
		
		Parameters
		----------
		D : ndarray
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
		Returns True if the input array is a valid condensed distance matrix.
		
		Condensed distance matrices must be 1-dimensional
		numpy arrays containing doubles. Their length must be a binomial
		coefficient :math:`{n \choose 2}` for some positive integer n.
		
		Parameters
		----------
		y : ndarray
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
		Computes the Jaccard-Needham dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		jaccard : double
		    The Jaccard distance between vectors `u` and `v`.
	**/
	static public function jaccard(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Kulsinski dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		kulsinski : double
		    The Kulsinski distance between vectors `u` and `v`.
	**/
	static public function kulsinski(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Mahalanobis distance between two 1-D arrays.
		
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
		VI : ndarray
		    The inverse of the covariance matrix.
		
		Returns
		-------
		mahalanobis : double
		    The Mahalanobis distance between vectors `u` and `v`.
	**/
	static public function mahalanobis(u:Dynamic, v:Dynamic, VI:Dynamic):Dynamic;
	/**
		Computes the Matching dissimilarity between two boolean 1-D arrays.
		
		The Matching dissimilarity between two boolean 1-D arrays
		`u` and `v`, is defined as
		
		.. math::
		
		   \frac{c_{TF} + c_{FT}}{n}
		
		where :math:`c_{ij}` is the number of occurrences of
		:math:`\mathtt{u[k]} = i` and :math:`\mathtt{v[k]} = j` for
		:math:`k < n`.
		
		Parameters
		----------
		u : (N,) array_like, bool
		    Input array.
		v : (N,) array_like, bool
		    Input array.
		
		Returns
		-------
		matching : double
		    The Matching dissimilarity between vectors `u` and `v`.
	**/
	static public function matching(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Minkowski distance between two 1-D arrays.
		
		The Minkowski distance between 1-D arrays `u` and `v`,
		is defined as
		
		.. math::
		
		   {||u-v||}_p = (\sum{|u_i - v_i|^p})^{1/p}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		p : int
		    The order of the norm of the difference :math:`{||u-v||}_p`.
		
		Returns
		-------
		d : double
		    The Minkowski distance between vectors `u` and `v`.
	**/
	static public function minkowski(u:Dynamic, v:Dynamic, p:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
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
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
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
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns the number of original observations that correspond to a
		square, redundant distance matrix.
		
		Parameters
		----------
		d : ndarray
		    The target distance matrix.
		
		Returns
		-------
		num_obs_dm : int
		    The number of observations in the redundant distance matrix.
	**/
	static public function num_obs_dm(d:Dynamic):Int;
	/**
		Returns the number of original observations that correspond to a
		condensed distance matrix.
		
		Parameters
		----------
		Y : ndarray
		    Condensed distance matrix.
		
		Returns
		-------
		n : int
		    The number of observations in the condensed distance matrix `Y`.
	**/
	static public function num_obs_y(Y:Dynamic):Int;
	/**
		Pairwise distances between observations in n-dimensional space.
		
		The following are common calling conventions.
		
		1. ``Y = pdist(X, 'euclidean')``
		
		   Computes the distance between m points using Euclidean distance
		   (2-norm) as the distance metric between the points. The points
		   are arranged as m n-dimensional row vectors in the matrix X.
		
		2. ``Y = pdist(X, 'minkowski', p)``
		
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
		   disagree where at least one of them is non-zero.
		
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
		
		        d(u,v) = \frac{\sum_i {u_i-v_i}}
		                      {\sum_i {u_i+v_i}}
		
		13. ``Y = pdist(X, 'mahalanobis', VI=None)``
		
		   Computes the Mahalanobis distance between the points. The
		   Mahalanobis distance between two points ``u`` and ``v`` is
		   :math:`(u-v)(1/V)(u-v)^T` where :math:`(1/V)` (the ``VI``
		   variable) is the inverse covariance. If ``VI`` is not None,
		   ``VI`` will be used as the inverse covariance matrix.
		
		14. ``Y = pdist(X, 'yule')``
		
		   Computes the Yule distance between each pair of boolean
		   vectors. (see yule function documentation)
		
		15. ``Y = pdist(X, 'matching')``
		
		   Computes the matching distance between each pair of boolean
		   vectors. (see matching function documentation)
		
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
		
		22. ``Y = pdist(X, 'wminkowski')``
		
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
		
		Parameters
		----------
		X : ndarray
		    An m by n array of m original observations in an
		    n-dimensional space.
		metric : str or function, optional
		    The distance metric to use. The distance function can
		    be 'braycurtis', 'canberra', 'chebyshev', 'cityblock',
		    'correlation', 'cosine', 'dice', 'euclidean', 'hamming',
		    'jaccard', 'kulsinski', 'mahalanobis', 'matching',
		    'minkowski', 'rogerstanimoto', 'russellrao', 'seuclidean',
		    'sokalmichener', 'sokalsneath', 'sqeuclidean', 'yule'.
		w : ndarray, optional
		    The weight vector (for weighted Minkowski).
		p : double, optional
		    The p-norm to apply (for Minkowski, weighted and unweighted)
		V : ndarray, optional
		    The variance vector (for standardized Euclidean).
		VI : ndarray, optional
		    The inverse of the covariance matrix (for Mahalanobis).
		
		Returns
		-------
		Y : ndarray
		    Returns a condensed distance matrix Y.  For
		    each :math:`i` and :math:`j` (where :math:`i<j<n`), the
		    metric ``dist(u=X[i], v=X[j])`` is computed and stored in entry ``ij``.
		
		See Also
		--------
		squareform : converts between condensed distance matrices and
		             square distance matrices.
		
		Notes
		-----
		See ``squareform`` for information on how to calculate the index of
		this entry or to convert the condensed distance matrix to a
		redundant square matrix.
	**/
	static public function pdist(X:Dynamic, ?metric:Dynamic, ?p:Dynamic, ?w:Dynamic, ?V:Dynamic, ?VI:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the Rogers-Tanimoto dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		rogerstanimoto : double
		    The Rogers-Tanimoto dissimilarity between vectors
		    `u` and `v`.
	**/
	static public function rogerstanimoto(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Russell-Rao dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		russellrao : double
		    The Russell-Rao dissimilarity between vectors `u` and `v`.
	**/
	static public function russellrao(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Returns the standardized Euclidean distance between two 1-D arrays.
		
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
	**/
	static public function seuclidean(u:Dynamic, v:Dynamic, V:Dynamic):Dynamic;
	/**
		Computes the Sokal-Michener dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		sokalmichener : double
		    The Sokal-Michener dissimilarity between vectors `u` and `v`.
	**/
	static public function sokalmichener(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the Sokal-Sneath dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		sokalsneath : double
		    The Sokal-Sneath dissimilarity between vectors `u` and `v`.
	**/
	static public function sokalsneath(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Computes the squared Euclidean distance between two 1-D arrays.
		
		The squared Euclidean distance between `u` and `v` is defined as
		
		.. math::
		
		   {||u-v||}_2^2.
		
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		
		Returns
		-------
		sqeuclidean : double
		    The squared Euclidean distance between vectors `u` and `v`.
	**/
	static public function sqeuclidean(u:Dynamic, v:Dynamic):Dynamic;
	/**
		Converts a vector-form distance vector to a square-form distance
		matrix, and vice-versa.
		
		Parameters
		----------
		X : ndarray
		    Either a condensed or redundant distance matrix.
		force : str, optional
		    As with MATLAB(TM), if force is equal to 'tovector' or 'tomatrix',
		    the input will be treated as a distance matrix or distance vector
		    respectively.
		checks : bool, optional
		    If `checks` is set to False, no checks will be made for matrix
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
		   ``v=squareform(X)`` returns a ``d * (d-1) / 2`` (or
		   `${n \choose 2}$`) sized vector v.
		
		  v[{n \choose 2}-{n-i \choose 2} + (j-i-1)] is the distance
		  between points i and j. If X is non-square or asymmetric, an error
		  is returned.
		
		2. X = squareform(v)
		
		  Given a d*d(-1)/2 sized v for some integer d>=2 encoding distances
		  as described, X=squareform(v) returns a d by d distance matrix X. The
		  X[i, j] and X[j, i] values are set to
		  v[{n \choose 2}-{n-i \choose 2} + (j-u-1)] and all
		  diagonal elements are zero.
	**/
	static public function squareform(X:Dynamic, ?force:Dynamic, ?checks:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Computes the weighted Minkowski distance between two 1-D arrays.
		
		The weighted Minkowski distance between `u` and `v`, defined as
		
		.. math::
		
		   \left(\sum{(w_i |u_i - v_i|^p)}\right)^{1/p}.
		
		Parameters
		----------
		u : (N,) array_like
		    Input array.
		v : (N,) array_like
		    Input array.
		p : int
		    The order of the norm of the difference :math:`{||u-v||}_p`.
		w : (N,) array_like
		    The weight vector.
		
		Returns
		-------
		wminkowski : double
		    The weighted Minkowski distance between vectors `u` and `v`.
	**/
	static public function wminkowski(u:Dynamic, v:Dynamic, p:Dynamic, w:Dynamic):Dynamic;
	/**
		Computes the Yule dissimilarity between two boolean 1-D arrays.
		
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
		
		Returns
		-------
		yule : double
		    The Yule dissimilarity between vectors `u` and `v`.
	**/
	static public function yule(u:Dynamic, v:Dynamic):Dynamic;
}