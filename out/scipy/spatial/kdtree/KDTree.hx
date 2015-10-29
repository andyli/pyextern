/* This file is generated, do not edit! */
package scipy.spatial.kdtree;
@:pythonImport("scipy.spatial.kdtree", "KDTree") extern class KDTree {
	public function _KDTree__build(idx:Dynamic, maxes:Dynamic, mins:Dynamic):Dynamic;
	public function _KDTree__query(x:Dynamic, ?k:Dynamic, ?eps:Dynamic, ?p:Dynamic, ?distance_upper_bound:Dynamic):Dynamic;
	public function _KDTree__query_ball_point(x:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	public function ___init__(data:Dynamic, ?leafsize:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Count how many nearby pairs can be formed.
		
		Count the number of pairs (x1,x2) can be formed, with x1 drawn
		from self and x2 drawn from `other`, and where
		``distance(x1, x2, p) <= r``.
		This is the "two-point correlation" described in Gray and Moore 2000,
		"N-body problems in statistical learning", and the code here is based
		on their algorithm.
		
		Parameters
		----------
		other : KDTree instance
		    The other tree to draw points from.
		r : float or one-dimensional array of floats
		    The radius to produce a count for. Multiple radii are searched with
		    a single tree traversal.
		p : float, 1<=p<=infinity, optional
		    Which Minkowski p-norm to use
		
		Returns
		-------
		result : int or 1-D array of ints
		    The number of pairs. Note that this is internally stored in a numpy
		    int, and so may overflow if very large (2e9).
	**/
	public function count_neighbors(other:Dynamic, r:Dynamic, ?p:Dynamic):Dynamic;
	static public function innernode(split_dim:Dynamic, split:Dynamic, less:Dynamic, greater:Dynamic):Dynamic;
	static public function leafnode(idx:Dynamic):Dynamic;
	static public function node():Dynamic;
	/**
		Query the kd-tree for nearest neighbors
		
		Parameters
		----------
		x : array_like, last dimension self.m
		    An array of points to query.
		k : int, optional
		    The number of nearest neighbors to return.
		eps : nonnegative float, optional
		    Return approximate nearest neighbors; the kth returned value
		    is guaranteed to be no further than (1+eps) times the
		    distance to the real kth nearest neighbor.
		p : float, 1<=p<=infinity, optional
		    Which Minkowski p-norm to use.
		    1 is the sum-of-absolute-values "Manhattan" distance
		    2 is the usual Euclidean distance
		    infinity is the maximum-coordinate-difference distance
		distance_upper_bound : nonnegative float, optional
		    Return only neighbors within this distance. This is used to prune
		    tree searches, so if you are doing a series of nearest-neighbor
		    queries, it may help to supply the distance to the nearest neighbor
		    of the most recent point.
		
		Returns
		-------
		d : float or array of floats
		    The distances to the nearest neighbors.
		    If x has shape tuple+(self.m,), then d has shape tuple if
		    k is one, or tuple+(k,) if k is larger than one. Missing
		    neighbors (e.g. when k > n or distance_upper_bound is
		    given) are indicated with infinite distances.  If k is None,
		    then d is an object array of shape tuple, containing lists
		    of distances. In either case the hits are sorted by distance
		    (nearest first).
		i : integer or array of integers
		    The locations of the neighbors in self.data. i is the same
		    shape as d.
		
		Examples
		--------
		>>> from scipy import spatial
		>>> x, y = np.mgrid[0:5, 2:8]
		>>> tree = spatial.KDTree(list(zip(x.ravel(), y.ravel())))
		>>> tree.data
		array([[0, 2],
		       [0, 3],
		       [0, 4],
		       [0, 5],
		       [0, 6],
		       [0, 7],
		       [1, 2],
		       [1, 3],
		       [1, 4],
		       [1, 5],
		       [1, 6],
		       [1, 7],
		       [2, 2],
		       [2, 3],
		       [2, 4],
		       [2, 5],
		       [2, 6],
		       [2, 7],
		       [3, 2],
		       [3, 3],
		       [3, 4],
		       [3, 5],
		       [3, 6],
		       [3, 7],
		       [4, 2],
		       [4, 3],
		       [4, 4],
		       [4, 5],
		       [4, 6],
		       [4, 7]])
		>>> pts = np.array([[0, 0], [2.1, 2.9]])
		>>> tree.query(pts)
		(array([ 2.        ,  0.14142136]), array([ 0, 13]))
		>>> tree.query(pts[0])
		(2.0, 0)
	**/
	public function query(x:Dynamic, ?k:Dynamic, ?eps:Dynamic, ?p:Dynamic, ?distance_upper_bound:Dynamic):Dynamic;
	/**
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
		
		Returns
		-------
		results : list or array of lists
		    If `x` is a single point, returns a list of the indices of the
		    neighbors of `x`. If `x` is an array of points, returns an object
		    array of shape tuple containing lists of neighbors.
		
		Notes
		-----
		If you have many points whose neighbors you want to find, you may save
		substantial amounts of time by putting them in a KDTree and using
		query_ball_tree.
		
		Examples
		--------
		>>> from scipy import spatial
		>>> x, y = np.mgrid[0:4, 0:4]
		>>> points = zip(x.ravel(), y.ravel())
		>>> tree = spatial.KDTree(points)
		>>> tree.query_ball_point([2, 0], 1)
		[4, 8, 9, 12]
	**/
	public function query_ball_point(x:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Find all pairs of points whose distance is at most r
		
		Parameters
		----------
		other : KDTree instance
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
	public function query_ball_tree(other:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Find all pairs of points within a distance.
		
		Parameters
		----------
		r : positive float
		    The maximum distance.
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
		results : set
		    Set of pairs ``(i,j)``, with ``i < j``, for which the corresponding
		    positions are close.
	**/
	public function query_pairs(r:Dynamic, ?p:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Compute a sparse distance matrix
		
		Computes a distance matrix between two KDTrees, leaving as zero
		any distance greater than max_distance.
		
		Parameters
		----------
		other : KDTree
		
		max_distance : positive float
		
		p : float, optional
		
		Returns
		-------
		result : dok_matrix
		    Sparse matrix representing the results in "dictionary of keys" format.
	**/
	public function sparse_distance_matrix(other:Dynamic, max_distance:Dynamic, ?p:Dynamic):Dynamic;
}