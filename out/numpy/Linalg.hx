/* This file is generated, do not edit! */
package numpy;
@:native("numpy.linalg") extern class Linalg {
	static public function cholesky(a:Dynamic):Dynamic;
	static public function cond(x:Dynamic, ?p:Dynamic = null):Dynamic;
	static public function det(a:Dynamic):Dynamic;
	static public function eig(a:Dynamic):Dynamic;
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	static public function eigvals(a:Dynamic):Dynamic;
	static public function eigvalsh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	static public function inv(a:Dynamic):Dynamic;
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	static public function matrix_power(M:Dynamic, n:Dynamic):Dynamic;
	static public function matrix_rank(M:Dynamic, ?tol:Dynamic = null):Void;
	static public function norm(x:Dynamic, ?ord:Dynamic = null, ?axis:Dynamic = null, ?keepdims:Dynamic = false):Dynamic;
	static public function pinv(a:Dynamic, ?rcond:Dynamic):Dynamic;
	static public function qr(a:Dynamic, ?mode:Dynamic):Dynamic;
	static public function slogdet(a:Dynamic):Dynamic;
	static public function solve(a:Dynamic, b:Dynamic):Dynamic;
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
	static public function tensorinv(a:Dynamic, ?ind:Dynamic):Dynamic;
	static public function tensorsolve(a:Dynamic, b:Dynamic, ?axes:Dynamic = null):Dynamic;
}