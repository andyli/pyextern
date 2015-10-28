/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.sparse") extern class Sparse {
	static public function block_diag(mats:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bmat(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function diags(diagonals:Dynamic, offsets:Dynamic, ?shape:Dynamic = null, ?format:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eye(m:Dynamic, ?n:Dynamic = null, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function find(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hstack(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function identity(n:Dynamic, ?dtype:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function issparse(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_bsr(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_coo(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_csc(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_csr(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_dia(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_dok(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isspmatrix_lil(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function kron(A:Dynamic, B:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function kronsum(A:Dynamic, B:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rand(m:Dynamic, n:Dynamic, ?density:Dynamic, ?format:Dynamic, ?dtype:Dynamic = null, ?random_state:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function spdiags(data:Dynamic, diags:Dynamic, m:Dynamic, n:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tril(A:Dynamic, ?k:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function triu(A:Dynamic, ?k:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function vstack(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}