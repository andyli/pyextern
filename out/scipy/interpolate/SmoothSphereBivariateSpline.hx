/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "SmoothSphereBivariateSpline") extern class SmoothSphereBivariateSpline {
	private function __call__(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic, ?grid:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ev(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_coeffs(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_knots(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_residual(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}