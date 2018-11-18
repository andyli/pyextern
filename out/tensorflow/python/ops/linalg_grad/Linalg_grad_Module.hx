/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg_grad;
@:pythonImport("tensorflow.python.ops.linalg_grad") extern class Linalg_grad_Module {
	/**
		Gradient for Cholesky.
	**/
	static public function _CholeskyGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for LogMatrixDeterminant.
	**/
	static public function _LogMatrixDeterminantGrad(op:Dynamic, _:Dynamic, grad_b:Dynamic):Dynamic;
	/**
		Gradient for MatrixDeterminant.
	**/
	static public function _MatrixDeterminantGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatrixInverse.
	**/
	static public function _MatrixInverseGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatrixSolve.
	**/
	static public function _MatrixSolveGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradients for MatrixSolveLs.
	**/
	static public function _MatrixSolveLsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatrixTriangularSolve.
	**/
	static public function _MatrixTriangularSolveGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Qr.
	**/
	static public function _QrGrad(op:Dynamic, dq:Dynamic, dr:Dynamic):Dynamic;
	/**
		Gradient for SelfAdjointEigV2.
	**/
	static public function _SelfAdjointEigV2Grad(op:Dynamic, grad_e:Dynamic, grad_v:Dynamic):Dynamic;
	/**
		Gradient for the singular value decomposition.
	**/
	static public function _SvdGrad(op:Dynamic, grad_s:Dynamic, grad_u:Dynamic, grad_v:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
}