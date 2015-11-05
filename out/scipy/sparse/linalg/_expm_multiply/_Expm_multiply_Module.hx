/* This file is generated, do not edit! */
package scipy.sparse.linalg._expm_multiply;
@:pythonImport("scipy.sparse.linalg._expm_multiply") extern class _Expm_multiply_Module {
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
		A helper function for computing bounds.
		
		This is equation (3.10).
		It measures cost in terms of the number of required matrix products.
		
		Parameters
		----------
		m : int
		    A valid key of _theta.
		p : int
		    A matrix power.
		norm_info : LazyOperatorNormInfo
		    Information about 1-norms of related operators.
		
		Returns
		-------
		cost_div_m : int
		    Required number of matrix products divided by m.
	**/
	static public function _compute_cost_div_m(m:Dynamic, p:Dynamic, norm_info:Dynamic):Int;
	/**
		Compute the largest positive integer p such that p*(p-1) <= m_max + 1.
		
		Do this in a slightly dumb way, but safe and not too slow.
		
		Parameters
		----------
		m_max : int
		    A count related to bounds.
	**/
	static public function _compute_p_max(m_max:Dynamic):Dynamic;
	/**
		A helper function for the _expm_multiply_* functions.
		
		Parameters
		----------
		A_1_norm : float
		    The precomputed 1-norm of A.
		n0 : int
		    Number of columns in the _expm_multiply_* B matrix.
		m_max : int
		    A value related to a bound.
		ell : int
		    The number of columns used in the 1-norm approximation.
		    This is usually taken to be small, maybe between 1 and 5.
		
		Returns
		-------
		value : bool
		    Indicates whether or not the condition has been met.
		
		Notes
		-----
		This is condition (3.13) in Al-Mohy and Higham (2011).
	**/
	static public function _condition_3_13(A_1_norm:Dynamic, n0:Dynamic, m_max:Dynamic, ell:Dynamic):Bool;
	static public function _exact_1_norm(A:Dynamic):Dynamic;
	static public function _exact_inf_norm(A:Dynamic):Dynamic;
	/**
		Compute the action of the matrix exponential at multiple time points.
		
		Parameters
		----------
		A : transposable linear operator
		    The operator whose exponential is of interest.
		B : ndarray
		    The matrix to be multiplied by the matrix exponential of A.
		start : scalar, optional
		    The starting time point of the sequence.
		stop : scalar, optional
		    The end time point of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced time points, so that `stop` is excluded.
		    Note that the step size changes when `endpoint` is False.
		num : int, optional
		    Number of time points to use.
		endpoint : bool, optional
		    If True, `stop` is the last time point.  Otherwise, it is not included.
		balance : bool
		    Indicates whether or not to apply balancing.
		status_only : bool
		    A flag that is set to True for some debugging and testing operations.
		
		Returns
		-------
		F : ndarray
		    :math:`e^{t_k A} B`
		status : int
		    An integer status for testing and debugging.
		
		Notes
		-----
		This is algorithm (5.2) in Al-Mohy and Higham (2011).
		
		There seems to be a typo, where line 15 of the algorithm should be
		moved to line 6.5 (between lines 6 and 7).
	**/
	static public function _expm_multiply_interval(A:Dynamic, B:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?balance:Dynamic, ?status_only:Dynamic):Dynamic;
	/**
		A helper function, for the case q <= s.
	**/
	static public function _expm_multiply_interval_core_0(A:Dynamic, X:Dynamic, h:Dynamic, mu:Dynamic, m_star:Dynamic, s:Dynamic, q:Dynamic):Dynamic;
	/**
		A helper function, for the case q > s and q % s == 0.
	**/
	static public function _expm_multiply_interval_core_1(A:Dynamic, X:Dynamic, h:Dynamic, mu:Dynamic, m_star:Dynamic, s:Dynamic, q:Dynamic, tol:Dynamic):Dynamic;
	/**
		A helper function, for the case q > s and q % s > 0.
	**/
	static public function _expm_multiply_interval_core_2(A:Dynamic, X:Dynamic, h:Dynamic, mu:Dynamic, m_star:Dynamic, s:Dynamic, q:Dynamic, tol:Dynamic):Dynamic;
	/**
		Compute the action of the matrix exponential at a single time point.
		
		Parameters
		----------
		A : transposable linear operator
		    The operator whose exponential is of interest.
		B : ndarray
		    The matrix to be multiplied by the matrix exponential of A.
		t : float
		    A time point.
		balance : bool
		    Indicates whether or not to apply balancing.
		
		Returns
		-------
		F : ndarray
		    :math:`e^{t A} B`
		
		Notes
		-----
		This is algorithm (3.2) in Al-Mohy and Higham (2011).
	**/
	static public function _expm_multiply_simple(A:Dynamic, B:Dynamic, ?t:Dynamic, ?balance:Dynamic):Dynamic;
	/**
		A helper function.
	**/
	static public function _expm_multiply_simple_core(A:Dynamic, B:Dynamic, t:Dynamic, mu:Dynamic, m_star:Dynamic, s:Dynamic, ?tol:Dynamic, ?balance:Dynamic):Dynamic;
	/**
		A helper function for the _expm_multiply_* functions.
		
		Parameters
		----------
		norm_info : LazyOperatorNormInfo
		    Information about norms of certain linear operators of interest.
		n0 : int
		    Number of columns in the _expm_multiply_* B matrix.
		tol : float
		    Expected to be
		    :math:`2^{-24}` for single precision or
		    :math:`2^{-53}` for double precision.
		m_max : int
		    A value related to a bound.
		ell : int
		    The number of columns used in the 1-norm approximation.
		    This is usually taken to be small, maybe between 1 and 5.
		
		Returns
		-------
		best_m : int
		    Related to bounds for error control.
		best_s : int
		    Amount of scaling.
		
		Notes
		-----
		This is code fragment (3.1) in Al-Mohy and Higham (2011).
		The discussion of default values for m_max and ell
		is given between the definitions of equation (3.11)
		and the definition of equation (3.12).
	**/
	static public function _fragment_3_1(norm_info:Dynamic, n0:Dynamic, tol:Dynamic, ?m_max:Dynamic, ?ell:Dynamic):Int;
	static public function _ident_like(A:Dynamic):Dynamic;
	/**
		Efficiently estimate the 1-norm of A^p.
		
		Parameters
		----------
		A : ndarray
		    Matrix whose 1-norm of a power is to be computed.
		p : int
		    Non-negative integer power.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
	**/
	static public function _onenormest_matrix_power(A:Dynamic, p:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Float;
	static public var _theta : Dynamic;
	static public function _trace(A:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Examples
		--------
		>>> from scipy import matrix
		>>> M = matrix( [[1,2,3],[4,5,6]], dtype='int32' )
		>>> aslinearoperator( M )
		<2x3 LinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the action of the matrix exponential of A on B.
		
		Parameters
		----------
		A : transposable linear operator
		    The operator whose exponential is of interest.
		B : ndarray
		    The matrix or vector to be multiplied by the matrix exponential of A.
		start : scalar, optional
		    The starting time point of the sequence.
		stop : scalar, optional
		    The end time point of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced time points, so that `stop` is excluded.
		    Note that the step size changes when `endpoint` is False.
		num : int, optional
		    Number of time points to use.
		endpoint : bool, optional
		    If True, `stop` is the last time point.  Otherwise, it is not included.
		
		Returns
		-------
		expm_A_B : ndarray
		     The result of the action :math:`e^{t_k A} B`.
		
		Notes
		-----
		The optional arguments defining the sequence of evenly spaced time points
		are compatible with the arguments of `numpy.linspace`.
		
		The output ndarray shape is somewhat complicated so I explain it here.
		The ndim of the output could be either 1, 2, or 3.
		It would be 1 if you are computing the expm action on a single vector
		at a single time point.
		It would be 2 if you are computing the expm action on a vector
		at multiple time points, or if you are computing the expm action
		on a matrix at a single time point.
		It would be 3 if you want the action on a matrix with multiple
		columns at multiple time points.
		If multiple time points are requested, expm_A_B[0] will always
		be the action of the expm at the first time point,
		regardless of whether the action is on a vector or a matrix.
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2011)
		       "Computing the Action of the Matrix Exponential,
		       with an Application to Exponential Integrators."
		       SIAM Journal on Scientific Computing,
		       33 (2). pp. 488-511. ISSN 1064-8275
		       http://eprints.ma.man.ac.uk/1591/
		
		.. [2] Nicholas J. Higham and Awad H. Al-Mohy (2010)
		       "Computing Matrix Functions."
		       Acta Numerica,
		       19. 159-208. ISSN 0962-4929
		       http://eprints.ma.man.ac.uk/1451/
	**/
	static public function expm_multiply(A:Dynamic, B:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}