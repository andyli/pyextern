/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial") extern class Spatial_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Plot the given convex hull diagram in 2-D
		
		Parameters
		----------
		hull : scipy.spatial.ConvexHull instance
		    Convex hull to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		ConvexHull
		
		Notes
		-----
		Requires Matplotlib.
	**/
	static public function convex_hull_plot_2d(hull:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Plot the given Delaunay triangulation in 2-D
		
		Parameters
		----------
		tri : scipy.spatial.Delaunay instance
		    Triangulation to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		Delaunay
		matplotlib.pyplot.triplot
		
		Notes
		-----
		Requires Matplotlib.
	**/
	static public function delaunay_plot_2d(tri:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Compute the distance matrix.
		
		Returns the matrix of all pair-wise distances.
		
		Parameters
		----------
		x : (M, K) array_like
		    Matrix of M vectors in K dimensions.
		y : (N, K) array_like
		    Matrix of N vectors in K dimensions.
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		threshold : positive int
		    If ``M * N * K`` > `threshold`, algorithm uses a Python loop instead
		    of large temporary arrays.
		
		Returns
		-------
		result : (M, N) ndarray
		    Matrix containing the distance from every vector in `x` to every vector
		    in `y`.
		
		Examples
		--------
		>>> from scipy.spatial import distance_matrix
		>>> distance_matrix([[0,0],[0,1]], [[1,0],[1,1]])
		array([[ 1.        ,  1.41421356],
		       [ 1.41421356,  1.        ]])
	**/
	static public function distance_matrix(x:Dynamic, y:Dynamic, ?p:Dynamic, ?threshold:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the L**p distance between two arrays.
		
		Parameters
		----------
		x : (M, K) array_like
		    Input array.
		y : (N, K) array_like
		    Input array.
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		
		Examples
		--------
		>>> from scipy.spatial import minkowski_distance
		>>> minkowski_distance([[0,0],[0,0]], [[1,1],[0,1]])
		array([ 1.41421356,  1.        ])
	**/
	static public function minkowski_distance(x:Dynamic, y:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Compute the p-th power of the L**p distance between two arrays.
		
		For efficiency, this function computes the L**p distance but does
		not extract the pth root. If `p` is 1 or infinity, this is equal to
		the actual L**p distance.
		
		Parameters
		----------
		x : (M, K) array_like
		    Input array.
		y : (N, K) array_like
		    Input array.
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		
		Examples
		--------
		>>> from scipy.spatial import minkowski_distance_p
		>>> minkowski_distance_p([[0,0],[0,0]], [[1,1],[0,1]])
		array([2, 1])
	**/
	static public function minkowski_distance_p(x:Dynamic, y:Dynamic, ?p:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Procrustes analysis, a similarity test for two data sets.
		
		Each input matrix is a set of points or vectors (the rows of the matrix).
		The dimension of the space is the number of columns of each matrix. Given
		two identically sized matrices, procrustes standardizes both such that:
		
		- :math:`tr(AA^{T}) = 1`.
		
		- Both sets of points are centered around the origin.
		
		Procrustes ([1]_, [2]_) then applies the optimal transform to the second
		matrix (including scaling/dilation, rotations, and reflections) to minimize
		:math:`M^{2}=\sum(data1-data2)^{2}`, or the sum of the squares of the
		pointwise differences between the two input datasets.
		
		This function was not designed to handle datasets with different numbers of
		datapoints (rows).  If two data sets have different dimensionality
		(different number of columns), simply add columns of zeros to the smaller
		of the two.
		
		Parameters
		----------
		data1 : array_like
		    Matrix, n rows represent points in k (columns) space `data1` is the
		    reference data, after it is standardised, the data from `data2` will be
		    transformed to fit the pattern in `data1` (must have >1 unique points).
		data2 : array_like
		    n rows of data in k space to be fit to `data1`.  Must be the  same
		    shape ``(numrows, numcols)`` as data1 (must have >1 unique points).
		
		Returns
		-------
		mtx1 : array_like
		    A standardized version of `data1`.
		mtx2 : array_like
		    The orientation of `data2` that best fits `data1`. Centered, but not
		    necessarily :math:`tr(AA^{T}) = 1`.
		disparity : float
		    :math:`M^{2}` as defined above.
		
		Raises
		------
		ValueError
		    If the input arrays are not two-dimensional.
		    If the shape of the input arrays is different.
		    If the input arrays have zero columns or zero rows.
		
		See Also
		--------
		scipy.linalg.orthogonal_procrustes
		scipy.spatial.distance.directed_hausdorff : Another similarity test
		  for two data sets
		
		Notes
		-----
		- The disparity should not depend on the order of the input matrices, but
		  the output matrices will, as only the first output matrix is guaranteed
		  to be scaled such that :math:`tr(AA^{T}) = 1`.
		
		- Duplicate data points are generally ok, duplicating a data point will
		  increase its effect on the procrustes fit.
		
		- The disparity scales as the number of points per input matrix.
		
		References
		----------
		.. [1] Krzanowski, W. J. (2000). "Principles of Multivariate analysis".
		.. [2] Gower, J. C. (1975). "Generalized procrustes analysis".
		
		Examples
		--------
		>>> from scipy.spatial import procrustes
		
		The matrix ``b`` is a rotated, shifted, scaled and mirrored version of
		``a`` here:
		
		>>> a = np.array([[1, 3], [1, 2], [1, 1], [2, 1]], 'd')
		>>> b = np.array([[4, -2], [4, -4], [4, -6], [2, -6]], 'd')
		>>> mtx1, mtx2, disparity = procrustes(a, b)
		>>> round(disparity)
		0.0
	**/
	static public function procrustes(data1:Dynamic, data2:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	/**
		tsearch(tri, xi)
		
		Find simplices containing the given points. This function does the
		same thing as `Delaunay.find_simplex`.
		
		.. versionadded:: 0.9
		
		See Also
		--------
		Delaunay.find_simplex
	**/
	static public function tsearch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Plot the given Voronoi diagram in 2-D
		
		Parameters
		----------
		vor : scipy.spatial.Voronoi instance
		    Diagram to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		show_points: bool, optional
		    Add the Voronoi points to the plot.
		show_vertices : bool, optional
		    Add the Voronoi vertices to the plot.
		line_colors : string, optional
		    Specifies the line color for polygon boundaries
		line_width : float, optional
		    Specifies the line width for polygon boundaries
		line_alpha: float, optional
		    Specifies the line alpha for polygon boundaries
		point_size: float, optional
		    Specifies the size of points
		
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		Voronoi
		
		Notes
		-----
		Requires Matplotlib.
		
		Examples
		--------
		Set of point:
		
		>>> import matplotlib.pyplot as plt
		>>> points = np.random.rand(10,2) #random
		
		Voronoi diagram of the points:
		
		>>> from scipy.spatial import Voronoi, voronoi_plot_2d
		>>> vor = Voronoi(points)
		
		using `voronoi_plot_2d` for visualisation:
		
		>>> fig = voronoi_plot_2d(vor)
		
		using `voronoi_plot_2d` for visualisation with enhancements:
		
		>>> fig = voronoi_plot_2d(vor, show_vertices=False, line_colors='orange',
		...                 line_width=2, line_alpha=0.6, point_size=2)
		>>> plt.show()
	**/
	static public function voronoi_plot_2d(vor:Dynamic, ?ax:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
}