/* This file is generated, do not edit! */
package tensorflow.contrib.integrate.python.ops.odes;
@:pythonImport("tensorflow.contrib.integrate.python.ops.odes") extern class Odes_Module {
	static public var _DORMAND_PRINCE_TABLEAU : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _abs_square(x:Dynamic):Dynamic;
	static public function _assert_increasing(t:Dynamic):Dynamic;
	static public function _check_input_sizes(t:Dynamic, dt:Dynamic):Dynamic;
	static public function _check_input_types(y0:Dynamic, t:Dynamic, ?dt:Dynamic):Dynamic;
	/**
		Solve an ODE for `odeint` using method='dopri5'.
	**/
	static public function _dopri5(func:Dynamic, y0:Dynamic, t:Dynamic, rtol:Dynamic, atol:Dynamic, ?full_output:Dynamic, ?first_step:Dynamic, ?safety:Dynamic, ?ifactor:Dynamic, ?dfactor:Dynamic, ?max_num_steps:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the vector inner product between two lists of Tensors.
	**/
	static public function _dot_product(xs:Dynamic, ys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Evaluate polynomial interpolation at the given time point.
		
		Args:
		  coefficients: list of Tensor coefficients as created by `interp_fit`.
		  t0: scalar float64 Tensor giving the start of the interval.
		  t1: scalar float64 Tensor giving the end of the interval.
		  t: scalar float64 Tensor giving the desired interpolation point.
		
		Returns:
		  Polynomial interpolation of the coefficients at time `t`.
	**/
	static public function _interp_evaluate(coefficients:Dynamic, t0:Dynamic, t1:Dynamic, t:Dynamic):Dynamic;
	/**
		Fit coefficients for 4th order polynomial interpolation.
		
		Args:
		  y0: function value at the start of the interval.
		  y1: function value at the end of the interval.
		  y_mid: function value at the mid-point of the interval.
		  f0: derivative value at the start of the interval.
		  f1: derivative value at the end of the interval.
		  dt: width of the interval.
		
		Returns:
		  List of coefficients `[a, b, c, d, e]` for interpolating with the polynomial
		  `p = a * x ** 4 + b * x ** 3 + c * x ** 2 + d * x + e` for values of `x`
		  between 0 (start of interval) and 1 (end of interval).
	**/
	static public function _interp_fit(y0:Dynamic, y1:Dynamic, y_mid:Dynamic, f0:Dynamic, f1:Dynamic, dt:Dynamic):Dynamic;
	/**
		Fit an interpolating polynomial to the results of a Runge-Kutta step.
	**/
	static public function _interp_fit_rk(y0:Dynamic, y1:Dynamic, k:Dynamic, dt:Dynamic, ?tableau:Dynamic):Dynamic;
	/**
		Calculate the optimal size for the next Runge-Kutta step.
	**/
	static public function _optimal_step_size(last_step:Dynamic, error_ratio:Dynamic, ?safety:Dynamic, ?ifactor:Dynamic, ?dfactor:Dynamic, ?order:Dynamic, ?name:Dynamic):Dynamic;
	static public function _possibly_nonzero(x:Dynamic):Dynamic;
	/**
		Take an arbitrary Runge-Kutta step and estimate error.
		
		Args:
		  func: Function to evaluate like `func(y, t)` to compute the time derivative
		    of `y`.
		  y0: Tensor initial value for the state.
		  f0: Tensor initial value for the derivative, computed from `func(y0, t0)`.
		  t0: float64 scalar Tensor giving the initial time.
		  dt: float64 scalar Tensor giving the size of the desired time step.
		  tableau: optional _ButcherTableau describing how to take the Runge-Kutta
		    step.
		  name: optional name for the operation.
		
		Returns:
		  Tuple `(y1, f1, y1_error, k)` giving the estimated function value after
		  the Runge-Kutta step at `t1 = t0 + dt`, the derivative of the state at `t1`,
		  estimated error at `t1`, and a list of Runge-Kutta coefficients `k` used for
		  calculating these terms.
	**/
	static public function _runge_kutta_step(func:Dynamic, y0:Dynamic, f0:Dynamic, t0:Dynamic, dt:Dynamic, ?tableau:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate a scaled, vector inner product between lists of Tensors.
	**/
	static public function _scaled_dot_product(scale:Dynamic, xs:Dynamic, ys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Append a value to the end of a tf.TensorArray.
	**/
	static public function _ta_append(tensor_array:Dynamic, value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Integrate a system of ordinary differential equations.
		
		Solves the initial value problem for a non-stiff system of first order ODEs:
		
		  ```
		  dy/dt = func(y, t), y(t[0]) = y0
		  ```
		
		where y is a Tensor of any shape.
		
		For example:
		
		  ```
		  # solve `dy/dt = -y`, corresponding to exponential decay
		  tf.contrib.integrate.odeint(lambda y, _: -y, 1.0, [0, 1, 2])
		  => [1, exp(-1), exp(-2)]
		  ```
		
		Output dtypes and numerical precision are based on the dtypes of the inputs
		`y0` and `t`.
		
		Currently, implements 5th order Runge-Kutta with adaptive step size control
		and dense output, using the Dormand-Prince method. Similar to the 'dopri5'
		method of `scipy.integrate.ode` and MATLAB's `ode45`.
		
		Based on: Shampine, Lawrence F. (1986), "Some Practical Runge-Kutta Formulas",
		Mathematics of Computation, American Mathematical Society, 46 (173): 135-150,
		doi:10.2307/2008219
		
		Args:
		  func: Function that maps a Tensor holding the state `y` and a scalar Tensor
		    `t` into a Tensor of state derivatives with respect to time.
		  y0: N-D Tensor giving starting value of `y` at time point `t[0]`. May
		    have any floating point or complex dtype.
		  t: 1-D Tensor holding a sequence of time points for which to solve for
		    `y`. The initial time point should be the first element of this sequence,
		    and each time must be larger than the previous time. May have any floating
		    point dtype. If not provided as a Tensor, converted to a Tensor with
		    float64 dtype.
		  rtol: optional float64 Tensor specifying an upper bound on relative error,
		    per element of `y`.
		  atol: optional float64 Tensor specifying an upper bound on absolute error,
		    per element of `y`.
		  method: optional string indicating the integration method to use. Currently,
		    the only valid option is `'dopri5'`.
		  options: optional dict of configuring options for the indicated integration
		    method. Can only be provided if a `method` is explicitly set. For
		    `'dopri5'`, valid options include:
		    * first_step: an initial guess for the size of the first integration
		      (current default: 1.0, but may later be changed to use heuristics based
		      on the gradient).
		    * safety: safety factor for adaptive step control, generally a constant
		      in the range 0.8-1 (default: 0.9).
		    * ifactor: maximum factor by which the adaptive step may be increased
		      (default: 10.0).
		    * dfactor: maximum factor by which the adpative step may be decreased
		      (default: 0.2).
		    * max_num_steps: integer maximum number of integrate steps between time
		      points in `t` (default: 1000).
		  full_output: optional boolean. If True, `odeint` returns a tuple
		    `(y, info_dict)` describing the integration process.
		  name: Optional name for this operation.
		
		Returns:
		  y: (N+1)-D tensor, where the first dimension corresponds to different
		    time points. Contains the solved value of y for each desired time point in
		    `t`, with the initial value `y0` being the first element along the first
		    dimension.
		  info_dict: only if `full_output == True`. A dict with the following values:
		    * num_func_evals: integer Tensor counting the number of function
		      evaluations.
		    * integrate_points: 1D float64 Tensor with the upper bound of each
		      integration time step.
		    * error_ratio: 1D float Tensor with the estimated ratio of the integration
		      error to the error tolerance at each integration step. An ratio greater
		      than 1 corresponds to rejected steps.
		
		Raises:
		  ValueError: if an invalid `method` is provided.
		  TypeError: if `options` is supplied without `method`, or if `t` or `y0` has
		    an invalid dtype.
	**/
	static public function odeint(func:Dynamic, y0:Dynamic, t:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?method:Dynamic, ?options:Dynamic, ?full_output:Dynamic, ?name:Dynamic):Dynamic;
	/**
		ODE integration on a fixed grid (with no step size control).
		
		Useful in certain scenarios to avoid the overhead of adaptive step size
		control, e.g. when differentiation of the integration result is desired and/or
		the time grid is known a priori to be sufficient.
		
		Args:
		  func: Function that maps a Tensor holding the state `y` and a scalar Tensor
		    `t` into a Tensor of state derivatives with respect to time.
		  y0: N-D Tensor giving starting value of `y` at time point `t[0]`.
		  t: 1-D Tensor holding a sequence of time points for which to solve for
		    `y`. The initial time point should be the first element of this sequence,
		    and each time must be larger than the previous time. May have any floating
		    point dtype.
		  dt: 0-D or 1-D Tensor providing time step suggestion to be used on time
		    integration intervals in `t`. 1-D Tensor should provide values
		    for all intervals, must have 1 less element than that of `t`.
		    If given a 0-D Tensor, the value is interpreted as time step suggestion
		    same for all intervals. If passed None, then time step is set to be the
		    t[1:] - t[:-1]. Defaults to None. The actual step size is obtained by
		    insuring an integer number of steps per interval, potentially reducing the
		    time step.
		  method: One of 'midpoint' or 'rk4'.
		  name: Optional name for the resulting operation.
		
		Returns:
		  y: (N+1)-D tensor, where the first dimension corresponds to different
		    time points. Contains the solved value of y for each desired time point in
		    `t`, with the initial value `y0` being the first element along the first
		    dimension.
		
		Raises:
		  ValueError: Upon caller errors.
	**/
	static public function odeint_fixed(func:Dynamic, y0:Dynamic, t:Dynamic, ?dt:Dynamic, ?method:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}