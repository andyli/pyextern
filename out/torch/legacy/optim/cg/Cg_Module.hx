/* This file is generated, do not edit! */
package torch.legacy.optim.cg;
@:pythonImport("torch.legacy.optim.cg") extern class Cg_Module {
	static public var INFINITY : Dynamic;
	static public var NAN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This cg implementation is a rewrite of minimize.m written by Carl
		E. Rasmussen. It is supposed to produce exactly same results (give
		or take numerical accuracy due to some changed order of
		operations). You can compare the result on rosenbrock with minimize.m.
		http://www.gatsby.ucl.ac.uk/~edward/code/minimize/example.html
		
		    [x fx c] = minimize([0 0]', 'rosenbrock', -25)
		
		Note that we limit the number of function evaluations only, it seems much
		more important in practical use.
		
		ARGS:
		
		- `opfunc` : a function that takes a single input, the point of evaluation.
		- `x`      : the initial point
		- `state` : a table of parameters and temporary allocations.
		- `state['maxEval']`     : max number of function evaluations
		- `state['maxIter']`     : max number of iterations
		- `state['df0']` : if you pass torch.Tensor they will be used for temp storage
		- `state['df1']` : if you pass torch.Tensor they will be used for temp storage
		- `state['df2']` : if you pass torch.Tensor they will be used for temp storage
		- `state['df3']` : if you pass torch.Tensor they will be used for temp storage
		- `state['s']`   : if you pass torch.Tensor they will be used for temp storage
		- `state['x0']`  : if you pass torch.Tensor they will be used for temp storage
		
		RETURN:
		- `x*` : the new x vector, at the optimal point
		- `f`  : a table of all function values where
		    `f[1]` is the value of the function before any optimization and
		    `f[#f]` is the final fully optimized value, at x*
		
		(Koray Kavukcuoglu, 2012)
	**/
	static public function cg(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
	static public function sqrt_nothrow(x:Dynamic):Dynamic;
}