/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats.vonmises_cython") extern class Vonmises_cython {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		i0(x[, out])
		
		i0(x)
		
		Modified Bessel function of order 0
	**/
	static public function i0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i0e(x[, out])
		
		i0e(x)
		
		Exponentially scaled modified Bessel function of order 0.
		
		Defined as::
		
		    i0e(x) = exp(-abs(x)) * i0(x).
	**/
	static public function i0e(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function von_mises_cdf(args:haxe.extern.Rest<Dynamic>):Dynamic;
}