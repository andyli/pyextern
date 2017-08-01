/* This file is generated, do not edit! */
package torch.legacy.optim.sgd;
@:pythonImport("torch.legacy.optim.sgd") extern class Sgd_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A plain implementation of SGD
		
		ARGS:
		
		- `opfunc` : a function that takes a single input (X), the point
		            of a evaluation, and returns f(X) and df/dX
		- `x`      : the initial point
		- `config` : a table with configuration parameters for the optimizer
		- `config['learningRate']`      : learning rate
		- `config['learningRateDecay']` : learning rate decay
		- `config['weightDecay']`       : weight decay
		- `config['weightDecays']`      : vector of individual weight decays
		- `config['momentum']`          : momentum
		- `config['dampening']`         : dampening for momentum
		- `config['nesterov']`          : enables Nesterov momentum
		- `config['learningRates']`     : vector of individual learning rates
		- `state`  : a table describing the state of the optimizer; after each
		            call the state is modified
		- `state['evalCounter']`        : evaluation counter (optional: 0, by default)
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the function, evaluated before the update
		
		(Clement Farabet, 2012)
	**/
	static public function sgd(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}