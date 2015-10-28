/* This file is generated, do not edit! */
package scipy.cluster;
@:pythonImport("scipy.cluster.vq") extern class Vq {
	static public function kmeans(obs:Dynamic, k_or_guess:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?check_finite:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function kmeans2(data:Dynamic, k:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?minit:Dynamic, ?missing:Dynamic, ?check_finite:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function whiten(obs:Dynamic, ?check_finite:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}