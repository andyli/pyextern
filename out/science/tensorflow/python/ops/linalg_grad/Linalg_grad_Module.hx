/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg_grad;
@:pythonImport("tensorflow.python.ops.linalg_grad") extern class Linalg_grad_Module {
	/**
		Gradient for BandedTriangularSolve.
	**/
	static public function _BandedTriangularSolveGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Cholesky.
	**/
	static public function _CholeskyGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Eig.
		
		Based on eq. 4.77 from paper by
		Christoph Boeddeker et al.
		https://arxiv.org/abs/1701.00392
		See also
		"Computation of eigenvalue and eigenvector derivatives
		for a general complex-valued eigensystem" by Nico van der Aa.
		As for now only distinct eigenvalue case is considered.
	**/
	static public function _EigGrad(op:Dynamic, grad_e:Dynamic, grad_v:Dynamic):Dynamic;
	/**
		Gradient for Einsum.
	**/
	static public function _EinsumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Shifts next-to-last dimension to the left, adding zero on the right.
	**/
	static public function _LeftShift(x:Dynamic):Dynamic;
	/**
		Gradient for LogMatrixDeterminant.
	**/
	static public function _LogMatrixDeterminantGrad(op:Dynamic, _:Dynamic, grad_b:Dynamic):Dynamic;
	/**
		Multiplies matrices and extracts three diagonals from the product.
		
		With sizes M x K and K x M, this function takes O(MK) time and O(M) space,
		while using math_ops.matmul, and then extracting the diagonals would take
		O(M^2 K) time and O(M^2) space.
		
		Args:
		  x: first matrix
		  y_tr: second matrix transposed
		
		Returns:
		  Diagonals of the product in compact format (see
		  linalg_ops.tridiagonal_solve)
	**/
	static public function _MatmulExtractingThreeDiagonals(x:Dynamic, y_tr:Dynamic):Dynamic;
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
		Gradient for MatrixSquareRoot.
	**/
	static public function _MatrixSquareRootGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatrixTriangularSolve.
	**/
	static public function _MatrixTriangularSolveGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Qr.
	**/
	static public function _QrGrad(op:Dynamic, dq:Dynamic, dr:Dynamic):Dynamic;
	/**
		Shifts next-to-last dimension to the right, adding zero on the left.
	**/
	static public function _RightShift(x:Dynamic):Dynamic;
	static public function _SafeReciprocal(x:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Gradient for SelfAdjointEigV2.
	**/
	static public function _SelfAdjointEigV2Grad(op:Dynamic, grad_e:Dynamic, grad_v:Dynamic):Dynamic;
	/**
		Gradient for the singular value decomposition.
	**/
	static public function _SvdGrad(op:Dynamic, grad_s:Dynamic, grad_u:Dynamic, grad_v:Dynamic):Dynamic;
	/**
		Transposes a tridiagonal matrix.
		
		Args:
		  diags: the diagonals of the input matrix in the compact form (see
		    linalg_ops.tridiagonal_solve).
		
		Returns:
		  Diagonals of the transposed matrix in the compact form.
	**/
	static public function _TransposeTridiagonalMatrix(diags:Dynamic):Dynamic;
	/**
		Gradient for TridiagonalMatMul.
	**/
	static public function _TridiagonalMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for TridiagonalSolveGrad.
	**/
	static public function _TridiagonalSolveGrad(op:Dynamic, grad:Dynamic):Dynamic;
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