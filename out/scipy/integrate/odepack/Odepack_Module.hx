/* This file is generated, do not edit! */
package scipy.integrate.odepack;
@:pythonImport("scipy.integrate.odepack") extern class Odepack_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _msgs : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Integrate a system of ordinary differential equations.
		
		Solve a system of ordinary differential equations using lsoda from the
		FORTRAN library odepack.
		
		Solves the initial value problem for stiff or non-stiff systems
		of first order ode-s::
		
		    dy/dt = func(y,t0,...)
		
		where y can be a vector.
		
		Parameters
		----------
		func : callable(y, t0, ...)
		    Computes the derivative of y at t0.
		y0 : array
		    Initial condition on y (can be a vector).
		t : array
		    A sequence of time points for which to solve for y.  The initial
		    value point should be the first element of this sequence.
		args : tuple, optional
		    Extra arguments to pass to function.
		Dfun : callable(y, t0, ...)
		    Gradient (Jacobian) of `func`.
		col_deriv : bool, optional
		    True if `Dfun` defines derivatives down columns (faster),
		    otherwise `Dfun` should define derivatives across rows.
		full_output : bool, optional
		    True if to return a dictionary of optional outputs as the second output
		printmessg : bool, optional
		    Whether to print the convergence message
		
		Returns
		-------
		y : array, shape (len(t), len(y0))
		    Array containing the value of y for each desired time in t,
		    with the initial value `y0` in the first row.
		infodict : dict, only returned if full_output == True
		    Dictionary containing additional output information
		
		    =======  ============================================================
		    key      meaning
		    =======  ============================================================
		    'hu'     vector of step sizes successfully used for each time step.
		    'tcur'   vector with the value of t reached for each time step.
		             (will always be at least as large as the input times).
		    'tolsf'  vector of tolerance scale factors, greater than 1.0,
		             computed when a request for too much accuracy was detected.
		    'tsw'    value of t at the time of the last method switch
		             (given for each time step)
		    'nst'    cumulative number of time steps
		    'nfe'    cumulative number of function evaluations for each time step
		    'nje'    cumulative number of jacobian evaluations for each time step
		    'nqu'    a vector of method orders for each successful step.
		    'imxer'  index of the component of largest magnitude in the
		             weighted local error vector (e / ewt) on an error return, -1
		             otherwise.
		    'lenrw'  the length of the double work array required.
		    'leniw'  the length of integer work array required.
		    'mused'  a vector of method indicators for each successful time step:
		             1: adams (nonstiff), 2: bdf (stiff)
		    =======  ============================================================
		
		Other Parameters
		----------------
		ml, mu : int, optional
		    If either of these are not None or non-negative, then the
		    Jacobian is assumed to be banded.  These give the number of
		    lower and upper non-zero diagonals in this banded matrix.
		    For the banded case, `Dfun` should return a matrix whose
		    rows contain the non-zero bands (starting with the lowest diagonal).
		    Thus, the return matrix `jac` from `Dfun` should have shape
		    ``(ml + mu + 1, len(y0))`` when ``ml >=0`` or ``mu >=0``.
		    The data in `jac` must be stored such that ``jac[i - j + mu, j]``
		    holds the derivative of the `i`th equation with respect to the `j`th
		    state variable.  If `col_deriv` is True, the transpose of this
		    `jac` must be returned.
		rtol, atol : float, optional
		    The input parameters `rtol` and `atol` determine the error
		    control performed by the solver.  The solver will control the
		    vector, e, of estimated local errors in y, according to an
		    inequality of the form ``max-norm of (e / ewt) <= 1``,
		    where ewt is a vector of positive error weights computed as
		    ``ewt = rtol * abs(y) + atol``.
		    rtol and atol can be either vectors the same length as y or scalars.
		    Defaults to 1.49012e-8.
		tcrit : ndarray, optional
		    Vector of critical points (e.g. singularities) where integration
		    care should be taken.
		h0 : float, (0: solver-determined), optional
		    The step size to be attempted on the first step.
		hmax : float, (0: solver-determined), optional
		    The maximum absolute step size allowed.
		hmin : float, (0: solver-determined), optional
		    The minimum absolute step size allowed.
		ixpr : bool, optional
		    Whether to generate extra printing at method switches.
		mxstep : int, (0: solver-determined), optional
		    Maximum number of (internally defined) steps allowed for each
		    integration point in t.
		mxhnil : int, (0: solver-determined), optional
		    Maximum number of messages printed.
		mxordn : int, (0: solver-determined), optional
		    Maximum order to be allowed for the non-stiff (Adams) method.
		mxords : int, (0: solver-determined), optional
		    Maximum order to be allowed for the stiff (BDF) method.
		
		See Also
		--------
		ode : a more object-oriented integrator based on VODE.
		quad : for finding the area under a curve.
	**/
	static public function odeint(func:Dynamic, y0:Dynamic, t:Dynamic, ?args:Dynamic, ?Dfun:Dynamic, ?col_deriv:Dynamic, ?full_output:Dynamic, ?ml:Dynamic, ?mu:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?tcrit:Dynamic, ?h0:Dynamic, ?hmax:Dynamic, ?hmin:Dynamic, ?ixpr:Dynamic, ?mxstep:Dynamic, ?mxhnil:Dynamic, ?mxordn:Dynamic, ?mxords:Dynamic, ?printmessg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}