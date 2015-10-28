/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "PPoly") extern class PPoly {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function antiderivative(?nu:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var axis : Dynamic;
	public var c : Dynamic;
	public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic = null, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivative(?nu:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function extend(c:Dynamic, x:Dynamic, ?right:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var extrapolate : Dynamic;
	static public function from_bernstein_basis(bp:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function from_spline(tck:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function roots(?discontinuity:Dynamic = true, ?extrapolate:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var x : Dynamic;
}