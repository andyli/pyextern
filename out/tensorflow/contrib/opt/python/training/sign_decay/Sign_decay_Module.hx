/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.sign_decay;
@:pythonImport("tensorflow.contrib.opt.python.training.sign_decay") extern class Sign_decay_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a function that computes a cosine decay.
		
		This decay computes cosine annealing:
		  0.5 * (1.0 + cos(2.0 * pi * num_periods * global_step / decay_steps))
		
		This decay can be used to decay the sign quantity in the AddSign and PowerSign
		optimizers discovered in
		[Bello et al., ICML 2017] Neural Optimizer Search with RL.
		
		Example usage:
		```
		decay_steps = 1000
		num_periods = 2
		cosine_decay_fn = get_cosine_decay_fn(decay_steps, num_periods=num_periods)
		decayed = cosine_decay_fn(global_step)
		x *= decayed
		```
		Args:
		  decay_steps: number of steps to decay over.
		  num_periods: number of periods for cosine signal. 0.5 by default,
		    which maps the last decay step to 0.
		  zero_after: if not None, number after which the decay function
		    will just return 0.
		Returns:
		  cosine_decay_fn: a function that computes the cosine decay.
	**/
	static public function get_cosine_decay_fn(decay_steps:Dynamic, ?num_periods:Dynamic, ?zero_after:Dynamic):Dynamic;
	/**
		Returns a function that computes a linear decay.
		
		This decay computes linear annealing:
		  max(0, (decay_steps - global_step) / decay_steps)
		
		Example usage:
		```
		decay_steps = 1000
		linear_decay_fn = get_linear_decay_fn(decay_steps)
		decayed = linear_decay_fn(global_step)
		x *= decayed
		```
		Args:
		  decay_steps: number of steps to decay over.
		Returns:
		  linear_decay_fn: a function that computes the linear decay.
	**/
	static public function get_linear_decay_fn(decay_steps:Dynamic):Dynamic;
	/**
		Returns a function that computes a restart decay.
		
		This decay computes
		  0.5 * (1.0 + cos(pi * (num_periods * global_step) % num_training_steps))
		
		This is a simplified version of the restart decay introduced in
		"SGDR: Stochastic Gradient Descent with Warm Restarts"
		by Ilya Loshchilov & Frank Hutter, Proceedings of
		ICLR'2017, available at https://arxiv.org/pdf/1608.03983.pdf
		
		This decay can be used to decay the sign quantity in the AddSign and PowerSign
		optimizers discovered in
		[Bello et al., ICML 2017] Neural Optimizer Search with RL.
		
		Example usage:
		```
		decay_steps = 1000
		num_periods = 2.0
		restart_decay_fn = get_restart_decay_fn(decay_steps,
		                                        num_periods=num_periods)
		decayed = restart_decay_fn(global_step)
		x *= decayed
		```
		Args:
		  decay_steps: number of steps to decay over.
		  num_periods: number of periods for cosine signal. 1 by default,
		    which maps the last decay step to 0.
		  zero_after: if not None, number after which the decay function
		    will return 0.
		Returns:
		  restart_decay_fn: a function that computes the restart decay.
	**/
	static public function get_restart_decay_fn(decay_steps:Dynamic, ?num_periods:Dynamic, ?zero_after:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}