/* This file is generated, do not edit! */
package scipy.linalg._decomp_update;
@:pythonImport("scipy.linalg._decomp_update") extern class _Decomp_update_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		this function only exists to expose the cdef version below for testing
		purposes. Here we perform minimal input validation to ensure that the
		inputs meet the requirements below.
	**/
	static public function _form_qTu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _reorth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr_delete(Q, R, k, p=1, which='row', overwrite_qr=False, check_finite=True)
		
		QR downdate on row or column deletions
		
		If ``A = Q R`` is the QR factorization of ``A``, return the QR
		factorization of ``A`` where ``p`` rows or columns have been removed
		starting at row or column ``k``.
		
		Parameters
		----------
		Q : (M, M) or (M, N) array_like
		    Unitary/orthogonal matrix from QR decomposition.
		R : (M, N) or (N, N) array_like
		    Upper triangular matrix from QR decomposition.
		k : int
		    Index of the first row or column to delete.
		p : int, optional
		    Number of rows or columns to delete, defaults to 1.
		which: {'row', 'col'}, optional
		    Determines if rows or columns will be deleted, defaults to 'row'
		overwrite_qr : bool, optional
		    If True, consume Q and R, overwriting their contents with their
		    downdated versions, and returning approriately sized views.  
		    Defaults to False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		Q1 : ndarray
		    Updated unitary/orthogonal factor
		R1 : ndarray
		    Updated upper triangular factor
		
		See Also
		--------
		qr, qr_multiply, qr_insert, qr_update
		
		Notes
		-----
		This routine does not guarantee that the diagonal entries of ``R1`` are
		positive.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		       (Johns Hopkins University Press, 1996).
		
		.. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		       Reorthogonalization and stable algorithms for updating the
		       Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		.. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		       Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		       (1990).
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[  3.,  -2.,  -2.],
		...               [  6.,  -9.,  -3.],
		...               [ -3.,  10.,   1.],
		...               [  6.,  -7.,   4.],
		...               [  7.,   8.,  -6.]])
		>>> q, r = linalg.qr(a)
		
		Given this QR decomposition, update q and r when 2 rows are removed.
		
		>>> q1, r1 = linalg.qr_delete(q, r, 2, 2, 'row', False)
		>>> q1
		array([[ 0.30942637,  0.15347579,  0.93845645],  # may vary (signs)
		       [ 0.61885275,  0.71680171, -0.32127338],
		       [ 0.72199487, -0.68017681, -0.12681844]])
		>>> r1
		array([[  9.69535971,  -0.4125685 ,  -6.80738023],  # may vary (signs)
		       [  0.        , -12.19958144,   1.62370412],
		       [  0.        ,   0.        ,  -0.15218213]])
		
		The update is equivalent, but faster than the following.
		
		>>> a1 = np.delete(a, slice(2,4), 0)
		>>> a1
		array([[ 3., -2., -2.],
		       [ 6., -9., -3.],
		       [ 7.,  8., -6.]])
		>>> q_direct, r_direct = linalg.qr(a1)
		
		Check that we have equivalent results:
		
		>>> np.dot(q1, r1)
		array([[ 3., -2., -2.],
		       [ 6., -9., -3.],
		       [ 7.,  8., -6.]])
		>>> np.allclose(np.dot(q1, r1), a1)
		True
		
		And the updated Q is still unitary:
		
		>>> np.allclose(np.dot(q1.T, q1), np.eye(3))
		True
	**/
	static public function qr_delete(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr_insert(Q, R, u, k, which='row', rcond=None, overwrite_qru=False, check_finite=True)
		
		QR update on row or column insertions
		
		If ``A = Q R`` is the QR factorization of ``A``, return the QR
		factorization of ``A`` where rows or columns have been inserted starting
		at row or column ``k``.
		
		Parameters
		----------
		Q : (M, M) array_like
		    Unitary/orthogonal matrix from the QR decomposition of A.
		R : (M, N) array_like
		    Upper triangular matrix from the QR decomposition of A.
		u : (N,), (p, N), (M,), or (M, p) array_like
		    Rows or columns to insert
		k : int
		    Index before which `u` is to be inserted.
		which: {'row', 'col'}, optional
		    Determines if rows or columns will be inserted, defaults to 'row'
		rcond : float
		    Lower bound on the reciprocal condition number of ``Q`` augmented with
		    ``u/||u||`` Only used when updating economic mode (thin, (M,N) (N,N))
		    decompositions.  If None, machine precision is used.  Defaults to 
		    None.
		overwrite_qru : bool, optional
		    If True, consume Q, R, and u, if possible, while performing the update,
		    otherwise make copies as necessary. Defaults to False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		Q1 : ndarray
		    Updated unitary/orthogonal factor
		R1 : ndarray
		    Updated upper triangular factor
		
		Raises
		------
		LinAlgError :
		    If updating a (M,N) (N,N) factorization and the reciprocal condition
		    number of Q augmented with u/||u|| is smaller than rcond.
		
		See Also
		--------
		qr, qr_multiply, qr_delete, qr_update
		
		Notes
		-----
		This routine does not guarantee that the diagonal entries of ``R1`` are
		positive.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		
		.. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		       (Johns Hopkins University Press, 1996).
		
		.. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		       Reorthogonalization and stable algorithms for updating the
		       Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		.. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		       Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		       (1990).
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[  3.,  -2.,  -2.],
		...               [  6.,  -7.,   4.],
		...               [  7.,   8.,  -6.]])
		>>> q, r = linalg.qr(a)
		
		Given this QR decomposition, update q and r when 2 rows are inserted.
		                  
		>>> u = np.array([[  6.,  -9.,  -3.], 
		...               [ -3.,  10.,   1.]])
		>>> q1, r1 = linalg.qr_insert(q, r, u, 2, 'row')
		>>> q1
		array([[-0.25445668,  0.02246245,  0.18146236, -0.72798806,  0.60979671],  # may vary (signs)
		       [-0.50891336,  0.23226178, -0.82836478, -0.02837033, -0.00828114],
		       [-0.50891336,  0.35715302,  0.38937158,  0.58110733,  0.35235345],
		       [ 0.25445668, -0.52202743, -0.32165498,  0.36263239,  0.65404509],
		       [-0.59373225, -0.73856549,  0.16065817, -0.0063658 , -0.27595554]])
		>>> r1
		array([[-11.78982612,   6.44623587,   3.81685018],  # may vary (signs)
		       [  0.        , -16.01393278,   3.72202865],
		       [  0.        ,   0.        ,  -6.13010256],
		       [  0.        ,   0.        ,   0.        ],
		       [  0.        ,   0.        ,   0.        ]])
		
		The update is equivalent, but faster than the following.
		
		>>> a1 = np.insert(a, 2, u, 0)
		>>> a1
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		>>> q_direct, r_direct = linalg.qr(a1)
		
		Check that we have equivalent results:
		
		>>> np.dot(q1, r1)
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		
		>>> np.allclose(np.dot(q1, r1), a1)
		True
		
		And the updated Q is still unitary:
		
		>>> np.allclose(np.dot(q1.T, q1), np.eye(5))
		True
	**/
	static public function qr_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function qr_insert_col(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function qr_insert_row(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr_update(Q, R, u, v, overwrite_qruv=False, check_finite=True)
		
		Rank-k QR update
		
		If ``A = Q R`` is the QR factorization of ``A``, return the QR
		factorization of ``A + u v**T`` for real ``A`` or ``A + u v**H``
		for complex ``A``.
		
		Parameters
		----------
		Q : (M, M) or (M, N) array_like
		    Unitary/orthogonal matrix from the qr decomposition of A.
		R : (M, N) or (N, N) array_like
		    Upper triangular matrix from the qr decomposition of A.
		u : (M,) or (M, k) array_like
		    Left update vector
		v : (N,) or (N, k) array_like
		    Right update vector
		overwrite_qruv : bool, optional
		    If True, consume Q, R, u, and v, if possible, while performing the
		    update, otherwise make copies as necessary. Defaults to False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		Q1 : ndarray
		    Updated unitary/orthogonal factor
		R1 : ndarray
		    Updated upper triangular factor
		
		See Also
		--------
		qr, qr_multiply, qr_delete, qr_insert
		
		Notes
		-----
		This routine does not guarantee that the diagonal entries of `R1` are
		real or positive.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		       (Johns Hopkins University Press, 1996).
		
		.. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		       Reorthogonalization and stable algorithms for updating the
		       Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		.. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		       Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		       (1990).
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[  3.,  -2.,  -2.],
		...               [  6.,  -9.,  -3.],
		...               [ -3.,  10.,   1.],
		...               [  6.,  -7.,   4.],
		...               [  7.,   8.,  -6.]])
		>>> q, r = linalg.qr(a)
		
		Given this q, r decomposition, perform a rank 1 update.
		
		>>> u = np.array([7., -2., 4., 3., 5.])
		>>> v = np.array([1., 3., -5.])
		>>> q_up, r_up = linalg.qr_update(q, r, u, v, False)
		>>> q_up
		array([[ 0.54073807,  0.18645997,  0.81707661, -0.02136616,  0.06902409],  # may vary (signs)
		       [ 0.21629523, -0.63257324,  0.06567893,  0.34125904, -0.65749222],
		       [ 0.05407381,  0.64757787, -0.12781284, -0.20031219, -0.72198188],
		       [ 0.48666426, -0.30466718, -0.27487277, -0.77079214,  0.0256951 ],
		       [ 0.64888568,  0.23001   , -0.4859845 ,  0.49883891,  0.20253783]])
		>>> r_up
		array([[ 18.49324201,  24.11691794, -44.98940746],  # may vary (signs)
		       [  0.        ,  31.95894662, -27.40998201],
		       [  0.        ,   0.        ,  -9.25451794],
		       [  0.        ,   0.        ,   0.        ],
		       [  0.        ,   0.        ,   0.        ]])
		
		The update is equivalent, but faster than the following.
		
		>>> a_up = a + np.outer(u, v)
		>>> q_direct, r_direct = linalg.qr(a_up)
		
		Check that we have equivalent results:
		
		>>> np.allclose(np.dot(q_up, r_up), a_up)
		True
		
		And the updated Q is still unitary:
		
		>>> np.allclose(np.dot(q_up.T, q_up), np.eye(5))
		True
		
		Updating economic (reduced, thin) decompositions is also possible:
		
		>>> qe, re = linalg.qr(a, mode='economic')
		>>> qe_up, re_up = linalg.qr_update(qe, re, u, v, False)
		>>> qe_up
		array([[ 0.54073807,  0.18645997,  0.81707661],  # may vary (signs)
		       [ 0.21629523, -0.63257324,  0.06567893],
		       [ 0.05407381,  0.64757787, -0.12781284],
		       [ 0.48666426, -0.30466718, -0.27487277],
		       [ 0.64888568,  0.23001   , -0.4859845 ]])
		>>> re_up
		array([[ 18.49324201,  24.11691794, -44.98940746],  # may vary (signs)
		       [  0.        ,  31.95894662, -27.40998201],
		       [  0.        ,   0.        ,  -9.25451794]])
		>>> np.allclose(np.dot(qe_up, re_up), a_up)
		True
		>>> np.allclose(np.dot(qe_up.T, qe_up), np.eye(3))
		True
		
		Similarly to the above, perform a rank 2 update.
		
		>>> u2 = np.array([[ 7., -1,],
		...                [-2.,  4.],
		...                [ 4.,  2.],
		...                [ 3., -6.],
		...                [ 5.,  3.]])
		>>> v2 = np.array([[ 1., 2.],
		...                [ 3., 4.],
		...                [-5., 2]])
		>>> q_up2, r_up2 = linalg.qr_update(q, r, u2, v2, False)
		>>> q_up2
		array([[-0.33626508, -0.03477253,  0.61956287, -0.64352987, -0.29618884],  # may vary (signs)
		       [-0.50439762,  0.58319694, -0.43010077, -0.33395279,  0.33008064],
		       [-0.21016568, -0.63123106,  0.0582249 , -0.13675572,  0.73163206],
		       [ 0.12609941,  0.49694436,  0.64590024,  0.31191919,  0.47187344],
		       [-0.75659643, -0.11517748,  0.10284903,  0.5986227 , -0.21299983]])
		>>> r_up2
		array([[-23.79075451, -41.1084062 ,  24.71548348],  # may vary (signs)
		       [  0.        , -33.83931057,  11.02226551],
		       [  0.        ,   0.        ,  48.91476811],
		       [  0.        ,   0.        ,   0.        ],
		       [  0.        ,   0.        ,   0.        ]])
		
		This update is also a valid qr decomposition of ``A + U V**T``.
		
		>>> a_up2 = a + np.dot(u2, v2.T)
		>>> np.allclose(a_up2, np.dot(q_up2, r_up2))
		True
		>>> np.allclose(np.dot(q_up2.T, q_up2), np.eye(5))
		True
	**/
	static public function qr_update(args:haxe.extern.Rest<Dynamic>):Dynamic;
}