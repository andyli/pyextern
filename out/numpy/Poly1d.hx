/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "poly1d") extern class Poly1d {
	private function __call__(val:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var coeffs : Dynamic;
	public function deriv(?m:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integ(?m:Dynamic, ?k:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var order : Dynamic;
	public var variable : Dynamic;
}