/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_graph;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_graph") extern class Stochastic_graph_Module {
	static public var STOCHASTIC_TENSOR_COLLECTION : Dynamic;
	static public var _STOCHASTIC_VALUE_STACK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Map stochastic tensors to the fixed losses that depend on them.
		
		Args:
		  fixed_losses: a list of `Tensor`s.
		  stochastic_tensors: a list of `StochasticTensor`s to map to fixed losses.
		    If `None`, all `StochasticTensor`s in the graph will be used.
		
		Returns:
		  A dict `dependencies` that maps `StochasticTensor` objects to subsets of
		  `fixed_losses`.
		
		  If `loss in dependencies[st]`, for some `loss` in `fixed_losses` then there
		  is a direct path from `st.value()` to `loss` in the graph.
	**/
	static public function _stochastic_dependencies_map(fixed_losses:Dynamic, ?stochastic_tensors:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function get_current_value_type():Dynamic;
	static public function get_score_function_with_baseline(baseline:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function score_function(dist_tensor:Dynamic, value:Dynamic, losses:Dynamic):Dynamic;
	/**
		Surrogate loss for stochastic graphs.
		
		This function will call `loss_fn` on each `StochasticTensor`
		upstream of `sample_losses`, passing the losses that it influenced.
		
		Note that currently `surrogate_loss` does not work with `StochasticTensor`s
		instantiated in `while_loop`s or other control structures.
		
		Args:
		  sample_losses: a list or tuple of final losses. Each loss should be per
		    example in the batch (and possibly per sample); that is, it should have
		    dimensionality of 1 or greater. All losses should have the same shape.
		  stochastic_tensors: a list of `StochasticTensor`s to add loss terms for.
		    If None, defaults to all `StochasticTensor`s in the graph upstream of
		    the `Tensor`s in `sample_losses`.
		  name: the name with which to prepend created ops.
		
		Returns:
		  `Tensor` loss, which is the sum of `sample_losses` and the
		  `loss_fn`s returned by the `StochasticTensor`s.
		
		Raises:
		  TypeError: if `sample_losses` is not a list or tuple, or if its elements
		    are not `Tensor`s.
		  ValueError: if any loss in `sample_losses` does not have dimensionality 1
		    or greater.
	**/
	static public function surrogate_loss(sample_losses:Dynamic, ?stochastic_tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a value type context for any StochasticTensor created within.
		
		Typical usage:
		
		```
		with sg.value_type(sg.MeanValue(stop_gradients=True)):
		  dt = sg.DistributionTensor(distributions.Normal, mu=mu, sigma=sigma)
		```
		
		In the example above, `dt.value()` (or equivalently, `tf.identity(dt)`) will
		be the mean value of the Normal distribution, i.e., `mu` (possibly
		broadcasted to the shape of `sigma`).  Furthermore, because the `MeanValue`
		was marked with `stop_gradients=True`, this value will have been wrapped
		in a `stop_gradients` call to disable any possible backpropagation.
		
		Args:
		  dist_value_type: An instance of `MeanValue`, `SampleAndReshapeValue`, or
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