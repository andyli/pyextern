/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.matrix_functions;
@:pythonImport("tensorflow.contrib.opt.python.training.matrix_functions") extern class Matrix_functions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes mat_g^alpha, where alpha = -1/p, p a positive integer.
		
		We use an iterative Schur-Newton method from equation 3.2 on page 9 of:
		
		A Schur-Newton Method for the Matrix p-th Root and its Inverse
		by Chun-Hua Guo and Nicholas J. Higham
		SIAM Journal on Matrix Analysis and Applications,
		2006, Vol. 28, No. 3 : pp. 788-804
		https://pdfs.semanticscholar.org/0abe/7f77433cf5908bfe2b79aa91af881da83858.pdf
		
		Args:
		  mat_g: the symmetric PSD matrix whose power it to be computed
		  mat_g_size: size of mat_g.
		  alpha: exponent, must be -1/p for p a positive integer.
		  iter_count: Maximum number of iterations.
		  epsilon: accuracy indicator, useful for early termination.
		  ridge_epsilon: Ridge epsilon added to make the matrix positive definite.
		
		Returns:
		  mat_g^alpha
	**/
	static public function matrix_inverse_pth_root(mat_g:Dynamic, mat_g_size:Dynamic, alpha:Dynamic, ?iter_count:Dynamic, ?epsilon:Dynamic, ?ridge_epsilon:Dynamic):Dynamic;
	/**
		Iterative method to get matrix square root.
		
		Stable iterations for the matrix square root, Nicholas J. Higham
		
		Page 231, Eq 2.6b
		http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.6.8799&rep=rep1&type=pdf
		
		Args:
		  mat_a: the symmetric PSD matrix whose matrix square root be computed
		  mat_a_size: size of mat_a.
		  iter_count: Maximum number of iterations.
		  ridge_epsilon: Ridge epsilon added to make the matrix positive definite.
		
		Returns:
		  mat_a^0.5
	**/
	static public function matrix_square_root(mat_a:Dynamic, mat_a_size:Dynamic, ?iter_count:Dynamic, ?ridge_epsilon:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}