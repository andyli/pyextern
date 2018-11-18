/* This file is generated, do not edit! */
package scipy.special._precompute.utils;
@:pythonImport("scipy.special._precompute.utils") extern class Utils_Module {
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
		Given a series
		
		f(x) = a[1]*x + a[2]*x**2 + ... + a[n-1]*x**(n - 1),
		
		use the Lagrange inversion formula to compute a series
		
		g(x) = b[1]*x + b[2]*x**2 + ... + b[n-1]*x**(n - 1)
		
		so that f(g(x)) = g(f(x)) = x mod x**n. We must have a[0] = 0, so
		necessarily b[0] = 0 too.
		
		The algorithm is naive and could be improved, but speed isn't an
		issue here and it's easy to read.
	**/
	static public function lagrange_inversion(a:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function sup(func:Dynamic):Dynamic;
}