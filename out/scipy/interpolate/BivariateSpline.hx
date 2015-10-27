/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.BivariateSpline") extern class BivariateSpline {
	private function __call__(x:Dynamic, y:Dynamic, ?mth:Dynamic = null, ?dx:Dynamic, ?dy:Dynamic, ?grid:Dynamic = true):Void;
	public function ev(xi:Dynamic, yi:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Void;
	public function get_coeffs():Void;
	public function get_knots():Void;
	public function get_residual():Void;
	public function integral(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic):Dynamic;
}