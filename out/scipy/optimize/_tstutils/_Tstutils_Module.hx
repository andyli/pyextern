/* This file is generated, do not edit! */
package scipy.optimize._tstutils;
@:pythonImport("scipy.optimize._tstutils") extern class _Tstutils_Module {
	static public var _APS_TESTS : Dynamic;
	static public var _APS_TESTS_DICTS : Dynamic;
	static public var _APS_TESTS_KEYS : Dynamic;
	static public var _COMPLEX_TESTS : Dynamic;
	static public var _COMPLEX_TESTS_DICTS : Dynamic;
	static public var _COMPLEX_TESTS_KEYS : Dynamic;
	static public var _MAX_EXPABLE : Dynamic;
	static public var _ORIGINAL_TESTS : Dynamic;
	static public var _ORIGINAL_TESTS_DICTS : Dynamic;
	static public var _ORIGINAL_TESTS_KEYS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add "a" and "b" keys to each test from the "bracket" value
	**/
	static public function _add_a_b(tests:Dynamic):Dynamic;
	static public var _f6_cache : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Straight forward sum of trigonometric function and polynomial
	**/
	static public function aps01_f(x:Dynamic):Dynamic;
	static public function aps01_fp(x:Dynamic):Dynamic;
	static public function aps01_fpp(x:Dynamic):Dynamic;
	/**
		poles at x=n**2, 1st and 2nd derivatives at root are also close to 0
	**/
	static public function aps02_f(x:Dynamic):Dynamic;
	static public function aps02_fp(x:Dynamic):Dynamic;
	static public function aps02_fpp(x:Dynamic):Dynamic;
	/**
		Rapidly changing at the root
	**/
	static public function aps03_f(x:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function aps03_fp(x:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function aps03_fpp(x:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	/**
		Medium-degree polynomial
	**/
	static public function aps04_f(x:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	static public function aps04_fp(x:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	static public function aps04_fpp(x:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	/**
		Simple Trigonometric function
	**/
	static public function aps05_f(x:Dynamic):Dynamic;
	static public function aps05_fp(x:Dynamic):Dynamic;
	static public function aps05_fpp(x:Dynamic):Dynamic;
	/**
		Exponential rapidly changing from -1 to 1 at x=0
	**/
	static public function aps06_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps06_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps06_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Upside down parabola with parametrizable height
	**/
	static public function aps07_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps07_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps07_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Degree n polynomial
	**/
	static public function aps08_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps08_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps08_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Upside down quartic with parametrizable height
	**/
	static public function aps09_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps09_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps09_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Exponential plus a polynomial
	**/
	static public function aps10_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps10_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps10_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Rational function with a zero at x=1/n and a pole at x=0
	**/
	static public function aps11_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps11_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps11_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		n-th root of x, with a zero at x=n
	**/
	static public function aps12_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps12_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps12_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Function with *all* derivatives 0 at the root
	**/
	static public function aps13_f(x:Dynamic):Dynamic;
	static public function aps13_fp(x:Dynamic):Dynamic;
	static public function aps13_fpp(x:Dynamic):Dynamic;
	/**
		0 for negative x-values, trigonometric+linear for x positive
	**/
	static public function aps14_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps14_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps14_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		piecewise linear, constant outside of [0, 0.002/(1+n)]
	**/
	static public function aps15_f(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps15_fp(x:Dynamic, n:Dynamic):Dynamic;
	static public function aps15_fpp(x:Dynamic, n:Dynamic):Dynamic;
	/**
		z**n-a:  Use to find the n-th root of a
	**/
	static public function cplx01_f(z:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	static public function cplx01_fp(z:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	static public function cplx01_fpp(z:Dynamic, n:Dynamic, a:Dynamic):Dynamic;
	/**
		e**z - a: Use to find the log of a
	**/
	static public function cplx02_f(z:Dynamic, a:Dynamic):Dynamic;
	static public function cplx02_fp(z:Dynamic, a:Dynamic):Dynamic;
	static public function cplx02_fpp(z:Dynamic, a:Dynamic):Dynamic;
	static public var description : Dynamic;
	static public var division : Dynamic;
	/**
		f1 is a quadratic with roots at 0 and 1
	**/
	static public function f1(x:Dynamic):Dynamic;
	static public function f1_fp(x:Dynamic):Dynamic;
	static public function f1_fpp(x:Dynamic):Dynamic;
	/**
		f2 is a symmetric parabola, x**2 - 1
	**/
	static public function f2(x:Dynamic):Dynamic;
	static public function f2_fp(x:Dynamic):Dynamic;
	static public function f2_fpp(x:Dynamic):Dynamic;
	/**
		A quartic with roots at 0, 1, 2 and 3
	**/
	static public function f3(x:Dynamic):Dynamic;
	static public function f3_fp(x:Dynamic):Dynamic;
	static public function f3_fpp(x:Dynamic):Dynamic;
	/**
		Piecewise linear, left and right discontinuous at x=1, the root.
	**/
	static public function f4(x:Dynamic):Dynamic;
	/**
		Hyperbola with a pole at x=1, but pole replaced with 0.  Not continuous at root.
	**/
	static public function f5(x:Dynamic):Dynamic;
	static public function f6(x:Dynamic):Dynamic;
	static public var fstrings : Dynamic;
	static public var functions : Dynamic;
	/**
		Return the requested collection of test cases, as an array of dicts with subset-specific keys
		
		Allowed values of collection:
		'original': The original benchmarking functions.
		     Real-valued functions of real-valued inputs on an interval with a zero.
		     f1, .., f3 are continuous and infinitely differentiable
		     f4 has a single discontinuity at the root
		     f5 has a root at 1 replacing a 1st order pole
		     f6 is randomly positive on one side of the root, randomly negative on the other
		'aps': The test problems in the TOMS "Algorithm 748: Enclosing Zeros of Continuous Functions"
		     paper by Alefeld, Potra and Shi.  Real-valued functions of
		     real-valued inputs on an interval with a zero.
		     Suitable for methods which start with an enclosing interval, and
		     derivatives up to 2nd order.
		'complex': Some complex-valued functions of complex-valued inputs.
		     No enclosing bracket is provided.
		     Suitable for methods which use one or more starting values, and
		     derivatives up to 2nd order.
		
		The dictionary keys will be a subset of
		["f", "fprime", "fprime2", "args", "bracket", "a", b", "smoothness", "x0", "x1", "root", "ID"]
		 
	**/
	static public function get_tests(?collection:Dynamic, ?smoothness:Dynamic):Dynamic;
	static public var methods : Dynamic;
	static public var mstrings : Dynamic;
	static public var print_function : Dynamic;
	/**
		random() -> x in the interval [0, 1).
	**/
	static public function random(args:haxe.extern.Rest<Dynamic>):Dynamic;
}