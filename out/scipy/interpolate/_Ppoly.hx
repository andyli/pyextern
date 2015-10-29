/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate._ppoly") extern class _Ppoly {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Find roots of polynomials.
		
		This function is for testing croots_poly1
		
		Parameters
		----------
		c : ndarray, (k, m, n)
		    Coefficients of several order-k polynomials
		w : ndarray, (k, m, n)
		    Output argument --- roots of the polynomials.
	**/
	static public function _croots_poly1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evaluate a piecewise polynomial.
		
		Parameters
		----------
		c : ndarray, shape (k, m, n)
		    Coefficients local polynomials of order `k-1` in `m` intervals.
		    There are `n` polynomials in each interval.
		    Coefficient of highest order-term comes first.
		x : ndarray, shape (m+1,)
		    Breakpoints of polynomials
		xp : ndarray, shape (r,)
		    Points to evaluate the piecewise polynomial at.
		dx : int
		    Order of derivative to evaluate.  The derivative is evaluated
		    piecewise and may have discontinuities.
		extrapolate : int, optional
		    Whether to extrapolate to ouf-of-bounds points based on first
		    and last intervals, or to return NaNs.
		out : ndarray, shape (r, n)
		    Value of each polynomial at each of the input points.
		    This argument is modified in-place.
	**/
	static public function evaluate(c:Dynamic, x:Dynamic, xp:Dynamic, dx:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	/**
		Evaluate a piecewise polynomial in the Bernstein basis.
		
		Parameters
		----------
		c : ndarray, shape (k, m, n)
		    Coefficients local polynomials of order `k-1` in `m` intervals.
		    There are `n` polynomials in each interval.
		    Coefficient of highest order-term comes first.
		x : ndarray, shape (m+1,)
		    Breakpoints of polynomials
		xp : ndarray, shape (r,)
		    Points to evaluate the piecewise polynomial at.
		nu : int
		    Order of derivative to evaluate.  The derivative is evaluated
		    piecewise and may have discontinuities.
		extrapolate : int, optional
		    Whether to extrapolate to ouf-of-bounds points based on first
		    and last intervals, or to return NaNs.
		out : ndarray, shape (r, n)
		    Value of each polynomial at each of the input points.
		    This argument is modified in-place.
	**/
	static public function evaluate_bernstein(c:Dynamic, x:Dynamic, xp:Dynamic, nu:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	/**
		Make a piecewise polynomial continuously differentiable to given order.
		
		Parameters
		----------
		c : ndarray, shape (k, m, n)
		    Coefficients local polynomials of order `k-1` in `m` intervals.
		    There are `n` polynomials in each interval.
		    Coefficient of highest order-term comes first.
		
		    Coefficients c[-order-1:] are modified in-place.
		x : ndarray, shape (m+1,)
		    Breakpoints of polynomials
		order : int
		    Order up to which enforce piecewise differentiability.
	**/
	static public function fix_continuity(c:Dynamic, x:Dynamic, order:Dynamic):Dynamic;
	/**
		Compute integral over a piecewise polynomial.
		
		Parameters
		----------
		c : ndarray, shape (k, m, n)
		    Coefficients local polynomials of order `k-1` in `m` intervals.
		x : ndarray, shape (m+1,)
		    Breakpoints of polynomials
		a : double
		    Start point of integration.
		b : double
		    End point of integration.
		extrapolate : int, optional
		    Whether to extrapolate to ouf-of-bounds points based on first
		    and last intervals, or to return NaNs.
		out : ndarray, shape (n,)
		    Integral of the piecewise polynomial, assuming the polynomial
		    is zero outside the range (x[0], x[-1]).
		    This argument is modified in-place.
	**/
	static public function integrate(c:Dynamic, x:Dynamic, a:Dynamic, b:Dynamic, extrapolate:Dynamic, out:Dynamic):Dynamic;
	/**
		Compute real roots of a real-valued piecewise polynomial function.
		
		If a section of the piecewise polynomial is identically zero, the
		values (x[begin], nan) are appended to the root list.
		
		If the piecewise polynomial is not continuous, and the sign
		changes across a breakpoint, the breakpoint is added to the root
		set if `report_discont` is True.
		
		Parameters
		----------
		c, x
		    Polynomial coefficients, as above
		report_discont : int, optional
		    Whether to report discontinuities across zero at breakpoints
		    as roots
		extrapolate : int, optional
		    Whether to consider roots obtained by extrapolating based
		    on first and last intervals.
	**/
	static public function real_roots(args:haxe.extern.Rest<Dynamic>):Dynamic;
}