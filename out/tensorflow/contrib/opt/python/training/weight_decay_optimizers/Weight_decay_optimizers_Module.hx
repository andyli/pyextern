/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.weight_decay_optimizers;
@:pythonImport("tensorflow.contrib.opt.python.training.weight_decay_optimizers") extern class Weight_decay_optimizers_Module {
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}