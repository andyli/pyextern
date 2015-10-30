/* This file is generated, do not edit! */
package scipy.linalg._interpolative_backend;
@:pythonImport("scipy.linalg._interpolative_backend") extern class _Interpolative_backend_Module {
	static public var _RETCODE_ERROR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generate standard uniform pseudorandom numbers via a very efficient lagged
		Fibonacci method.
		
		:param n:
		    Number of pseudorandom numbers to generate.
		:type n: int
		
		:return:
		    Pseudorandom numbers.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function id_srand(n:Dynamic):Dynamic;
	/**
		Initialize seed values for :func:`id_srand` (any appropriately random
		numbers will do).
		
		:param t:
		    Array of 55 seed values.
		:type t: :class:`numpy.ndarray`
	**/
	static public function id_srandi(t:Dynamic):Dynamic;
	/**
		Reset seed values to their original values.
	**/
	static public function id_srando():Dynamic;
	/**
		Reconstruct skeleton matrix from real ID.
		
		:param A:
		    Original matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		
		:return:
		    Skeleton matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_copycols(A:Dynamic, k:Dynamic, idx:Dynamic):Dynamic;
	/**
		Estimate spectral norm of the difference of two real matrices by the
		randomized power method.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the transpose of the first matrix to a vector, with
		    call signature `y = matvect(x)`, where `x` and `y` are the input and
		    output vectors, respectively.
		:type matvect: function
		:param matvect2:
		    Function to apply the transpose of the second matrix to a vector, with
		    call signature `y = matvect2(x)`, where `x` and `y` are the input and
		    output vectors, respectively.
		:type matvect2: function
		:param matvec:
		    Function to apply the first matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param matvec2:
		    Function to apply the second matrix to a vector, with call signature
		    `y = matvec2(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec2: function
		:param its:
		    Number of power method iterations.
		:type its: int
		
		:return:
		    Spectral norm estimate of matrix difference.
		:rtype: float
	**/
	static public function idd_diffsnorm(m:Dynamic, n:Dynamic, matvect:Dynamic, matvect2:Dynamic, matvec:Dynamic, matvec2:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Estimate rank of a real matrix to a specified relative precision using
		random sampling.
		
		The output rank is typically about 8 higher than the actual rank.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank estimate.
		:rtype: int
	**/
	static public function idd_estrank(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Estimate rank of a real matrix to a specified relative precision using
		random matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		
		:return:
		    Rank estimate.
		:rtype: int
	**/
	static public function idd_findrank(eps:Dynamic, m:Dynamic, n:Dynamic, matvect:Dynamic):Dynamic;
	/**
		Transform real vector via a composition of Rokhlin's random transform,
		random subselection, and an FFT.
		
		In contrast to :func:`idd_sfrm`, this routine works best when the length of
		the transformed vector is the power-of-two integer output by
		:func:`idd_frmi`, or when the length is not specified but instead
		determined a posteriori from the output. The returned transformed vector is
		randomly permuted.
		
		:param n:
		    Greatest power-of-two integer satisfying `n <= x.size` as obtained from
		    :func:`idd_frmi`; `n` is also the length of the output vector.
		:type n: int
		:param w:
		    Initialization array constructed by :func:`idd_frmi`.
		:type w: :class:`numpy.ndarray`
		:param x:
		    Vector to be transformed.
		:type x: :class:`numpy.ndarray`
		
		:return:
		    Transformed vector.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_frm(n:Dynamic, w:Dynamic, x:Dynamic):Dynamic;
	/**
		Initialize data for :func:`idd_frm`.
		
		:param m:
		    Length of vector to be transformed.
		:type m: int
		
		:return:
		    Greatest power-of-two integer `n` satisfying `n <= m`.
		:rtype: int
		:return:
		    Initialization array to be used by :func:`idd_frm`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_frmi(m:Dynamic):Dynamic;
	/**
		Convert real ID to SVD.
		
		:param B:
		    Skeleton matrix.
		:type B: :class:`numpy.ndarray`
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_id2svd(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct matrix from real ID.
		
		:param B:
		    Skeleton matrix.
		:type B: :class:`numpy.ndarray`
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Reconstructed matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_reconid(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct interpolation matrix from real ID.
		
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Interpolation matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_reconint(idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Transform real vector via a composition of Rokhlin's random transform,
		random subselection, and an FFT.
		
		In contrast to :func:`idd_frm`, this routine works best when the length of
		the transformed vector is known a priori.
		
		:param l:
		    Length of transformed vector, satisfying `l <= n`.
		:type l: int
		:param n:
		    Greatest power-of-two integer satisfying `n <= x.size` as obtained from
		    :func:`idd_sfrmi`.
		:type n: int
		:param w:
		    Initialization array constructed by :func:`idd_sfrmi`.
		:type w: :class:`numpy.ndarray`
		:param x:
		    Vector to be transformed.
		:type x: :class:`numpy.ndarray`
		
		:return:
		    Transformed vector.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_sfrm(l:Dynamic, n:Dynamic, w:Dynamic, x:Dynamic):Dynamic;
	/**
		Initialize data for :func:`idd_sfrm`.
		
		:param l:
		    Length of output transformed vector.
		:type l: int
		:param m:
		    Length of the vector to be transformed.
		:type m: int
		
		:return:
		    Greatest power-of-two integer `n` satisfying `n <= m`.
		:rtype: int
		:return:
		    Initialization array to be used by :func:`idd_sfrm`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idd_sfrmi(l:Dynamic, m:Dynamic):Dynamic;
	/**
		Estimate spectral norm of a real matrix by the randomized power method.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param its:
		    Number of power method iterations.
		:type its: int
		
		:return:
		    Spectral norm estimate.
		:rtype: float
	**/
	static public function idd_snorm(m:Dynamic, n:Dynamic, matvect:Dynamic, matvec:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified relative precision using random
		sampling.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_aid(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified relative precision using random
		sampling.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_asvd(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified relative precision.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_id(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified relative precision using random
		matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_rid(eps:Dynamic, m:Dynamic, n:Dynamic, matvect:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified relative precision using random
		matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_rsvd(eps:Dynamic, m:Dynamic, n:Dynamic, matvect:Dynamic, matvec:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified relative precision.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddp_svd(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified rank using random sampling.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_aid(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Initialize array for :func:`iddr_aid`.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Initialization array to be used by :func:`iddr_aid`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_aidi(m:Dynamic, n:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified rank using random sampling.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_asvd(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified rank.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_id(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute ID of a real matrix to a specified rank using random matrix-vector
		multiplication.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_rid(m:Dynamic, n:Dynamic, matvect:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified rank using random matrix-vector
		multiplication.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matvect:
		    Function to apply the matrix transpose to a vector, with call signature
		    `y = matvect(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvect: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_rsvd(m:Dynamic, n:Dynamic, matvect:Dynamic, matvec:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a real matrix to a specified rank.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function iddr_svd(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Reconstruct skeleton matrix from complex ID.
		
		:param A:
		    Original matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		
		:return:
		    Skeleton matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_copycols(A:Dynamic, k:Dynamic, idx:Dynamic):Dynamic;
	/**
		Estimate spectral norm of the difference of two complex matrices by the
		randomized power method.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the adjoint of the first matrix to a vector, with
		    call signature `y = matveca(x)`, where `x` and `y` are the input and
		    output vectors, respectively.
		:type matveca: function
		:param matveca2:
		    Function to apply the adjoint of the second matrix to a vector, with
		    call signature `y = matveca2(x)`, where `x` and `y` are the input and
		    output vectors, respectively.
		:type matveca2: function
		:param matvec:
		    Function to apply the first matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param matvec2:
		    Function to apply the second matrix to a vector, with call signature
		    `y = matvec2(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec2: function
		:param its:
		    Number of power method iterations.
		:type its: int
		
		:return:
		    Spectral norm estimate of matrix difference.
		:rtype: float
	**/
	static public function idz_diffsnorm(m:Dynamic, n:Dynamic, matveca:Dynamic, matveca2:Dynamic, matvec:Dynamic, matvec2:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Estimate rank of a complex matrix to a specified relative precision using
		random sampling.
		
		The output rank is typically about 8 higher than the actual rank.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank estimate.
		:rtype: int
	**/
	static public function idz_estrank(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Estimate rank of a complex matrix to a specified relative precision using
		random matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		
		:return:
		    Rank estimate.
		:rtype: int
	**/
	static public function idz_findrank(eps:Dynamic, m:Dynamic, n:Dynamic, matveca:Dynamic):Dynamic;
	/**
		Transform complex vector via a composition of Rokhlin's random transform,
		random subselection, and an FFT.
		
		In contrast to :func:`idz_sfrm`, this routine works best when the length of
		the transformed vector is the power-of-two integer output by
		:func:`idz_frmi`, or when the length is not specified but instead
		determined a posteriori from the output. The returned transformed vector is
		randomly permuted.
		
		:param n:
		    Greatest power-of-two integer satisfying `n <= x.size` as obtained from
		    :func:`idz_frmi`; `n` is also the length of the output vector.
		:type n: int
		:param w:
		    Initialization array constructed by :func:`idz_frmi`.
		:type w: :class:`numpy.ndarray`
		:param x:
		    Vector to be transformed.
		:type x: :class:`numpy.ndarray`
		
		:return:
		    Transformed vector.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_frm(n:Dynamic, w:Dynamic, x:Dynamic):Dynamic;
	/**
		Initialize data for :func:`idz_frm`.
		
		:param m:
		    Length of vector to be transformed.
		:type m: int
		
		:return:
		    Greatest power-of-two integer `n` satisfying `n <= m`.
		:rtype: int
		:return:
		    Initialization array to be used by :func:`idz_frm`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_frmi(m:Dynamic):Dynamic;
	/**
		Convert complex ID to SVD.
		
		:param B:
		    Skeleton matrix.
		:type B: :class:`numpy.ndarray`
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_id2svd(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct matrix from complex ID.
		
		:param B:
		    Skeleton matrix.
		:type B: :class:`numpy.ndarray`
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Reconstructed matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_reconid(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Reconstruct interpolation matrix from complex ID.
		
		:param idx:
		    Column index array.
		:type idx: :class:`numpy.ndarray`
		:param proj:
		    Interpolation coefficients.
		:type proj: :class:`numpy.ndarray`
		
		:return:
		    Interpolation matrix.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_reconint(idx:Dynamic, proj:Dynamic):Dynamic;
	/**
		Transform complex vector via a composition of Rokhlin's random transform,
		random subselection, and an FFT.
		
		In contrast to :func:`idz_frm`, this routine works best when the length of
		the transformed vector is known a priori.
		
		:param l:
		    Length of transformed vector, satisfying `l <= n`.
		:type l: int
		:param n:
		    Greatest power-of-two integer satisfying `n <= x.size` as obtained from
		    :func:`idz_sfrmi`.
		:type n: int
		:param w:
		    Initialization array constructed by :func:`idd_sfrmi`.
		:type w: :class:`numpy.ndarray`
		:param x:
		    Vector to be transformed.
		:type x: :class:`numpy.ndarray`
		
		:return:
		    Transformed vector.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_sfrm(l:Dynamic, n:Dynamic, w:Dynamic, x:Dynamic):Dynamic;
	/**
		Initialize data for :func:`idz_sfrm`.
		
		:param l:
		    Length of output transformed vector.
		:type l: int
		:param m:
		    Length of the vector to be transformed.
		:type m: int
		
		:return:
		    Greatest power-of-two integer `n` satisfying `n <= m`.
		:rtype: int
		:return:
		    Initialization array to be used by :func:`idz_sfrm`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idz_sfrmi(l:Dynamic, m:Dynamic):Dynamic;
	/**
		Estimate spectral norm of a complex matrix by the randomized power method.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param its:
		    Number of power method iterations.
		:type its: int
		
		:return:
		    Spectral norm estimate.
		:rtype: float
	**/
	static public function idz_snorm(m:Dynamic, n:Dynamic, matveca:Dynamic, matvec:Dynamic, ?its:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified relative precision using
		random sampling.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_aid(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified relative precision using
		random sampling.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_asvd(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified relative precision.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_id(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified relative precision using
		random matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		
		:return:
		    Rank of ID.
		:rtype: int
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_rid(eps:Dynamic, m:Dynamic, n:Dynamic, matveca:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified relative precision using
		random matrix-vector multiplication.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_rsvd(eps:Dynamic, m:Dynamic, n:Dynamic, matveca:Dynamic, matvec:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified relative precision.
		
		:param eps:
		    Relative precision.
		:type eps: float
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzp_svd(eps:Dynamic, A:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified rank using random sampling.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_aid(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Initialize array for :func:`idzr_aid`.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Initialization array to be used by :func:`idzr_aid`.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_aidi(m:Dynamic, n:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified rank using random sampling.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_asvd(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified rank.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_id(A:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute ID of a complex matrix to a specified rank using random
		matrix-vector multiplication.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		:param k:
		    Rank of ID.
		:type k: int
		
		:return:
		    Column index array.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Interpolation coefficients.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_rid(m:Dynamic, n:Dynamic, matveca:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified rank using random
		matrix-vector multiplication.
		
		:param m:
		    Matrix row dimension.
		:type m: int
		:param n:
		    Matrix column dimension.
		:type n: int
		:param matveca:
		    Function to apply the matrix adjoint to a vector, with call signature
		    `y = matveca(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matveca: function
		:param matvec:
		    Function to apply the matrix to a vector, with call signature
		    `y = matvec(x)`, where `x` and `y` are the input and output vectors,
		    respectively.
		:type matvec: function
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_rsvd(m:Dynamic, n:Dynamic, matveca:Dynamic, matvec:Dynamic, k:Dynamic):Dynamic;
	/**
		Compute SVD of a complex matrix to a specified rank.
		
		:param A:
		    Matrix.
		:type A: :class:`numpy.ndarray`
		:param k:
		    Rank of SVD.
		:type k: int
		
		:return:
		    Left singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Right singular vectors.
		:rtype: :class:`numpy.ndarray`
		:return:
		    Singular values.
		:rtype: :class:`numpy.ndarray`
	**/
	static public function idzr_svd(A:Dynamic, k:Dynamic):Dynamic;
}