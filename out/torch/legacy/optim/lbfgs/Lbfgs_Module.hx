/* This file is generated, do not edit! */
package torch.legacy.optim.lbfgs;
@:pythonImport("torch.legacy.optim.lbfgs") extern class Lbfgs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An implementation of L-BFGS, heavily inspired by minFunc (Mark Schmidt)
		This implementation of L-BFGS relies on a user-provided line
		search function (state.lineSearch). If this function is not
		provided, then a simple learningRate is used to produce fixed
		size steps. Fixed size steps are much less costly than line
		searches, and can be useful for stochastic problems.
		The learning rate is used even when a line search is provided.
		This is also useful for large-scale stochastic problems, where
		opfunc is a noisy approximation of f(x). In that case, the learning
		rate allows a reduction of confidence in the step size.
		
		Args:
		- `opfunc` : a function that takes a single input (X), the point of
		         evaluation, and returns f(X) and df/dX
		- `x` : the initial point
		- `state` : a table describing the state of the optimizer; after each
		         call the state is modified
		- `state.maxIter` : Maximum number of iterations allowed
		- `state.maxEval` : Maximum number of function evaluations
		- `state.tolFun` : Termination tolerance on the first-order optimality
		- `state.tolX` : Termination tol on progress in terms of func/param changes
		- `state.lineSearch` : A line search function
		- `state.learningRate` : If no line search provided, then a fixed step size is used
		
		Returns:
		- `x*` : the new `x` vector, at the optimal point
		- `f`  : a table of all function values:
		     `f[1]` is the value of the function before any optimization and
		     `f[#f]` is the final fully optimized value, at `x*`
		
		(Clement Farabet, 2012)
	**/
	static public function lbfgs(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}