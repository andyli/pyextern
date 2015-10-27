/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.RectSphereBivariateSpline") extern class RectSphereBivariateSpline {
	private function __call__(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic, ?grid:Dynamic = true):Void;
	public function ev(theta:Dynamic, phi:Dynamic, ?dtheta:Dynamic, ?dphi:Dynamic):Void;
	public function get_coeffs():Void;
	public function get_knots():Void;
	public function get_residual():Void;
}