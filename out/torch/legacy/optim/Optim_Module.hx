/* This file is generated, do not edit! */
package torch.legacy.optim;
@:pythonImport("torch.legacy.optim") extern class Optim_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
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
	/**
		An implementation of AdaMax http://arxiv.org/pdf/1412.6980.pdf
		
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
		- 'state'                    : a table describing the state of the optimizer;
		                               after each call the state is modified.
		
		RETURN:
		- `x`     : the new x vector
		- `f(x)`  : the value of optimized function, evaluated before the update
	**/
	static public function adamax(opfunc:Dynamic, x:Dynamic, config:Dynamic, ?state:Dynamic):Dynamic;
	/**
		An implementation of ASGD
		
		ASGD:
		
		    x := (1 - lambda eta_t) x - eta_t df/dx(z,x)
		    a := a + mu_t [ x - a ]
		
		    eta_t = eta0 / (1 + lambda eta0 t) ^ 0.75
		    mu_t = 1/max(1,t-t0)
		
		implements ASGD algoritm as in L.Bottou's sgd-2.0
		
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