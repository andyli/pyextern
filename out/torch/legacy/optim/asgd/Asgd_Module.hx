/* This file is generated, do not edit! */
package torch.legacy.optim.asgd;
@:pythonImport("torch.legacy.optim.asgd") extern class Asgd_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An implementation of ASGD
		
		ASGD:
		
		    x := (1 - lambda eta_t) x - eta_t df/dx(z,x)
		    a := a + mu_t [ x - a ]
		
		    eta_t = eta0 / (1 + lambda eta0 t) ^ 0.75
		    mu_t = 1/max(1,t-t0)
		
		implements ASGD algorithm as in L.Bottou's sgd-2.0
		
		ARGS:
		
		- `opfunc` : a function that takes a single input (X), the point of
		        evaluation, and returns f(X) and df/dX
		- `x`      : the initial point
		- `state`  : a table describing the state of the optimizer; after each
		        call the state is modified
		- `state['eta0']`   : learning rate
		- `state['lambda']` : decay term
		- `state['alpha']`  : power for eta update
		- `state['t0']`     : point at which to start averaging
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the function, evaluated before the update
		- `ax`    : the averaged x vector
		
		(Clement Farabet, 2012)
	**/
	static public function asgd(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}