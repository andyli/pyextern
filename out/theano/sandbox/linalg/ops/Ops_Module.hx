/* This file is generated, do not edit! */
package theano.sandbox.linalg.ops;
@:pythonImport("theano.sandbox.linalg.ops") extern class Ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function cholesky(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function det(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function extract_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hints(variable:Dynamic):Dynamic;
	static public var imported_scipy : Dynamic;
	static public var integer_types : Dynamic;
	static public var inv_as_solve : Dynamic;
	static public function is_hint_node(node:Dynamic):Dynamic;
	static public function is_positive(v:Dynamic):Dynamic;
	static public function is_psd(v:Dynamic):Dynamic;
	static public function is_symmetric(v:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var local_det_chol : Dynamic;
	static public var local_log_pow : Dynamic;
	static public var local_log_prod_sqr : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public function matrix_inverse(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var no_transpose_symmetric : Dynamic;
	static public var print_function : Dynamic;
	/**
		Apply a hint that the variable `v` is positive semi-definite, i.e.
		it is a symmetric matrix and :math:`x^T A x \ge 0` for any vector x.
	**/
	static public function psd(v:Dynamic):Dynamic;
	static public var psd_solve_with_chol : Dynamic;
	static public function register_canonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_stabilize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var remove_hint_nodes : Dynamic;
	static public function solve(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns upper bound on the largest eigenvalue of square symmetrix matrix X.
		
		log2_exponent must be a positive-valued integer. The larger it is, the
		slower and tighter the bound. Values up to 5 should usually suffice. The
		algorithm works by multiplying X by itself this many times.
		
		From V.Pan, 1990. "Estimating the Extremal Eigenvalues of a Symmetric
		Matrix", Computers Math Applic. Vol 20 n. 2 pp 17-22.
		Rq: an efficient algorithm, not used here, is defined in this paper.
	**/
	static public function spectral_radius_bound(X:Dynamic, log2_exponent:Dynamic):Dynamic;
	static public var tag_solve_triangular : Dynamic;
	/**
		Returns the sum of diagonal elements of matrix X.
		
		Notes
		-----
		Works on GPU since 0.6rc4.
	**/
	static public function trace(X:Dynamic):Dynamic;
	static public var transinv_to_invtrans : Dynamic;
}