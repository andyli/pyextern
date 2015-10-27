/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.PPoly") extern class PPoly {
	private function __call__(x:Dynamic, ?nu:Dynamic, ?extrapolate:Dynamic = null):Dynamic;
	public function antiderivative(?nu:Dynamic):Dynamic;
	public var axis : Dynamic;
	public var c : Dynamic;
	public function construct_fast(c:Dynamic, x:Dynamic, ?extrapolate:Dynamic = null, ?axis:Dynamic):Void;
	public function derivative(?nu:Dynamic):Dynamic;
	public function extend(c:Dynamic, x:Dynamic, ?right:Dynamic = true):Void;
	public var extrapolate : Dynamic;
	static public function from_bernstein_basis(bp:Dynamic, ?extrapolate:Dynamic = null):Void;
	static public function from_spline(tck:Dynamic, ?extrapolate:Dynamic = null):Void;
	public function integrate(a:Dynamic, b:Dynamic, ?extrapolate:Dynamic = null):Dynamic;
	public function roots(?discontinuity:Dynamic = true, ?extrapolate:Dynamic = null):Dynamic;
	public var x : Dynamic;
}