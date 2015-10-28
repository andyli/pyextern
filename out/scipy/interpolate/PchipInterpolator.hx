/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "PchipInterpolator") extern class PchipInterpolator {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function antiderivative(?nu:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var axis : Dynamic;
	public var c : Dynamic;
	public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic = null, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivative(?nu:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function extend(c:Dynamic, x:Dynamic, ?right:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var extrapolate : Dynamic;
	public function from_derivatives(xi:Dynamic, yi:Dynamic, ?orders:Dynamic = null, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function from_power_basis(pp:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function roots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var x : Dynamic;
}