/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.params_ops;
@:pythonImport("tensorflow.contrib.specs.python.params_ops") extern class Params_ops_Module {
	/**
		Log-uniform distributed floatint point number.
	**/
	static public function Lf(lo:Dynamic, hi:Dynamic):Dynamic;
	/**
		Log-uniform distributed integer, inclusive limits.
	**/
	static public function Li(lo:Dynamic, hi:Dynamic):Dynamic;
	static public var NEGATIVE_INFINITY : Dynamic;
	static public var NaN : Dynamic;
	/**
		Normally distributed floating point number with truncation.
	**/
	static public function Nt(mu:Dynamic, sigma:Dynamic, ?limit:Dynamic):Dynamic;
	static public var PI : Dynamic;
	static public var POSITIVE_INFINITY : Dynamic;
	/**
		Uniformly distributed floating number.
	**/
	static public function Uf(?lo:Dynamic, ?hi:Dynamic):Dynamic;
	/**
		Uniformly distributed integer, inclusive limits.
	**/
	static public function Ui(lo:Dynamic, hi:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		acos(x)
		
		Return the arc cosine (measured in radians) of x.
	**/
	static public function acos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acosh(x)
		
		Return the inverse hyperbolic cosine of x.
	**/
	static public function acosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asin(x)
		
		Return the arc sine (measured in radians) of x.
	**/
	static public function asin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asinh(x)
		
		Return the inverse hyperbolic sine of x.
	**/
	static public function asinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan(x)
		
		Return the arc tangent (measured in radians) of x.
	**/
	static public function atan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan2(y, x)
		
		Return the arc tangent (measured in radians) of y/x.
		Unlike atan(y/x), the signs of both x and y are considered.
	**/
	static public function atan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atanh(x)
		
		Return the inverse hyperbolic tangent of x.
	**/
	static public function atanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copysign(x, y)
		
		Return a float with the magnitude (absolute value) of x but the sign 
		of y. On platforms that support signed zeros, copysign(1.0, -0.0) 
		returns -1.0.
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos(x)
		
		Return the cosine of x (measured in radians).
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x)
		
		Return the hyperbolic cosine of x.
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		degrees(x)
		
		Convert angle x from radians to degrees.
	**/
	static public function degrees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var e : Dynamic;
	/**
		erf(x)
		
		Error function at x.
	**/
	static public function erf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfc(x)
		
		Complementary error function at x.
	**/
	static public function erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp(x)
		
		Return e raised to the power of x.
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1(x)
		
		Return exp(x)-1.
		This function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fabs(x)
		
		Return the absolute value of the float x.
	**/
	static public function fabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		factorial(x) -> Integral
		
		Find x!. Raise a ValueError if x is negative or non-integral.
	**/
	static public function factorial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x)
		
		Return the floor of x as an Integral.
		This is the largest integer <= x.
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod(x, y)
		
		Return fmod(x, y), according to platform C.  x % y may differ.
	**/
	static public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frexp(x)
		
		Return the mantissa and exponent of x, as pair (m, e).
		m is a float and e is an int, such that x = m * 2.**e.
		If x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.
	**/
	static public function frexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fsum(iterable)
		
		Return an accurate floating point sum of values in the iterable.
		Assumes IEEE-754 floating point arithmetic.
	**/
	static public function fsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gamma(x)
		
		Gamma function at x.
	**/
	static public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gcd(x, y) -> int
		greatest common divisor of x and y
	**/
	static public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hypot(x, y)
		
		Return the Euclidean distance, sqrt(x*x + y*y).
	**/
	static public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
	/**
		isclose(a, b, *, rel_tol=1e-09, abs_tol=0.0) -> bool
		
		Determine whether two floating point numbers are close in value.
		
		   rel_tol
		       maximum difference for being considered "close", relative to the
		       magnitude of the input values
		    abs_tol
		       maximum difference for being considered "close", regardless of the
		       magnitude of the input values
		
		Return True if a is close in value to b, and False otherwise.
		
		For the values to be considered close, the difference between them
		must be smaller than at least one of the tolerances.
		
		-inf, inf and NaN behave similarly to the IEEE 754 Standard.  That
		is, NaN is not close to anything, even itself.  inf and -inf are
		only close to themselves.
	**/
	static public function isclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isfinite(x) -> bool
		
		Return True if x is neither an infinity nor a NaN, and False otherwise.
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isinf(x) -> bool
		
		Return True if x is a positive or negative infinity, and False otherwise.
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x) -> bool
		
		Return True if x is a NaN (not a number), and False otherwise.
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp(x, i)
		
		Return x * (2**i).
	**/
	static public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lgamma(x)
		
		Natural logarithm of absolute value of Gamma function at x.
	**/
	static public function lgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log(x[, base])
		
		Return the logarithm of x to the given base.
		If the base not specified, returns the natural logarithm (base e) of x.
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10(x)
		
		Return the base 10 logarithm of x.
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x)
		
		Return the natural logarithm of 1+x (base e).
		The result is computed in a way which is accurate for x near zero.
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2(x)
		
		Return the base 2 logarithm of x.
	**/
	static public function log2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modf(x)
		
		Return the fractional and integer parts of x.  Both results carry the sign
		of x and are floats.
	**/
	static public function modf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
	static public var pi : Dynamic;
	/**
		pow(x, y)
		
		Return x**y (x to the power of y).
	**/
	static public function pow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		radians(x)
		
		Convert angle x from degrees to radians.
	**/
	static public function radians(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin(x)
		
		Return the sine of x (measured in radians).
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh(x)
		
		Return the hyperbolic sine of x.
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt(x)
		
		Return the square root of x.
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tan(x)
		
		Return the tangent of x (measured in radians).
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh(x)
		
		Return the hyperbolic tangent of x.
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var tau : Dynamic;
	/**
		trunc(x:Real) -> Integral
		
		Truncates x to the nearest Integral toward 0. Uses the __trunc__ magic method.
	**/
	static public function trunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}