/* This file is generated, do not edit! */
package scipy.cluster.hierarchy;
@:pythonImport("scipy.cluster.hierarchy") extern class Hierarchy_Module {
	static public var _EUCLIDEAN_METHODS : Dynamic;
	static public var _LINKAGE_METHODS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _append_contraction_marks(Z:Dynamic, iv:Dynamic, i:Dynamic, n:Dynamic, contraction_marks:Dynamic):Dynamic;
	static public function _append_contraction_marks_sub(Z:Dynamic, iv:Dynamic, i:Dynamic, n:Dynamic, contraction_marks:Dynamic):Dynamic;
	static public function _append_nonsingleton_leaf_node(Z:Dynamic, p:Dynamic, n:Dynamic, level:Dynamic, lvs:Dynamic, ivl:Dynamic, leaf_label_func:Dynamic, i:Dynamic, labels:Dynamic, show_leaf_counts:Dynamic):Dynamic;
	static public function _append_singleton_leaf_node(Z:Dynamic, p:Dynamic, n:Dynamic, level:Dynamic, lvs:Dynamic, ivl:Dynamic, leaf_label_func:Dynamic, i:Dynamic, labels:Dynamic):Dynamic;
	static public function _check_hierarchy_not_all_clusters_used(Z:Dynamic):Dynamic;
	static public function _check_hierarchy_uses_cluster_before_formed(Z:Dynamic):Dynamic;
	static public function _check_hierarchy_uses_cluster_more_than_once(Z:Dynamic):Dynamic;
	static public var _cnode_bare : Dynamic;
	static public function _convert_to_bool(X:Dynamic):Dynamic;
	static public function _convert_to_double(X:Dynamic):Dynamic;
	/**
		Copy the array if its base points to a parent array.
	**/
	static public function _copy_array_if_base_present(a:Dynamic):Dynamic;
	/**
		Accept a tuple of arrays T. Copies the array T[i] if its base array
		points to an actual array. Otherwise, the reference is just copied.
		This is useful if the arrays are being passed to a C function that
		does not do proper striding.
	**/
	static public function _copy_arrays_if_base_present(T:Dynamic):Dynamic;
	/**
		Calculate the endpoints of the links as well as the labels for the
		the dendrogram rooted at the node with index i. iv is the independent
		variable value to plot the left-most leaf node below the root node i
		(if orientation='top', this would be the left-most x value where the
		plotting of this root node i and its descendents should begin).
		
		ivl is a list to store the labels of the leaf nodes. The leaf_label_func
		is called whenever ivl != None, labels == None, and
		leaf_label_func != None. When ivl != None and labels != None, the
		labels list is used only for labeling the leaf nodes. When
		ivl == None, no labels are generated for leaf nodes.
		
		When get_leaves==True, a list of leaves is built as they are visited
		in the dendrogram.
		
		Returns a tuple with l being the independent variable coordinate that
		corresponds to the midpoint of cluster to the left of cluster i if
		i is non-singleton, otherwise the independent coordinate of the leaf
		node if i is a leaf node.
		
		Returns
		-------
		A tuple (left, w, h, md), where:
		
		  * left is the independent variable coordinate of the center of the
		    the U of the subtree
		
		  * w is the amount of space used for the subtree (in independent
		    variable units)
		
		  * h is the height of the subtree in dependent variable units
		
		  * md is the ``max(Z[*,2]``) for all nodes ``*`` below and including
		    the target node.
	**/
	static public function _dendrogram_calculate_info(Z:Dynamic, p:Dynamic, truncate_mode:Dynamic, ?color_threshold:Dynamic, ?get_leaves:Dynamic, ?orientation:Dynamic, ?labels:Dynamic, ?count_sort:Dynamic, ?distance_sort:Dynamic, ?show_leaf_counts:Dynamic, ?i:Dynamic, ?iv:Dynamic, ?ivl:Dynamic, ?n:Dynamic, ?icoord_list:Dynamic, ?dcoord_list:Dynamic, ?lvs:Dynamic, ?mhr:Dynamic, ?current_color:Dynamic, ?color_list:Dynamic, ?currently_below_threshold:Dynamic, ?leaf_label_func:Dynamic, ?level:Dynamic, ?contraction_marks:Dynamic, ?link_color_func:Dynamic, ?above_threshold_color:Dynamic):Dynamic;
	static public var _drotation : Dynamic;
	static public var _drotationsortedkeys : Dynamic;
	static public var _dtextsizes : Dynamic;
	static public var _dtextsortedkeys : Dynamic;
	static public function _get_tick_rotation(p:Dynamic):Dynamic;
	static public function _get_tick_text_size(p:Dynamic):Dynamic;
	static public var _link_line_colors : Dynamic;
	/**
		Return clustering nodes in bottom-up order by distance.
		
		Parameters
		----------
		Z : scipy.cluster.linkage array
		    The linkage matrix.
		
		Returns
		-------
		nodes : list
		    A list of ClusterNode objects.
	**/
	static public function _order_cluster_tree(Z:Dynamic):Array<Dynamic>;
	static public function _plot_dendrogram(icoords:Dynamic, dcoords:Dynamic, ivl:Dynamic, p:Dynamic, n:Dynamic, mh:Dynamic, orientation:Dynamic, no_labels:Dynamic, color_list:Dynamic, ?leaf_font_size:Dynamic, ?leaf_rotation:Dynamic, ?contraction_marks:Dynamic, ?ax:Dynamic, ?above_threshold_color:Dynamic):Dynamic;
	/**
		Generate a random distance matrix stored in condensed form.
		
		Parameters
		----------
		pnts : int
		    The number of points in the distance matrix. Has to be at least 2.
		
		Returns
		-------
		D : ndarray
		    A ``pnts * (pnts - 1) / 2`` sized vector is returned.
	**/
	static public function _randdm(pnts:Dynamic):Dynamic;
	/**
		Remove duplicates AND preserve the original order of the elements.
		
		The set class is not guaranteed to do this.
	**/
	static public function _remove_dups(L:Dynamic):Dynamic;
	static public function _warning(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Perform average/UPGMA linkage on a condensed distance matrix.
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    `linkage` for more information on its structure.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import average, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = average(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.20710678,  3.        ],
		       [ 5.        , 13.        ,  1.20710678,  3.        ],
		       [ 8.        , 14.        ,  1.20710678,  3.        ],
		       [11.        , 15.        ,  1.20710678,  3.        ],
		       [16.        , 17.        ,  3.39675184,  6.        ],
		       [18.        , 19.        ,  3.39675184,  6.        ],
		       [20.        , 21.        ,  4.09206523, 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12], dtype=int32)
		>>> fcluster(Z, 1.5, criterion='distance')
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		>>> fcluster(Z, 4, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2], dtype=int32)
		>>> fcluster(Z, 6, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function average(y:Dynamic):Dynamic;
	/**
		Perform centroid/UPGMC linkage.
		
		See `linkage` for more information on the input matrix,
		return structure, and algorithm.
		
		The following are common calling conventions:
		
		1. ``Z = centroid(y)``
		
		   Performs centroid/UPGMC linkage on the condensed distance
		   matrix ``y``.
		
		2. ``Z = centroid(X)``
		
		   Performs centroid/UPGMC linkage on the observation matrix ``X``
		   using Euclidean distance as the distance metric.
		
		Parameters
		----------
		y : ndarray
		    A condensed distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns. Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    the `linkage` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import centroid, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = centroid(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.11803399,  3.        ],
		       [ 5.        , 13.        ,  1.11803399,  3.        ],
		       [ 8.        , 15.        ,  1.11803399,  3.        ],
		       [11.        , 14.        ,  1.11803399,  3.        ],
		       [18.        , 19.        ,  3.33333333,  6.        ],
		       [16.        , 17.        ,  3.33333333,  6.        ],
		       [20.        , 21.        ,  3.33333333, 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 7,  8,  9, 10, 11, 12,  1,  2,  3,  4,  5,  6], dtype=int32)
		>>> fcluster(Z, 1.1, criterion='distance')
		array([5, 5, 6, 7, 7, 8, 1, 1, 2, 3, 3, 4], dtype=int32)
		>>> fcluster(Z, 2, criterion='distance')
		array([3, 3, 3, 4, 4, 4, 1, 1, 1, 2, 2, 2], dtype=int32)
		>>> fcluster(Z, 4, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function centroid(y:Dynamic):Dynamic;
	/**
		Perform complete/max/farthest point linkage on a condensed distance matrix.
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    the `linkage` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import complete, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = complete(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.41421356,  3.        ],
		       [ 5.        , 13.        ,  1.41421356,  3.        ],
		       [ 8.        , 14.        ,  1.41421356,  3.        ],
		       [11.        , 15.        ,  1.41421356,  3.        ],
		       [16.        , 17.        ,  4.12310563,  6.        ],
		       [18.        , 19.        ,  4.12310563,  6.        ],
		       [20.        , 21.        ,  5.65685425, 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12], dtype=int32)
		>>> fcluster(Z, 1.5, criterion='distance')
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		>>> fcluster(Z, 4.5, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2], dtype=int32)
		>>> fcluster(Z, 6, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function complete(y:Dynamic):Dynamic;
	/**
		Calculate the cophenetic distances between each observation in
		the hierarchical clustering defined by the linkage ``Z``.
		
		Suppose ``p`` and ``q`` are original observations in
		disjoint clusters ``s`` and ``t``, respectively and
		``s`` and ``t`` are joined by a direct parent cluster
		``u``. The cophenetic distance between observations
		``i`` and ``j`` is simply the distance between
		clusters ``s`` and ``t``.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as an array
		    (see `linkage` function).
		Y : ndarray (optional)
		    Calculates the cophenetic correlation coefficient ``c`` of a
		    hierarchical clustering defined by the linkage matrix `Z`
		    of a set of :math:`n` observations in :math:`m`
		    dimensions. `Y` is the condensed distance matrix from which
		    `Z` was generated.
		
		Returns
		-------
		c : ndarray
		    The cophentic correlation distance (if ``Y`` is passed).
		d : ndarray
		    The cophenetic distance matrix in condensed form. The
		    :math:`ij` th entry is the cophenetic distance between
		    original observations :math:`i` and :math:`j`.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		scipy.spatial.distance.squareform: transforming condensed matrices into square ones.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import single, cophenet
		>>> from scipy.spatial.distance import pdist, squareform
		
		Given a dataset ``X`` and a linkage matrix ``Z``, the cophenetic distance
		between two points of ``X`` is the distance between the largest two
		distinct clusters that each of the points:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		``X`` corresponds to this dataset ::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> Z = single(pdist(X))
		>>> Z
		array([[ 0.,  1.,  1.,  2.],
		       [ 2., 12.,  1.,  3.],
		       [ 3.,  4.,  1.,  2.],
		       [ 5., 14.,  1.,  3.],
		       [ 6.,  7.,  1.,  2.],
		       [ 8., 16.,  1.,  3.],
		       [ 9., 10.,  1.,  2.],
		       [11., 18.,  1.,  3.],
		       [13., 15.,  2.,  6.],
		       [17., 20.,  2.,  9.],
		       [19., 21.,  2., 12.]])
		>>> cophenet(Z)
		array([1., 1., 2., 2., 2., 2., 2., 2., 2., 2., 2., 1., 2., 2., 2., 2., 2.,
		       2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 1., 1., 2., 2.,
		       2., 2., 2., 2., 1., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2., 2.,
		       1., 1., 2., 2., 2., 1., 2., 2., 2., 2., 2., 2., 1., 1., 1.])
		
		The output of the `scipy.cluster.hierarchy.cophenet` method is
		represented in condensed form. We can use
		`scipy.spatial.distance.squareform` to see the output as a
		regular matrix (where each element ``ij`` denotes the cophenetic distance
		between each ``i``, ``j`` pair of points in ``X``):
		
		>>> squareform(cophenet(Z))
		array([[0., 1., 1., 2., 2., 2., 2., 2., 2., 2., 2., 2.],
		       [1., 0., 1., 2., 2., 2., 2., 2., 2., 2., 2., 2.],
		       [1., 1., 0., 2., 2., 2., 2., 2., 2., 2., 2., 2.],
		       [2., 2., 2., 0., 1., 1., 2., 2., 2., 2., 2., 2.],
		       [2., 2., 2., 1., 0., 1., 2., 2., 2., 2., 2., 2.],
		       [2., 2., 2., 1., 1., 0., 2., 2., 2., 2., 2., 2.],
		       [2., 2., 2., 2., 2., 2., 0., 1., 1., 2., 2., 2.],
		       [2., 2., 2., 2., 2., 2., 1., 0., 1., 2., 2., 2.],
		       [2., 2., 2., 2., 2., 2., 1., 1., 0., 2., 2., 2.],
		       [2., 2., 2., 2., 2., 2., 2., 2., 2., 0., 1., 1.],
		       [2., 2., 2., 2., 2., 2., 2., 2., 2., 1., 0., 1.],
		       [2., 2., 2., 2., 2., 2., 2., 2., 2., 1., 1., 0.]])
		
		In this example, the cophenetic distance between points on ``X`` that are
		very close (i.e. in the same corner) is 1. For other pairs of points is 2,
		because the points will be located in clusters at different
		corners - thus the distance between these clusters will be larger.
	**/
	static public function cophenet(Z:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		Check for correspondence between linkage and condensed distance matrices.
		
		They must have the same number of original observations for
		the check to succeed.
		
		This function is useful as a sanity check in algorithms that make
		extensive use of linkage and distance matrices that must
		correspond to the same set of original observations.
		
		Parameters
		----------
		Z : array_like
		    The linkage matrix to check for correspondence.
		Y : array_like
		    The condensed distance matrix to check for correspondence.
		
		Returns
		-------
		b : bool
		    A boolean indicating whether the linkage matrix and distance
		    matrix could possibly correspond to one another.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, correspond
		>>> from scipy.spatial.distance import pdist
		
		This method can be used to check if a given linkage matrix ``Z`` has been
		obtained from the application of a cluster method over a dataset ``X``:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		>>> X_condensed = pdist(X)
		>>> Z = ward(X_condensed)
		
		Here we can compare ``Z`` and ``X`` (in condensed form):
		
		>>> correspond(Z, X_condensed)
		True
	**/
	static public function correspond(Z:Dynamic, Y:Dynamic):Bool;
	/**
		Given a linkage matrix Z, return the cut tree.
		
		Parameters
		----------
		Z : scipy.cluster.linkage array
		    The linkage matrix.
		n_clusters : array_like, optional
		    Number of clusters in the tree at the cut point.
		height : array_like, optional
		    The height at which to cut the tree.  Only possible for ultrametric
		    trees.
		
		Returns
		-------
		cutree : array
		    An array indicating group membership at each agglomeration step.  I.e.,
		    for a full cut tree, in the first column each data point is in its own
		    cluster.  At the next step, two nodes are merged.  Finally all
		    singleton and non-singleton clusters are in one group.  If `n_clusters`
		    or `height` is given, the columns correspond to the columns of
		    `n_clusters` or `height`.
		
		Examples
		--------
		>>> from scipy import cluster
		>>> np.random.seed(23)
		>>> X = np.random.randn(50, 4)
		>>> Z = cluster.hierarchy.ward(X)
		>>> cutree = cluster.hierarchy.cut_tree(Z, n_clusters=[5, 10])
		>>> cutree[:10]
		array([[0, 0],
		       [1, 1],
		       [2, 2],
		       [3, 3],
		       [3, 4],
		       [2, 2],
		       [0, 0],
		       [1, 5],
		       [3, 6],
		       [4, 7]])
	**/
	static public function cut_tree(Z:Dynamic, ?n_clusters:Dynamic, ?height:Dynamic):Array<Dynamic>;
	/**
		Plot the hierarchical clustering as a dendrogram.
		
		The dendrogram illustrates how each cluster is
		composed by drawing a U-shaped link between a non-singleton
		cluster and its children.  The top of the U-link indicates a
		cluster merge.  The two legs of the U-link indicate which clusters
		were merged.  The length of the two legs of the U-link represents
		the distance between the child clusters.  It is also the
		cophenetic distance between original observations in the two
		children clusters.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix encoding the hierarchical clustering to
		    render as a dendrogram. See the ``linkage`` function for more
		    information on the format of ``Z``.
		p : int, optional
		    The ``p`` parameter for ``truncate_mode``.
		truncate_mode : str, optional
		    The dendrogram can be hard to read when the original
		    observation matrix from which the linkage is derived is
		    large. Truncation is used to condense the dendrogram. There
		    are several modes:
		
		    ``None``
		      No truncation is performed (default).
		      Note: ``'none'`` is an alias for ``None`` that's kept for
		      backward compatibility.
		
		    ``'lastp'``
		      The last ``p`` non-singleton clusters formed in the linkage are the
		      only non-leaf nodes in the linkage; they correspond to rows
		      ``Z[n-p-2:end]`` in ``Z``. All other non-singleton clusters are
		      contracted into leaf nodes.
		
		    ``'level'``
		      No more than ``p`` levels of the dendrogram tree are displayed.
		      A "level" includes all nodes with ``p`` merges from the last merge.
		
		      Note: ``'mtica'`` is an alias for ``'level'`` that's kept for
		      backward compatibility.
		
		color_threshold : double, optional
		    For brevity, let :math:`t` be the ``color_threshold``.
		    Colors all the descendent links below a cluster node
		    :math:`k` the same color if :math:`k` is the first node below
		    the cut threshold :math:`t`. All links connecting nodes with
		    distances greater than or equal to the threshold are colored
		    blue. If :math:`t` is less than or equal to zero, all nodes
		    are colored blue. If ``color_threshold`` is None or
		    'default', corresponding with MATLAB(TM) behavior, the
		    threshold is set to ``0.7*max(Z[:,2])``.
		get_leaves : bool, optional
		    Includes a list ``R['leaves']=H`` in the result
		    dictionary. For each :math:`i`, ``H[i] == j``, cluster node
		    ``j`` appears in position ``i`` in the left-to-right traversal
		    of the leaves, where :math:`j < 2n-1` and :math:`i < n`.
		orientation : str, optional
		    The direction to plot the dendrogram, which can be any
		    of the following strings:
		
		    ``'top'``
		      Plots the root at the top, and plot descendent links going downwards.
		      (default).
		
		    ``'bottom'``
		      Plots the root at the bottom, and plot descendent links going
		      upwards.
		
		    ``'left'``
		      Plots the root at the left, and plot descendent links going right.
		
		    ``'right'``
		      Plots the root at the right, and plot descendent links going left.
		
		labels : ndarray, optional
		    By default ``labels`` is None so the index of the original observation
		    is used to label the leaf nodes.  Otherwise, this is an :math:`n`
		    -sized list (or tuple). The ``labels[i]`` value is the text to put
		    under the :math:`i` th leaf node only if it corresponds to an original
		    observation and not a non-singleton cluster.
		count_sort : str or bool, optional
		    For each node n, the order (visually, from left-to-right) n's
		    two descendent links are plotted is determined by this
		    parameter, which can be any of the following values:
		
		    ``False``
		      Nothing is done.
		
		    ``'ascending'`` or ``True``
		      The child with the minimum number of original objects in its cluster
		      is plotted first.
		
		    ``'descending'``
		      The child with the maximum number of original objects in its cluster
		      is plotted first.
		
		    Note ``distance_sort`` and ``count_sort`` cannot both be True.
		distance_sort : str or bool, optional
		    For each node n, the order (visually, from left-to-right) n's
		    two descendent links are plotted is determined by this
		    parameter, which can be any of the following values:
		
		    ``False``
		      Nothing is done.
		
		    ``'ascending'`` or ``True``
		      The child with the minimum distance between its direct descendents is
		      plotted first.
		
		    ``'descending'``
		      The child with the maximum distance between its direct descendents is
		      plotted first.
		
		    Note ``distance_sort`` and ``count_sort`` cannot both be True.
		show_leaf_counts : bool, optional
		     When True, leaf nodes representing :math:`k>1` original
		     observation are labeled with the number of observations they
		     contain in parentheses.
		no_plot : bool, optional
		    When True, the final rendering is not performed. This is
		    useful if only the data structures computed for the rendering
		    are needed or if matplotlib is not available.
		no_labels : bool, optional
		    When True, no labels appear next to the leaf nodes in the
		    rendering of the dendrogram.
		leaf_rotation : double, optional
		    Specifies the angle (in degrees) to rotate the leaf
		    labels. When unspecified, the rotation is based on the number of
		    nodes in the dendrogram (default is 0).
		leaf_font_size : int, optional
		    Specifies the font size (in points) of the leaf labels. When
		    unspecified, the size based on the number of nodes in the
		    dendrogram.
		leaf_label_func : lambda or function, optional
		    When leaf_label_func is a callable function, for each
		    leaf with cluster index :math:`k < 2n-1`. The function
		    is expected to return a string with the label for the
		    leaf.
		
		    Indices :math:`k < n` correspond to original observations
		    while indices :math:`k \geq n` correspond to non-singleton
		    clusters.
		
		    For example, to label singletons with their node id and
		    non-singletons with their id, count, and inconsistency
		    coefficient, simply do::
		
		        # First define the leaf label function.
		        def llf(id):
		            if id < n:
		                return str(id)
		            else:
		                return '[%d %d %1.2f]' % (id, count, R[n-id,3])
		        # The text for the leaf nodes is going to be big so force
		        # a rotation of 90 degrees.
		        dendrogram(Z, leaf_label_func=llf, leaf_rotation=90)
		
		show_contracted : bool, optional
		    When True the heights of non-singleton nodes contracted
		    into a leaf node are plotted as crosses along the link
		    connecting that leaf node.  This really is only useful when
		    truncation is used (see ``truncate_mode`` parameter).
		link_color_func : callable, optional
		    If given, `link_color_function` is called with each non-singleton id
		    corresponding to each U-shaped link it will paint. The function is
		    expected to return the color to paint the link, encoded as a matplotlib
		    color string code. For example::
		
		        dendrogram(Z, link_color_func=lambda k: colors[k])
		
		    colors the direct links below each untruncated non-singleton node
		    ``k`` using ``colors[k]``.
		ax : matplotlib Axes instance, optional
		    If None and `no_plot` is not True, the dendrogram will be plotted
		    on the current axes.  Otherwise if `no_plot` is not True the
		    dendrogram will be plotted on the given ``Axes`` instance. This can be
		    useful if the dendrogram is part of a more complex figure.
		above_threshold_color : str, optional
		    This matplotlib color string sets the color of the links above the
		    color_threshold. The default is 'b'.
		
		Returns
		-------
		R : dict
		    A dictionary of data structures computed to render the
		    dendrogram. Its has the following keys:
		
		    ``'color_list'``
		      A list of color names. The k'th element represents the color of the
		      k'th link.
		
		    ``'icoord'`` and ``'dcoord'``
		      Each of them is a list of lists. Let ``icoord = [I1, I2, ..., Ip]``
		      where ``Ik = [xk1, xk2, xk3, xk4]`` and ``dcoord = [D1, D2, ..., Dp]``
		      where ``Dk = [yk1, yk2, yk3, yk4]``, then the k'th link painted is
		      ``(xk1, yk1)`` - ``(xk2, yk2)`` - ``(xk3, yk3)`` - ``(xk4, yk4)``.
		
		    ``'ivl'``
		      A list of labels corresponding to the leaf nodes.
		
		    ``'leaves'``
		      For each i, ``H[i] == j``, cluster node ``j`` appears in position
		      ``i`` in the left-to-right traversal of the leaves, where
		      :math:`j < 2n-1` and :math:`i < n`. If ``j`` is less than ``n``, the
		      ``i``-th leaf node corresponds to an original observation.
		      Otherwise, it corresponds to a non-singleton cluster.
		
		See Also
		--------
		linkage, set_link_color_palette
		
		Notes
		-----
		It is expected that the distances in ``Z[:,2]`` be monotonic, otherwise
		crossings appear in the dendrogram.
		
		Examples
		--------
		>>> from scipy.cluster import hierarchy
		>>> import matplotlib.pyplot as plt
		
		A very basic example:
		
		>>> ytdist = np.array([662., 877., 255., 412., 996., 295., 468., 268.,
		...                    400., 754., 564., 138., 219., 869., 669.])
		>>> Z = hierarchy.linkage(ytdist, 'single')
		>>> plt.figure()
		>>> dn = hierarchy.dendrogram(Z)
		
		Now plot in given axes, improve the color scheme and use both vertical and
		horizontal orientations:
		
		>>> hierarchy.set_link_color_palette(['m', 'c', 'y', 'k'])
		>>> fig, axes = plt.subplots(1, 2, figsize=(8, 3))
		>>> dn1 = hierarchy.dendrogram(Z, ax=axes[0], above_threshold_color='y',
		...                            orientation='top')
		>>> dn2 = hierarchy.dendrogram(Z, ax=axes[1],
		...                            above_threshold_color='#bcbddc',
		...                            orientation='right')
		>>> hierarchy.set_link_color_palette(None)  # reset to default after use
		>>> plt.show()
	**/
	static public function dendrogram(Z:Dynamic, ?p:Dynamic, ?truncate_mode:Dynamic, ?color_threshold:Dynamic, ?get_leaves:Dynamic, ?orientation:Dynamic, ?labels:Dynamic, ?count_sort:Dynamic, ?distance_sort:Dynamic, ?show_leaf_counts:Dynamic, ?no_plot:Dynamic, ?no_labels:Dynamic, ?leaf_font_size:Dynamic, ?leaf_rotation:Dynamic, ?leaf_label_func:Dynamic, ?show_contracted:Dynamic, ?link_color_func:Dynamic, ?ax:Dynamic, ?above_threshold_color:Dynamic):python.Dict<Dynamic, Dynamic>;
	static public var division : Dynamic;
	/**
		Form flat clusters from the hierarchical clustering defined by
		the given linkage matrix.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded with the matrix returned
		    by the `linkage` function.
		t : scalar
		    For criteria 'inconsistent', 'distance' or 'monocrit',
		     this is the threshold to apply when forming flat clusters.
		    For 'maxclust' or 'maxclust_monocrit' criteria,
		     this would be max number of clusters requested.
		criterion : str, optional
		    The criterion to use in forming flat clusters. This can
		    be any of the following values:
		
		      ``inconsistent`` :
		          If a cluster node and all its
		          descendants have an inconsistent value less than or equal
		          to `t` then all its leaf descendants belong to the
		          same flat cluster. When no non-singleton cluster meets
		          this criterion, every node is assigned to its own
		          cluster. (Default)
		
		      ``distance`` :
		          Forms flat clusters so that the original
		          observations in each flat cluster have no greater a
		          cophenetic distance than `t`.
		
		      ``maxclust`` :
		          Finds a minimum threshold ``r`` so that
		          the cophenetic distance between any two original
		          observations in the same flat cluster is no more than
		          ``r`` and no more than `t` flat clusters are formed.
		
		      ``monocrit`` :
		          Forms a flat cluster from a cluster node c
		          with index i when ``monocrit[j] <= t``.
		
		          For example, to threshold on the maximum mean distance
		          as computed in the inconsistency matrix R with a
		          threshold of 0.8 do::
		
		              MR = maxRstat(Z, R, 3)
		              cluster(Z, t=0.8, criterion='monocrit', monocrit=MR)
		
		      ``maxclust_monocrit`` :
		          Forms a flat cluster from a
		          non-singleton cluster node ``c`` when ``monocrit[i] <=
		          r`` for all cluster indices ``i`` below and including
		          ``c``. ``r`` is minimized such that no more than ``t``
		          flat clusters are formed. monocrit must be
		          monotonic. For example, to minimize the threshold t on
		          maximum inconsistency values so that no more than 3 flat
		          clusters are formed, do::
		
		              MI = maxinconsts(Z, R)
		              cluster(Z, t=3, criterion='maxclust_monocrit', monocrit=MI)
		
		depth : int, optional
		    The maximum depth to perform the inconsistency calculation.
		    It has no meaning for the other criteria. Default is 2.
		R : ndarray, optional
		    The inconsistency matrix to use for the 'inconsistent'
		    criterion. This matrix is computed if not provided.
		monocrit : ndarray, optional
		    An array of length n-1. `monocrit[i]` is the
		    statistics upon which non-singleton i is thresholded. The
		    monocrit vector must be monotonic, i.e. given a node c with
		    index i, for all node indices j corresponding to nodes
		    below c, ``monocrit[i] >= monocrit[j]``.
		
		Returns
		-------
		fcluster : ndarray
		    An array of length ``n``. ``T[i]`` is the flat cluster number to
		    which original observation ``i`` belongs.
		
		See Also
		--------
		linkage : for information about hierarchical clustering methods work.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, fcluster
		>>> from scipy.spatial.distance import pdist
		
		All cluster linkage methods - e.g. `scipy.cluster.hierarchy.ward`
		generate a linkage matrix ``Z`` as their output:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		
		This matrix represents a dendrogram, where the first and second elements
		are the two clusters merged at each step, the third element is the
		distance between these clusters, and the fourth element is the size of
		the new cluster - the number of original data points included.
		
		`scipy.cluster.hierarchy.fcluster` can be used to flatten the
		dendrogram, obtaining as a result an assignation of the original data
		points to single clusters.
		
		This assignation mostly depends on a distance threshold ``t`` - the maximum
		inter-cluster distance allowed:
		
		>>> fcluster(Z, t=0.9, criterion='distance')
		array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12], dtype=int32)
		
		>>> fcluster(Z, t=1.1, criterion='distance')
		array([1, 1, 2, 3, 3, 4, 5, 5, 6, 7, 7, 8], dtype=int32)
		
		>>> fcluster(Z, t=3, criterion='distance')
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		
		>>> fcluster(Z, t=9, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		In the first case, the threshold ``t`` is too small to allow any two
		samples in the data to form a cluster, so 12 different clusters are
		returned.
		
		In the second case, the threshold is large enough to allow the first
		4 points to be merged with their nearest neighbors. So here only 8
		clusters are returned.
		
		The third case, with a much higher threshold, allows for up to 8 data
		points to be connected - so 4 clusters are returned here.
		
		Lastly, the threshold of the fourth case is large enough to allow for
		all data points to be merged together - so a single cluster is returned.
	**/
	static public function fcluster(Z:Dynamic, t:Dynamic, ?criterion:Dynamic, ?depth:Dynamic, ?R:Dynamic, ?monocrit:Dynamic):Dynamic;
	/**
		Cluster observation data using a given metric.
		
		Clusters the original observations in the n-by-m data
		matrix X (n observations in m dimensions), using the euclidean
		distance metric to calculate distances between original observations,
		performs hierarchical clustering using the single linkage algorithm,
		and forms flat clusters using the inconsistency method with `t` as the
		cut-off threshold.
		
		A one-dimensional array ``T`` of length ``n`` is returned. ``T[i]`` is
		the index of the flat cluster to which the original observation ``i``
		belongs.
		
		Parameters
		----------
		X : (N, M) ndarray
		    N by M data matrix with N observations in M dimensions.
		t : scalar
		    For criteria 'inconsistent', 'distance' or 'monocrit',
		     this is the threshold to apply when forming flat clusters.
		    For 'maxclust' or 'maxclust_monocrit' criteria,
		     this would be max number of clusters requested.
		criterion : str, optional
		    Specifies the criterion for forming flat clusters.  Valid
		    values are 'inconsistent' (default), 'distance', or 'maxclust'
		    cluster formation algorithms. See `fcluster` for descriptions.
		metric : str, optional
		    The distance metric for calculating pairwise distances. See
		    ``distance.pdist`` for descriptions and linkage to verify
		    compatibility with the linkage method.
		depth : int, optional
		    The maximum depth for the inconsistency calculation. See
		    `inconsistent` for more information.
		method : str, optional
		    The linkage method to use (single, complete, average,
		    weighted, median centroid, ward). See `linkage` for more
		    information. Default is "single".
		R : ndarray, optional
		    The inconsistency matrix. It will be computed if necessary
		    if it is not passed.
		
		Returns
		-------
		fclusterdata : ndarray
		    A vector of length n. T[i] is the flat cluster number to
		    which original observation i belongs.
		
		See Also
		--------
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Notes
		-----
		This function is similar to the MATLAB function ``clusterdata``.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import fclusterdata
		
		This is a convenience method that abstracts all the steps to perform in a
		typical SciPy's hierarchical clustering workflow.
		
		* Transform the input data into a condensed matrix with `scipy.spatial.distance.pdist`.
		
		* Apply a clustering method.
		
		* Obtain flat clusters at a user defined distance threshold ``t`` using `scipy.cluster.hierarchy.fcluster`.
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> fclusterdata(X, t=1)
		array([3, 3, 3, 4, 4, 4, 2, 2, 2, 1, 1, 1], dtype=int32)
		
		The output here (for the dataset ``X``, distance threshold ``t``, and the
		default settings) is four clusters with three data points each.
	**/
	static public function fclusterdata(X:Dynamic, t:Dynamic, ?criterion:Dynamic, ?metric:Dynamic, ?depth:Dynamic, ?method:Dynamic, ?R:Dynamic):Dynamic;
	/**
		Convert a linkage matrix generated by MATLAB(TM) to a new
		linkage matrix compatible with this module.
		
		The conversion does two things:
		
		 * the indices are converted from ``1..N`` to ``0..(N-1)`` form,
		   and
		
		 * a fourth column ``Z[:,3]`` is added where ``Z[i,3]`` represents the
		   number of original observations (leaves) in the non-singleton
		   cluster ``i``.
		
		This function is useful when loading in linkages from legacy data
		files generated by MATLAB.
		
		Parameters
		----------
		Z : ndarray
		    A linkage matrix generated by MATLAB(TM).
		
		Returns
		-------
		ZS : ndarray
		    A linkage matrix compatible with ``scipy.cluster.hierarchy``.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		to_mlab_linkage: transform from SciPy to MATLAB format.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.cluster.hierarchy import ward, from_mlab_linkage
		
		Given a linkage matrix in MATLAB format ``mZ``, we can use
		`scipy.cluster.hierarchy.from_mlab_linkage` to import
		it into SciPy format:
		
		>>> mZ = np.array([[1, 2, 1], [4, 5, 1], [7, 8, 1],
		...                [10, 11, 1], [3, 13, 1.29099445],
		...                [6, 14, 1.29099445],
		...                [9, 15, 1.29099445],
		...                [12, 16, 1.29099445],
		...                [17, 18, 5.77350269],
		...                [19, 20, 5.77350269],
		...                [21, 22,  8.16496581]])
		
		>>> Z = from_mlab_linkage(mZ)
		>>> Z
		array([[  0.        ,   1.        ,   1.        ,   2.        ],
		       [  3.        ,   4.        ,   1.        ,   2.        ],
		       [  6.        ,   7.        ,   1.        ,   2.        ],
		       [  9.        ,  10.        ,   1.        ,   2.        ],
		       [  2.        ,  12.        ,   1.29099445,   3.        ],
		       [  5.        ,  13.        ,   1.29099445,   3.        ],
		       [  8.        ,  14.        ,   1.29099445,   3.        ],
		       [ 11.        ,  15.        ,   1.29099445,   3.        ],
		       [ 16.        ,  17.        ,   5.77350269,   6.        ],
		       [ 18.        ,  19.        ,   5.77350269,   6.        ],
		       [ 20.        ,  21.        ,   8.16496581,  12.        ]])
		
		As expected, the linkage matrix ``Z`` returned includes an
		additional column counting the number of original samples in
		each cluster. Also, all cluster indexes are reduced by 1
		(MATLAB format uses 1-indexing, whereas SciPy uses 0-indexing).
	**/
	static public function from_mlab_linkage(Z:Dynamic):Dynamic;
	/**
		Calculate inconsistency statistics on a linkage matrix.
		
		Parameters
		----------
		Z : ndarray
		    The :math:`(n-1)` by 4 matrix encoding the linkage (hierarchical
		    clustering).  See `linkage` documentation for more information on its
		    form.
		d : int, optional
		    The number of links up to `d` levels below each non-singleton cluster.
		
		Returns
		-------
		R : ndarray
		    A :math:`(n-1)` by 4 matrix where the ``i``'th row contains the link
		    statistics for the non-singleton cluster ``i``. The link statistics are
		    computed over the link heights for links :math:`d` levels below the
		    cluster ``i``. ``R[i,0]`` and ``R[i,1]`` are the mean and standard
		    deviation of the link heights, respectively; ``R[i,2]`` is the number
		    of links included in the calculation; and ``R[i,3]`` is the
		    inconsistency coefficient,
		
		    .. math:: \frac{\mathtt{Z[i,2]} - \mathtt{R[i,0]}} {R[i,1]}
		
		Notes
		-----
		This function behaves similarly to the MATLAB(TM) ``inconsistent``
		function.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import inconsistent, linkage
		>>> from matplotlib import pyplot as plt
		>>> X = [[i] for i in [2, 8, 0, 4, 1, 9, 9, 0]]
		>>> Z = linkage(X, 'ward')
		>>> print(Z)
		[[ 5.          6.          0.          2.        ]
		 [ 2.          7.          0.          2.        ]
		 [ 0.          4.          1.          2.        ]
		 [ 1.          8.          1.15470054  3.        ]
		 [ 9.         10.          2.12132034  4.        ]
		 [ 3.         12.          4.11096096  5.        ]
		 [11.         13.         14.07183949  8.        ]]
		>>> inconsistent(Z)
		array([[ 0.        ,  0.        ,  1.        ,  0.        ],
		       [ 0.        ,  0.        ,  1.        ,  0.        ],
		       [ 1.        ,  0.        ,  1.        ,  0.        ],
		       [ 0.57735027,  0.81649658,  2.        ,  0.70710678],
		       [ 1.04044011,  1.06123822,  3.        ,  1.01850858],
		       [ 3.11614065,  1.40688837,  2.        ,  0.70710678],
		       [ 6.44583366,  6.76770586,  3.        ,  1.12682288]])
	**/
	static public function inconsistent(Z:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Determine if two different cluster assignments are equivalent.
		
		Parameters
		----------
		T1 : array_like
		    An assignment of singleton cluster ids to flat cluster ids.
		T2 : array_like
		    An assignment of singleton cluster ids to flat cluster ids.
		
		Returns
		-------
		b : bool
		    Whether the flat cluster assignments `T1` and `T2` are
		    equivalent.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		fcluster: for the creation of flat cluster assignments.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import fcluster, is_isomorphic
		>>> from scipy.cluster.hierarchy import single, complete
		>>> from scipy.spatial.distance import pdist
		
		Two flat cluster assignments can be isomorphic if they represent the same
		cluster assignment, with different labels.
		
		For example, we can use the `scipy.cluster.hierarchy.single`: method
		and flatten the output to four clusters:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = single(pdist(X))
		>>> T = fcluster(Z, 1, criterion='distance')
		>>> T
		array([3, 3, 3, 4, 4, 4, 2, 2, 2, 1, 1, 1], dtype=int32)
		
		We can then do the same using the
		`scipy.cluster.hierarchy.complete`: method:
		
		>>> Z = complete(pdist(X))
		>>> T_ = fcluster(Z, 1.5, criterion='distance')
		>>> T_
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		
		As we can see, in both cases we obtain four clusters and all the data
		points are distributed in the same way - the only thing that changes
		are the flat cluster labels (3 => 1, 4 =>2, 2 =>3 and 4 =>1), so both
		cluster assignments are isomorphic:
		
		>>> is_isomorphic(T, T_)
		True
	**/
	static public function is_isomorphic(T1:Dynamic, T2:Dynamic):Bool;
	/**
		Return True if the linkage passed is monotonic.
		
		The linkage is monotonic if for every cluster :math:`s` and :math:`t`
		joined, the distance between them is no less than the distance
		between any previously joined clusters.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix to check for monotonicity.
		
		Returns
		-------
		b : bool
		    A boolean indicating whether the linkage is monotonic.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import median, ward, is_monotonic
		>>> from scipy.spatial.distance import pdist
		
		By definition, some hierarchical clustering algorithms - such as
		`scipy.cluster.hierarchy.ward` - produce monotonic assignments of
		samples to clusters; however, this is not always true for other
		hierarchical methods - e.g. `scipy.cluster.hierarchy.median`.
		
		Given a linkage matrix ``Z`` (as the result of a hierarchical clustering
		method) we can test programmatically whether if is has the monotonicity
		property or not, using `scipy.cluster.hierarchy.is_monotonic`:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		>>> is_monotonic(Z)
		True
		
		>>> Z = median(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.11803399,  3.        ],
		       [ 5.        , 13.        ,  1.11803399,  3.        ],
		       [ 8.        , 15.        ,  1.11803399,  3.        ],
		       [11.        , 14.        ,  1.11803399,  3.        ],
		       [18.        , 19.        ,  3.        ,  6.        ],
		       [16.        , 17.        ,  3.5       ,  6.        ],
		       [20.        , 21.        ,  3.25      , 12.        ]])
		>>> is_monotonic(Z)
		False
		
		Note that this method is equivalent to just verifying that the distances
		in the third column of the linkage matrix appear in a monotonically
		increasing order.
	**/
	static public function is_monotonic(Z:Dynamic):Bool;
	/**
		Return True if the inconsistency matrix passed is valid.
		
		It must be a :math:`n` by 4 array of doubles. The standard
		deviations ``R[:,1]`` must be nonnegative. The link counts
		``R[:,2]`` must be positive and no greater than :math:`n-1`.
		
		Parameters
		----------
		R : ndarray
		    The inconsistency matrix to check for validity.
		warning : bool, optional
		     When True, issues a Python warning if the linkage
		     matrix passed is invalid.
		throw : bool, optional
		     When True, throws a Python exception if the linkage
		     matrix passed is invalid.
		name : str, optional
		     This string refers to the variable name of the invalid
		     linkage matrix.
		
		Returns
		-------
		b : bool
		    True if the inconsistency matrix is valid.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		inconsistent: for the creation of a inconsistency matrix.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, inconsistent, is_valid_im
		>>> from scipy.spatial.distance import pdist
		
		Given a data set ``X``, we can apply a clustering method to obtain a
		linkage matrix ``Z``. `scipy.cluster.hierarchy.inconsistent` can
		be also used to obtain the inconsistency matrix ``R`` associated to
		this clustering process:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		>>> R = inconsistent(Z)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		>>> R
		array([[1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.14549722, 0.20576415, 2.        , 0.70710678],
		       [1.14549722, 0.20576415, 2.        , 0.70710678],
		       [1.14549722, 0.20576415, 2.        , 0.70710678],
		       [1.14549722, 0.20576415, 2.        , 0.70710678],
		       [2.78516386, 2.58797734, 3.        , 1.15470054],
		       [2.78516386, 2.58797734, 3.        , 1.15470054],
		       [6.57065706, 1.38071187, 3.        , 1.15470054]])
		
		Now we can use `scipy.cluster.hierarchy.is_valid_im` to verify that
		``R`` is correct:
		
		>>> is_valid_im(R)
		True
		
		However, if ``R`` is wrongly constructed (e.g one of the standard
		deviations is set to a negative value) then the check will fail:
		
		>>> R[-1,1] = R[-1,1] * -1
		>>> is_valid_im(R)
		False
	**/
	static public function is_valid_im(R:Dynamic, ?warning:Dynamic, ?_throw:Dynamic, ?name:Dynamic):Bool;
	/**
		Check the validity of a linkage matrix.
		
		A linkage matrix is valid if it is a two dimensional array (type double)
		with :math:`n` rows and 4 columns.  The first two columns must contain
		indices between 0 and :math:`2n-1`. For a given row ``i``, the following
		two expressions have to hold:
		
		.. math::
		
		    0 \leq \mathtt{Z[i,0]} \leq i+n-1
		    0 \leq Z[i,1] \leq i+n-1
		
		I.e. a cluster cannot join another cluster unless the cluster being joined
		has been generated.
		
		Parameters
		----------
		Z : array_like
		    Linkage matrix.
		warning : bool, optional
		    When True, issues a Python warning if the linkage
		    matrix passed is invalid.
		throw : bool, optional
		    When True, throws a Python exception if the linkage
		    matrix passed is invalid.
		name : str, optional
		    This string refers to the variable name of the invalid
		    linkage matrix.
		
		Returns
		-------
		b : bool
		    True if the inconsistency matrix is valid.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, is_valid_linkage
		>>> from scipy.spatial.distance import pdist
		
		All linkage matrices generated by the clustering methods in this module
		will be valid (i.e. they will have the appropriate dimensions and the two
		required expressions will hold for all the rows).
		
		We can check this using `scipy.cluster.hierarchy.is_valid_linkage`:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		>>> is_valid_linkage(Z)
		True
		
		However, is we create a linkage matrix in a wrong way - or if we modify
		a valid one in a way that any of the required expressions don't hold
		anymore, then the check will fail:
		
		>>> Z[3][1] = 20    # the cluster number 20 is not defined at this point
		>>> is_valid_linkage(Z)
		False
	**/
	static public function is_valid_linkage(Z:Dynamic, ?warning:Dynamic, ?_throw:Dynamic, ?name:Dynamic):Bool;
	/**
		Return the root nodes in a hierarchical clustering.
		
		Returns the root nodes in a hierarchical clustering corresponding
		to a cut defined by a flat cluster assignment vector ``T``. See
		the ``fcluster`` function for more information on the format of ``T``.
		
		For each flat cluster :math:`j` of the :math:`k` flat clusters
		represented in the n-sized flat cluster assignment vector ``T``,
		this function finds the lowest cluster node :math:`i` in the linkage
		tree Z such that:
		
		  * leaf descendants belong only to flat cluster j
		    (i.e. ``T[p]==j`` for all :math:`p` in :math:`S(i)` where
		    :math:`S(i)` is the set of leaf ids of descendant leaf nodes
		    with cluster node :math:`i`)
		
		  * there does not exist a leaf that is not a descendant with
		    :math:`i` that also belongs to cluster :math:`j`
		    (i.e. ``T[q]!=j`` for all :math:`q` not in :math:`S(i)`).  If
		    this condition is violated, ``T`` is not a valid cluster
		    assignment vector, and an exception will be thrown.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix. See
		    `linkage` for more information.
		T : ndarray
		    The flat cluster assignment vector.
		
		Returns
		-------
		L : ndarray
		    The leader linkage node id's stored as a k-element 1-D array
		    where ``k`` is the number of flat clusters found in ``T``.
		
		    ``L[j]=i`` is the linkage cluster node id that is the
		    leader of flat cluster with id M[j].  If ``i < n``, ``i``
		    corresponds to an original observation, otherwise it
		    corresponds to a non-singleton cluster.
		
		M : ndarray
		    The leader linkage node id's stored as a k-element 1-D array where
		    ``k`` is the number of flat clusters found in ``T``. This allows the
		    set of flat cluster ids to be any arbitrary set of ``k`` integers.
		
		    For example: if ``L[3]=2`` and ``M[3]=8``, the flat cluster with
		    id 8's leader is linkage node 2.
		
		See Also
		--------
		fcluster: for the creation of flat cluster assignments.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, fcluster, leaders
		>>> from scipy.spatial.distance import pdist
		
		Given a linkage matrix ``Z`` - obtained after apply a clustering method
		to a dataset ``X`` - and a flat cluster assignment array ``T``:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		
		
		>>> T = fcluster(Z, 3, criterion='distance')
		>>> T
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		
		`scipy.cluster.hierarchy.leaders` returns the indexes of the nodes
		in the dendrogram that are the leaders of each flat cluster:
		
		>>> L, M = leaders(Z, T)
		>>> L
		array([16, 17, 18, 19], dtype=int32)
		
		(remember that indexes 0-11 point to the 12 data points in ``X``
		whereas indexes 12-22 point to the 11 rows of ``Z``)
		
		`scipy.cluster.hierarchy.leaders` also returns the indexes of
		the flat clusters in ``T``:
		
		>>> M
		array([1, 2, 3, 4], dtype=int32)
	**/
	static public function leaders(Z:Dynamic, T:Dynamic):Dynamic;
	/**
		Return a list of leaf node ids.
		
		The return corresponds to the observation vector index as it appears
		in the tree from left to right. Z is a linkage matrix.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix.  `Z` is
		    a linkage matrix.  See `linkage` for more information.
		
		Returns
		-------
		leaves_list : ndarray
		    The list of leaf node ids.
		
		See Also
		--------
		dendrogram: for information about dendrogram structure.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, dendrogram, leaves_list
		>>> from scipy.spatial.distance import pdist
		>>> from matplotlib import pyplot as plt
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		
		The linkage matrix ``Z`` represents a dendrogram, that is, a tree that
		encodes the structure of the clustering performed.
		`scipy.cluster.hierarchy.leaves_list` shows the mapping between
		indexes in the ``X`` dataset and leaves in the dendrogram:
		
		>>> leaves_list(Z)
		array([ 2,  0,  1,  5,  3,  4,  8,  6,  7, 11,  9, 10], dtype=int32)
		
		>>> fig = plt.figure(figsize=(25, 10))
		>>> dn = dendrogram(Z)
		>>> plt.show()
	**/
	static public function leaves_list(Z:Dynamic):Dynamic;
	/**
		Perform hierarchical/agglomerative clustering.
		
		The input y may be either a 1d condensed distance matrix
		or a 2d array of observation vectors.
		
		If y is a 1d condensed distance matrix,
		then y must be a :math:`\binom{n}{2}` sized
		vector where n is the number of original observations paired
		in the distance matrix. The behavior of this function is very
		similar to the MATLAB linkage function.
		
		A :math:`(n-1)` by 4 matrix ``Z`` is returned. At the
		:math:`i`-th iteration, clusters with indices ``Z[i, 0]`` and
		``Z[i, 1]`` are combined to form cluster :math:`n + i`. A
		cluster with an index less than :math:`n` corresponds to one of
		the :math:`n` original observations. The distance between
		clusters ``Z[i, 0]`` and ``Z[i, 1]`` is given by ``Z[i, 2]``. The
		fourth value ``Z[i, 3]`` represents the number of original
		observations in the newly formed cluster.
		
		The following linkage methods are used to compute the distance
		:math:`d(s, t)` between two clusters :math:`s` and
		:math:`t`. The algorithm begins with a forest of clusters that
		have yet to be used in the hierarchy being formed. When two
		clusters :math:`s` and :math:`t` from this forest are combined
		into a single cluster :math:`u`, :math:`s` and :math:`t` are
		removed from the forest, and :math:`u` is added to the
		forest. When only one cluster remains in the forest, the algorithm
		stops, and this cluster becomes the root.
		
		A distance matrix is maintained at each iteration. The ``d[i,j]``
		entry corresponds to the distance between cluster :math:`i` and
		:math:`j` in the original forest.
		
		At each iteration, the algorithm must update the distance matrix
		to reflect the distance of the newly formed cluster u with the
		remaining clusters in the forest.
		
		Suppose there are :math:`|u|` original observations
		:math:`u[0], \ldots, u[|u|-1]` in cluster :math:`u` and
		:math:`|v|` original objects :math:`v[0], \ldots, v[|v|-1]` in
		cluster :math:`v`. Recall :math:`s` and :math:`t` are
		combined to form cluster :math:`u`. Let :math:`v` be any
		remaining cluster in the forest that is not :math:`u`.
		
		The following are methods for calculating the distance between the
		newly formed cluster :math:`u` and each :math:`v`.
		
		  * method='single' assigns
		
		    .. math::
		       d(u,v) = \min(dist(u[i],v[j]))
		
		    for all points :math:`i` in cluster :math:`u` and
		    :math:`j` in cluster :math:`v`. This is also known as the
		    Nearest Point Algorithm.
		
		  * method='complete' assigns
		
		    .. math::
		       d(u, v) = \max(dist(u[i],v[j]))
		
		    for all points :math:`i` in cluster u and :math:`j` in
		    cluster :math:`v`. This is also known by the Farthest Point
		    Algorithm or Voor Hees Algorithm.
		
		  * method='average' assigns
		
		    .. math::
		       d(u,v) = \sum_{ij} \frac{d(u[i], v[j])}
		                               {(|u|*|v|)}
		
		    for all points :math:`i` and :math:`j` where :math:`|u|`
		    and :math:`|v|` are the cardinalities of clusters :math:`u`
		    and :math:`v`, respectively. This is also called the UPGMA
		    algorithm.
		
		  * method='weighted' assigns
		
		    .. math::
		       d(u,v) = (dist(s,v) + dist(t,v))/2
		
		    where cluster u was formed with cluster s and t and v
		    is a remaining cluster in the forest. (also called WPGMA)
		
		  * method='centroid' assigns
		
		    .. math::
		       dist(s,t) = ||c_s-c_t||_2
		
		    where :math:`c_s` and :math:`c_t` are the centroids of
		    clusters :math:`s` and :math:`t`, respectively. When two
		    clusters :math:`s` and :math:`t` are combined into a new
		    cluster :math:`u`, the new centroid is computed over all the
		    original objects in clusters :math:`s` and :math:`t`. The
		    distance then becomes the Euclidean distance between the
		    centroid of :math:`u` and the centroid of a remaining cluster
		    :math:`v` in the forest. This is also known as the UPGMC
		    algorithm.
		
		  * method='median' assigns :math:`d(s,t)` like the ``centroid``
		    method. When two clusters :math:`s` and :math:`t` are combined
		    into a new cluster :math:`u`, the average of centroids s and t
		    give the new centroid :math:`u`. This is also known as the
		    WPGMC algorithm.
		
		  * method='ward' uses the Ward variance minimization algorithm.
		    The new entry :math:`d(u,v)` is computed as follows,
		
		    .. math::
		
		       d(u,v) = \sqrt{\frac{|v|+|s|}
		                           {T}d(v,s)^2
		                    + \frac{|v|+|t|}
		                           {T}d(v,t)^2
		                    - \frac{|v|}
		                           {T}d(s,t)^2}
		
		    where :math:`u` is the newly joined cluster consisting of
		    clusters :math:`s` and :math:`t`, :math:`v` is an unused
		    cluster in the forest, :math:`T=|v|+|s|+|t|`, and
		    :math:`|*|` is the cardinality of its argument. This is also
		    known as the incremental algorithm.
		
		Warning: When the minimum distance pair in the forest is chosen, there
		may be two or more pairs with the same minimum distance. This
		implementation may choose a different minimum than the MATLAB
		version.
		
		Parameters
		----------
		y : ndarray
		    A condensed distance matrix. A condensed distance matrix
		    is a flat array containing the upper triangular of the distance matrix.
		    This is the form that ``pdist`` returns. Alternatively, a collection of
		    :math:`m` observation vectors in :math:`n` dimensions may be passed as
		    an :math:`m` by :math:`n` array. All elements of the condensed distance
		    matrix must be finite, i.e. no NaNs or infs.
		method : str, optional
		    The linkage algorithm to use. See the ``Linkage Methods`` section below
		    for full descriptions.
		metric : str or function, optional
		    The distance metric to use in the case that y is a collection of
		    observation vectors; ignored otherwise. See the ``pdist``
		    function for a list of valid distance metrics. A custom distance
		    function can also be used.
		optimal_ordering : bool, optional
		    If True, the linkage matrix will be reordered so that the distance
		    between successive leaves is minimal. This results in a more intuitive
		    tree structure when the data are visualized. defaults to False, because
		    this algorithm can be slow, particularly on large datasets [2]_. See
		    also the `optimal_leaf_ordering` function.
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix.
		
		Notes
		-----
		1. For method 'single' an optimized algorithm based on minimum spanning
		   tree is implemented. It has time complexity :math:`O(n^2)`.
		   For methods 'complete', 'average', 'weighted' and 'ward' an algorithm
		   called nearest-neighbors chain is implemented. It also has time
		   complexity :math:`O(n^2)`.
		   For other methods a naive algorithm is implemented with :math:`O(n^3)`
		   time complexity.
		   All algorithms use :math:`O(n^2)` memory.
		   Refer to [1]_ for details about the algorithms.
		2. Methods 'centroid', 'median' and 'ward' are correctly defined only if
		   Euclidean pairwise metric is used. If `y` is passed as precomputed
		   pairwise distances, then it is a user responsibility to assure that
		   these distances are in fact Euclidean, otherwise the produced result
		   will be incorrect.
		
		See Also
		--------
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		References
		----------
		.. [1] Daniel Mullner, "Modern hierarchical, agglomerative clustering
		       algorithms", :arXiv:`1109.2378v1`.
		.. [2] Ziv Bar-Joseph, David K. Gifford, Tommi S. Jaakkola, "Fast optimal
		       leaf ordering for hierarchical clustering", 2001. Bioinformatics
		       :doi:`10.1093/bioinformatics/17.suppl_1.S22`
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import dendrogram, linkage
		>>> from matplotlib import pyplot as plt
		>>> X = [[i] for i in [2, 8, 0, 4, 1, 9, 9, 0]]
		
		>>> Z = linkage(X, 'ward')
		>>> fig = plt.figure(figsize=(25, 10))
		>>> dn = dendrogram(Z)
		
		>>> Z = linkage(X, 'single')
		>>> fig = plt.figure(figsize=(25, 10))
		>>> dn = dendrogram(Z)
		>>> plt.show()
	**/
	static public function linkage(y:Dynamic, ?method:Dynamic, ?metric:Dynamic, ?optimal_ordering:Dynamic):Dynamic;
	/**
		Return the maximum statistic for each non-singleton cluster and its
		children.
		
		Parameters
		----------
		Z : array_like
		    The hierarchical clustering encoded as a matrix. See `linkage` for more
		    information.
		R : array_like
		    The inconsistency matrix.
		i : int
		    The column of `R` to use as the statistic.
		
		Returns
		-------
		MR : ndarray
		    Calculates the maximum statistic for the i'th column of the
		    inconsistency matrix `R` for each non-singleton cluster
		    node. ``MR[j]`` is the maximum over ``R[Q(j)-n, i]`` where
		    ``Q(j)`` the set of all node ids corresponding to nodes below
		    and including ``j``.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		inconsistent: for the creation of a inconsistency matrix.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import median, inconsistent, maxRstat
		>>> from scipy.spatial.distance import pdist
		
		Given a data set ``X``, we can apply a clustering method to obtain a
		linkage matrix ``Z``. `scipy.cluster.hierarchy.inconsistent` can
		be also used to obtain the inconsistency matrix ``R`` associated to
		this clustering process:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = median(pdist(X))
		>>> R = inconsistent(Z)
		>>> R
		array([[1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.74535599, 1.08655358, 3.        , 1.15470054],
		       [1.91202266, 1.37522872, 3.        , 1.15470054],
		       [3.25      , 0.25      , 3.        , 0.        ]])
		
		`scipy.cluster.hierarchy.maxRstat` can be used to compute
		the maximum value of each column of ``R``, for each non-singleton
		cluster and its children:
		
		>>> maxRstat(Z, R, 0)
		array([1.        , 1.        , 1.        , 1.        , 1.05901699,
		       1.05901699, 1.05901699, 1.05901699, 1.74535599, 1.91202266,
		       3.25      ])
		>>> maxRstat(Z, R, 1)
		array([0.        , 0.        , 0.        , 0.        , 0.08346263,
		       0.08346263, 0.08346263, 0.08346263, 1.08655358, 1.37522872,
		       1.37522872])
		>>> maxRstat(Z, R, 3)
		array([0.        , 0.        , 0.        , 0.        , 0.70710678,
		       0.70710678, 0.70710678, 0.70710678, 1.15470054, 1.15470054,
		       1.15470054])
	**/
	static public function maxRstat(Z:Dynamic, R:Dynamic, i:Dynamic):Dynamic;
	/**
		Return the maximum distance between any non-singleton cluster.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix. See
		    ``linkage`` for more information.
		
		Returns
		-------
		maxdists : ndarray
		    A ``(n-1)`` sized numpy array of doubles; ``MD[i]`` represents
		    the maximum distance between any cluster (including
		    singletons) below and including the node with index i. More
		    specifically, ``MD[i] = Z[Q(i)-n, 2].max()`` where ``Q(i)`` is the
		    set of all node indices below and including node i.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		is_monotonic: for testing for monotonicity of a linkage matrix.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import median, maxdists
		>>> from scipy.spatial.distance import pdist
		
		Given a linkage matrix ``Z``, `scipy.cluster.hierarchy.maxdists`
		computes for each new cluster generated (i.e. for each row of the linkage
		matrix) what is the maximum distance between any two child clusters.
		
		Due to the nature of hierarchical clustering, in many cases this is going
		to be just the distance between the two child clusters that were merged
		to form the current one - that is, Z[:,2].
		
		However, for non-monotonic cluster assignments such as
		`scipy.cluster.hierarchy.median` clustering this is not always the
		case: There may be cluster formations were the distance between the two
		clusters merged is smaller than the distance between their children.
		
		We can see this in an example:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = median(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.11803399,  3.        ],
		       [ 5.        , 13.        ,  1.11803399,  3.        ],
		       [ 8.        , 15.        ,  1.11803399,  3.        ],
		       [11.        , 14.        ,  1.11803399,  3.        ],
		       [18.        , 19.        ,  3.        ,  6.        ],
		       [16.        , 17.        ,  3.5       ,  6.        ],
		       [20.        , 21.        ,  3.25      , 12.        ]])
		>>> maxdists(Z)
		array([1.        , 1.        , 1.        , 1.        , 1.11803399,
		       1.11803399, 1.11803399, 1.11803399, 3.        , 3.5       ,
		       3.5       ])
		
		Note that while the distance between the two clusters merged when creating the
		last cluster is 3.25, there are two children (clusters 16 and 17) whose distance
		is larger (3.5). Thus, `scipy.cluster.hierarchy.maxdists` returns 3.5 in
		this case.
	**/
	static public function maxdists(Z:Dynamic):Dynamic;
	/**
		Return the maximum inconsistency coefficient for each
		non-singleton cluster and its children.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix. See
		    `linkage` for more information.
		R : ndarray
		    The inconsistency matrix.
		
		Returns
		-------
		MI : ndarray
		    A monotonic ``(n-1)``-sized numpy array of doubles.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		inconsistent: for the creation of a inconsistency matrix.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import median, inconsistent, maxinconsts
		>>> from scipy.spatial.distance import pdist
		
		Given a data set ``X``, we can apply a clustering method to obtain a
		linkage matrix ``Z``. `scipy.cluster.hierarchy.inconsistent` can
		be also used to obtain the inconsistency matrix ``R`` associated to
		this clustering process:
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = median(pdist(X))
		>>> R = inconsistent(Z)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.11803399,  3.        ],
		       [ 5.        , 13.        ,  1.11803399,  3.        ],
		       [ 8.        , 15.        ,  1.11803399,  3.        ],
		       [11.        , 14.        ,  1.11803399,  3.        ],
		       [18.        , 19.        ,  3.        ,  6.        ],
		       [16.        , 17.        ,  3.5       ,  6.        ],
		       [20.        , 21.        ,  3.25      , 12.        ]])
		>>> R
		array([[1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.        , 0.        , 1.        , 0.        ],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.05901699, 0.08346263, 2.        , 0.70710678],
		       [1.74535599, 1.08655358, 3.        , 1.15470054],
		       [1.91202266, 1.37522872, 3.        , 1.15470054],
		       [3.25      , 0.25      , 3.        , 0.        ]])
		
		Here `scipy.cluster.hierarchy.maxinconsts` can be used to compute
		the maximum value of the inconsistency statistic (the last column of
		``R``) for each non-singleton cluster and its children:
		
		>>> maxinconsts(Z, R)
		array([0.        , 0.        , 0.        , 0.        , 0.70710678,
		       0.70710678, 0.70710678, 0.70710678, 1.15470054, 1.15470054,
		       1.15470054])
	**/
	static public function maxinconsts(Z:Dynamic, R:Dynamic):Dynamic;
	/**
		Perform median/WPGMC linkage.
		
		See `linkage` for more information on the return structure
		and algorithm.
		
		 The following are common calling conventions:
		
		 1. ``Z = median(y)``
		
		    Performs median/WPGMC linkage on the condensed distance matrix
		    ``y``.  See ``linkage`` for more information on the return
		    structure and algorithm.
		
		 2. ``Z = median(X)``
		
		    Performs median/WPGMC linkage on the observation matrix ``X``
		    using Euclidean distance as the distance metric. See `linkage`
		    for more information on the return structure and algorithm.
		
		Parameters
		----------
		y : ndarray
		    A condensed distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns.  Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import median, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = median(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.11803399,  3.        ],
		       [ 5.        , 13.        ,  1.11803399,  3.        ],
		       [ 8.        , 15.        ,  1.11803399,  3.        ],
		       [11.        , 14.        ,  1.11803399,  3.        ],
		       [18.        , 19.        ,  3.        ,  6.        ],
		       [16.        , 17.        ,  3.5       ,  6.        ],
		       [20.        , 21.        ,  3.25      , 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 7,  8,  9, 10, 11, 12,  1,  2,  3,  4,  5,  6], dtype=int32)
		>>> fcluster(Z, 1.1, criterion='distance')
		array([5, 5, 6, 7, 7, 8, 1, 1, 2, 3, 3, 4], dtype=int32)
		>>> fcluster(Z, 2, criterion='distance')
		array([3, 3, 3, 4, 4, 4, 1, 1, 1, 2, 2, 2], dtype=int32)
		>>> fcluster(Z, 4, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function median(y:Dynamic):Dynamic;
	/**
		Return the number of original observations of the linkage matrix passed.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix on which to perform the operation.
		
		Returns
		-------
		n : int
		    The number of original observations in the linkage.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, num_obs_linkage
		>>> from scipy.spatial.distance import pdist
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		
		``Z`` is a linkage matrix obtained after using the Ward clustering method
		with ``X``, a dataset with 12 data points.
		
		>>> num_obs_linkage(Z)
		12
	**/
	static public function num_obs_linkage(Z:Dynamic):Int;
	/**
		Given a linkage matrix Z and distance, reorder the cut tree.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix. See
		    `linkage` for more information on the return structure and
		    algorithm.
		y : ndarray
		    The condensed distance matrix from which Z was generated.
		    Alternatively, a collection of m observation vectors in n
		    dimensions may be passed as a m by n array.
		metric : str or function, optional
		    The distance metric to use in the case that y is a collection of
		    observation vectors; ignored otherwise. See the ``pdist``
		    function for a list of valid distance metrics. A custom distance
		    function can also be used.
		
		Returns
		-------
		Z_ordered : ndarray
		    A copy of the linkage matrix Z, reordered to minimize the distance
		    between adjacent leaves.
		
		Examples
		--------
		>>> from scipy.cluster import hierarchy
		>>> np.random.seed(23)
		>>> X = np.random.randn(10,10)
		>>> Z = hierarchy.ward(X)
		>>> hierarchy.leaves_list(Z)
		array([0, 5, 3, 9, 6, 8, 1, 4, 2, 7], dtype=int32)
		>>> hierarchy.leaves_list(hierarchy.optimal_leaf_ordering(Z, X))
		array([3, 9, 0, 5, 8, 2, 7, 4, 1, 6], dtype=int32)
	**/
	static public function optimal_leaf_ordering(Z:Dynamic, y:Dynamic, ?metric:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Set list of matplotlib color codes for use by dendrogram.
		
		Note that this palette is global (i.e. setting it once changes the colors
		for all subsequent calls to `dendrogram`) and that it affects only the
		the colors below ``color_threshold``.
		
		Note that `dendrogram` also accepts a custom coloring function through its
		``link_color_func`` keyword, which is more flexible and non-global.
		
		Parameters
		----------
		palette : list of str or None
		    A list of matplotlib color codes.  The order of the color codes is the
		    order in which the colors are cycled through when color thresholding in
		    the dendrogram.
		
		    If ``None``, resets the palette to its default (which is
		    ``['g', 'r', 'c', 'm', 'y', 'k']``).
		
		Returns
		-------
		None
		
		See Also
		--------
		dendrogram
		
		Notes
		-----
		Ability to reset the palette with ``None`` added in SciPy 0.17.0.
		
		Examples
		--------
		>>> from scipy.cluster import hierarchy
		>>> ytdist = np.array([662., 877., 255., 412., 996., 295., 468., 268.,
		...                    400., 754., 564., 138., 219., 869., 669.])
		>>> Z = hierarchy.linkage(ytdist, 'single')
		>>> dn = hierarchy.dendrogram(Z, no_plot=True)
		>>> dn['color_list']
		['g', 'b', 'b', 'b', 'b']
		>>> hierarchy.set_link_color_palette(['c', 'm', 'y', 'k'])
		>>> dn = hierarchy.dendrogram(Z, no_plot=True)
		>>> dn['color_list']
		['c', 'b', 'b', 'b', 'b']
		>>> dn = hierarchy.dendrogram(Z, no_plot=True, color_threshold=267,
		...                           above_threshold_color='k')
		>>> dn['color_list']
		['c', 'm', 'm', 'k', 'k']
		
		Now reset the color palette to its default:
		
		>>> hierarchy.set_link_color_palette(None)
	**/
	static public function set_link_color_palette(palette:Dynamic):Dynamic;
	/**
		Perform single/min/nearest linkage on the condensed distance matrix ``y``.
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    The linkage matrix.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import single, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = single(y)
		>>> Z
		array([[ 0.,  1.,  1.,  2.],
		       [ 2., 12.,  1.,  3.],
		       [ 3.,  4.,  1.,  2.],
		       [ 5., 14.,  1.,  3.],
		       [ 6.,  7.,  1.,  2.],
		       [ 8., 16.,  1.,  3.],
		       [ 9., 10.,  1.,  2.],
		       [11., 18.,  1.,  3.],
		       [13., 15.,  2.,  6.],
		       [17., 20.,  2.,  9.],
		       [19., 21.,  2., 12.]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 7,  8,  9, 10, 11, 12,  4,  5,  6,  1,  2,  3], dtype=int32)
		>>> fcluster(Z, 1, criterion='distance')
		array([3, 3, 3, 4, 4, 4, 2, 2, 2, 1, 1, 1], dtype=int32)
		>>> fcluster(Z, 2, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function single(y:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Convert a linkage matrix to a MATLAB(TM) compatible one.
		
		Converts a linkage matrix ``Z`` generated by the linkage function
		of this module to a MATLAB(TM) compatible one. The return linkage
		matrix has the last column removed and the cluster indices are
		converted to ``1..N`` indexing.
		
		Parameters
		----------
		Z : ndarray
		    A linkage matrix generated by ``scipy.cluster.hierarchy``.
		
		Returns
		-------
		to_mlab_linkage : ndarray
		    A linkage matrix compatible with MATLAB(TM)'s hierarchical
		    clustering functions.
		
		    The return linkage matrix has the last column removed
		    and the cluster indices are converted to ``1..N`` indexing.
		
		See Also
		--------
		linkage: for a description of what a linkage matrix is.
		from_mlab_linkage: transform from Matlab to SciPy format.
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, to_mlab_linkage
		>>> from scipy.spatial.distance import pdist
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		>>> Z = ward(pdist(X))
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		
		After a linkage matrix ``Z`` has been created, we can use
		`scipy.cluster.hierarchy.to_mlab_linkage` to convert it
		into MATLAB format:
		
		>>> mZ = to_mlab_linkage(Z)
		>>> mZ
		array([[  1.        ,   2.        ,   1.        ],
		       [  4.        ,   5.        ,   1.        ],
		       [  7.        ,   8.        ,   1.        ],
		       [ 10.        ,  11.        ,   1.        ],
		       [  3.        ,  13.        ,   1.29099445],
		       [  6.        ,  14.        ,   1.29099445],
		       [  9.        ,  15.        ,   1.29099445],
		       [ 12.        ,  16.        ,   1.29099445],
		       [ 17.        ,  18.        ,   5.77350269],
		       [ 19.        ,  20.        ,   5.77350269],
		       [ 21.        ,  22.        ,   8.16496581]])
		
		The new linkage matrix ``mZ`` uses 1-indexing for all the
		clusters (instead of 0-indexing). Also, the last column of
		the original linkage matrix has been dropped.
	**/
	static public function to_mlab_linkage(Z:Dynamic):Dynamic;
	/**
		Convert a linkage matrix into an easy-to-use tree object.
		
		The reference to the root `ClusterNode` object is returned (by default).
		
		Each `ClusterNode` object has a ``left``, ``right``, ``dist``, ``id``,
		and ``count`` attribute. The left and right attributes point to
		ClusterNode objects that were combined to generate the cluster.
		If both are None then the `ClusterNode` object is a leaf node, its count
		must be 1, and its distance is meaningless but set to 0.
		
		*Note: This function is provided for the convenience of the library
		user. ClusterNodes are not used as input to any of the functions in this
		library.*
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix in proper form (see the `linkage`
		    function documentation).
		rd : bool, optional
		    When False (default), a reference to the root `ClusterNode` object is
		    returned.  Otherwise, a tuple ``(r, d)`` is returned. ``r`` is a
		    reference to the root node while ``d`` is a list of `ClusterNode`
		    objects - one per original entry in the linkage matrix plus entries
		    for all clustering steps.  If a cluster id is
		    less than the number of samples ``n`` in the data that the linkage
		    matrix describes, then it corresponds to a singleton cluster (leaf
		    node).
		    See `linkage` for more information on the assignment of cluster ids
		    to clusters.
		
		Returns
		-------
		tree : ClusterNode or tuple (ClusterNode, list of ClusterNode)
		    If ``rd`` is False, a `ClusterNode`.
		    If ``rd`` is True, a list of length ``2*n - 1``, with ``n`` the number
		    of samples.  See the description of `rd` above for more details.
		
		See Also
		--------
		linkage, is_valid_linkage, ClusterNode
		
		Examples
		--------
		>>> from scipy.cluster import hierarchy
		>>> x = np.random.rand(10).reshape(5, 2)
		>>> Z = hierarchy.linkage(x)
		>>> hierarchy.to_tree(Z)
		<scipy.cluster.hierarchy.ClusterNode object at ...
		>>> rootnode, nodelist = hierarchy.to_tree(Z, rd=True)
		>>> rootnode
		<scipy.cluster.hierarchy.ClusterNode object at ...
		>>> len(nodelist)
		9
	**/
	static public function to_tree(Z:Dynamic, ?rd:Dynamic):Dynamic;
	/**
		Perform Ward's linkage on a condensed distance matrix.
		
		See `linkage` for more information on the return structure
		and algorithm.
		
		The following are common calling conventions:
		
		1. ``Z = ward(y)``
		   Performs Ward's linkage on the condensed distance matrix ``y``.
		
		2. ``Z = ward(X)``
		   Performs Ward's linkage on the observation matrix ``X`` using
		   Euclidean distance as the distance metric.
		
		Parameters
		----------
		y : ndarray
		    A condensed distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns.  Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix. See
		    `linkage` for more information on the return structure and
		    algorithm.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import ward, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = ward(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 9.        , 10.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.29099445,  3.        ],
		       [ 5.        , 13.        ,  1.29099445,  3.        ],
		       [ 8.        , 14.        ,  1.29099445,  3.        ],
		       [11.        , 15.        ,  1.29099445,  3.        ],
		       [16.        , 17.        ,  5.77350269,  6.        ],
		       [18.        , 19.        ,  5.77350269,  6.        ],
		       [20.        , 21.        ,  8.16496581, 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12], dtype=int32)
		>>> fcluster(Z, 1.1, criterion='distance')
		array([1, 1, 2, 3, 3, 4, 5, 5, 6, 7, 7, 8], dtype=int32)
		>>> fcluster(Z, 3, criterion='distance')
		array([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4], dtype=int32)
		>>> fcluster(Z, 9, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function ward(y:Dynamic):Dynamic;
	/**
		Perform weighted/WPGMA linkage on the condensed distance matrix.
		
		See `linkage` for more information on the return
		structure and algorithm.
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    `linkage` for more information on its structure.
		
		See Also
		--------
		linkage : for advanced creation of hierarchical clusterings.
		scipy.spatial.distance.pdist : pairwise distance metrics
		
		Examples
		--------
		>>> from scipy.cluster.hierarchy import weighted, fcluster
		>>> from scipy.spatial.distance import pdist
		
		First we need a toy dataset to play with::
		
		    x x    x x
		    x        x
		
		    x        x
		    x x    x x
		
		>>> X = [[0, 0], [0, 1], [1, 0],
		...      [0, 4], [0, 3], [1, 4],
		...      [4, 0], [3, 0], [4, 1],
		...      [4, 4], [3, 4], [4, 3]]
		
		Then we get a condensed distance matrix from this dataset:
		
		>>> y = pdist(X)
		
		Finally, we can perform the clustering:
		
		>>> Z = weighted(y)
		>>> Z
		array([[ 0.        ,  1.        ,  1.        ,  2.        ],
		       [ 6.        ,  7.        ,  1.        ,  2.        ],
		       [ 3.        ,  4.        ,  1.        ,  2.        ],
		       [ 9.        , 11.        ,  1.        ,  2.        ],
		       [ 2.        , 12.        ,  1.20710678,  3.        ],
		       [ 8.        , 13.        ,  1.20710678,  3.        ],
		       [ 5.        , 14.        ,  1.20710678,  3.        ],
		       [10.        , 15.        ,  1.20710678,  3.        ],
		       [18.        , 19.        ,  3.05595762,  6.        ],
		       [16.        , 17.        ,  3.32379407,  6.        ],
		       [20.        , 21.        ,  4.06357713, 12.        ]])
		
		The linkage matrix ``Z`` represents a dendrogram - see
		`scipy.cluster.hierarchy.linkage` for a detailed explanation of its
		contents.
		
		We can use `scipy.cluster.hierarchy.fcluster` to see to which cluster
		each initial point would belong given a distance threshold:
		
		>>> fcluster(Z, 0.9, criterion='distance')
		array([ 7,  8,  9,  1,  2,  3, 10, 11, 12,  4,  6,  5], dtype=int32)
		>>> fcluster(Z, 1.5, criterion='distance')
		array([3, 3, 3, 1, 1, 1, 4, 4, 4, 2, 2, 2], dtype=int32)
		>>> fcluster(Z, 4, criterion='distance')
		array([2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 1, 1], dtype=int32)
		>>> fcluster(Z, 6, criterion='distance')
		array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=int32)
		
		Also `scipy.cluster.hierarchy.dendrogram` can be used to generate a
		plot of the dendrogram.
	**/
	static public function weighted(y:Dynamic):Dynamic;
}