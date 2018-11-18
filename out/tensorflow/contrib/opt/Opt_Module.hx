/* This file is generated, do not edit! */
package tensorflow.contrib.opt;
@:pythonImport("tensorflow.contrib.opt") extern class Opt_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Clips gradients of a multitask loss by their global norm.
		
		Ignores all-zero tensors when computing the global norm.
		
		Args:
		  gradients_variables: a list of pairs (gradient, variable).
		  clip_norm: a float Tensor, the global norm to clip on. Default is 20.0.
		
		Returns:
		  list: A list of pairs of the same type as gradients_variables,.
		  fixed_global_norm: A 0-D (scalar) Tensor representing the global norm.
	**/
	static public function clip_gradients_by_global_norm(gradients_variables:Dynamic, ?clip_norm:Dynamic):Dynamic;
	/**
		Factory function returning an optimizer class with decoupled weight decay.
		
		Returns an optimizer class. An instance of the returned class computes the
		update step of `base_optimizer` and additionally decays the weights.
		E.g., the class returned by
		`extend_with_decoupled_weight_decay(tf.train.AdamOptimizer)` is equivalent to
		`tf.contrib.opt.AdamWOptimizer`.
		
		The API of the new optimizer class slightly differs from the API of the
		base optimizer:
		- The first argument to the constructor is the weight decay rate.
		- `minimize` and `apply_gradients` accept the optional keyword argument
		  `decay_var_list`, which specifies the variables that should be decayed.
		  If `None`, all variables that are optimized are decayed.
		
		Usage example:
		```python
		# MyAdamW is a new class
		MyAdamW = extend_with_decoupled_weight_decay(tf.train.AdamOptimizer)
		# Create a MyAdamW object
		optimizer = MyAdamW(weight_decay=0.001, learning_rate=0.001)
		sess.run(optimizer.minimize(loss, decay_variables=[var1, var2]))
		
		Note that this extension decays weights BEFORE applying the update based
		on the gradient, i.e. this extension only has the desired behaviour for
		optimizers which do not depend on the value of'var' in the update step!
		```
		
		Args:
		  base_optimizer: An optimizer class that inherits from tf.train.Optimizer.
		
		Returns:
		  A new optimizer class that inherits from DecoupledWeightDecayExtension
		  and base_optimizer.
	**/
	static public function extend_with_decoupled_weight_decay(base_optimizer:Dynamic):Dynamic;
}