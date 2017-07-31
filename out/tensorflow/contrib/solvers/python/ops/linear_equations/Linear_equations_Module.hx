/* This file is generated, do not edit! */
package tensorflow.contrib.solvers.python.ops.linear_equations;
@:pythonImport("tensorflow.contrib.solvers.python.ops.linear_equations") extern class Linear_equations_Module {
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
		Conjugate gradient solver.
		
		Solves a linear system of equations `A*x = rhs` for selfadjoint, positive
		definite matrix `A` and righ-hand side vector `rhs`, using an iterative,
		matrix-free algorithm where the action of the matrix A is represented by
		`operator`. The iteration terminates when either the number of iterations
		exceeds `max_iter` or when the residual norm has been reduced to `tol`
		times its initial value, i.e. \\(||rhs - A x_k|| <= tol ||rhs||\\).
		
		Args:
		  operator: An object representing a linear operator with attributes:
		    - shape: Either a list of integers or a 1-D `Tensor` of type `int32` of
		      length 2. `shape[0]` is the dimension on the domain of the operator,
		      `shape[1]` is the dimension of the co-domain of the operator. On other
		      words, if operator represents an N x N matrix A, `shape` must contain
		      `[N, N]`.
		    - dtype: The datatype of input to and output from `apply`.
		    - apply: Callable object taking a vector `x` as input and returning a
		      vector with the result of applying the operator to `x`, i.e. if
		     `operator` represents matrix `A`, `apply` should return `A * x`.
		  rhs: A rank-1 `Tensor` of shape `[N]` containing the right-hand size vector.
		  tol: A float scalar convergence tolerance.
		  max_iter: An integer giving the maximum number of iterations.
		  name: A name scope for the operation.
		
		Returns:
		  output: A namedtuple representing the final state with fields:
		    - i: A scalar `int32` `Tensor`. Number of iterations executed.
		    - x: A rank-1 `Tensor` of shape `[N]` containing the computed solution.
		    - r: A rank-1 `Tensor` of shape `[M]` containing the residual vector.
		    - p: A rank-1 `Tensor` of shape `[N]`. `A`-conjugate basis vector.
		    - gamma: \\(||r||_2^2\\)
	**/
	static public function conjugate_gradient(operator:Dynamic, rhs:Dynamic, ?tol:Dynamic, ?max_iter:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}