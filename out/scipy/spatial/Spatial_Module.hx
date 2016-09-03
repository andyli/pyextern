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
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
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
		    TODO: description needed
		y : (N, K) array_like
		    TODO: description needed
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		threshold : positive int
		    If ``M * N * K`` > `threshold`, algorithm uses a Python loop instead
		    of large temporary arrays.
		
		Returns
		-------
		result : (M, N) ndarray
		    Distance matrix.
		
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
		(different number of columns), simply add columns of zeros the smaller of
		the two.
		
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
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
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
	**/
	static public function voronoi_plot_2d(vor:Dynamic, ?ax:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
}