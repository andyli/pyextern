/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate", "KroghInterpolator") extern class KroghInterpolator {
	private function __call__(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivative(x:Dynamic, ?der:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function derivatives(x:Dynamic, ?der:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var dtype : Dynamic;
}