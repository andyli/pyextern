/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "PiecewisePolynomial") extern class PiecewisePolynomial {
	private function __call__(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function append(xi:Dynamic, yi:Dynamic, ?order:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivative(x:Dynamic, ?der:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivatives(x:Dynamic, ?der:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var dtype : Dynamic;
	public function extend(xi:Dynamic, yi:Dynamic, ?orders:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}