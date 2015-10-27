/* This file is generated, do not edit! */
package scipy.linalg;
@:native("scipy.linalg.interpolative") extern class Interpolative {
	static public function estimate_rank(A:Dynamic, eps:Dynamic):Dynamic;
	static public function estimate_spectral_norm(A:Dynamic, ?its:Dynamic):Dynamic;
	static public function estimate_spectral_norm_diff(A:Dynamic, B:Dynamic, ?its:Dynamic):Dynamic;
	static public function id_to_svd(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	static public function interp_decomp(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic = true):Dynamic;
	static public function rand(args:haxe.extern.Rest<Dynamic>):Void;
	static public function reconstruct_interp_matrix(idx:Dynamic, proj:Dynamic):Dynamic;
	static public function reconstruct_matrix_from_id(B:Dynamic, idx:Dynamic, proj:Dynamic):Dynamic;
	static public function reconstruct_skel_matrix(A:Dynamic, k:Dynamic, idx:Dynamic):Dynamic;
	static public function seed(?seed:Dynamic = null):Void;
	static public function svd(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic = true):Dynamic;
}