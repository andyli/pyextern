/* This file is generated, do not edit! */
package torch.legacy.optim.rmsprop;
@:pythonImport("torch.legacy.optim.rmsprop") extern class Rmsprop_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An implementation of RMSprop
		
		ARGS:
		
		- 'opfunc' : a function that takes a single input (X), the point
		            of a evaluation, and returns f(X) and df/dX
		- 'x'      : the initial point
		- 'config` : a table with configuration parameters for the optimizer
		- 'config['learningRate']'      : learning rate
		- 'config['alpha']'             : smoothing constant
		- 'config['epsilon']'           : value with which to initialise m
		- 'config['weightDecay']'       : weight decay
		- 'state'                    : a table describing the state of the optimizer;
		                            after each call the state is modified
		- 'state['m']'                  : leaky sum of squares of parameter gradients,
		- 'state['tmp']'                : and the square root (with epsilon smoothing)
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the function, evaluated before the update
	**/
	static public function rmsprop(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}