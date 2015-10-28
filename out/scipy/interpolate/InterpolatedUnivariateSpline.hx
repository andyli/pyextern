/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "InterpolatedUnivariateSpline") extern class InterpolatedUnivariateSpline {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?ext:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function antiderivative(?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivative(?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivatives(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_coeffs(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_knots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_residual(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integral(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function roots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_smoothing_factor(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}