/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "BivariateSpline") extern class BivariateSpline {
	private function __call__(x:Dynamic, y:Dynamic, ?mth:Dynamic = null, ?dx:Dynamic, ?dy:Dynamic, ?grid:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ev(xi:Dynamic, yi:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_coeffs(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_knots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_residual(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integral(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}