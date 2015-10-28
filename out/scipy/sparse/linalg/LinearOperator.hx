/* This file is generated, do not edit! */
package scipy.sparse.linalg;
@:pythonImport("scipy.sparse.linalg", "LinearOperator") extern class LinearOperator {
	private function __call__(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function adjoint(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function dot(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var H : Dynamic;
	public function matmat(X:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function matvec(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function rmatvec(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var T : Dynamic;
	public function transpose(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}