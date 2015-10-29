/* This file is generated, do not edit! */
package scipy.cluster;
@:pythonImport("scipy.cluster.hierarchy") extern class Hierarchy {
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
	static public var _cpy_euclid_methods : Dynamic;
	static public var _cpy_linkage_methods : Dynamic;
	static public var _cpy_non_euclid_methods : Dynamic;
	/**
		Calculates the endpoints of the links as well as the labels for the
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
		
		  * md is the max(Z[*,2]) for all nodes * below and including
		    the target node.
	**/
	static public function _dendrogram_calculate_info(Z:Dynamic, p:Dynamic, truncate_mode:Dynamic, ?color_threshold:Dynamic, ?get_leaves:Dynamic, ?orientation:Dynamic, ?labels:Dynamic, ?count_sort:Dynamic, ?distance_sort:Dynamic, ?show_leaf_counts:Dynamic, ?i:Dynamic, ?iv:Dynamic, ?ivl:Dynamic, ?n:Dynamic, ?icoord_list:Dynamic, ?dcoord_list:Dynamic, ?lvs:Dynamic, ?mhr:Dynamic, ?current_color:Dynamic, ?color_list:Dynamic, ?currently_below_threshold:Dynamic, ?leaf_label_func:Dynamic, ?level:Dynamic, ?contraction_marks:Dynamic, ?link_color_func:Dynamic, ?above_threshold_color:Dynamic):Dynamic;
	static public var _drotation : Dynamic;
	static public var _drotationsortedkeys : Dynamic;
	static public var _dtextsizes : Dynamic;
	static public var _dtextsortedkeys : Dynamic;
	static public function _get_tick_rotation(p:Dynamic):Dynamic;
	static public function _get_tick_text_size(p:Dynamic):Dynamic;
	static public function _leader_identify(tr:Dynamic, T:Dynamic):Dynamic;
	static public function _leaders_test(Z:Dynamic, T:Dynamic):Dynamic;
	static public function _leaders_test_recurs_mark(tr:Dynamic, T:Dynamic):Dynamic;
	static public var _link_line_colors : Dynamic;
	static public function _plot_dendrogram(icoords:Dynamic, dcoords:Dynamic, ivl:Dynamic, p:Dynamic, n:Dynamic, mh:Dynamic, orientation:Dynamic, no_labels:Dynamic, color_list:Dynamic, ?leaf_font_size:Dynamic, ?leaf_rotation:Dynamic, ?contraction_marks:Dynamic, ?ax:Dynamic, ?above_threshold_color:Dynamic):Dynamic;
	/**
		Generates a random distance matrix stored in condensed form. A
		pnts * (pnts - 1) / 2 sized vector is returned.
	**/
	static public function _randdm(pnts:Dynamic):Dynamic;
	/**
		Removes duplicates AND preserves the original order of the elements.
		The set class is not guaranteed to do this.
	**/
	static public function _remove_dups(L:Dynamic):Dynamic;
	static public function _warning(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Performs average/UPGMA linkage on a condensed distance matrix
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    the ``linkage`` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
	**/
	static public function average(y:Dynamic):Dynamic;
	/**
		Performs centroid/UPGMC linkage.
		
		See ``linkage`` for more information on the return structure
		and algorithm.
		
		The following are common calling conventions:
		
		1. ``Z = centroid(y)``
		
		   Performs centroid/UPGMC linkage on the condensed distance
		   matrix ``y``.  See ``linkage`` for more information on the return
		   structure and algorithm.
		
		2. ``Z = centroid(X)``
		
		   Performs centroid/UPGMC linkage on the observation matrix ``X``
		   using Euclidean distance as the distance metric. See ``linkage``
		   for more information on the return structure and algorithm.
		
		Parameters
		----------
		y : ndarray
		    A condensed or redundant distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns. Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    the ``linkage`` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
	**/
	static public function centroid(y:Dynamic):Dynamic;
	/**
		Performs complete/max/farthest point linkage on a condensed distance matrix
		
		Parameters
		----------
		y : ndarray
		    The upper triangular of the distance matrix. The result of
		    ``pdist`` is returned in this form.
		
		Returns
		-------
		Z : ndarray
		    A linkage matrix containing the hierarchical clustering. See
		    the ``linkage`` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage
	**/
	static public function complete(y:Dynamic):Dynamic;
	/**
		Calculates the cophenetic distances between each observation in
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
		    (see ``linkage`` function).
		
		Y : ndarray (optional)
		    Calculates the cophenetic correlation coefficient ``c`` of a
		    hierarchical clustering defined by the linkage matrix `Z`
		    of a set of :math:`n` observations in :math:`m`
		    dimensions. `Y` is the condensed distance matrix from which
		    `Z` was generated.
		
		Returns
		-------
		c : ndarray
		    The cophentic correlation distance (if ``y`` is passed).
		d : ndarray
		    The cophenetic distance matrix in condensed form. The
		    :math:`ij` th entry is the cophenetic distance between
		    original observations :math:`i` and :math:`j`.
	**/
	static public function cophenet(Z:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		Checks for correspondence between linkage and condensed distance matrices
		
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
	**/
	static public function correspond(Z:Dynamic, Y:Dynamic):Dynamic;
	/**
		Plots the hierarchical clustering as a dendrogram.
		
		The dendrogram illustrates how each cluster is
		composed by drawing a U-shaped link between a non-singleton
		cluster and its children. The height of the top of the U-link is
		the distance between its children clusters. It is also the
		cophenetic distance between original observations in the two
		children clusters. It is expected that the distances in Z[:,2] be
		monotonic, otherwise crossings appear in the dendrogram.
		
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
		
		    ``None/'none'``
		      No truncation is performed (Default).
		
		    ``'lastp'``
		      The last ``p`` non-singleton formed in the linkage are the only
		      non-leaf nodes in the linkage; they correspond to rows
		      ``Z[n-p-2:end]`` in ``Z``. All other non-singleton clusters are
		      contracted into leaf nodes.
		
		    ``'mlab'``
		      This corresponds to MATLAB(TM) behavior. (not implemented yet)
		
		    ``'level'/'mtica'``
		      No more than ``p`` levels of the dendrogram tree are displayed.
		      This corresponds to Mathematica(TM) behavior.
		
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
		
		    ``'descendent'``
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
		    coefficient, simply do:
		
		    >>> # First define the leaf label function.
		    >>> def llf(id):
		    ...       if id < n:
		    ...           return str(id)
		    ...       else:
		    >>>           return '[%d %d %1.2f]' % (id, count, R[n-id,3])
		    >>>
		    >>>  # The text for the leaf nodes is going to be big so force
		    >>>  # a rotation of 90 degrees.
		    >>>  dendrogram(Z, leaf_label_func=llf, leaf_rotation=90)
		
		show_contracted : bool, optional
		    When True the heights of non-singleton nodes contracted
		    into a leaf node are plotted as crosses along the link
		    connecting that leaf node.  This really is only useful when
		    truncation is used (see ``truncate_mode`` parameter).
		link_color_func : callable, optional
		    If given, `link_color_function` is called with each non-singleton id
		    corresponding to each U-shaped link it will paint. The function is
		    expected to return the color to paint the link, encoded as a matplotlib
		    color string code. For example:
		
		    >>> dendrogram(Z, link_color_func=lambda k: colors[k])
		
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
	**/
	static public function dendrogram(Z:Dynamic, ?p:Dynamic, ?truncate_mode:Dynamic, ?color_threshold:Dynamic, ?get_leaves:Dynamic, ?orientation:Dynamic, ?labels:Dynamic, ?count_sort:Dynamic, ?distance_sort:Dynamic, ?show_leaf_counts:Dynamic, ?no_plot:Dynamic, ?no_labels:Dynamic, ?color_list:Dynamic, ?leaf_font_size:Dynamic, ?leaf_rotation:Dynamic, ?leaf_label_func:Dynamic, ?no_leaves:Dynamic, ?show_contracted:Dynamic, ?link_color_func:Dynamic, ?ax:Dynamic, ?above_threshold_color:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Forms flat clusters from the hierarchical clustering defined by
		the linkage matrix ``Z``.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded with the matrix returned
		    by the `linkage` function.
		t : float
		    The threshold to apply when forming flat clusters.
		criterion : str, optional
		    The criterion to use in forming flat clusters. This can
		    be any of the following values:
		
		      ``inconsistent`` : If a cluster node and all its
		          descendants have an inconsistent value less than or equal
		          to `t` then all its leaf descendants belong to the
		          same flat cluster. When no non-singleton cluster meets
		          this criterion, every node is assigned to its own
		          cluster. (Default)
		
		      ``distance`` : Forms flat clusters so that the original
		          observations in each flat cluster have no greater a
		          cophenetic distance than `t`.
		
		      ``maxclust`` : Finds a minimum threshold ``r`` so that
		          the cophenetic distance between any two original
		          observations in the same flat cluster is no more than
		          ``r`` and no more than `t` flat clusters are formed.
		
		      ``monocrit`` : Forms a flat cluster from a cluster node c
		          with index i when ``monocrit[j] <= t``.
		
		          For example, to threshold on the maximum mean distance
		          as computed in the inconsistency matrix R with a
		          threshold of 0.8 do:
		
		            MR = maxRstat(Z, R, 3)
		
		            cluster(Z, t=0.8, criterion='monocrit', monocrit=MR)
		
		      ``maxclust_monocrit`` : Forms a flat cluster from a
		          non-singleton cluster node ``c`` when ``monocrit[i] <=
		          r`` for all cluster indices ``i`` below and including
		          ``c``. ``r`` is minimized such that no more than ``t``
		          flat clusters are formed. monocrit must be
		          monotonic. For example, to minimize the threshold t on
		          maximum inconsistency values so that no more than 3 flat
		          clusters are formed, do:
		
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
		    below c, `monocrit[i] >= monocrit[j]`.
		
		Returns
		-------
		fcluster : ndarray
		    An array of length n. T[i] is the flat cluster number to
		    which original observation i belongs.
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
		
		A one-dimensional array T of length n is returned. T[i] is the index
		of the flat cluster to which the original observation i belongs.
		
		Parameters
		----------
		X : (N, M) ndarray
		    N by M data matrix with N observations in M dimensions.
		t : float
		    The threshold to apply when forming flat clusters.
		criterion : str, optional
		    Specifies the criterion for forming flat clusters.  Valid
		    values are 'inconsistent' (default), 'distance', or 'maxclust'
		    cluster formation algorithms. See `fcluster` for descriptions.
		metric : str, optional
		    The distance metric for calculating pairwise distances. See
		    `distance.pdist` for descriptions and linkage to verify
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
		
		Notes
		-----
		This function is similar to the MATLAB function clusterdata.
	**/
	static public function fclusterdata(X:Dynamic, t:Dynamic, ?criterion:Dynamic, ?metric:Dynamic, ?depth:Dynamic, ?method:Dynamic, ?R:Dynamic):Dynamic;
	/**
		Converts a linkage matrix generated by MATLAB(TM) to a new
		linkage matrix compatible with this module.
		
		The conversion does two things:
		
		 * the indices are converted from ``1..N`` to ``0..(N-1)`` form,
		   and
		
		 * a fourth column Z[:,3] is added where Z[i,3] is represents the
		   number of original observations (leaves) in the non-singleton
		   cluster i.
		
		This function is useful when loading in linkages from legacy data
		files generated by MATLAB.
		
		Parameters
		----------
		Z : ndarray
		    A linkage matrix generated by MATLAB(TM).
		
		Returns
		-------
		ZS : ndarray
		    A linkage matrix compatible with this library.
	**/
	static public function from_mlab_linkage(Z:Dynamic):Dynamic;
	/**
		Calculates inconsistency statistics on a linkage.
		
		Note: This function behaves similarly to the MATLAB(TM)
		inconsistent function.
		
		Parameters
		----------
		Z : ndarray
		    The :math:`(n-1)` by 4 matrix encoding the linkage
		    (hierarchical clustering).  See ``linkage`` documentation
		    for more information on its form.
		d : int, optional
		    The number of links up to `d` levels below each
		    non-singleton cluster.
		
		Returns
		-------
		R : ndarray
		    A :math:`(n-1)` by 5 matrix where the ``i``'th row
		    contains the link statistics for the non-singleton cluster
		    ``i``. The link statistics are computed over the link
		    heights for links :math:`d` levels below the cluster
		    ``i``. ``R[i,0]`` and ``R[i,1]`` are the mean and standard
		    deviation of the link heights, respectively; ``R[i,2]`` is
		    the number of links included in the calculation; and
		    ``R[i,3]`` is the inconsistency coefficient,
		
		    .. math:: \frac{\mathtt{Z[i,2]}-\mathtt{R[i,0]}} {R[i,1]}
	**/
	static public function inconsistent(Z:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Determines if two different cluster assignments are equivalent.
		
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
	**/
	static public function is_isomorphic(T1:Dynamic, T2:Dynamic):Dynamic;
	/**
		Returns True if the linkage passed is monotonic.
		
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
	**/
	static public function is_monotonic(Z:Dynamic):Dynamic;
	/**
		Returns True if the inconsistency matrix passed is valid.
		
		It must be a :math:`n` by 4 numpy array of doubles. The standard
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
	**/
	static public function is_valid_im(R:Dynamic, ?warning:Dynamic, ?_throw:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks the validity of a linkage matrix.
		
		A linkage matrix is valid if it is a two dimensional
		ndarray (type double) with :math:`n`
		rows and 4 columns.  The first two columns must contain indices
		between 0 and :math:`2n-1`. For a given row ``i``,
		:math:`0 \leq \mathtt{Z[i,0]} \leq i+n-1`
		and :math:`0 \leq Z[i,1] \leq i+n-1`
		(i.e. a cluster cannot join another cluster unless the cluster
		being joined has been generated.)
		
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
		    True iff the inconsistency matrix is valid.
	**/
	static public function is_valid_linkage(Z:Dynamic, ?warning:Dynamic, ?_throw:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the root nodes in a hierarchical clustering.
		
		Returns the root nodes in a hierarchical clustering corresponding
		to a cut defined by a flat cluster assignment vector ``T``. See
		the ``fcluster`` function for more information on the format of ``T``.
		
		For each flat cluster :math:`j` of the :math:`k` flat clusters
		represented in the n-sized flat cluster assignment vector ``T``,
		this function finds the lowest cluster node :math:`i` in the linkage
		tree Z such that:
		
		  * leaf descendents belong only to flat cluster j
		    (i.e. ``T[p]==j`` for all :math:`p` in :math:`S(i)` where
		    :math:`S(i)` is the set of leaf ids of leaf nodes descendent
		    with cluster node :math:`i`)
		
		  * there does not exist a leaf that is not descendent with
		    :math:`i` that also belongs to cluster :math:`j`
		    (i.e. ``T[q]!=j`` for all :math:`q` not in :math:`S(i)`).  If
		    this condition is violated, ``T`` is not a valid cluster
		    assignment vector, and an exception will be thrown.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix. See
		    ``linkage`` for more information.
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
		
		    For example: if ``L[3]=2`` and ``M[3]=8``, the flat cluster with
		    id 8's leader is linkage node 2.
		M : ndarray
		    The leader linkage node id's stored as a k-element 1-D array where
		    ``k`` is the number of flat clusters found in ``T``. This allows the
		    set of flat cluster ids to be any arbitrary set of ``k`` integers.
	**/
	static public function leaders(Z:Dynamic, T:Dynamic):Dynamic;
	/**
		Returns a list of leaf node ids
		
		The return corresponds to the observation vector index as it appears
		in the tree from left to right. Z is a linkage matrix.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix.  `Z` is
		    a linkage matrix.  See ``linkage`` for more information.
		
		Returns
		-------
		leaves_list : ndarray
		    The list of leaf node ids.
	**/
	static public function leaves_list(Z:Dynamic):Dynamic;
	/**
		Performs hierarchical/agglomerative clustering on the condensed
		distance matrix y.
		
		y must be a :math:`{n \choose 2}` sized
		vector where n is the number of original observations paired
		in the distance matrix. The behavior of this function is very
		similar to the MATLAB linkage function.
		
		A 4 by :math:`(n-1)` matrix ``Z`` is returned. At the
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
		implementation may chose a different minimum than the MATLAB
		version.
		
		Parameters
		----------
		y : ndarray
		    A condensed or redundant distance matrix. A condensed distance matrix
		    is a flat array containing the upper triangular of the distance matrix.
		    This is the form that ``pdist`` returns. Alternatively, a collection of
		    :math:`m` observation vectors in n dimensions may be passed as an
		    :math:`m` by :math:`n` array.
		method : str, optional
		    The linkage algorithm to use. See the ``Linkage Methods`` section below
		    for full descriptions.
		metric : str or function, optional
		    The distance metric to use. See the ``distance.pdist`` function for a
		    list of valid distance metrics. The customized distance can also be
		    used. See the ``distance.pdist`` function for details.
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix.
	**/
	static public function linkage(y:Dynamic, ?method:Dynamic, ?metric:Dynamic):Dynamic;
	/**
		Returns the maximum statistic for each non-singleton cluster and
		its descendents.
		
		Parameters
		----------
		Z : array_like
		    The hierarchical clustering encoded as a matrix. See
		    ``linkage`` for more information.
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
	**/
	static public function maxRstat(Z:Dynamic, R:Dynamic, i:Dynamic):Dynamic;
	/**
		Returns the maximum distance between any non-singleton cluster.
		
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
	**/
	static public function maxdists(Z:Dynamic):Dynamic;
	/**
		Returns the maximum inconsistency coefficient for each
		non-singleton cluster and its descendents.
		
		Parameters
		----------
		Z : ndarray
		    The hierarchical clustering encoded as a matrix. See
		    ``linkage`` for more information.
		R : ndarray
		    The inconsistency matrix.
		
		Returns
		-------
		MI : ndarray
		    A monotonic ``(n-1)``-sized numpy array of doubles.
	**/
	static public function maxinconsts(Z:Dynamic, R:Dynamic):Dynamic;
	/**
		Performs median/WPGMC linkage.
		
		See ``linkage`` for more information on the return structure
		and algorithm.
		
		 The following are common calling conventions:
		
		 1. ``Z = median(y)``
		
		    Performs median/WPGMC linkage on the condensed distance matrix
		    ``y``.  See ``linkage`` for more information on the return
		    structure and algorithm.
		
		 2. ``Z = median(X)``
		
		    Performs median/WPGMC linkage on the observation matrix ``X``
		    using Euclidean distance as the distance metric. See linkage
		    for more information on the return structure and algorithm.
		
		Parameters
		----------
		y : ndarray
		    A condensed or redundant distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns. Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
	**/
	static public function median(y:Dynamic):Dynamic;
	/**
		Returns the number of original observations of the linkage matrix
		passed.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix on which to perform the operation.
		
		Returns
		-------
		n : int
		    The number of original observations in the linkage.
	**/
	static public function num_obs_linkage(Z:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Set list of matplotlib color codes for dendrogram color_threshold.
		
		Parameters
		----------
		palette : list
		    A list of matplotlib color codes. The order of
		    the color codes is the order in which the colors are cycled
		    through when color thresholding in the dendrogram.
	**/
	static public function set_link_color_palette(palette:Dynamic):Dynamic;
	/**
		Performs single/min/nearest linkage on the condensed distance matrix ``y``
		
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
	**/
	static public function single(y:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Converts a linkage matrix to a MATLAB(TM) compatible one.
		
		Converts a linkage matrix ``Z`` generated by the linkage function
		of this module to a MATLAB(TM) compatible one. The return linkage
		matrix has the last column removed and the cluster indices are
		converted to ``1..N`` indexing.
		
		Parameters
		----------
		Z : ndarray
		    A linkage matrix generated by this library.
		
		Returns
		-------
		to_mlab_linkage : ndarray
		    A linkage matrix compatible with MATLAB(TM)'s hierarchical
		    clustering functions.
		
		    The return linkage matrix has the last column removed
		    and the cluster indices are converted to ``1..N`` indexing.
	**/
	static public function to_mlab_linkage(Z:Dynamic):Dynamic;
	/**
		Converts a hierarchical clustering encoded in the matrix ``Z`` (by
		linkage) into an easy-to-use tree object.
		
		The reference r to the root ClusterNode object is returned.
		
		Each ClusterNode object has a left, right, dist, id, and count
		attribute. The left and right attributes point to ClusterNode objects
		that were combined to generate the cluster. If both are None then
		the ClusterNode object is a leaf node, its count must be 1, and its
		distance is meaningless but set to 0.
		
		Note: This function is provided for the convenience of the library
		user. ClusterNodes are not used as input to any of the functions in this
		library.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix in proper form (see the ``linkage``
		    function documentation).
		
		rd : bool, optional
		    When False, a reference to the root ClusterNode object is
		    returned.  Otherwise, a tuple (r,d) is returned. ``r`` is a
		    reference to the root node while ``d`` is a dictionary
		    mapping cluster ids to ClusterNode references. If a cluster id is
		    less than n, then it corresponds to a singleton cluster
		    (leaf node). See ``linkage`` for more information on the
		    assignment of cluster ids to clusters.
		
		Returns
		-------
		L : list
		    The pre-order traversal.
	**/
	static public function to_tree(Z:Dynamic, ?rd:Dynamic):Dynamic;
	/**
		Performs Ward's linkage on a condensed or redundant distance matrix.
		
		See linkage for more information on the return structure
		and algorithm.
		
		The following are common calling conventions:
		
		1. ``Z = ward(y)``
		   Performs Ward's linkage on the condensed distance matrix ``Z``. See
		   linkage for more information on the return structure and
		   algorithm.
		
		2. ``Z = ward(X)``
		   Performs Ward's linkage on the observation matrix ``X`` using
		   Euclidean distance as the distance metric. See linkage for more
		   information on the return structure and algorithm.
		
		Parameters
		----------
		y : ndarray
		    A condensed or redundant distance matrix. A condensed
		    distance matrix is a flat array containing the upper
		    triangular of the distance matrix. This is the form that
		    ``pdist`` returns. Alternatively, a collection of
		    m observation vectors in n dimensions may be passed as
		    a m by n array.
		
		Returns
		-------
		Z : ndarray
		    The hierarchical clustering encoded as a linkage matrix.
		
		See Also
		--------
		linkage: for advanced creation of hierarchical clusterings.
	**/
	static public function ward(y:Dynamic):Dynamic;
	/**
		Performs weighted/WPGMA linkage on the condensed distance matrix.
		
		See ``linkage`` for more information on the return
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
		    the ``linkage`` function documentation for more information
		    on its structure.
		
		See Also
		--------
		linkage : for advanced creation of hierarchical clusterings.
	**/
	static public function weighted(y:Dynamic):Dynamic;
}