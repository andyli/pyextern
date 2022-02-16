/* This file is generated, do not edit! */
package numpy.array_api.linalg;
@:pythonImport("numpy.array_api.linalg") extern class Linalg_Module {
	static public var TYPE_CHECKING : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _floating_dtypes : Dynamic;
	static public var _numeric_dtypes : Dynamic;
	static public function _solve(a:Dynamic, b:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.cholesky <numpy.linalg.cholesky>`.
		
		See its docstring for more information.
	**/
	static public function cholesky(x:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.cross <numpy.cross>`.
		
		See its docstring for more information.
	**/
	static public function cross(x1:Dynamic, x2:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.det <numpy.linalg.det>`.
		
		See its docstring for more information.
	**/
	static public function det(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.diagonal <numpy.diagonal>`.
		
		See its docstring for more information.
	**/
	static public function diagonal(x:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.eigh <numpy.linalg.eigh>`.
		
		See its docstring for more information.
	**/
	static public function eigh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.eigvalsh <numpy.linalg.eigvalsh>`.
		
		See its docstring for more information.
	**/
	static public function eigvalsh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.inv <numpy.linalg.inv>`.
		
		See its docstring for more information.
	**/
	static public function inv(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.matmul <numpy.matmul>`.
		
		See its docstring for more information.
	**/
	static public function matmul(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.norm <numpy.linalg.norm>`.
		
		See its docstring for more information.
	**/
	static public function matrix_norm(x:Dynamic, ?keepdims:Dynamic, ?ord:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.matrix_power <numpy.matrix_power>`.
		
		See its docstring for more information.
	**/
	static public function matrix_power(x:Dynamic, n:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.matrix_rank <numpy.matrix_rank>`.
		
		See its docstring for more information.
	**/
	static public function matrix_rank(x:Dynamic, ?rtol:Dynamic):Dynamic;
	static public function matrix_transpose(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.outer <numpy.outer>`.
		
		See its docstring for more information.
	**/
	static public function outer(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.pinv <numpy.linalg.pinv>`.
		
		See its docstring for more information.
	**/
	static public function pinv(x:Dynamic, ?rtol:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.qr <numpy.linalg.qr>`.
		
		See its docstring for more information.
	**/
	static public function qr(x:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.slogdet <numpy.linalg.slogdet>`.
		
		See its docstring for more information.
	**/
	static public function slogdet(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.solve <numpy.linalg.solve>`.
		
		See its docstring for more information.
	**/
	static public function solve(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.svd <numpy.linalg.svd>`.
		
		See its docstring for more information.
	**/
	static public function svd(x:Dynamic, ?full_matrices:Dynamic):Dynamic;
	static public function svdvals(x:Dynamic):Dynamic;
	static public function tensordot(x1:Dynamic, x2:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.trace <numpy.trace>`.
		
		See its docstring for more information.
	**/
	static public function trace(x:Dynamic, ?offset:Dynamic):Dynamic;
	static public function vecdot(x1:Dynamic, x2:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linalg.norm <numpy.linalg.norm>`.
		
		See its docstring for more information.
	**/
	static public function vector_norm(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?ord:Dynamic):Dynamic;
}