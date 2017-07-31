/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_tensor;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_tensor") extern class Stochastic_tensor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	static public function get_current_value_type():Dynamic;
	/**
		Creates a value type context for any StochasticTensor created within.
		
		Typical usage:
		
		```
		with sg.value_type(sg.MeanValue(stop_gradients=True)):
		  st = sg.StochasticTensor(tf.contrib.distributions.Normal, mu=mu,
		                           sigma=sigma)
		```
		
		In the example above, `st.value()` (or equivalently, `tf.identity(st)`) will
		be the mean value of the Normal distribution, i.e., `mu` (possibly
		broadcasted to the shape of `sigma`).  Furthermore, because the `MeanValue`
		was marked with `stop_gradients=True`, this value will have been wrapped
		in a `stop_gradients` call to disable any possible backpropagation.
		
		Args:
		  dist_value_type: An instance of `MeanValue`, `SampleValue`, or
		    any other stochastic value type.
		
		Yields:
		  A context for `StochasticTensor` objects that controls the
		  value created when they are initialized.
		
		Raises:
		  TypeError: if `dist_value_type` is not an instance of a stochastic value
		    type.
	**/
	static public function value_type(dist_value_type:Dynamic):Dynamic;
}