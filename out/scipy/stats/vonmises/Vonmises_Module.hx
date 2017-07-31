/* This file is generated, do not edit! */
package scipy.stats.vonmises;
@:pythonImport("scipy.stats.vonmises") extern class Vonmises_Module {
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
		i0(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		i0(x)
		
		Modified Bessel function of order 0.
		
		Defined as,
		
		.. math::
		    I_0(x) = \sum_{k=0}^\infty \frac{(x^2/4)^k}{(k!)^2} = J_0(\imath x),
		
		where :math:`J_0` is the Bessel function of the first kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the modified Bessel function of order 0 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `i0`.
		
		See also
		--------
		iv
		i0e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/index.html
	**/
	static public function i0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function von_mises_cdf(k:Dynamic, x:Dynamic):Dynamic;
	static public function von_mises_cdf_normalapprox(k:Dynamic, x:Dynamic):Dynamic;
	static public function von_mises_cdf_series(k:Dynamic, x:Dynamic, p:Dynamic):Dynamic;
}