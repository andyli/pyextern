/* This file is generated, do not edit! */
package scipy.optimize._spectral;
@:pythonImport("scipy.optimize._spectral") extern class _Spectral_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	static public function _complex2real(z:Dynamic):Dynamic;
	/**
		Nonmonotone line search from [1]
		
		Parameters
		----------
		f : callable
		    Function returning a tuple ``(f, F)`` where ``f`` is the value
		    of a merit function and ``F`` the residual.
		x_k : ndarray
		    Initial position
		d : ndarray
		    Search direction
		f_k : float
		    Initial merit function value
		C, Q : float
		    Control parameters. On the first iteration, give values
		    Q=1.0, C=f_k
		eta : float
		    Allowed merit function increase, see [1]_
		nu, gamma, tau_min, tau_max : float, optional
		    Search parameters, see [1]_
		
		Returns
		-------
		alpha : float
		    Step length
		xp : ndarray
		    Next position
		fp : float
		    Merit function value at next position
		Fp : ndarray
		    Residual at next position
		C : float
		    New value for the control parameter C
		Q : float
		    New value for the control parameter Q
		
		References
		----------
		.. [1] W. Cheng & D.-H. Li, ''A derivative-free nonmonotone line
		       search and its application to the spectral residual
		       method'', IMA J. Numer. Anal. 29, 814 (2009).
	**/
	static public function _nonmonotone_line_search_cheng(f:Dynamic, x_k:Dynamic, d:Dynamic, f_k:Dynamic, C:Dynamic, Q:Dynamic, eta:Dynamic, ?gamma:Dynamic, ?tau_min:Dynamic, ?tau_max:Dynamic, ?nu:Dynamic):Float;
	/**
		Nonmonotone backtracking line search as described in [1]_
		
		Parameters
		----------
		f : callable
		    Function returning a tuple ``(f, F)`` where ``f`` is the value
		    of a merit function and ``F`` the residual.
		x_k : ndarray
		    Initial position
		d : ndarray
		    Search direction
		prev_fs : float
		    List of previous merit function values. Should have ``len(prev_fs) <= M``
		    where ``M`` is the nonmonotonicity window parameter.
		eta : float
		    Allowed merit function increase, see [1]_
		gamma, tau_min, tau_max : float, optional
		    Search parameters, see [1]_
		
		Returns
		-------
		alpha : float
		    Step length
		xp : ndarray
		    Next position
		fp : float
		    Merit function value at next position
		Fp : ndarray
		    Residual at next position
		
		References
		----------
		[1] "Spectral residual method without gradient information for solving
		    large-scale nonlinear systems of equations." W. La Cruz,
		    J.M. Martinez, M. Raydan. Math. Comp. **75**, 1429 (2006).
	**/
	static public function _nonmonotone_line_search_cruz(f:Dynamic, x_k:Dynamic, d:Dynamic, prev_fs:Dynamic, eta:Dynamic, ?gamma:Dynamic, ?tau_min:Dynamic, ?tau_max:Dynamic):Float;
	static public function _real2complex(x:Dynamic):Dynamic;
	/**
		Solve nonlinear equation with the DF-SANE method
		
		Options
		-------
		ftol : float, optional
		    Relative norm tolerance.
		fatol : float, optional
		    Absolute norm tolerance.
		    Algorithm terminates when ``||func(x)|| < fatol + ftol ||func(x_0)||``.
		fnorm : callable, optional
		    Norm to use in the convergence check. If None, 2-norm is used.
		maxfev : int, optional
		    Maximum number of function evaluations.
		disp : bool, optional
		    Whether to print convergence process to stdout.
		eta_strategy : callable, optional
		    Choice of the ``eta_k`` parameter, which gives slack for growth
		    of ``||F||**2``.  Called as ``eta_k = eta_strategy(k, x, F)`` with
		    `k` the iteration number, `x` the current iterate and `F` the current
		    residual. Should satisfy ``eta_k > 0`` and ``sum(eta, k=0..inf) < inf``.
		    Default: ``||F||**2 / (1 + k)**2``.
		sigma_eps : float, optional
		    The spectral coefficient is constrained to ``sigma_eps < sigma < 1/sigma_eps``.
		    Default: 1e-10
		sigma_0 : float, optional
		    Initial spectral coefficient.
		    Default: 1.0
		M : int, optional
		    Number of iterates to include in the nonmonotonic line search.
		    Default: 10
		line_search : {'cruz', 'cheng'}
		    Type of line search to employ. 'cruz' is the original one defined in
		    [Martinez & Raydan. Math. Comp. 75, 1429 (2006)], 'cheng' is
		    a modified search defined in [Cheng & Li. IMA J. Numer. Anal. 29, 814 (2009)].
		    Default: 'cruz'
		
		References
		----------
		.. [1] "Spectral residual method without gradient information for solving
		       large-scale nonlinear systems of equations." W. La Cruz,
		       J.M. Martinez, M. Raydan. Math. Comp. **75**, 1429 (2006).
		.. [2] W. La Cruz, Opt. Meth. Software, 29, 24 (2014).
		.. [3] W. Cheng, D.-H. Li. IMA J. Numer. Anal. **29**, 814 (2009).
	**/
	static public function _root_df_sane(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?ftol:Dynamic, ?fatol:Dynamic, ?maxfev:Dynamic, ?fnorm:Dynamic, ?callback:Dynamic, ?disp:Dynamic, ?M:Dynamic, ?eta_strategy:Dynamic, ?sigma_eps:Dynamic, ?sigma_0:Dynamic, ?line_search:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrap a function and an initial value so that (i) complex values
		are wrapped to reals, and (ii) value for a merit function
		fmerit(x, f) is computed at the same time, (iii) iteration count
		is maintained and an exception is raised if it is exceeded.
		
		Parameters
		----------
		func : callable
		    Function to wrap
		x0 : ndarray
		    Initial value
		fmerit : callable
		    Merit function fmerit(f) for computing merit value from residual.
		nfev_list : list
		    List to store number of evaluations in. Should be [0] in the beginning.
		maxfev : int
		    Maximum number of evaluations before _NoConvergence is raised.
		args : tuple
		    Extra arguments to func
		
		Returns
		-------
		wrap_func : callable
		    Wrapped function, to be called as
		    ``F, fp = wrap_func(x0)``
		x0_wrap : ndarray of float
		    Wrapped initial value; raveled to 1D and complex
		    values mapped to reals.
		x0_shape : tuple
		    Shape of the initial value array
		f : float
		    Merit function at F
		F : ndarray of float
		    Residual at x0_wrap
		is_complex : bool
		    Whether complex values were mapped to reals
	**/
	static public function _wrap_func(func:Dynamic, x0:Dynamic, fmerit:Dynamic, nfev_list:Dynamic, maxfev:Dynamic, ?args:Dynamic):haxe.Constraints.Function;
	/**
		Convert from real to complex and reshape result arrays.
	**/
	static public function _wrap_result(result:Dynamic, is_complex:Dynamic, ?shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}