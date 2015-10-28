/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "ufunc") extern class Ufunc {
	public function accumulate(array:Dynamic, ?axis:Dynamic, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function at(a:Dynamic, indices:Dynamic, ?b:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var identity : Dynamic;
	public var nargs : Dynamic;
	public var nin : Dynamic;
	public var nout : Dynamic;
	public var ntypes : Dynamic;
	public function outer(A:Dynamic, B:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function reduce(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic = null, ?out:Dynamic = null, ?keepdims:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function reduceat(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?dtype:Dynamic = null, ?out:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var types : Dynamic;
}