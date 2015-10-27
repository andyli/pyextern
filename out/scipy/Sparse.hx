/* This file is generated, do not edit! */
package scipy;
@:native("scipy.sparse") extern class Sparse {
	static public function block_diag(mats:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null):Dynamic;
	static public function bmat(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null):Dynamic;
	static public function diags(diagonals:Dynamic, offsets:Dynamic, ?shape:Dynamic = null, ?format:Dynamic = null, ?dtype:Dynamic = null):Void;
	static public function eye(m:Dynamic, ?n:Dynamic = null, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic = null):Void;
	static public function find(A:Dynamic):Dynamic;
	static public function hstack(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null):Void;
	static public function identity(n:Dynamic, ?dtype:Dynamic, ?format:Dynamic = null):Void;
	static public function issparse(x:Dynamic):Void;
	static public function isspmatrix(x:Dynamic):Void;
	static public function isspmatrix_bsr(x:Dynamic):Void;
	static public function isspmatrix_coo(x:Dynamic):Void;
	static public function isspmatrix_csc(x:Dynamic):Void;
	static public function isspmatrix_csr(x:Dynamic):Void;
	static public function isspmatrix_dia(x:Dynamic):Void;
	static public function isspmatrix_dok(x:Dynamic):Void;
	static public function isspmatrix_lil(x:Dynamic):Void;
	static public function kron(A:Dynamic, B:Dynamic, ?format:Dynamic = null):Dynamic;
	static public function kronsum(A:Dynamic, B:Dynamic, ?format:Dynamic = null):Dynamic;
	static public function rand(m:Dynamic, n:Dynamic, ?density:Dynamic, ?format:Dynamic, ?dtype:Dynamic = null, ?random_state:Dynamic = null):Void;
	static public function spdiags(data:Dynamic, diags:Dynamic, m:Dynamic, n:Dynamic, ?format:Dynamic = null):Void;
	static public function tril(A:Dynamic, ?k:Dynamic, ?format:Dynamic = null):Dynamic;
	static public function triu(A:Dynamic, ?k:Dynamic, ?format:Dynamic = null):Dynamic;
	static public function vstack(blocks:Dynamic, ?format:Dynamic = null, ?dtype:Dynamic = null):Void;
}