/* This file is generated, do not edit! */
package scipy.spatial.transform._rotation_spline;
@:pythonImport("scipy.spatial.transform._rotation_spline") extern class _Rotation_spline_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute the non-linear term in angular acceleration.
		
		The angular acceleration contains a quadratic term with respect to
		the derivative of the rotation vector. This function computes that.
		
		Parameters
		----------
		rotvecs : ndarray, shape (n, 3)
		    Set of rotation vectors.
		rotvecs_dot: ndarray, shape (n, 3)
		    Set of rotation vector derivatives.
		
		Returns
		-------
		ndarray, shape (n, 3)
	**/
	static public function _angular_acceleration_nonlinear_term(rotvecs:Dynamic, rotvecs_dot:Dynamic):Dynamic;
	/**
		Compute matrices to transform angular rates to rot. vector derivatives.
		
		The matrices depend on the current attitude represented as a rotation
		vector.
		
		Parameters
		----------
		rotvecs : ndarray, shape (n, 3)
		    Set of rotation vectors.
		
		Returns
		-------
		ndarray, shape (n, 3, 3)
	**/
	static public function _angular_rate_to_rotvec_dot_matrix(rotvecs:Dynamic):Dynamic;
	/**
		Compute angular acceleration given rotation vector and its derivatives.
		
		Parameters
		----------
		rotvecs : ndarray, shape (n, 3)
		    Set of rotation vectors.
		rotvecs_dot : ndarray, shape (n, 3)
		    Set of rotation vector derivatives.
		rotvecs_dot_dot : ndarray, shape (n, 3)
		    Set of rotation vector second derivatives.
		
		Returns
		-------
		ndarray, shape (n, 3)
	**/
	static public function _compute_angular_acceleration(rotvecs:Dynamic, rotvecs_dot:Dynamic, rotvecs_dot_dot:Dynamic):Dynamic;
	/**
		Compute angular rates given rotation vectors and its derivatives.
		
		Parameters
		----------
		rotvecs : ndarray, shape (n, 3)
		    Set of rotation vectors.
		rotvecs_dot : ndarray, shape (n, 3)
		    Set of rotation vector derivatives.
		
		Returns
		-------
		ndarray, shape (n, 3)
	**/
	static public function _compute_angular_rate(rotvecs:Dynamic, rotvecs_dot:Dynamic):Dynamic;
	/**
		Create a 3-diagonal block matrix as banded.
		
		The matrix has the following structure:
		
		    DB...
		    ADB..
		    .ADB.
		    ..ADB
		    ...AD
		
		The blocks A, B and D are 3-by-3 matrices. The D matrices has the form
		d * I.
		
		Parameters
		----------
		A : ndarray, shape (n, 3, 3)
		    Stack of A blocks.
		B : ndarray, shape (n, 3, 3)
		    Stack of B blocks.
		d : ndarray, shape (n + 1,)
		    Values for diagonal blocks.
		
		Returns
		-------
		ndarray, shape (11, 3 * (n + 1))
		    Matrix in the banded form as used by `scipy.linalg.solve_banded`.
	**/
	static public function _create_block_3_diagonal_matrix(A:Dynamic, B:Dynamic, d:Dynamic):Dynamic;
	/**
		Create skew-symmetric matrices corresponding to vectors.
		
		Parameters
		----------
		x : ndarray, shape (n, 3)
		    Set of vectors.
		
		Returns
		-------
		ndarray, shape (n, 3, 3)
	**/
	static public function _create_skew_matrix(x:Dynamic):Dynamic;
	/**
		Compute the product of stack of matrices and vectors.
	**/
	static public function _matrix_vector_product_of_stacks(A:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute matrices to transform rot. vector derivatives to angular rates.
		
		The matrices depend on the current attitude represented as a rotation
		vector.
		
		Parameters
		----------
		rotvecs : ndarray, shape (n, 3)
		    Set of rotation vectors.
		
		Returns
		-------
		ndarray, shape (n, 3, 3)
	**/
	static public function _rotvec_dot_to_angular_rate_matrix(rotvecs:Dynamic):Dynamic;
	/**
		Solve the equation a x = b for x, assuming a is banded matrix.
		
		The matrix a is stored in `ab` using the matrix diagonal ordered form::
		
		    ab[u + i - j, j] == a[i,j]
		
		Example of `ab` (shape of a is (6,6), `u` =1, `l` =2)::
		
		    *    a01  a12  a23  a34  a45
		    a00  a11  a22  a33  a44  a55
		    a10  a21  a32  a43  a54   *
		    a20  a31  a42  a53   *    *
		
		Parameters
		----------
		(l, u) : (integer, integer)
		    Number of non-zero lower and upper diagonals
		ab : (`l` + `u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b.  Returned shape depends on the
		    shape of `b`.
		
		Examples
		--------
		Solve the banded system a x = b, where::
		
		        [5  2 -1  0  0]       [0]
		        [1  4  2 -1  0]       [1]
		    a = [0  1  3  2 -1]   b = [2]
		        [0  0  1  2  2]       [2]
		        [0  0  0  1  1]       [3]
		
		There is one nonzero diagonal below the main diagonal (l = 1), and
		two above (u = 2).  The diagonal banded form of the matrix is::
		
		         [*  * -1 -1 -1]
		    ab = [*  2  2  2  2]
		         [5  4  3  2  1]
		         [1  1  1  1  *]
		
		>>> from scipy.linalg import solve_banded
		>>> ab = np.array([[0,  0, -1, -1, -1],
		...                [0,  2,  2,  2,  2],
		...                [5,  4,  3,  2,  1],
		...                [1,  1,  1,  1,  0]])
		>>> b = np.array([0, 1, 2, 2, 3])
		>>> x = solve_banded((1, 2), ab, b)
		>>> x
		array([-2.37288136,  3.93220339, -4.        ,  4.3559322 , -1.3559322 ])
	**/
	static public function solve_banded(l_and_u:Dynamic, ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
}