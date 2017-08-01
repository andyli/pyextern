/* This file is generated, do not edit! */
package torch.legacy.optim.adam;
@:pythonImport("torch.legacy.optim.adam") extern class Adam_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An implementation of Adam http://arxiv.org/pdf/1412.6980.pdf
		
		ARGS:
		
		- 'opfunc' : a function that takes a single input (X), the point
		            of a evaluation, and returns f(X) and df/dX
		- 'x'      : the initial point
		- 'config` : a table with configuration parameters for the optimizer
		- 'config.learningRate'      : learning rate
		- 'config.beta1'             : first moment coefficient
		- 'config.beta2'             : second moment coefficient
		- 'config.epsilon'           : for numerical stability
		- 'config.weightDecay'       : weight decay
		- 'state'                    : a table describing the state of the optimizer; after each
		                            call the state is modified
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the value of optimized function, evaluated before the update
	**/
	static public function adam(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}