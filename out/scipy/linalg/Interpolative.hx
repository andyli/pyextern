/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg.interpolative") extern class Interpolative {
	static public function estimate_rank(A:Dynamic, eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function estimate_spectral_norm(A:Dynamic, ?its:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function estimate_spectral_norm_diff(A:Dynamic, B:Dynamic, ?its:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function id_to_svd(B:Dynamic, idx:Dynamic, proj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function interp_decomp(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rand(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function reconstruct_interp_matrix(idx:Dynamic, proj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function reconstruct_matrix_from_id(B:Dynamic, idx:Dynamic, proj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function reconstruct_skel_matrix(A:Dynamic, k:Dynamic, idx:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function seed(?seed:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function svd(A:Dynamic, eps_or_k:Dynamic, ?rand:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}