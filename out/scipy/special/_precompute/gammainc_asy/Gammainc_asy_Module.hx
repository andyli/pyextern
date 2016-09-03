/* This file is generated, do not edit! */
package scipy.special._precompute.gammainc_asy;
@:pythonImport("scipy.special._precompute.gammainc_asy") extern class Gammainc_asy_Module {
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
		a_k from DLMF 5.11.6
	**/
	static public function compute_a(n:Dynamic):Dynamic;
	/**
		alpha_n from DLMF 8.12.13
	**/
	static public function compute_alpha(n:Dynamic):Dynamic;
	/**
		d_{k, n} from DLMF 8.12.12
	**/
	static public function compute_d(K:Dynamic, N:Dynamic):Dynamic;
	/**
		g_k from DLMF 5.11.3/5.11.5
	**/
	static public function compute_g(n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Function from DLMF 8.12.1 shifted to be centered at 0.
	**/
	static public function eta(lam:Dynamic):Dynamic;
	static public var footer : Dynamic;
	static public var header : Dynamic;
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
	static public function main():Dynamic;
	static public var print_function : Dynamic;
}