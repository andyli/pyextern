/* This file is generated, do not edit! */
package torch.legacy.optim.nag;
@:pythonImport("torch.legacy.optim.nag") extern class Nag_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		An implementation of SGD adapted with features of Nesterov's
		Accelerated Gradient method, based on the paper
		On the Importance of Initialization and Momentum in Deep Learning
		Sutsveker et. al., ICML 2013
		
		ARGS:
		opfunc : a function that takes a single input (X), the point of
		        evaluation, and returns f(X) and df/dX
		x      : the initial point
		state  : a table describing the state of the optimizer; after each
		        call the state is modified
		state['learningRate']      : learning rate
		state['learningRateDecay'] : learning rate decay
		state['weightDecay']       : weight decay
		state['momentum']          : momentum
		state['learningRates']     : vector of individual learning rates
		
		RETURN:
		x     : the new x vector
		f(x)  : the function, evaluated before the update
		
		(Dilip Krishnan, 2013)
	**/
	static public function nag(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
}