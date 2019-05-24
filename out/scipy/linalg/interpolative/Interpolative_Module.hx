/* This file is generated, do not edit! */
package scipy.linalg.interpolative;
@:pythonImport("scipy.linalg.interpolative") extern class Interpolative_Module {
	static public var _DTYPE_ERROR : Dynamic;
	static public var _TYPE_ERROR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_real(A:Dynamic):Dynamic;
	/**
		Estimate matrix rank to a specified relative precision using randomized
		methods.
		
		The matrix `A` can be given as either a :class:`numpy.ndarray` or a
		:class:`scipy.sparse.linalg.LinearOperator`, with different algorithms used
		for each case. If `A` is of type :class:`numpy.ndarray`, then the output
		rank is typically about 8 higher than the actual numerical rank.
		
		..  This function automatically detects the form of the input parameters and
		    passes them to the appropriate backend. For details,
		    see :func:`backend.idd_estrank`, :func:`backend.idd_findrank`,
		    :func:`backend.idz_estrank`, and :func:`backend.idz_findrank`.
		
		Parameters
		----------
		A : :class:`numpy.ndarray` or :class:`scipy.sparse.linalg.LinearOperator`
		    Matrix whose rank is to be estimated, given as either a
		    :class:`numpy.ndarray` or a :class:`scipy.sparse.linalg.LinearOperator`
		    with the `rmatvec` method (to apply the matrix adjoint).
		eps : float
		    Relative error for numerical rank definition.
		
		Returns
		-------
		int
		    Estimated matrix rank.
	**/
	static public function estimate_rank(A:Dynamic, eps:Dynamic):Dynamic;
	/**
		Estimate spectral norm of a matrix by the randomized power method.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_snorm` and
		    :func:`backend.idz_snorm`.
		
		Parameters
		----------
		A : :class:`scipy.sparse.linalg.LinearOperator`
		    Matrix given as a :class:`scipy.sparse.linalg.LinearOperator` with the
		    `matvec` and `rmatvec` methods (to apply the matrix and its adjoint).
		its : int, optional
		    Number of power method iterations.
		
		Returns
		-------
		float
		    Spectral norm estimate.
	**/
	static public function estimate_spectral_norm(A:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Estimate spectral norm of the difference of two matrices by the randomized
		power method.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_diffsnorm` and
		    :func:`backend.idz_diffsnorm`.
		
		Parameters
		----------
		A : :class:`scipy.sparse.linalg.LinearOperator`
		    First matrix given as a :class:`scipy.sparse.linalg.LinearOperator` with the
		    `matvec` and `rmatvec` methods (to apply the matrix and its adjoint).
		B : :class:`scipy.sparse.linalg.LinearOperator`
		    Second matrix given as a :class:`scipy.sparse.linalg.LinearOperator` with
		    the `matvec` and `rmatvec` methods (to apply the matrix and its adjoint).
		its : int, optional
		    Number of power method iterations.
		
		Returns
		-------
		float
		    Spectral norm estimate of matrix difference.
	**/
	static public function estimate_spectral_norm_diff(A:Dynamic, B:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Convert ID to SVD.
		
		The SVD reconstruction of a matrix with skeleton matrix `B` and ID indices and
		coefficients `idx` and `proj`, respectively, is::
		
		    U, S, V = id_to_svd(B, idx, proj)
		    A = numpy.dot(U, numpy.dot(numpy.diag(S), V.conj().T))
		
		See also :func:`svd`.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_id2svd` and
		    :func:`backend.idz_id2svd`.
		
		Parameters
		----------
		B : :class:`numpy.ndarray`
		    Skeleton matrix.
		idx : :class:`numpy.ndarray`
		    Column index array.
		proj : :class:`numpy.ndarray`
		    Interpolation coefficients.
		
		Returns
		-------
		U : :class:`numpy.ndarray`
		    Left singular vectors.
		S : :class:`numpy.ndarray`
		    Singular values.
		V : :class:`numpy.ndarray`
		    Right singular vectors.
	**/
	static public function id_to_svd(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Compute ID of a matrix.
		
		An ID of a matrix `A` is a factorization defined by a rank `k`, a column
		index array `idx`, and interpolation coefficients `proj` such that::
		
		    numpy.dot(A[:,idx[:k]], proj) = A[:,idx[k:]]
		
		The original matrix can then be reconstructed as::
		
		    numpy.hstack([A[:,idx[:k]],
		                                numpy.dot(A[:,idx[:k]], proj)]
		                            )[:,numpy.argsort(idx)]
		
		or via the routine :func:`reconstruct_matrix_from_id`. This can
		equivalently be written as::
		
		    numpy.dot(A[:,idx[:k]],
		                        numpy.hstack([numpy.eye(k), proj])
		                      )[:,np.argsort(idx)]
		
		in terms of the skeleton and interpolation matrices::
		
		    B = A[:,idx[:k]]
		
		and::
		
		    P = numpy.hstack([numpy.eye(k), proj])[:,np.argsort(idx)]
		
		respectively. See also :func:`reconstruct_interp_matrix` and
		:func:`reconstruct_skel_matrix`.
		
		The ID can be computed to any relative precision or rank (depending on the
		value of `eps_or_k`). If a precision is specified (`eps_or_k < 1`), then
		this function has the output signature::
		
		    k, idx, proj = interp_decomp(A, eps_or_k)
		
		Otherwise, if a rank is specified (`eps_or_k >= 1`), then the output
		signature is::
		
		    idx, proj = interp_decomp(A, eps_or_k)
		
		..  This function automatically detects the form of the input parameters
		    and passes them to the appropriate backend. For details, see
		    :func:`backend.iddp_id`, :func:`backend.iddp_aid`,
		    :func:`backend.iddp_rid`, :func:`backend.iddr_id`,
		    :func:`backend.iddr_aid`, :func:`backend.iddr_rid`,
		    :func:`backend.idzp_id`, :func:`backend.idzp_aid`,
		    :func:`backend.idzp_rid`, :func:`backend.idzr_id`,
		    :func:`backend.idzr_aid`, and :func:`backend.idzr_rid`.
		
		Parameters
		----------
		A : :class:`numpy.ndarray` or :class:`scipy.sparse.linalg.LinearOperator` with `rmatvec`
		    Matrix to be factored
		eps_or_k : float or int
		    Relative error (if `eps_or_k < 1`) or rank (if `eps_or_k >= 1`) of
		    approximation.
		rand : bool, optional
		    Whether to use random sampling if `A` is of type :class:`numpy.ndarray`
		    (randomized algorithms are always used if `A` is of type
		    :class:`scipy.sparse.linalg.LinearOperator`).
		
		Returns
		-------
		k : int
		    Rank required to achieve specified relative precision if
		    `eps_or_k < 1`.
		idx : :class:`numpy.ndarray`
		    Column index array.
		proj : :class:`numpy.ndarray`
		    Interpolation coefficients.
	**/
	static public function interp_decomp(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic):Int;
	/**
		Generate standard uniform pseudorandom numbers via a very efficient lagged
		Fibonacci method.
		
		This routine is used for all random number generation in this package and
		can affect ID and SVD results.
		
		Parameters
		----------
		shape
		    Shape of output array
	**/
	static public function rand(?shape:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reconstruct interpolation matrix from ID.
		
		The interpolation matrix can be reconstructed from the ID indices and
		coefficients `idx` and `proj`, respectively, as::
		
		    P = numpy.hstack([numpy.eye(proj.shape[0]), proj])[:,numpy.argsort(idx)]
		
		The original matrix can then be reconstructed from its skeleton matrix `B`
		via::
		
		    numpy.dot(B, P)
		
		See also :func:`reconstruct_matrix_from_id` and
		:func:`reconstruct_skel_matrix`.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_reconint` and
		    :func:`backend.idz_reconint`.
		
		Parameters
		----------
		idx : :class:`numpy.ndarray`
		    Column index array.
		proj : :class:`numpy.ndarray`
		    Interpolation coefficients.
		
		Returns
		-------
		:class:`numpy.ndarray`
		    Interpolation matrix.
	**/
	static public function reconstruct_interp_matrix(idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct matrix from its ID.
		
		A matrix `A` with skeleton matrix `B` and ID indices and coefficients `idx`
		and `proj`, respectively, can be reconstructed as::
		
		    numpy.hstack([B, numpy.dot(B, proj)])[:,numpy.argsort(idx)]
		
		See also :func:`reconstruct_interp_matrix` and
		:func:`reconstruct_skel_matrix`.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_reconid` and
		    :func:`backend.idz_reconid`.
		
		Parameters
		----------
		B : :class:`numpy.ndarray`
		    Skeleton matrix.
		idx : :class:`numpy.ndarray`
		    Column index array.
		proj : :class:`numpy.ndarray`
		    Interpolation coefficients.
		
		Returns
		-------
		:class:`numpy.ndarray`
		    Reconstructed matrix.
	**/
	static public function reconstruct_matrix_from_id(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct skeleton matrix from ID.
		
		The skeleton matrix can be reconstructed from the original matrix `A` and its
		ID rank and indices `k` and `idx`, respectively, as::
		
		    B = A[:,idx[:k]]
		
		The original matrix can then be reconstructed via::
		
		    numpy.hstack([B, numpy.dot(B, proj)])[:,numpy.argsort(idx)]
		
		See also :func:`reconstruct_matrix_from_id` and
		:func:`reconstruct_interp_matrix`.
		
		..  This function automatically detects the matrix data type and calls the
		    appropriate backend. For details, see :func:`backend.idd_copycols` and
		    :func:`backend.idz_copycols`.
		
		Parameters
		----------
		A : :class:`numpy.ndarray`
		    Original matrix.
		k : int
		    Rank of ID.
		idx : :class:`numpy.ndarray`
		    Column index array.
		
		Returns
		-------
		:class:`numpy.ndarray`
		    Skeleton matrix.
	**/
	static public function reconstruct_skel_matrix(A:Dynamic, k:Dynamic, idx:Dynamic):Dynamic;
	/**
		Seed the internal random number generator used in this ID package.
		
		The generator is a lagged Fibonacci method with 55-element internal state.
		
		Parameters
		----------
		seed : int, sequence, 'default', optional
		    If 'default', the random seed is reset to a default value.
		
		    If `seed` is a sequence containing 55 floating-point numbers
		    in range [0,1], these are used to set the internal state of
		    the generator.
		
		    If the value is an integer, the internal state is obtained
		    from `numpy.random.RandomState` (MT19937) with the integer
		    used as the initial seed.
		
		    If `seed` is omitted (None), `numpy.random.rand` is used to
		    initialize the generator.
	**/
	static public function seed(?seed:Dynamic):Dynamic;
	/**
		Compute SVD of a matrix via an ID.
		
		An SVD of a matrix `A` is a factorization::
		
		    A = numpy.dot(U, numpy.dot(numpy.diag(S), V.conj().T))
		
		where `U` and `V` have orthonormal columns and `S` is nonnegative.
		
		The SVD can be computed to any relative precision or rank (depending on the
		value of `eps_or_k`).
		
		See also :func:`interp_decomp` and :func:`id_to_svd`.
		
		..  This function automatically detects the form of the input parameters and
		    passes them to the appropriate backend. For details, see
		    :func:`backend.iddp_svd`, :func:`backend.iddp_asvd`,
		    :func:`backend.iddp_rsvd`, :func:`backend.iddr_svd`,
		    :func:`backend.iddr_asvd`, :func:`backend.iddr_rsvd`,
		    :func:`backend.idzp_svd`, :func:`backend.idzp_asvd`,
		    :func:`backend.idzp_rsvd`, :func:`backend.idzr_svd`,
		    :func:`backend.idzr_asvd`, and :func:`backend.idzr_rsvd`.
		
		Parameters
		----------
		A : :class:`numpy.ndarray` or :class:`scipy.sparse.linalg.LinearOperator`
		    Matrix to be factored, given as either a :class:`numpy.ndarray` or a
		    :class:`scipy.sparse.linalg.LinearOperator` with the `matvec` and
		    `rmatvec` methods (to apply the matrix and its adjoint).
		eps_or_k : float or int
		    Relative error (if `eps_or_k < 1`) or rank (if `eps_or_k >= 1`) of
		    approximation.
		rand : bool, optional
		    Whether to use random sampling if `A` is of type :class:`numpy.ndarray`
		    (randomized algorithms are always used if `A` is of type
		    :class:`scipy.sparse.linalg.LinearOperator`).
		
		Returns
		-------
		U : :class:`numpy.ndarray`
		    Left singular vectors.
		S : :class:`numpy.ndarray`
		    Singular values.
		V : :class:`numpy.ndarray`
		    Right singular vectors.
	**/
	static public function svd(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic):Dynamic;
}