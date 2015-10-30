/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate") extern class Triinterpolate_Module {
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
		Use Preconditioned Conjugate Gradient iteration to solve A x = b
		A simple Jacobi (diagonal) preconditionner is used.
		
		Parameters
		----------
		A: _Sparse_Matrix_coo
		    *A* must have been compressed before by compress_csc or
		    compress_csr method.
		
		b: array
		    Right hand side of the linear system.
		
		Returns
		----------
		x: array.
		    The converged solution.
		err: float
		    The absolute error np.linalg.norm(A.dot(x) - b)
		
		Other parameters
		----------
		x0: array.
		    Starting guess for the solution.
		tol: float.
		    Tolerance to achieve. The algorithm terminates when the relative
		    residual is below tol.
		maxiter: integer.
		    Maximum number of iterations. Iteration will stop
		    after maxiter steps even if the specified tolerance has not
		    been achieved.
	**/
	static public function _cg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Extracts selected blocks of a matrices *M* depending on parameters
		*block_indices* and *block_size*.
		
		Returns the array of extracted matrices *Mres* so that:
		    M_res[...,ir,:] = M[(block_indices*block_size+ir), :]
	**/
	static public function _extract_submatrices(M:Dynamic, block_indices:Dynamic, block_size:Dynamic, axis:Dynamic):Dynamic;
	/**
		Inversion of arrays of (2,2) matrices.
	**/
	static public function _inv22_vectorized(M:Dynamic):Dynamic;
	/**
		Matrix product between arrays of matrices, or a matrix and an array of
		matrices (*M1* and *M2*)
	**/
	static public function _prod_vectorized(M1:Dynamic, M2:Dynamic):Dynamic;
	/**
		Inversion of arrays of (2,2) SYMMETRIC matrices ; returns the
		(Moore-Penrose) pseudo-inverse for rank-deficient matrices.
		
		In case M is of rank 1, we have M = trace(M) x P where P is the orthogonal
		projection on Im(M), and we return trace(M)^-1 x P == M / trace(M)**2
		In case M is of rank 0, we return the null matrix.
		
		*M* : array of (2,2) matrices to inverse, shape (n,2,2)
	**/
	static public function _pseudo_inv22sym_vectorized(M:Dynamic):Dynamic;
	/**
		Rolls an array of matrices along an axis according to an array of indices
		*roll_indices*
		*axis* can be either 0 (rolls rows) or 1 (rolls columns).
	**/
	static public function _roll_vectorized(M:Dynamic, roll_indices:Dynamic, axis:Dynamic):Dynamic;
	/**
		Inversion of arrays of (2,2) matrices, returns 0 for rank-deficient
		matrices.
		
		*M* : array of (2,2) matrices to inverse, shape (n,2,2)
	**/
	static public function _safe_inv22_vectorized(M:Dynamic):Dynamic;
	/**
		Scalar product between scalars and matrices.
	**/
	static public function _scalar_vectorized(scalar:Dynamic, M:Dynamic):Dynamic;
	/**
		Builds an array of matrices from individuals np.arrays of identical
		shapes.
		*M*: ncols-list of nrows-lists of shape sh.
		
		Returns M_res np.array of shape (sh, nrow, ncols) so that:
		    M_res[...,i,j] = M[i][j]
	**/
	static public function _to_matrix_vectorized(M:Dynamic):Dynamic;
	/**
		Transposition of an array of matrices *M*.
	**/
	static public function _transpose_vectorized(M:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}