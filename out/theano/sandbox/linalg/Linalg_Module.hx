/* This file is generated, do not edit! */
package theano.sandbox.linalg;
@:pythonImport("theano.sandbox.linalg") extern class Linalg_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function alloc_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cholesky(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function det(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Numpy-compatibility method
		If `x` is a matrix, return its diagonal.
		If `x` is a vector return a matrix with it as its diagonal.
		
		* This method does not support the `k` argument that numpy supports.
	**/
	static public function diag(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function eig(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	static public function eigvalsh(a:Dynamic, b:Dynamic, ?lower:Dynamic):Dynamic;
	static public function extract_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matrix_inverse(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Apply a hint that the variable `v` is positive semi-definite, i.e.
		it is a symmetric matrix and :math:`x^T A x \ge 0` for any vector x.
	**/
	static public function psd(v:Dynamic):Dynamic;
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
	/**
		Returns the sum of diagonal elements of matrix X.
		
		Notes
		-----
		Works on GPU since 0.6rc4.
	**/
	static public function trace(X:Dynamic):Dynamic;
}