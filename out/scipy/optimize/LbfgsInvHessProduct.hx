/* This file is generated, do not edit! */
package scipy.optimize;
@:native("scipy.optimize.LbfgsInvHessProduct") extern class LbfgsInvHessProduct {
	private function __call__(x:Dynamic):Void;
	public function adjoint():Dynamic;
	public function dot(x:Dynamic):Dynamic;
	public var H : Dynamic;
	public function matmat(X:Dynamic):Dynamic;
	public function matvec(x:Dynamic):Dynamic;
	public function rmatvec(x:Dynamic):Dynamic;
	public var T : Dynamic;
	public function todense():Dynamic;
	public function transpose():Void;
}