/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy.linalg") extern class Linalg {
	static public function cholesky(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cond(x:Dynamic, ?p:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function det(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eig(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigh(a:Dynamic, ?UPLO:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigvals(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inv(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matrix_power(M:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matrix_rank(M:Dynamic, ?tol:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function norm(x:Dynamic, ?ord:Dynamic = null, ?axis:Dynamic = null, ?keepdims:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pinv(a:Dynamic, ?rcond:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function qr(a:Dynamic, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function slogdet(a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function solve(a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tensorinv(a:Dynamic, ?ind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tensorsolve(a:Dynamic, b:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}