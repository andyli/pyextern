/* This file is generated, do not edit! */
package numpy.polynomial.laguerre;
@:native("numpy.polynomial.laguerre.Laguerre") extern class Laguerre {
	private function __call__(arg:Dynamic):Void;
	public function basis(deg:Dynamic, ?domain:Dynamic = null, ?window:Dynamic = null):Dynamic;
	@:native("cast")
	public function _cast(series:Dynamic, ?domain:Dynamic = null, ?window:Dynamic = null):Dynamic;
	public function convert(?domain:Dynamic = null, ?kind:Dynamic = null, ?window:Dynamic = null):Dynamic;
	public function copy():Dynamic;
	public function cutdeg(deg:Dynamic):Dynamic;
	public function degree():Dynamic;
	public function deriv(?m:Dynamic):Dynamic;
	public var domain : Dynamic;
	public function fit(x:Dynamic, y:Dynamic, deg:Dynamic, ?domain:Dynamic = null, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?window:Dynamic = null):Dynamic;
	public function fromroots(roots:Dynamic, ?domain:Dynamic, ?window:Dynamic = null):Dynamic;
	public function has_samecoef(other:Dynamic):Dynamic;
	public function has_samedomain(other:Dynamic):Dynamic;
	public function has_sametype(other:Dynamic):Dynamic;
	public function has_samewindow(other:Dynamic):Dynamic;
	public function identity(?domain:Dynamic = null, ?window:Dynamic = null):Dynamic;
	public function integ(?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic = null):Dynamic;
	public function linspace(?n:Dynamic, ?domain:Dynamic = null):Dynamic;
	public function mapparms():Dynamic;
	public var maxpower : Dynamic;
	public var nickname : Dynamic;
	public function roots():Dynamic;
	public function trim(?tol:Dynamic):Dynamic;
	public function truncate(size:Dynamic):Dynamic;
	public var window : Dynamic;
}