/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse.linalg") extern class Linalg {
	static public function aslinearoperator(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bicg(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bicgstab(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cg(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cgs(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigs(A:Dynamic, ?k:Dynamic, ?M:Dynamic = null, ?sigma:Dynamic = null, ?which:Dynamic, ?v0:Dynamic = null, ?ncv:Dynamic = null, ?maxiter:Dynamic = null, ?tol:Dynamic, ?return_eigenvectors:Dynamic = true, ?Minv:Dynamic = null, ?OPinv:Dynamic = null, ?OPpart:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigsh(A:Dynamic, ?k:Dynamic, ?M:Dynamic = null, ?sigma:Dynamic = null, ?which:Dynamic, ?v0:Dynamic = null, ?ncv:Dynamic = null, ?maxiter:Dynamic = null, ?tol:Dynamic, ?return_eigenvectors:Dynamic = true, ?Minv:Dynamic = null, ?OPinv:Dynamic = null, ?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expm(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expm_multiply(A:Dynamic, B:Dynamic, ?start:Dynamic = null, ?stop:Dynamic = null, ?num:Dynamic = null, ?endpoint:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function factorized(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gmres(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?restart:Dynamic = null, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?restrt:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inv(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic = null, ?callback:Dynamic = null, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic = null, ?store_outer_Av:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lobpcg(A:Dynamic, X:Dynamic, ?B:Dynamic = null, ?M:Dynamic = null, ?Y:Dynamic = null, ?tol:Dynamic = null, ?maxiter:Dynamic, ?largest:Dynamic = true, ?verbosityLevel:Dynamic, ?retLambdaHistory:Dynamic = false, ?retResidualNormsHistory:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic = null, ?show:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lsqr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?iter_lim:Dynamic = null, ?show:Dynamic = false, ?calc_var:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minres(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?shift:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M:Dynamic = null, ?callback:Dynamic = null, ?show:Dynamic = false, ?check:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function onenormest(A:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic = false, ?compute_w:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function qmr(A:Dynamic, b:Dynamic, ?x0:Dynamic = null, ?tol:Dynamic, ?maxiter:Dynamic = null, ?xtype:Dynamic = null, ?M1:Dynamic = null, ?M2:Dynamic = null, ?callback:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function spilu(A:Dynamic, ?drop_tol:Dynamic = null, ?fill_factor:Dynamic = null, ?drop_rule:Dynamic = null, ?permc_spec:Dynamic = null, ?diag_pivot_thresh:Dynamic = null, ?relax:Dynamic = null, ?panel_size:Dynamic = null, ?options:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function splu(A:Dynamic, ?permc_spec:Dynamic = null, ?diag_pivot_thresh:Dynamic = null, ?drop_tol:Dynamic = null, ?relax:Dynamic = null, ?panel_size:Dynamic = null, ?options:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic = null, ?use_umfpack:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function svds(A:Dynamic, ?k:Dynamic, ?ncv:Dynamic = null, ?tol:Dynamic, ?which:Dynamic, ?v0:Dynamic = null, ?maxiter:Dynamic = null, ?return_singular_vectors:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}