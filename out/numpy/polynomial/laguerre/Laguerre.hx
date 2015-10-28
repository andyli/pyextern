/* This file is generated, do not edit! */
package numpy.polynomial.laguerre;
@:pythonImport("numpy.polynomial.laguerre", "Laguerre") extern class Laguerre {
	private function __call__(arg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function basis(deg:Dynamic, ?domain:Dynamic = null, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("cast")
	public function _cast(series:Dynamic, ?domain:Dynamic = null, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function convert(?domain:Dynamic = null, ?kind:Dynamic = null, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function copy(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function cutdeg(deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function degree(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function deriv(?m:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var domain : Dynamic;
	public function fit(x:Dynamic, y:Dynamic, deg:Dynamic, ?domain:Dynamic = null, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function fromroots(roots:Dynamic, ?domain:Dynamic, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function has_samecoef(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function has_samedomain(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function has_sametype(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function has_samewindow(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function identity(?domain:Dynamic = null, ?window:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integ(?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function linspace(?n:Dynamic, ?domain:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function mapparms(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var maxpower : Dynamic;
	public var nickname : Dynamic;
	public function roots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function trim(?tol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function truncate(size:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var window : Dynamic;
}