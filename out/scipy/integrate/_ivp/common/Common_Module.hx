/* This file is generated, do not edit! */
package scipy.integrate._ivp.common;
@:pythonImport("scipy.integrate._ivp.common") extern class Common_Module {
	static public var EPS : Dynamic;
	static public var NUM_JAC_DIFF_BIG : Dynamic;
	static public var NUM_JAC_DIFF_REJECT : Dynamic;
	static public var NUM_JAC_DIFF_SMALL : Dynamic;
	static public var NUM_JAC_FACTOR_DECREASE : Dynamic;
	static public var NUM_JAC_FACTOR_INCREASE : Dynamic;
	static public var NUM_JAC_MIN_FACTOR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dense_num_jac(fun:Dynamic, t:Dynamic, y:Dynamic, f:Dynamic, h:Dynamic, factor:Dynamic, y_scale:Dynamic):Dynamic;
	static public function _sparse_num_jac(fun:Dynamic, t:Dynamic, y:Dynamic, f:Dynamic, h:Dynamic, factor:Dynamic, y_scale:Dynamic, structure:Dynamic, groups:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return the indices and values of the nonzero elements of a matrix
		
		Parameters
		----------
		A : dense or sparse matrix
		    Matrix whose nonzero elements are desired.
		
		Returns
		-------
		(I,J,V) : tuple of arrays
		    I,J, and V contain the row indices, column indices, and values
		    of the nonzero matrix entries.
		
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, find
		>>> A = csr_matrix([[7.0, 8.0, 0],[0, 0, 9.0]])
		>>> find(A)
		(array([0, 0, 1], dtype=int32), array([0, 1, 2], dtype=int32), array([ 7.,  8.,  9.]))
	**/
	static public function find(A:Dynamic):Dynamic;
	/**
		Compute RMS norm.
	**/
	static public function norm(x:Dynamic):Dynamic;
	/**
		Finite differences Jacobian approximation tailored for ODE solvers.
		
		This function computes finite difference approximation to the Jacobian
		matrix of `fun` with respect to `y` using forward differences.
		The Jacobian matrix has shape (n, n) and its element (i, j) is equal to
		``d f_i / d y_j``.
		
		A special feature of this function is the ability to correct the step
		size from iteration to iteration. The main idea is to keep the finite
		difference significantly separated from its round-off error which
		approximately equals ``EPS * np.abs(f)``. It reduces a possibility of a
		huge error and assures that the estimated derivative are reasonably close
		to the true values (i.e. the finite difference approximation is at least
		qualitatively reflects the structure of the true Jacobian).
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system implemented in a vectorized fashion.
		t : float
		    Current time.
		y : ndarray, shape (n,)
		    Current state.
		f : ndarray, shape (n,)
		    Value of the right hand side at (t, y).
		threshold : float
		    Threshold for `y` value used for computing the step size as
		    ``factor * np.maximum(np.abs(y), threshold)``. Typically the value of
		    absolute tolerance (atol) for a solver should be passed as `threshold`.
		factor : ndarray with shape (n,) or None
		    Factor to use for computing the step size. Pass None for the very
		    evaluation, then use the value returned from this function.
		sparsity : tuple (structure, groups) or None
		    Sparsity structure of the Jacobian, `structure` must be csc_matrix.
		
		Returns
		-------
		J : ndarray or csc_matrix, shape (n, n)
		    Jacobian matrix.
		factor : ndarray, shape (n,)
		    Suggested `factor` for the next evaluation.
	**/
	static public function num_jac(fun:Dynamic, t:Dynamic, y:Dynamic, f:Dynamic, threshold:Dynamic, factor:Dynamic, ?sparsity:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Empirically select a good initial step.
		
		The algorithm is described in [1]_.
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system.
		t0 : float
		    Initial value of the independent variable.
		y0 : ndarray, shape (n,)
		    Initial value of the dependent variable.
		f0 : ndarray, shape (n,)
		    Initial value of the derivative, i. e. ``fun(t0, y0)``.
		direction : float
		    Integration direction.
		order : float
		    Method order.
		rtol : float
		    Desired relative tolerance.
		atol : float
		    Desired absolute tolerance.
		
		Returns
		-------
		h_abs : float
		    Absolute value of the suggested initial step.
		
		References
		----------
		.. [1] E. Hairer, S. P. Norsett G. Wanner, "Solving Ordinary Differential
		       Equations I: Nonstiff Problems", Sec. II.4.
	**/
	static public function select_initial_step(fun:Dynamic, t0:Dynamic, y0:Dynamic, f0:Dynamic, direction:Dynamic, order:Dynamic, rtol:Dynamic, atol:Dynamic):Float;
	/**
		Assert that max_Step is valid and return it.
	**/
	static public function validate_max_step(max_step:Dynamic):Dynamic;
	/**
		Validate tolerance values.
	**/
	static public function validate_tol(rtol:Dynamic, atol:Dynamic, n:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Display a warning for extraneous keyword arguments.
		
		The initializer of each solver class is expected to collect keyword
		arguments that it doesn't understand and warn about them. This function
		prints a warning for each key in the supplied dictionary.
		
		Parameters
		----------
		extraneous : dict
		    Extraneous keyword arguments
	**/
	static public function warn_extraneous(extraneous:Dynamic):Dynamic;
}