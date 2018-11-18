/* This file is generated, do not edit! */
package scipy.spatial._spherical_voronoi;
@:pythonImport("scipy.spatial._spherical_voronoi") extern class _Spherical_voronoi_Module {
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
		Calculates the cirumcenters of the circumspheres of tetrahedrons.
		
		An implementation based on
		http://mathworld.wolfram.com/Circumsphere.html
		
		Parameters
		----------
		tetrahedrons : an array of shape (N, 4, 3)
		    consisting of N tetrahedrons defined by 4 points in 3D
		
		Returns
		----------
		circumcenters : an array of shape (N, 3)
		    consisting of the N circumcenters of the tetrahedrons in 3D
	**/
	static public function calc_circumcenters(tetrahedrons:Dynamic):Dynamic;
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
		    'jaccard', 'kulsinski', 'mahalanobis', 'matching',
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
	/**
		Projects the elements of points onto the sphere defined
		by center and radius.
		
		Parameters
		----------
		points : array of floats of shape (npoints, ndim)
		         consisting of the points in a space of dimension ndim
		center : array of floats of shape (ndim,)
		        the center of the sphere to project on
		radius : float
		        the radius of the sphere to project on
		
		returns: array of floats of shape (npoints, ndim)
		        the points projected onto the sphere
	**/
	static public function project_to_sphere(points:Dynamic, center:Dynamic, radius:Dynamic):Dynamic;
	/**
		Determines distance of generators from theoretical sphere
		surface.
	**/
	static public function sphere_check(points:Dynamic, radius:Dynamic, center:Dynamic):Dynamic;
}