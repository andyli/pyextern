/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.LSQUnivariateSpline") extern class LSQUnivariateSpline {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?ext:Dynamic = null):Void;
	public function antiderivative(?n:Dynamic):Dynamic;
	public function derivative(?n:Dynamic):Dynamic;
	public function derivatives(x:Dynamic):Dynamic;
	public function get_coeffs():Void;
	public function get_knots():Void;
	public function get_residual():Void;
	public function integral(a:Dynamic, b:Dynamic):Dynamic;
	public function roots():Void;
	public function set_smoothing_factor(s:Dynamic):Void;
}