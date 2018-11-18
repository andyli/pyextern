/* This file is generated, do not edit! */
package scipy.integrate._ivp.rk;
@:pythonImport("scipy.integrate._ivp.rk") extern class Rk_Module {
	static public var MAX_FACTOR : Dynamic;
	static public var MIN_FACTOR : Dynamic;
	static public var SAFETY : Dynamic;
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
		Compute RMS norm.
	**/
	static public function norm(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Perform a single Runge-Kutta step.
		
		This function computes a prediction of an explicit Runge-Kutta method and
		also estimates the error of a less accurate method.
		
		Notation for Butcher tableau is as in [1]_.
		
		Parameters
		----------
		fun : callable
		    Right-hand side of the system.
		t : float
		    Current time.
		y : ndarray, shape (n,)
		    Current state.
		f : ndarray, shape (n,)
		    Current value of the derivative, i.e. ``fun(x, y)``.
		h : float
		    Step to use.
		A : list of ndarray, length n_stages - 1
		    Coefficients for combining previous RK stages to compute the next
		    stage. For explicit methods the coefficients above the main diagonal
		    are zeros, so `A` is stored as a list of arrays of increasing lengths.
		    The first stage is always just `f`, thus no coefficients for it
		    are required.
		B : ndarray, shape (n_stages,)
		    Coefficients for combining RK stages for computing the final
		    prediction.
		C : ndarray, shape (n_stages - 1,)
		    Coefficients for incrementing time for consecutive RK stages.
		    The value for the first stage is always zero, thus it is not stored.
		E : ndarray, shape (n_stages + 1,)
		    Coefficients for estimating the error of a less accurate method. They
		    are computed as the difference between b's in an extended tableau.
		K : ndarray, shape (n_stages + 1, n)
		    Storage array for putting RK stages here. Stages are stored in rows.
		
		Returns
		-------
		y_new : ndarray, shape (n,)
		    Solution at t + h computed with a higher accuracy.
		f_new : ndarray, shape (n,)
		    Derivative ``fun(t + h, y_new)``.
		error : ndarray, shape (n,)
		    Error estimate of a less accurate method.
		
		References
		----------
		.. [1] E. Hairer, S. P. Norsett G. Wanner, "Solving Ordinary Differential
		       Equations I: Nonstiff Problems", Sec. II.4.
	**/
	static public function rk_step(fun:Dynamic, t:Dynamic, y:Dynamic, f:Dynamic, h:Dynamic, A:Dynamic, B:Dynamic, C:Dynamic, E:Dynamic, K:Dynamic):Dynamic;
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