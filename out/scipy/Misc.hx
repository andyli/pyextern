/* This file is generated, do not edit! */
package scipy;
@:native("scipy.misc") extern class Misc {
	static public function ascent():Dynamic;
	static public function central_diff_weights(Np:Dynamic, ?ndiv:Dynamic):Void;
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic = false, ?repetition:Dynamic = false):Dynamic;
	static public function derivative(func:Dynamic, x0:Dynamic, ?dx:Dynamic, ?n:Dynamic):Void;
	static public function face(?gray:Dynamic = false):Dynamic;
	static public function factorial(n:Dynamic, ?exact:Dynamic = false):Dynamic;
	static public function factorial2(n:Dynamic, ?exact:Dynamic = false):Dynamic;
	static public function factorialk(n:Dynamic, k:Dynamic, ?exact:Dynamic = true):Dynamic;
	static public function info(?object:Dynamic = null, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic):Void;
	static public function lena():Dynamic;
	static public function logsumexp(a:Dynamic, ?axis:Dynamic = null, ?b:Dynamic = null, ?keepdims:Dynamic = false):Dynamic;
	static public function pade(an:Dynamic, m:Dynamic):Dynamic;
	static public function who(?vardict:Dynamic = null):Dynamic;
}