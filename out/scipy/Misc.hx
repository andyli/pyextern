/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.misc") extern class Misc {
	static public function ascent(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function central_diff_weights(Np:Dynamic, ?ndiv:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic = false, ?repetition:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function derivative(func:Dynamic, x0:Dynamic, ?dx:Dynamic, ?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function face(?gray:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function factorial(n:Dynamic, ?exact:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function factorial2(n:Dynamic, ?exact:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function factorialk(n:Dynamic, k:Dynamic, ?exact:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function info(?object:Dynamic = null, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lena(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function logsumexp(a:Dynamic, ?axis:Dynamic = null, ?b:Dynamic = null, ?keepdims:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pade(an:Dynamic, m:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function who(?vardict:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}