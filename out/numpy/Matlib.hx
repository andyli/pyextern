/* This file is generated, do not edit! */
package numpy;
@:native("numpy.matlib") extern class Matlib {
	static public function empty(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic):Void;
	static public function eye(n:Dynamic, ?M:Dynamic = null, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function identity(n:Dynamic, ?dtype:Dynamic = null):Dynamic;
	static public function ones(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic):Dynamic;
	static public function rand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function randn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function repmat(a:Dynamic, m:Dynamic, n:Dynamic):Dynamic;
	static public function zeros(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic):Dynamic;
}