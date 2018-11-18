/* This file is generated, do not edit! */
package scipy.spatial.ckdtree;
@:pythonImport("scipy.spatial.ckdtree", "cKDTree") extern class CKDTree {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_build_weights(weights)
		
		Compute weights of nodes from weights of data points. This will sum
		up the total weight per node. This function is used internally.
		
		Parameters
		----------
		weights : array_like
		    weights of data points; must be the same length as the data points.
		    currently only scalar weights are supported. Therefore the weights
		    array must be 1 dimensional.
		
		Returns
		-------
		node_weights : array_like
		    total weight for each KD-Tree node.
	**/
	public function _build_weights(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var boxsize : Dynamic;
	/**
		count_neighbors(self, other, r, p=2., weights=None, cumulative=True)
		
		Count how many nearby pairs can be formed. (pair-counting)
		
		Count the number of pairs (x1,x2) can be formed, with x1 drawn
		from self and x2 drawn from ``other``, and where
		``distance(x1, x2, p) <= r``.
		
		Data points on self and other are optionally weighted by the ``weights``
		argument. (See below)
		
		The algorithm we implement here is based on [1]_. See notes for further discussion.
		
		Parameters
		----------
		other : cKDTree instance
		    The other tree to draw points from, can be the same tree as self.
		r : float or one-dimensional array of floats
		    The radius to produce a count for. Multiple radii are searched with
		    a single tree traversal. 
		    If the count is non-cumulative(``cumulative=False``), ``r`` defines 
		    the edges of the bins, and must be non-decreasing.
		p : float, optional 
		    1<=p<=infinity. 
		    Which Minkowski p-norm to use.
		    Default 2.0.
		weights : tuple, array_like, or None, optional
		    If None, the pair-counting is unweighted.
		    If given as a tuple, weights[0] is the weights of points in ``self``, and
		    weights[1] is the weights of points in ``other``; either can be None to 
		    indicate the points are unweighted.
		    If given as an array_like, weights is the weights of points in ``self``
		    and ``other``. For this to make sense, ``self`` and ``other`` must be the
		    same tree. If ``self`` and ``other`` are two different trees, a ``ValueError``
		    is raised.
		    Default: None
		cumulative : bool, optional
		    Whether the returned counts are cumulative. When cumulative is set to ``False``
		    the algorithm is optimized to work with a large number of bins (>10) specified
		    by ``r``. When ``cumulative`` is set to True, the algorithm is optimized to work
		    with a small number of ``r``. Default: True
		
		Returns
		-------
		result : scalar or 1-D array
		    The number of pairs. For unweighted counts, the result is integer.
		    For weighted counts, the result is float.
		    If cumulative is False, ``result[i]`` contains the counts with
		    ``(-inf if i == 0 else r[i-1]) < R <= r[i]``
		
		Notes
		-----
		Pair-counting is the basic operation used to calculate the two point
		correlation functions from a data set composed of position of objects.
		
		Two point correlation function measures the clustering of objects and
		is widely used in cosmology to quantify the large scale structure
		in our Universe, but it may be useful for data analysis in other fields
		where self-similar assembly of objects also occur.
		
		The Landy-Szalay estimator for the two point correlation function of
		``D`` measures the clustering signal in ``D``. [2]_
		
		For example, given the position of two sets of objects,
		
		- objects ``D`` (data) contains the clustering signal, and
		
		- objects ``R`` (random) that contains no signal,
		
		.. math::
		
		     \xi(r) = \frac{<D, D> - 2 f <D, R> + f^2<R, R>}{f^2<R, R>},
		
		where the brackets represents counting pairs between two data sets
		in a finite bin around ``r`` (distance), corresponding to setting
		`cumulative=False`, and ``f = float(len(D)) / float(len(R))`` is the
		ratio between number of objects from data and random.
		
		The algorithm implemented here is loosely based on the dual-tree
		algorithm described in [1]_. We switch between two different
		pair-cumulation scheme depending on the setting of ``cumulative``.
		The computing time of the method we use when for
		``cumulative == False`` does not scale with the total number of bins.
		The algorithm for ``cumulative == True`` scales linearly with the
		number of bins, though it is slightly faster when only
		1 or 2 bins are used. [5]_.
		
		As an extension to the naive pair-counting,
		weighted pair-counting counts the product of weights instead
		of number of pairs.
		Weighted pair-counting is used to estimate marked correlation functions
		([3]_, section 2.2),
		or to properly calculate the average of data per distance bin
		(e.g. [4]_, section 2.1 on redshift).
		
		.. [1] Gray and Moore,
		       "N-body problems in statistical learning",
		       Mining the sky, 2000,
		       https://arxiv.org/abs/astro-ph/0012333
		
		.. [2] Landy and Szalay,
		       "Bias and variance of angular correlation functions",
		       The Astrophysical Journal, 1993,
		       http://adsabs.harvard.edu/abs/1993ApJ...412...64L
		
		.. [3] Sheth, Connolly and Skibba,
		       "Marked correlations in galaxy formation models",
		       Arxiv e-print, 2005,
		       https://arxiv.org/abs/astro-ph/0511773
		
		.. [4] Hawkins, et al.,
		       "The 2dF Galaxy Redshift Survey: correlation functions,
		       peculiar velocities and the matter density of the Universe",
		       Monthly Notices of the Royal Astronomical Society, 2002,
		       http://adsabs.harvard.edu/abs/2003MNRAS.346...78H
		
		.. [5] https://github.com/scipy/scipy/pull/5647#issuecomment-168474926
	**/
	public function count_neighbors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var data : Dynamic;
	public var indices : Dynamic;
	public var leafsize : Dynamic;
	public var m : Dynamic;
	public var maxes : Dynamic;
	public var mins : Dynamic;
	public var n : Dynamic;
	/**
		query(self, x, k=1, eps=0, p=2, distance_upper_bound=np.inf, n_jobs=1)
		
		Query the kd-tree for nearest neighbors
		
		Parameters
		----------
		x : array_like, last dimension self.m
		    An array of points to query.
		k : list of integer or integer
		    The list of k-th nearest neighbors to return. If k is an 
		    integer it is treated as a list of [1, ... k] (range(1, k+1)).
		    Note that the counting starts from 1.
		eps : non-negative float
		    Return approximate nearest neighbors; the k-th returned value 
		    is guaranteed to be no further than (1+eps) times the 
		    distance to the real k-th nearest neighbor.
		p : float, 1<=p<=infinity
		    Which Minkowski p-norm to use. 
		    1 is the sum-of-absolute-values "Manhattan" distance
		    2 is the usual Euclidean distance
		    infinity is the maximum-coordinate-difference distance
		distance_upper_bound : nonnegative float
		    Return only neighbors within this distance.  This is used to prune
		    tree searches, so if you are doing a series of nearest-neighbor
		    queries, it may help to supply the distance to the nearest neighbor
		    of the most recent point.
		n_jobs : int, optional
		    Number of jobs to schedule for parallel processing. If -1 is given
		    all processors are used. Default: 1.
		                
		Returns
		-------
		d : array of floats
		    The distances to the nearest neighbors. 
		    If ``x`` has shape ``tuple+(self.m,)``, then ``d`` has shape ``tuple+(k,)``.
		    When k == 1, the last dimension of the output is squeezed.
		    Missing neighbors are indicated with infinite distances.
		i : ndarray of ints
		    The locations of the neighbors in ``self.data``.
		    If ``x`` has shape ``tuple+(self.m,)``, then ``i`` has shape ``tuple+(k,)``.
		    When k == 1, the last dimension of the output is squeezed.
		    Missing neighbors are indicated with ``self.n``.
		
		Notes
		-----
		If the KD-Tree is periodic, the position ``x`` is wrapped into the
		box.
		
		When the input k is a list, a query for arange(max(k)) is performed, but
		only columns that store the requested values of k are preserved. This is 
		implemented in a manner that reduces memory usage.
		
		Examples
		--------
		
		>>> import numpy as np
		>>> from scipy.spatial import cKDTree
		>>> x, y = np.mgrid[0:5, 2:8]
		>>> tree = cKDTree(np.c_[x.ravel(), y.ravel()])
		
		To query the nearest neighbours and return squeezed result, use
		
		>>> dd, ii = tree.query([[0, 0], [2.1, 2.9]], k=1)
		>>> print(dd, ii)
		[2.         0.14142136] [ 0 13]
		
		To query the nearest neighbours and return unsqueezed result, use
		
		>>> dd, ii = tree.query([[0, 0], [2.1, 2.9]], k=[1])
		>>> print(dd, ii)
		[[2.        ]
		 [0.14142136]] [[ 0]
		 [13]]
		
		To query the second nearest neighbours and return unsqueezed result, use
		
		>>> dd, ii = tree.query([[0, 0], [2.1, 2.9]], k=[2])
		>>> print(dd, ii)
		[[2.23606798]
		 [0.90553851]] [[ 6]
		 [12]]
		
		To query the first and second nearest neighbours, use
		
		>>> dd, ii = tree.query([[0, 0], [2.1, 2.9]], k=2)
		>>> print(dd, ii)
		[[2.         2.23606798]
		 [0.14142136 0.90553851]] [[ 0  6]
		 [13 12]]
		
		or, be more specific
		
		>>> dd, ii = tree.query([[0, 0], [2.1, 2.9]], k=[1, 2])
		>>> print(dd, ii)
		[[2.         2.23606798]
		 [0.14142136 0.90553851]] [[ 0  6]
		 [13 12]]
	**/
	public function query(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		query_ball_point(self, x, r, p=2., eps=0)
		
		Find all points within distance r of point(s) x.
		
		Parameters
		----------
		x : array_like, shape tuple + (self.m,)
		    The point or points to search for neighbors of.
		r : positive float
		    The radius of points to return.
		p : float, optional
		    Which Minkowski p-norm to use.  Should be in the range [1, inf].
		eps : nonnegative float, optional
		    Approximate search. Branches of the tree are not explored if their
		    nearest points are further than ``r / (1 + eps)``, and branches are
		    added in bulk if their furthest points are nearer than
		    ``r * (1 + eps)``.
		n_jobs : int, optional
		    Number of jobs to schedule for parallel processing. If -1 is given
		    all processors are used. Default: 1.
		
		Returns
		-------
		results : list or array of lists
		    If `x` is a single point, returns a list of the indices of the
		    neighbors of `x`. If `x` is an array of points, returns an object
		    array of shape tuple containing lists of neighbors.
		
		Notes
		-----
		If you have many points whose neighbors you want to find, you may save
		substantial amounts of time by putting them in a cKDTree and using
		query_ball_tree.
		
		Examples
		--------
		>>> from scipy import spatial
		>>> x, y = np.mgrid[0:4, 0:4]
		>>> points = np.c_[x.ravel(), y.ravel()]
		>>> tree = spatial.cKDTree(points)
		>>> tree.query_ball_point([2, 0], 1)
		[4, 8, 9, 12]
	**/
	public function query_ball_point(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		query_ball_tree(self, other, r, p=2., eps=0)
		
		Find all pairs of points whose distance is at most r
		
		Parameters
		----------
		other : cKDTree instance
		    The tree containing points to search against.
		r : float
		    The maximum distance, has to be positive.
		p : float, optional
		    Which Minkowski norm to use.  `p` has to meet the condition
		    ``1 <= p <= infinity``.
		eps : float, optional
		    Approximate search.  Branches of the tree are not explored
		    if their nearest points are further than ``r/(1+eps)``, and
		    branches are added in bulk if their furthest points are nearer
		    than ``r * (1+eps)``.  `eps` has to be non-negative.
		
		Returns
		-------
		results : list of lists
		    For each element ``self.data[i]`` of this tree, ``results[i]`` is a
		    list of the indices of its neighbors in ``other.data``.
	**/
	public function query_ball_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		query_pairs(self, r, p=2., eps=0)
		
		Find all pairs of points whose distance is at most r.
		
		Parameters
		----------
		r : positive float
		    The maximum distance.
		p : float, optional
		    Which Minkowski norm to use.  ``p`` has to meet the condition
		    ``1 <= p <= infinity``.
		eps : float, optional
		    Approximate search.  Branches of the tree are not explored
		    if their nearest points are further than ``r/(1+eps)``, and
		    branches are added in bulk if their furthest points are nearer
		    than ``r * (1+eps)``.  `eps` has to be non-negative.
		output_type : string, optional
		    Choose the output container, 'set' or 'ndarray'. Default: 'set'
		
		Returns
		-------
		results : set or ndarray
		    Set of pairs ``(i,j)``, with ``i < j``, for which the corresponding
		    positions are close. If output_type is 'ndarray', an ndarry is 
		    returned instead of a set.
	**/
	public function query_pairs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var size : Dynamic;
	/**
		sparse_distance_matrix(self, other, max_distance, p=2.)
		
		Compute a sparse distance matrix
		
		Computes a distance matrix between two cKDTrees, leaving as zero
		any distance greater than max_distance.
		
		Parameters
		----------
		other : cKDTree
		
		max_distance : positive float
		
		p : float, 1<=p<=infinity
		    Which Minkowski p-norm to use. 
		
		output_type : string, optional
		    Which container to use for output data. Options: 'dok_matrix',
		    'coo_matrix', 'dict', or 'ndarray'. Default: 'dok_matrix'.
		
		Returns
		-------
		result : dok_matrix, coo_matrix, dict or ndarray
		    Sparse matrix representing the results in "dictionary of keys" 
		    format. If a dict is returned the keys are (i,j) tuples of indices.
		    If output_type is 'ndarray' a record array with fields 'i', 'j',
		    and 'k' is returned,
	**/
	public function sparse_distance_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var tree : Dynamic;
}