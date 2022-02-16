/* This file is generated, do not edit! */
package tensorflow.compat.v2.linalg.experimental;
@:pythonImport("tensorflow.compat.v2.linalg.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Conjugate gradient solver.
		
		Solves a linear system of equations `A*x = rhs` for self-adjoint, positive
		definite matrix `A` and right-hand side vector `rhs`, using an iterative,
		matrix-free algorithm where the action of the matrix A is represented by
		`operator`. The iteration terminates when either the number of iterations
		exceeds `max_iter` or when the residual norm has been reduced to `tol`
		times its initial value, i.e. \\(||rhs - A x_k|| <= tol ||rhs||\\).
		
		Args:
		  operator: A `LinearOperator` that is self-adjoint and positive definite.
		  rhs: A possibly batched vector of shape `[..., N]` containing the right-hand
		    size vector.
		  preconditioner: A `LinearOperator` that approximates the inverse of `A`.
		    An efficient preconditioner could dramatically improve the rate of
		    convergence. If `preconditioner` represents matrix `M`(`M` approximates
		    `A^{-1}`), the algorithm uses `preconditioner.apply(x)` to estimate
		    `A^{-1}x`. For this to be useful, the cost of applying `M` should be
		    much lower than computing `A^{-1}` directly.
		  x: A possibly batched vector of shape `[..., N]` containing the initial
		    guess for the solution.
		  tol: A float scalar convergence tolerance.
		  max_iter: An integer giving the maximum number of iterations.
		  name: A name scope for the operation.
		
		Returns:
		  output: A namedtuple representing the final state with fields:
		    - i: A scalar `int32` `Tensor`. Number of iterations executed.
		    - x: A rank-1 `Tensor` of shape `[..., N]` containing the computed
		        solution.
		    - r: A rank-1 `Tensor` of shape `[.., M]` containing the residual vector.
		    - p: A rank-1 `Tensor` of shape `[..., N]`. `A`-conjugate basis vector.
		    - gamma: \\(r \dot M \dot r\\), equivalent to  \\(||r||_2^2\\) when
		      `preconditioner=None`.
	**/
	static public function conjugate_gradient(_operator:Dynamic, rhs:Dynamic, ?preconditioner:Dynamic, ?x:Dynamic, ?tol:Dynamic, ?max_iter:Dynamic, ?name:Dynamic):Dynamic;
}