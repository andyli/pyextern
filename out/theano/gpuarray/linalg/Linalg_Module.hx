/* This file is generated, do not edit! */
package theano.gpuarray.linalg;
@:pythonImport("theano.gpuarray.linalg") extern class Linalg_Module {
	static public var MATRIX_STRUCTURES_SOLVE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public function attach_cublas_handle_to_context(ctx:Dynamic):Dynamic;
	static public function attach_cusolver_handle_to_context(ctx:Dynamic):Dynamic;
	static public function bool_t(?name:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var cublas_available : Dynamic;
	static public var cusolver_available : Dynamic;
	static public var division : Dynamic;
	static public function gpu_cholesky(A:Dynamic, ?lower:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function performs the matrix inverse on GPU.
		
		Returns
		-------
		a_inv: matrix
	**/
	static public function gpu_matrix_inverse(a:Dynamic):Dynamic;
	/**
		This function performs the QR on GPU.
		
		Parameters
		----------
		complete : bool, optional
		    If `False`, returns only r.
		
		Returns
		-------
		Q, R : matrices
	**/
	static public function gpu_qr(a:Dynamic, ?complete:Dynamic):Dynamic;
	static public function gpu_solve(A:Dynamic, b:Dynamic, ?A_structure:Dynamic, ?trans:Dynamic):Dynamic;
	static public function gpu_solve_lower_triangular(A:Dynamic, b:Dynamic, ?trans:Dynamic):Dynamic;
	static public function gpu_solve_upper_triangular(A:Dynamic, b:Dynamic, ?trans:Dynamic):Dynamic;
	/**
		This function performs the SVD on GPU.
		
		Parameters
		----------
		full_matrices : bool, optional
		    If True (default), u and v have the shapes (M, M) and (N, N),
		    respectively.
		    Otherwise, the shapes are (M, K) and (K, N), respectively,
		    where K = min(M, N).
		compute_uv : bool, optional
		    Whether or not to compute u and v in addition to s.
		    True by default.
		
		Returns
		-------
		U, V,  D : matrices
	**/
	static public function gpu_svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
	static public function gpuarray_helper_inc_dir():Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var pygpu_available : Dynamic;
	static public function tril(A:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function triu(A:Dynamic, ?inplace:Dynamic):Dynamic;
}