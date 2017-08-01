/* This file is generated, do not edit! */
package torch.legacy.optim.adagrad;
@:pythonImport("torch.legacy.optim.adagrad") extern class Adagrad_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		ADAGRAD implementation
		
		ARGS:
		- `opfunc` : a function that takes a single input (X), the point of
		        evaluation, and returns f(X) and df/dX
		- `x` : the initial point
		- `state` : a table describing the state of the optimizer; after each
		        call the state is modified
		- `state['learningRate']` : learning rate
		- `state['paramVariance']` : vector of temporal variances of parameters
		- `state['weightDecay']` : scalar that controls weight decay
		RETURN:
		- `x` : the new x vector
		- `f(x)` : the value of optimized function, evaluated before the update
	**/
	static public function adagrad(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}