/* This file is generated, do not edit! */
package scipy.spatial.ckdtree;
@:pythonImport("scipy.spatial.ckdtree", "cKDTree") extern class CKDTree {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var boxsize : Dynamic;
	/**
		count_neighbors(self, other, r, p=2.)
		
		Count how many nearby pairs can be formed.
		
		Count the number of pairs (x1,x2) can be formed, with x1 drawn
		from self and x2 drawn from `other`, and where
		``distance(x1, x2, p) <= r``.
		This is the "two-point correlation" described in Gray and Moore 2000,
		"N-body problems in statistical learning", and the code here is based
		on their algorithm.
		
		Parameters
		----------
		other : cKDTree instance
		    The other tree to draw points from.
		r : float or one-dimensional array of floats
		    The radius to produce a count for. Multiple radii are searched with
		    a single tree traversal.
		p : float, optional 
		    1<=p<=infinity, default 2.0
		    Which Minkowski p-norm to use
		
		Returns
		-------
		result : int or 1-D array of ints
		    The number of pairs.
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
		    If x has shape tuple+(self.m,), then d has shape tuple+(len(k),).
		    When k == 1, the last dimension of the output is squeezed.
		    Missing neighbors are indicated with infinite distances.
		i : ndarray of ints
		    The locations of the neighbors in self.data.
		    If `x` has shape tuple+(self.m,), then `i` has shape tuple+(len(k),).
		    When k == 1, the last dimension of the output is squeezed.
		    Missing neighbors are indicated with self.n.
		
		Notes
		-----
		If the KD-Tree is periodic, the position :py:code:`x` is wrapped into the
		box.
		
		When the input k is a list, a query for arange(max(k)) is performed, but
		only columns that store the requested values of k are preserved. This is 
		implemented in a manner that reduces memory usage.
		
		Examples
		--------
		
		>>> tree = cKDTree(data)
		
		To query the nearest neighbours and return squeezed result, use
		
		>>> dd, ii = tree.query(x, k=1)
		
		To query the nearest neighbours and return unsqueezed result, use
		
		>>> dd, ii = tree.query(x, k=[1])
		
		To query the second nearest neighbours and return unsqueezed result, use
		
		>>> dd, ii = tree.query(x, k=[2])
		
		To query the first and second nearest neighbours, use
		
		>>> dd, ii = tree.query(x, k=2)
		
		or, be more specific
		
		>>> dd, ii = tree.query(x, k=[1, 2])
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
		>>> points = zip(x.ravel(), y.ravel())
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
		    Which Minkowski norm to use.  `p` has to meet the condition
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