/* This file is generated, do not edit! */
package scipy.spatial._procrustes;
@:pythonImport("scipy.spatial._procrustes") extern class _Procrustes_Module {
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
	static public var division : Dynamic;
	/**
		Compute the matrix solution of the orthogonal Procrustes problem.
		
		Given matrices A and B of equal shape, find an orthogonal matrix R
		that most closely maps A to B [1]_.
		Note that unlike higher level Procrustes analyses of spatial data,
		this function only uses orthogonal transformations like rotations
		and reflections, and it does not use scaling or translation.
		
		Parameters
		----------
		A : (M, N) array_like
		    Matrix to be mapped.
		B : (M, N) array_like
		    Target matrix.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		R : (N, N) ndarray
		    The matrix solution of the orthogonal Procrustes problem.
		    Minimizes the Frobenius norm of dot(A, R) - B, subject to
		    dot(R.T, R) == I.
		scale : float
		    Sum of the singular values of ``dot(A.T, B)``.
		
		Raises
		------
		ValueError
		    If the input arrays are incompatibly shaped.
		    This may also be raised if matrix A or B contains an inf or nan
		    and check_finite is True, or if the matrix product AB contains
		    an inf or nan.
		
		Notes
		-----
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Peter H. Schonemann, "A generalized solution of the orthogonal
		       Procrustes problem", Psychometrica -- Vol. 31, No. 1, March, 1996.
	**/
	static public function orthogonal_procrustes(A:Dynamic, B:Dynamic, ?check_finite:Dynamic):Dynamic;
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
}