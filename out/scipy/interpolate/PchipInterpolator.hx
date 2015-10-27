/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.PchipInterpolator") extern class PchipInterpolator {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?extrapolate:Dynamic = null):Dynamic;
	public function antiderivative(?nu:Dynamic):Dynamic;
	public var axis : Dynamic;
	public var c : Dynamic;
	public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic = null, ?axis:Dynamic):Void;
	public function derivative(?nu:Dynamic):Dynamic;
	public function extend(c:Dynamic, x:Dynamic, ?right:Dynamic = true):Void;
	public var extrapolate : Dynamic;
	public function from_derivatives(xi:Dynamic, yi:Dynamic, ?orders:Dynamic = null, ?extrapolate:Dynamic = null):Void;
	public function from_power_basis(pp:Dynamic, ?extrapolate:Dynamic = null):Void;
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic = null):Dynamic;
	public function roots():Void;
	public var x : Dynamic;
}