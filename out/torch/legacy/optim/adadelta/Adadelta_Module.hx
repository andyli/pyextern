/* This file is generated, do not edit! */
package torch.legacy.optim.adadelta;
@:pythonImport("torch.legacy.optim.adadelta") extern class Adadelta_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		ADADELTA implementation http://arxiv.org/abs/1212.5701
		
		ARGUMENTS:
		- `opfunc` : a function that takes a single input (X), the point of
		            evaluation, and returns f(X) and df/dX
		- `x` : the initial point
		- `config` : a table of hyper-parameters
		- `config['rho']` : interpolation parameter
		- `config['eps']` : for numerical stability
		- `config['weightDecay']` : weight decay
		- `state` : a table describing the state of the optimizer; after each
		        call the state is modified
		- `state['paramVariance']` : vector of temporal variances of parameters
		- `state['accDelta']` : vector of accummulated delta of gradients
		RETURNS:
		- `x` : the new x vector
		- `f(x)` : the value of optimized function, evaluated before the update
	**/
	static public function adadelta(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}