/* This file is generated, do not edit! */
package torch.legacy.optim.rprop;
@:pythonImport("torch.legacy.optim.rprop") extern class Rprop_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A plain implementation of RPROP
		
		ARGS:
		- `opfunc` : a function that takes a single input (X), the point of
		            evaluation, and returns f(X) and df/dX
		- `x`      : the initial point
		- `state`  : a table describing the state of the optimizer; after each
		            call the state is modified
		- `state['stepsize']`    : initial step size, common to all components
		- `state['etaplus']`     : multiplicative increase factor, > 1 (default 1.2)
		- `state['etaminus']`    : multiplicative decrease factor, < 1 (default 0.5)
		- `state['stepsizemax']` : maximum stepsize allowed (default 50)
		- `state['stepsizemin']` : minimum stepsize allowed (default 1e-6)
		- `state['niter']`       : number of iterations (default 1)
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the function, evaluated before the update
		
		(Martin Riedmiller, Koray Kavukcuoglu 2013)
	**/
	static public function rprop(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}