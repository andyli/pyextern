/* This file is generated, do not edit! */
package numpy.linalg._umath_linalg;
@:pythonImport("numpy.linalg._umath_linalg") extern class _Umath_linalg_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		cholesky_lo(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		cholesky decomposition of hermitian positive-definite matrices. 
		Broadcast to all outer dimensions. 
		    "(m,m)->(m,m)" 
	**/
	static public function cholesky_lo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		det of the last two dimensions and broadcast on the rest. 
		    "(m,m)->()" 
	**/
	static public function det(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eig(x[, out1, out2], / [, out=(None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eig on the last two dimension and broadcast to the rest. 
		Results in a vector with the  eigenvalues and a matrix with the eigenvectors. 
		    "(m,m)->(m),(m,m)" 
	**/
	static public function eig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eigh_lo(x[, out1, out2], / [, out=(None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eigh on the last two dimension and broadcast to the rest, using lower triangle 
		Results in a vector of eigenvalues and a matrix with theeigenvectors. 
		    "(m,m)->(m),(m,m)" 
	**/
	static public function eigh_lo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eigh_up(x[, out1, out2], / [, out=(None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eigh on the last two dimension and broadcast to the rest, using upper triangle. 
		Results in a vector of eigenvalues and a matrix with the eigenvectors. 
		    "(m,m)->(m),(m,m)" 
	**/
	static public function eigh_up(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eigvals(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eigvals on the last two dimension and broadcast to the rest. 
		Results in a vector of eigenvalues. 
	**/
	static public function eigvals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eigvalsh_lo(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eigh on the last two dimension and broadcast to the rest, using lower triangle. 
		Results in a vector of eigenvalues and a matrix with theeigenvectors. 
		    "(m,m)->(m)" 
	**/
	static public function eigvalsh_lo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eigvalsh_up(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eigvalsh on the last two dimension and broadcast to the rest, using upper triangle. 
		Results in a vector of eigenvalues and a matrix with theeigenvectors.
		    "(m,m)->(m)" 
	**/
	static public function eigvalsh_up(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		compute the inverse of the last two dimensions and broadcast to the rest. 
		Results in the inverse matrices. 
		    "(m,m)->(m,m)" 
	**/
	static public function inv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lstsq_m(x1, x2, x3[, out1, out2, out3, out4], / [, out=(None, None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		least squares on the last two dimensions and broadcast to the rest. 
		For m <= n. 
	**/
	static public function lstsq_m(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lstsq_n(x1, x2, x3[, out1, out2, out3, out4], / [, out=(None, None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		least squares on the last two dimensions and broadcast to the rest. 
		For m >= n, meaning that residuals are produced. 
	**/
	static public function lstsq_n(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slogdet(x[, out1, out2], / [, out=(None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		slogdet on the last two dimensions and broadcast on the rest. 
		Results in two arrays, one with sign and the other with log of the determinants. 
		    "(m,m)->(),()" 
	**/
	static public function slogdet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		solve(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		solve the system a x = b, on the last two dimensions, broadcast to the rest. 
		Results in a matrices with the solutions. 
		    "(m,m),(m,n)->(m,n)" 
	**/
	static public function solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		solve1(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		solve the system a x = b, for b being a vector, broadcast in the outer dimensions. 
		Results in vectors with the solutions. 
		    "(m,m),(m)->(m)" 
	**/
	static public function solve1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_m(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when n>=m. 
	**/
	static public function svd_m(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_m_f(x[, out1, out2, out3], / [, out=(None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when m<=n
	**/
	static public function svd_m_f(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_m_s(x[, out1, out2, out3], / [, out=(None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when m<=n
	**/
	static public function svd_m_s(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_n(x, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when n<=m
	**/
	static public function svd_n(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_n_f(x[, out1, out2, out3], / [, out=(None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when m>=n
	**/
	static public function svd_n_f(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd_n_s(x[, out1, out2, out3], / [, out=(None, None, None)], *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		svd when m>=n
	**/
	static public function svd_n_s(args:haxe.extern.Rest<Dynamic>):Dynamic;
}