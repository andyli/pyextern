/* This file is generated, do not edit! */
package scipy.interpolate;
@:native("scipy.interpolate.PiecewisePolynomial") extern class PiecewisePolynomial {
	private function __call__(x:Dynamic):Dynamic;
	public function append(xi:Dynamic, yi:Dynamic, ?order:Dynamic = null):Void;
	public function derivative(x:Dynamic, ?der:Dynamic):Dynamic;
	public function derivatives(x:Dynamic, ?der:Dynamic = null):Dynamic;
	public var dtype : Dynamic;
	public function extend(xi:Dynamic, yi:Dynamic, ?orders:Dynamic = null):Void;
}